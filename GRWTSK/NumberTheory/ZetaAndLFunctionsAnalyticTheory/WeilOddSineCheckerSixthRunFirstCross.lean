/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Sixth retained run against the first

These are the original global rows 2790 through 2913 and columns 0 through 96.
The row and column prices and the signed sinc indices 2694 through 3010 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. Two disjoint slices of 62 rows allow the
kernel to check their exact subtotals using the original triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 2790 2913
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨2790 + 62 * b.val, by omega⟩ ⟨2790 + 62 * b.val + 61, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 2790 + 62 * b.val ≤ i.val ∧ i.val ≤ 2790 + 62 * b.val + 61) ↔
    2790 ≤ i.val ∧ i.val ≤ 2913
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 2790) / 62, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 2))) crossRowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [crossRowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def columnPrice (j : Fin 97) : ℕ :=
  digit 0x1cfbbdd040293c07585021ff30c99417b0c516c20f3108b10c0944c1a28c857865b4e3c32720fadda1c8f9abbea0ff289f2b488ce4dec2344d1794f16c29dc909b701695a73e640c1df222c18678386864c37090334e11d26a683550f63995e91c819822e140440615ee4a239e1c0fe4129b8f5768c9b37d661dc50c507579b29f4abe45795c228ae354b4455d3d1c5d374236e130231244bd18d3c73b50ccca3e619b4694e6eeafe36222c73769bccde70448e437353eb874fc8511bc3beb018b561ea9f7c7e78fae3c82b228033dd5d654176cb6e44a167b73f4c9108ef966308ae7437fa146beffbb482402dfd08e1251f245034950a080d0a4bbd58bcdc267857e7bd5387bc8b3e09e9012388b506bde3eca28c52dc94054a8dadd008a76df1413654c4ee384faae69bdff895b3f048becaf98ed6b3f58c34536beacda0ce8d796a7b8880d4b7071858c25c6206723b2e9d1ff0da578309f8122bdaf5c95615f9cc3769fb02dac1a255844d774038c3898c27e4626f8349183189c41ca818ec320c162c88e6dfaa364d6c8f40032afb9770819784a93118ccb7c9ef4166cf996288339e1f44d799e872fd4dad0007372e068578077efb453ccb0171a3c1f8c182d264526c3f696c954f1434cfdef4b9da72e7c1262d3e06a62d96a0d7d92b93511baeecbda8c8716672d472dfc225 j.val

/-- The clipped prices on global indices 2790 through 2913, indexed from 2790. -/
def sixthRetainedRunPrice (i : Fin 124) : ℕ :=
  digit 0x23bcf5b5782872d52af01f5ca0cdea152c3153b20d4b0d33c487faf3c296c4a5a27702e2a59ae037017b8b24c3e8d1cffcfe3c72c28dbeda3e39058029217d83269e91e9c566084987a01b4c450bc96b7fd2a92d380ca965e00ad954bb66f80c2e61d7e6535332f28b1a889a76b85e1f0db723e45cc717fa773543a9729f2081e313fcb150f8870a83047fa9c358be417bcbf41fa18b38aa1bd1293092a368c4d5feea9479c2c1d8aa4829491b452986684b909762e5341e4cf4a70b7e2715962f4953d53e0bf28a0e401823551823cfa072942d233f454df0bcf84ea8cbacabe45542932f182b092ff7ad55b54dd8b10af1629f7335833f4d2422c67e9d29f1657abb63d0b3c108ef245a555330d3ad5e8d2ce516c5f67b24ab6cb2510165ba6456f79adecfa4511d7002898beab834a4501b5c2707aa2f2e1363ae21d7066594b8cb7fef487595bd87984a4add24d85d0d6d8f99b632b62cc7bb485abc1c2cde2d2a8c647a167858eee98b2c20f53f158d40fd3252c1d4407eb55e51f34478adc3f63f365623109a582aabe5bae4d5200e9eb50a738da0b2a52ac730453a8d82e7b2a142a0efaacc9f2842fe334e741fde9526a424e02113042c99848959adb36b7497e8fb3a5241216c49091af971ed748a9a64db8f43d0c5c64ba12496b5d9102da0311147e31af686c3d704a9c0d1dde792b8bce7fba0e77c706c8c20b93663261c7d1a42d18a370ca7760833c6157c1b6322eafd94bda1654eef4768aa682e4ee05100ff2eba265d57a6f0121858edc8c87eab2ca8a3f76ce17c81d730027910d90cbd239c631d35f7e02cc884148e13f895f84488c23526ce43c1f819342190633d63b09f638de9c83b0afc61201312c234ea04409d8c4b i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0xdef0ae4bc56f786abc8837bc490fe55bde33549aedef238adbf6f797f2f4bb7bcfaeec35bdea018c62def63d82776f7bd0f8db37be4b8549dbdf5c3daccdefcbd7a716f7f605dd437c03aebf35be067caa0cdf05b8a8d96f842d541737c2c913d45be1c2b33dadf112e83116f8a37829637c5f5c6845be36cd75e8df1f1de0686f917e413337c9c0a611dbe56603188df2f84f9fc6f9a0098b5b7ce292cfcdbe7adeebacdf42616ab86fa3bd42d0b7d32eae3e9bea443ed1cdf57b02f8a6faeb2aa40b7d8d055591bed2884316df6f6da7ae6fbadeeaf5b7df0d26705bf05a3c028df8995952c6fc83fd259b7e5e3fe6e5bf3d8cfd66dfa6231d796fd6d2dfa437ed5393309bf7a395be2dfc510ca406fe6954442b7f55a73be5bfbb9d0676dfe6588a536ff783e457b7fdf708895c001aaf3e6e009f3b2bd70099b5748b8072793b9dc04c54e93ee02fdb0002701cd7e861b810ea31805c09b8b7c8ae058069783703135978cb81b3cd8751c0ef3e17d8e0826e09067046b01a1a38261d59fddc1475afc7ce0af085067705d42db9eb8318962bfdc1a3cf46b4e0ddcbd76b7074e8fee1b83d7e7b189c20486f17ce10eae77bd708d9d5eddb849fa07a1dc2696cdac8e141a57d0c70a75a8fd83856f949bd1c2d26ac7f0e176a5a74f70c21ae084386479602adc33f696a70e1ada32d2b70ddd85b3db8727747a6dc3b05064f2e1e691be8370fa8cc7513880efdb905c425065090e22164871f711831aa58b88fdfd69a5c49d70c26ae25e0e31857136c049a8389f43d3835c51974517ae29c80e9e5715631abc938af184dd61c598f49ca8e2dcae612e71767e9a0bb8bf59a2b2dc61bd45126e31e87d04471979fa221b8d00411a05c6a1f53100e361fdfb5271b98d17ce38e113bd649c72b3819fce3a701353e71dc3f16a1b8f284ace59c7b77d0caae3ed81633871ffad83c7b90452cc109c846a333aee4356e006d7223d00fe0b91679eccb1c8d888eb50e47eb621ce72489e38eb3928f5c7e71c96d0bc938e4c94879f9726e0f4c3c393bc1fe215ca0408a466e515135d3c72941a6881b94eda1925dca9d5b9d5ee56204c5b072bab67fd5b962398c989cb38e02684e5b00a576e72e1da59da3975dbb726dcbd6710cb4e5ff1164dd73097c95e43989bbe39d5cc75e87feee64f06f318733193ad30399dd54a045cd17201c52e69fd7be66735a15f52239b22310bfdcdb9f0f32ee6f1703eca7382f9a19039c6a04db81ce5e339438e743bcacaa73ac34c71639db480782dcf03c016f8e796a9058173d5bd5d74b9f01536949cfaa6e2450e7ea2110ab73ff8941f63a0502c6741d052150020e83e10643d74298e39de3a1a0b96f39d0fa8b931ae8926269ec7453c1f4deba2f2a7d6bdd1a3a8749ce8e7026409747e1a0f973a445a45fbdd24d41f4c2e93bdb728074a88c16163a5995b4cbdd2f72e2676e990d897ec74d30d86653a6ed78752dd3a142e9a2e9e5e4beaf74fd93d3153a841a759d9d44b55f57aea3aeabe1c75281465d3ba9959339a9d4f53ce2d0ea8fd55f9e755284a2033aae8e72651d59ecd3678eae48f63f0757cd9e7523ac3b4e192dd647dc6bbceb3903885875a709945dbad8c730845d6f03ffed4eb8d1c8be175d109094ebaedc00fb3dd797cd776cebe0c534a375facdaa7a3b029a32065d83e5a732eec33e8550376244ce306bb17504e1e1d8e3bcb03eec8670d0fa764d7c278c3b2bdd1fa95d987ca17d8ecd849a356767650f8b5bb403b68b59da2a58c8c4ed295de302769ec0e5e53b5465f2fe1dacb3f21e0ed7998c84076c6c18fcfbb6857913c9db6a53cc94edc8e5b1e776ee48ab1b3b7c0b20769dc076dc746ee17302a9777154c02f9bb8f7b89495dca2646faeee6463edea773bc17bbc3ba2a3c135ddd3b0f8d36eeb06ced9377619f1567bbb57ecbe81ddd1475b2aeefb3756837786daee41bbc807bc7c9de64e492e8ef44af95f577ab6b4555bbda39b6c4ddef5c075f2ef8cc25e7577cf467cf6bbec0ff0851df83b4d7e0efd35cacd877f2631d3b3bfd85b2b1de00e9c283cf0186bcd247814b7d66e3c0e965aa79e096517c3ef05bdd5f6d78363b837abc1f3d5b5fde11ab09866f09d9f5c997856e52c4d3c2f763ea01e19b95f9f2f0dda01b197876ac082c3c3f3ca6251e218dee02af11bce538b7895878007bc4e8c4cc9de292695588f15819254578b36f30bcbc5d6107a69e3081438b2f192701ad378d05aed4e3c6bb6c72e1e379bf4548f1cac32e51 (j - 2694) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
private theorem columnPrice_eq_all : ∀ j : Fin 97, columnPrice j = firstRetainedRunPrice j := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem sixthRetainedRunPrice_eq_all :
    ∀ i : Fin 124,
      sixthRetainedRunPrice i = price literalRawDeficit ⟨2790 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem sixthRetainedRunPrice_eq (i : Fin 124) :
    sixthRetainedRunPrice i = price literalRawDeficit ⟨2790 + i.val, by omega⟩ :=
  sixthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 317, crossSinc (2694 + j.val) = sincEntry (2694 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 2694 ≤ j) (hi : j ≤ 3010) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 2694, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then columnPrice ⟨i.val, h⟩
  else if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then
    sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact (columnPrice_eq_all _).trans (firstRetainedRunPrice_eq ⟨i.val, by omega⟩)

private def sliceTotal (b : Fin 2) : ℕ :=
  #[4386809034200369728760259032365313212260773222202,
    3609397835483460578855234821216496849549947165588][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 50000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 7996206869683830307615493853581810061810720387790 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the sixth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem sixthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (2790, 2913)) (retainedRunCells (0, 96)) =
        7996206869683830307615493853581810061810720387790 := by
  have hrows : retainedRunCells (2790, 2913) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (0, 96) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have hv : j.val ≤ 96 := (Finset.mem_Icc.mp hj).2
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
