import Mathlib.FieldTheory.Finite.Extension
import Mathlib.RingTheory.Polynomial.UniqueFactorization
import Mathlib.Tactic.Ring

/-!
# The degree-128 binary polynomial basis

Local attribution is to grwtsk contributors.

The fixed polynomial is `X^128 + X^7 + X^2 + X + 1` over `ZMod 2`. The
certificate gives exact quotient and residue words for each successive
Frobenius square of X, followed by Bézout coefficients at step 64. A word
decodes from its least significant bit first. Each checked row asserts a
polynomial identity before quotienting, and the decoded Bézout identity
survives replacing the residue by its original Frobenius power.

The factor-degree criterion is
`Irreducible.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X` in
`Mathlib/FieldTheory/Finite/Extension.lean` at Mathlib commit
`d13f23b723b8a846827a245b89c10fc7d3f11612`. An irreducible factor of
the modulus has degree dividing 128. Coprimality at step 64 excludes all
proper divisors of 128. An irreducible factor of degree 128 is associated to
the modulus. This argument uses divisibility and coprimality together.
For example, removing the constant term gives a polynomial divisible by X,
so that changed modulus cannot pass both conditions.

The list certificate and its decoding are part of this Lean proof. The
quotient cardinality identifies the mathematical field underlying the
runtime basis. Refinement of Rust arithmetic is a separate obligation.
Independent mathematical review and novelty assessment are pending.
-/

open Polynomial

namespace GRWTSK.FiniteFields.Binary128

noncomputable def modulus : (ZMod 2)[X] := X ^ 128 + (X ^ 7 + X ^ 2 + X + 1)

private theorem lowDegree :
    (X ^ 7 + X ^ 2 + X + 1 : (ZMod 2)[X]).natDegree ≤ 7 := by
  apply natDegree_add_le_of_degree_le
  · apply natDegree_add_le_of_degree_le
    · apply natDegree_add_le_of_degree_le <;> simp
    · simp
  · simp

theorem natDegree_modulus : modulus.natDegree = 128 := by
  unfold modulus
  rw [natDegree_add_eq_left_of_natDegree_lt]
  · simp
  · rw [natDegree_X_pow]
    exact lowDegree.trans_lt (by decide)

private theorem card_zmod_two : Nat.card (ZMod 2) = 2 := by
  rw [Nat.card_eq_fintype_card, ZMod.card]

/-- Degree-128 specialization of the Frobenius divisibility and coprimality criterion. -/
theorem irreducible_of_certificate {p : (ZMod 2)[X]}
    (hdeg : p.natDegree = 128)
    (hfull : p ∣ X ^ (2 ^ 128) - X)
    (hhalf : IsCoprime p (X ^ (2 ^ 64) - X)) :
    Irreducible p := by
  have hpos : 0 < p.natDegree := by rw [hdeg]; decide
  obtain ⟨q, hq, hqp⟩ := exists_irreducible_of_natDegree_pos hpos
  have hlarge : q.natDegree ∣ 128 := by
    apply hq.natDegree_dvd_of_dvd_X_pow_card_pow_sub_X
    rw [card_zmod_two]
    exact dvd_trans hqp hfull
  have hsmall : ¬ q.natDegree ∣ 2 ^ 6 := by
    intro hd
    have hqhalf := hq.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X.mp
      (show q.natDegree ∣ 64 from hd)
    rw [card_zmod_two] at hqhalf
    exact hq.not_isUnit (hhalf.isUnit_of_dvd' hqp hqhalf)
  have heq : q.natDegree = 128 :=
    Nat.eq_prime_pow_of_dvd_least_prime_pow Nat.prime_two hsmall hlarge
  have hp : p ≠ 0 := by
    intro hz
    simp [hz] at hpos
  exact (associated_of_dvd_of_natDegree_le hqp hp (by rw [hdeg, heq])).irreducible hq

private def plusBits : List Bool → List Bool → List Bool
  | [], ys => ys
  | xs, [] => xs
  | x :: xs, y :: ys => (x ^^ y) :: plusBits xs ys

private def mulBits : List Bool → List Bool → List Bool
  | [], _ => []
  | x :: xs, ys => plusBits (if x then ys else []) (false :: mulBits xs ys)

private def squareBits : List Bool → List Bool
  | [] => []
  | x :: xs => x :: false :: squareBits xs

private def bits (length word : ℕ) : List Bool :=
  (List.range length).map word.testBit

private noncomputable def bitCoeff (b : Bool) : (ZMod 2)[X] :=
  if b then 1 else 0

private noncomputable def decode : List Bool → (ZMod 2)[X]
  | [] => 0
  | b :: bs => bitCoeff b + X * decode bs

private theorem bitCoeff_xor (a b : Bool) :
    bitCoeff (a ^^ b) = bitCoeff a + bitCoeff b := by
  cases a <;> cases b <;> simp [bitCoeff, CharTwo.add_self_eq_zero]

private theorem decode_plusBits : ∀ xs ys, decode (plusBits xs ys) = decode xs + decode ys
  | [], ys => by simp [plusBits, decode]
  | x :: xs, [] => by simp [plusBits, decode]
  | x :: xs, y :: ys => by
    simp only [plusBits, decode, bitCoeff_xor, decode_plusBits xs ys, mul_add]
    ring

private theorem decode_mulBits : ∀ xs ys, decode (mulBits xs ys) = decode xs * decode ys
  | [], ys => by simp [mulBits, decode]
  | x :: xs, ys => by
    rw [mulBits, decode_plusBits, decode, decode, decode_mulBits xs ys]
    cases x <;> simp [bitCoeff, decode, add_mul, mul_assoc]

private theorem decode_squareBits : ∀ xs, decode (squareBits xs) = decode xs ^ 2
  | [] => by simp [squareBits, decode]
  | x :: xs => by
    rw [squareBits, decode, decode, decode_squareBits xs, decode,
      add_pow_char (R := (ZMod 2)[X]) (p := 2), mul_pow]
    cases x <;> simp [bitCoeff, pow_two, mul_assoc]

private theorem decode_zeroBits (n : ℕ) : decode (List.replicate n false) = 0 := by
  induction n with
  | zero => rfl
  | succ n ih => simp [List.replicate_succ, decode, bitCoeff, ih]

private theorem decode_padBits (n : ℕ) (xs : List Bool) :
    decode (List.replicate n false ++ xs) = X ^ n * decode xs := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [List.replicate_succ, List.cons_append, decode, ih, pow_succ']
    simp [bitCoeff, mul_assoc]

private def modulusBits : List Bool :=
  [true, true, true, false, false, false, false, true] ++ (List.replicate 120 false ++ [true])

private theorem decode_modulus_prefix (tail : List Bool) :
    decode ([true, true, true, false, false, false, false, true] ++ tail) =
      (X ^ 7 + X ^ 2 + X + 1) + X ^ 8 * decode tail := by
  simp only [List.cons_append, List.nil_append, decode, bitCoeff,
    Bool.false_eq_true, ite_false, ite_true, zero_add]
  ring

private theorem decode_modulus : decode modulusBits = modulus := by
  have h₁ : decode (List.replicate 120 false ++ [true]) = X ^ 120 * decode [true] :=
    decode_padBits 120 [true]
  have h₂ : decode [true] = 1 := by simp [decode, bitCoeff]
  calc
    decode modulusBits = (X ^ 7 + X ^ 2 + X + 1) +
        X ^ 8 * decode (List.replicate 120 false ++ [true]) :=
      decode_modulus_prefix _
    _ = (X ^ 7 + X ^ 2 + X + 1) + X ^ 8 * X ^ 120 := by rw [h₁, h₂, mul_one]
    _ = modulus := by unfold modulus; ring

private def padded (word : List Bool) : List Bool :=
  plusBits word (List.replicate 257 false)

private def checkRow (before quotient after : ℕ) : Bool :=
  decide (padded (squareBits (bits 128 before)) =
    padded (plusBits (mulBits modulusBits (bits 128 quotient)) (bits 128 after)))

private theorem decode_padded (xs : List Bool) : decode (padded xs) = decode xs := by
  simp only [padded, decode_plusBits, decode_zeroBits, add_zero]

private theorem step_sound {before quotient after : ℕ} (h : checkRow before quotient after = true) :
    AdjoinRoot.mk modulus (decode (bits 128 before)) ^ 2 =
      AdjoinRoot.mk modulus (decode (bits 128 after)) := by
  have heq := congrArg decode (of_decide_eq_true h)
  simp only [decode_padded, decode_squareBits, decode_plusBits, decode_mulBits,
    decode_modulus] at heq
  simpa only [map_pow, map_add, map_mul, AdjoinRoot.mk_self, zero_mul, zero_add] using
    congrArg (AdjoinRoot.mk modulus) heq

private def checkChain (before : ℕ) (rows : List (ℕ × ℕ)) (target : ℕ) : Bool :=
  match rows with
  | [] => decide (before = target)
  | (quotient, after) :: rest => checkRow before quotient after && checkChain after rest target

private theorem chain_sound (before : ℕ) (rows : List (ℕ × ℕ)) (target : ℕ)
    (h : checkChain before rows target = true) :
    AdjoinRoot.mk modulus (decode (bits 128 before)) ^ (2 ^ rows.length) =
      AdjoinRoot.mk modulus (decode (bits 128 target)) := by
  induction rows generalizing before with
  | nil =>
    have : before = target := of_decide_eq_true h
    subst before
    simp only [List.length_nil, pow_zero, pow_one]
  | cons row rest ih =>
    obtain ⟨quotient, after⟩ := row
    simp only [checkChain, Bool.and_eq_true] at h
    rw [List.length_cons, Nat.pow_succ', pow_mul]
    rw [step_sound h.1, ih after h.2]

private def checkBezout (remainder left right : ℕ) : Bool :=
  decide (padded (plusBits (mulBits modulusBits (bits 128 left))
    (mulBits (plusBits (bits 128 remainder) [false, true]) (bits 128 right))) = padded [true])

private theorem decode_xBits : decode [false, true] = X := by simp [decode, bitCoeff]

private theorem decode_oneBit : decode [true] = 1 := by simp [decode, bitCoeff]

set_option maxRecDepth 4096 in
private theorem bezout_sound {remainder left right : ℕ} (h : checkBezout remainder left right = true) :
    IsCoprime modulus (decode (bits 128 remainder) - X) := by
  have heq := congrArg decode (of_decide_eq_true h)
  simp only [decode_padded, decode_plusBits, decode_mulBits, decode_modulus,
    decode_xBits] at heq
  refine ⟨decode (bits 128 left), decode (bits 128 right), ?_⟩
  rw [decode_oneBit] at heq
  rw [CharTwo.sub_eq_add, mul_comm (decode (bits 128 left)) modulus,
    mul_comm (decode (bits 128 right)) (decode (bits 128 remainder) + X)]
  exact heq

set_option maxRecDepth 16384 in
private theorem decode_xWord : decode (bits 128 2) = X := by
  change decode ([false, true] ++ List.replicate 126 false) = X
  simp only [List.cons_append, List.nil_append, decode, decode_zeroBits, bitCoeff,
    Bool.false_eq_true, ite_false, ite_true, mul_zero, add_zero, zero_add, mul_one]

-- Each row is (quotient, remainder) from the previous residue squared
-- and divided by the fixed modulus, starting from X.
private def middleResidue : ℕ := 0x61651fea6b5832b944e598a795a299f6

private def firstHalf : List (ℕ × ℕ) := [
  (0x00000000000000000000000000000000, 0x00000000000000000000000000000004),
  (0x00000000000000000000000000000000, 0x00000000000000000000000000000010),
  (0x00000000000000000000000000000000, 0x00000000000000000000000000000100),
  (0x00000000000000000000000000000000, 0x00000000000000000000000000010000),
  (0x00000000000000000000000000000000, 0x00000000000000000000000100000000),
  (0x00000000000000000000000000000000, 0x00000000000000010000000000000000),
  (0x00000000000000000000000000000001, 0x00000000000000000000000000000087),
  (0x00000000000000000000000000000000, 0x00000000000000000000000000004015),
  (0x00000000000000000000000000000000, 0x00000000000000000000000010000111),
  (0x00000000000000000000000000000000, 0x00000000000000000100000000010101),
  (0x00000000000000000000000000000000, 0x00010000000000000000000100010001),
  (0x00000001000000000000000000000000, 0x00000087000000010000000100000001),
  (0x00000000000040150000000000000001, 0x000000000021caea0000000000000086),
  (0x00000000000000000000040150445444, 0x000000000000000000021cae93f7cfc8),
  (0x00000000000000000000000000000000, 0x00000004015044544105551550555040),
  (0x00000000000000100001110010101110, 0x1001001111110961118fe6196978ef70),
  (0x01000001000001010101010100411401, 0x860140d2541486c693c692c775187987),
  (0x40140001100051041110011040145035, 0x8b69509b312d6501ea618e11df04ea1e),
  (0x40451441110041450501045114110020, 0xb715594eb7756558cad0352d30b311b4),
  (0x45150111114110544515151114111163, 0x01afdeffd35e5fde54e1a6f865fe82b9),
  (0x00014455515455555105115411555154, 0x11b4a30358935542218289f09c0659ed),
  (0x01014510440500051140410511111004, 0x83a513579eda579397b14587eebe264d),
  (0x40054411010511154154514411154124, 0x83ad91f69582bddf38d15180f9de45ad),
  (0x40054451410155144111400445515174, 0xc7f8a41756ad614d1a97936b620f481d),
  (0x50155540441001151114445114011078, 0xbb844bf6957599a6e94bf5687ccf4c39),
  (0x45454010104555144111151141414437, 0x2c3bd83d0661350d5aadb3837634c244),
  (0x04500545514005510014140105110053, 0x24f6fc2353c7f2321f726995c3f33829),
  (0x04105514555004051105501555040506, 0x150e344316f35f82a5b7efc52c5e9c53),
  (0x01110054051010050114550511554004, 0xcbe66ebbc72d228a891738c79d5ad319),
  (0x5045541414544545501504510404406d, 0xd331a77342cf2867fbb824714f38f6c2),
  (0x5105050144151505100450550440143c, 0x60dcdee4d2f1fc9262609e6968de22b0),
  (0x1400515051545410510455015550410e, 0x782d0a995dd3b01821777af80695052a),
  (0x1540045100444141115151054500014a, 0xcec3202236b9330fde0a74a95b11a7b2),
  (0x5054500504000404051445410505007c, 0xcad1b2dd09125a5f800a7b44dd8e7a70),
  (0x5044510145045151004101041144117c, 0xd3f537e04c700e277016c540c190dd74),
  (0x5105551105155400105015000054043c, 0x20b022e1c1d1bc0809bbaa007aff17a4),
  (0x04004500040454015001510145500042, 0x1c621e475a73acaea5ea62f173a564de),
  (0x01501404015410151144150544504454, 0xeaab3a58b8a02fe2c1d3ada9e183a6f8),
  (0x5444444505441140454044000455542f, 0xdffeae5cfc8592a22ee29c077314ee0d),
  (0x5155555444541150555040114104442d, 0x1854548bb6f4de8e1794c9c6116bca12),
  (0x01401110111040454514551051544054, 0xa7ddbe68af10b36c5046371c4cc9eaa8),
  (0x44155151455414404455010045051473, 0xc7c20e0075b34cb3e77bd7620dd51099),
  (0x5015500400540000151145051050452c, 0xeed7a7597ab9140ee385088258930c85),
  (0x5454511544151141154445410110007f, 0xd3807dd9d6a39649d9bf3b428f207eec),
  (0x51054000155151415114440541141068, 0x64fb855fc75b066a7d1adaba58301148),
  (0x1410554540111155501511450014144e, 0x710a093e99bb9946aba3d15b0b675aaa),
  (0x1501004400410554414145454141101e, 0xafc267d97044a1c866216c6f770b3b1e),
  (0x44555004141551411500101044015063, 0xe316b61772920218fe1d7816d9eb81fd),
  (0x5405011445140115150441040004016b, 0xfbcf8c1e442c8cf5b87c1159421de6c0),
  (0x5545505540500154101004504050553a, 0x4d328e5ae8b1bde5687634c0bd8f66a6),
  (0x10510504405411445440450145515419, 0x4d758c29eeb484f7c8b21bf16608e4db),
  (0x1051151140500441545445104010551d, 0x097da6d2e8f7686d939b53119c4b7496),
  (0x00411551441451045440551514401451, 0x60488351c7403436ccbb31a458da0423),
  (0x1400104040051101501510000510051e, 0x3c5814a4c792b3beaba321469362905f),
  (0x05501140011044105015410445054556, 0xf6fd92c58b52c44dfbcf513b18b860f7),
  (0x5514555141045011404511045010107a, 0x740252435434bd93e213b075ac781973),
  (0x1510000411041005111005104551410f, 0xb7740311b0146782bb228613735755a8),
  (0x45151510000501014500011014154027, 0x14a4e774428f86a14e059e6f77db9735),
  (0x01104410541515101004405540144401, 0x9f07d44ae7b5f72d6728ba4f8b5ad996),
  (0x41550015511010445415451155150470, 0x783e0e827a3c43a2e68d429870a86444),
  (0x1540055400544004154405501005440e, 0x9ed6f0fd3b898356dddef6f866a8cb3a),
  (0x41545114550055510545404140051135, 0x3dd46c137e3f5775ac6ea52692d6e84f),
  (0x05515110145001051554055511151513, 0xf64e2b2e01a1818581aae137a9a1f2ac),
  (0x5514105404450454000144014001403a, 0x61651fea6b5832b944e598a795a299f6)
]

private def secondHalf : List (ℕ × ℕ) := [
  (0x1401141101555444144511400504454b, 0x7c9d30e6ed40cbc30e4292c6d87e2a65),
  (0x1550415105005414545110005045500f, 0xc2c57e31da2ff653d47f657d9736a3bc),
  (0x5004501115540501514404555514112c, 0xe325ada8d4bf8eff55cb32146561a494),
  (0x5405041144514440511045554054557e, 0xbf884491f010fcf92b42640baf97546a),
  (0x45554040101041015500010055505562, 0x744ff1cc6c4147e96f55c63e138b0f6a),
  (0x1510105555015050145010011015544b, 0xf72d4a117bba9cee44bd30ca7a959c35),
  (0x5515045110440101154545444150547f, 0x31f9706e56dcd7c9dd3c39ec2fcb97ec),
  (0x05015541150014541114515051155043, 0xcafd0f1dee4b13f4f9104edc7cd7c419),
  (0x50445551005501515454104501055539, 0xc6b603373b7fff4c92f4024ed5a0366e),
  (0x50144514000505150545155555551079, 0xfb4b047c029d81bde9408400053759bb),
  (0x5545104500101550000441514001457a, 0x5c12435b486ac2b0022c6b03d1e52223),
  (0x11500104100511451040144450044508, 0xdeb4814466d6d45600cb1be4b63b5b3d),
  (0x5154451040011010141451145110113d, 0x1c8f0314c1ca2c6a235138002e3dec62),
  (0x01504055000501105001504404501444, 0xaa94fa2a07db8f59b4fa968f61ea5bd8),
  (0x44444110554404440015514540551162, 0xbaed1a1f49ca7f891ec3403efa66966e),
  (0x45445451014401551041504415554062, 0x79a3d532b4dca977042a87c2811ee47a),
  (0x1541440551110504451051504441151f, 0xca74daf67fe0c93b13581fc7a95df199),
  (0x5044151051445514155554005041056c, 0x92d3f21915a271738441bd78c444ed45),
  (0x41045105550401410111440415011524, 0x052525b16c4db307dfc4ce06bfdce9ed),
  (0x00110411041145011450105145050015, 0x59a044e544805b9900ed08440dda5eba),
  (0x11414400101054111010400011454149, 0xd6648859781bb4ef7800914cc52e273b),
  (0x5114141040401141154001454510547c, 0x28266451a0c9c61d9ad1a02c574e9631),
  (0x04400414141011014400504150140153, 0x7c8647672078f3f4cd3c813afb78aa38),
  (0x1550401410151415040015405505551a, 0x92c0cf343ae063ad494fdfab6df42306),
  (0x41045000505505100544540014054470, 0x5574a07cca7cd737aca6f91a6abde544),
  (0x1111151044001550504415505115051d, 0xbbada747894bc3dd879287c869f885c3),
  (0x45454451441510154041104550055172, 0x386db41096f62a8af50e0632f2a35f5b),
  (0x05401451451001004114551404444046, 0xefdb4540536482251843656b2ea8f397),
  (0x5455514510111000110514104004043a, 0x864204566cee644df1c52011971b40b3),
  (0x40141004001011141450545414101070, 0x9f65220d0c78fc67048e86e374780c55),
  (0x41551411040400510050154055501434, 0x6c3124a15e087d323caadfab02ea679d),
  (0x1450050104104401115400401551050e, 0x40e2dfc1450698cadca8758ed620dd7b),
  (0x1000540451555001101100144140504c, 0x217bea750913f0db29e30e4d37b882a1),
  (0x04011545544415110041010555005147, 0x18cc9c758f82f3a62452c0f06b2d5154),
  (0x01405050415015114055400455054414, 0xa2f988953ebab6d6ff4fc66638b9c77c),
  (0x44045541404041110554454445145137, 0x8b621a33b1f55be1b5cf3dbe01503955),
  (0x40451404014405054501551111455420, 0xa6403e49a18fdcec5bad32ffd131adf1),
  (0x44141000055410414401405551505473, 0xc7213453b5a004318da7ee035acac1d8),
  (0x50150401051011054511440000100528, 0xfab85890c72cf5bd42908c445873de98),
  (0x5544454011404100501504505511457a, 0x18fb3bc896b15739aba9209e72802626),
  (0x01405545054550404114450111150541, 0xe2ae4c18bc72d0b5584b1b8ff9fdbe53),
  (0x5404445410500140455015045100453a, 0xbf7fe7e158f5e6b627fbbc64727757a3),
  (0x45551555541554011140551154144537, 0x74349545e390b89fc3ef36c9b75a0400),
  (0x1510051041111011540541004540415f, 0xb377c7044aeb289debaf56677af1691d),
  (0x45051515501500101044544504404172, 0x0dd4a597abff1c6d46b3da5829a07e0f),
  (0x00515110441141154445555501501451, 0x390a7a5685925c88fb31442bbbee4562),
  (0x05410044154411144011410411504042, 0xef0226d7d8c4f9088d931140ce80f4ca),
  (0x5455000404145115514050105541006b, 0xc77a431b17442dc246bdf85b5f5764d5),
  (0x5015154410050145011510100451502d, 0xaaf58d8527dbb51e9cb66967210ef752),
  (0x44445511405140110415514545110177, 0xbea766c2fd57dce012c3142c06e2acc1),
  (0x45544415141450045551111551505423, 0x718b86e46755b667022ba9c65acbed68),
  (0x1501404540145410141511114514141f, 0xeba2e73f8e06f46e77a7af910537779d),
  (0x5445440454150555405400145510147f, 0x9a6d9a22e2bcf10bebbd0f52366f13ac),
  (0x41441451414404045404455055010064, 0x30930047648b0f33ab2b66ce2a82776c),
  (0x05004105000010151410404500550507, 0xdf6441de141c2ab56015a35f3e3c8cc5),
  (0x51551410100151540110015004444538, 0x0821656934ab0df98a24abe27faf17b9),
  (0x00400401141114410510444500515541, 0x6186189d20b819418606bb0e28094f06),
  (0x1401401401404151040045400141100b, 0x2cb2ca78e3a46e6118637a81b61a75a5),
  (0x04504504504415405405441014541403, 0x34d34d3086928aeaebacd53e52b72998),
  (0x05105105105105004014410440445446, 0xc71c71c308249e75db490028e7b6cf92),
  (0x50150150150150050040041041541538, 0xebaebefbebaeb6db75d751453cf3b6ac),
  (0x5445445445545545544544544514516e, 0x9a69a69a618618618a28a28a1451455a),
  (0x41441441441441441401401401401420, 0x24924924924924926db6db6db6db6da4),
  (0x04104104104104104104104104104106, 0x00000000000000000000000000000002)
]

set_option maxHeartbeats 2000000 in
set_option maxRecDepth 16384 in
private theorem checkFirstHalf : checkChain 2 firstHalf middleResidue = true := by decide +kernel

set_option maxHeartbeats 2000000 in
set_option maxRecDepth 16384 in
private theorem checkSecondHalf : checkChain middleResidue secondHalf 2 = true := by decide +kernel

set_option maxHeartbeats 2000000 in
set_option maxRecDepth 16384 in
private theorem checkMiddleBezout :
    checkBezout middleResidue 0x34f319a5fb685836214ec51f73e3547b
      0x9e4af928ddbc838a41a8cafd2c95b018 = true := by decide +kernel

private theorem halfPower :
    AdjoinRoot.mk modulus X ^ (2 ^ 64) =
      AdjoinRoot.mk modulus (decode (bits 128 middleResidue)) := by
  have h := chain_sound 2 firstHalf middleResidue checkFirstHalf
  change AdjoinRoot.mk modulus (decode (bits 128 2)) ^ (2 ^ 64) = _ at h
  rw [decode_xWord] at h
  exact h

private theorem fullPower :
    modulus ∣ X ^ (2 ^ 128) - X := by
  have h := chain_sound middleResidue secondHalf 2 checkSecondHalf
  change _ ^ (2 ^ 64) = AdjoinRoot.mk modulus (decode (bits 128 2)) at h
  rw [decode_xWord, ← halfPower, ← pow_mul] at h
  apply AdjoinRoot.mk_eq_zero.mp
  rw [map_sub, map_pow, sub_eq_zero]
  exact h

private theorem coprime_of_dvd_sub {p q r x : (ZMod 2)[X]}
    (hdiv : p ∣ q - r) (h : IsCoprime p (r - x)) : IsCoprime p (q - x) := by
  obtain ⟨d, hd⟩ := hdiv
  obtain ⟨a, b, hab⟩ := h
  have heq : q - x = (r - x) + p * d := by rw [← hd]; ring
  refine ⟨a - b * d, b, ?_⟩
  rw [heq]
  calc
    _ = a * p + b * (r - x) := by ring
    _ = 1 := hab

private theorem halfCoprime :
    IsCoprime modulus (X ^ (2 ^ 64) - X) := by
  have hdiv : modulus ∣ X ^ (2 ^ 64) - decode (bits 128 middleResidue) := by
    apply AdjoinRoot.mk_eq_zero.mp
    rw [map_sub, map_pow, sub_eq_zero]
    exact halfPower
  exact coprime_of_dvd_sub hdiv (bezout_sound checkMiddleBezout)

/-- Irreducibility of the fixed basis polynomial, with no certificate assumptions. -/
theorem irreducible_modulus : Irreducible modulus :=
  irreducible_of_certificate natDegree_modulus fullPower halfCoprime

/-- The quotient by the fixed basis polynomial has exactly 2^128 elements. -/
theorem natCard_quotient : Nat.card (AdjoinRoot modulus) = 2 ^ 128 := by
  let : Module.Finite (ZMod 2) (AdjoinRoot modulus) :=
    Module.Finite.of_basis (AdjoinRoot.powerBasis irreducible_modulus.ne_zero).basis
  rw [Module.natCard_eq_pow_finrank (K := ZMod 2), card_zmod_two]
  change 2 ^ Module.finrank (ZMod 2) ((ZMod 2)[X] ⧸ Ideal.span {modulus}) = 2 ^ 128
  rw [finrank_quotient_span_eq_natDegree, natDegree_modulus]

end GRWTSK.FiniteFields.Binary128
