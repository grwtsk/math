module

public meta import Surface.Core.Classification
public import Mathlib.Data.Fin.Basic
public import Mathlib.Data.Nat.Prime.Basic
public import Mathlib.Data.ZMod.QuotientRing
public import Mathlib.Tactic

/-!
# Prime-bounded continuation coordinates

This module formalizes the bounded arithmetic core of Prime Lattice.  An
absolute request exponent is authoritative; a lap and a bounded residue are
its unique Euclidean presentation.  A heterogeneous list of bounded digits is
then equivalent to one finite mixed-radix ordinal.

The module deliberately gives request-depth metadata and integral
prime-power-torsion metadata different nominal types.  It also indexes model
artifacts by authority, so deterministic classification of a model proposal
has model-proposal authority in its result type rather than theorem authority.
-/

public section

namespace Surface.PrimeBoundedContinuation

open scoped BigOperators

/-! ## Prime radices and Euclidean coordinates -/

/-- A discovered prime together with the proof needed to use it as a radix. -/
@[surface_novel]
structure PrimeRadix where
  value : ℕ
  isPrime : Nat.Prime value

namespace PrimeRadix

@[surface_novel, surface_published]
theorem pos (p : PrimeRadix) : 0 < p.value :=
  p.isPrime.pos

end PrimeRadix

/-- The bounded digit attached to a prime radix. -/
@[surface_novel]
abbrev BoundedPrimeDigit (p : PrimeRadix) := Fin p.value

/-- The canonical lap of absolute request exponent `a` at radix `p`. -/
@[expose, surface_novel]
def lap (p a : ℕ) : ℕ :=
  a / p

/-- The canonical bounded residue of absolute request exponent `a`. -/
@[expose, surface_novel]
def residue (p a : ℕ) : ℕ :=
  a % p

/-- Euclidean division retains the exact absolute request exponent. -/
@[surface_novel, surface_published]
theorem euclidean_lap_residue (a p : ℕ) :
    a = p * lap p a + residue p a := by
  exact (Nat.div_add_mod a p).symm

/-- A positive radix makes the canonical residue a valid bounded digit. -/
@[surface_novel, surface_published]
theorem residue_lt {p : ℕ} (hp : 0 < p) (a : ℕ) :
    residue p a < p := by
  exact Nat.mod_lt a hp

/--
The lap and residue are unique among presentations whose residue obeys the
standard Euclidean bound.
-/
@[surface_novel, surface_published]
theorem lap_residue_unique {a p q r : ℕ} (hp : 0 < p)
    (hr : r < p) (h : a = p * q + r) :
    q = lap p a ∧ r = residue p a := by
  have hlo : q * p ≤ a := by
    calc
      q * p = p * q := Nat.mul_comm q p
      _ ≤ p * q + r := Nat.le_add_right (p * q) r
      _ = a := h.symm
  have hhi : a < (q + 1) * p := by
    calc
      a = p * q + r := h
      _ < p * q + p := Nat.add_lt_add_left hr (p * q)
      _ = (q + 1) * p := by
        simpa [Nat.mul_comm] using (Nat.mul_succ p q).symm
  have hdiv : a / p = q := Nat.div_eq_of_lt_le hlo hhi
  have hmod : a % p = r := by
    calc
      a % p = (p * q + r) % p := by rw [h]
      _ = r % p := Nat.mul_add_mod p q r
      _ = r := (Nat.mod_eq_iff_lt (Nat.ne_of_gt hp)).2 hr
  exact ⟨hdiv.symm, hmod.symm⟩

/--
A prime coordinate stores the exact exponent in addition to its bounded
display digit and continuation lap.
-/
@[surface_novel]
structure PrimeCoordinate (p : PrimeRadix) where
  absoluteExponent : ℕ
  lap : ℕ
  digit : BoundedPrimeDigit p
  decomposition : absoluteExponent = p.value * lap + digit.val

namespace PrimeCoordinate

/-- Construct the canonical coordinate of an absolute request exponent. -/
@[expose, surface_novel]
def ofExponent (p : PrimeRadix) (a : ℕ) : PrimeCoordinate p where
  absoluteExponent := a
  lap := Surface.PrimeBoundedContinuation.lap p.value a
  digit := ⟨residue p.value a, residue_lt p.pos a⟩
  decomposition := euclidean_lap_residue a p.value

/-- Every valid coordinate agrees with the canonical quotient and remainder. -/
@[surface_novel, surface_published]
theorem canonical (p : PrimeRadix) (coordinate : PrimeCoordinate p) :
    coordinate.lap =
        Surface.PrimeBoundedContinuation.lap p.value coordinate.absoluteExponent ∧
      coordinate.digit.val = residue p.value coordinate.absoluteExponent := by
  exact lap_residue_unique p.pos coordinate.digit.isLt coordinate.decomposition

end PrimeCoordinate

/-! ## Carry normalization -/

/-- The natural number denoted by a possibly unnormalized lap/residue pair. -/
@[expose, surface_novel]
def absoluteExponent (radix lapValue residueValue : ℕ) : ℕ :=
  radix * lapValue + residueValue

/--
Moving one whole radix from an unnormalized residue into the lap changes only
the representation, not the denoted absolute exponent.
-/
@[surface_novel, surface_published]
theorem carry_preserves_absolute_exponent (p lapValue r : ℕ) :
    absoluteExponent p lapValue (p + r) =
      absoluteExponent p (lapValue + 1) r := by
  simp [absoluteExponent, Nat.mul_add, Nat.add_assoc]

/-- Incrementing a boundary digit performs exactly one carry. -/
@[surface_novel, surface_published]
theorem boundary_increment_is_carry {p : ℕ} (hp : 0 < p) (lapValue : ℕ) :
    absoluteExponent p lapValue (p - 1) + 1 =
      absoluteExponent p (lapValue + 1) 0 := by
  have hone : 1 ≤ p := hp
  calc
    absoluteExponent p lapValue (p - 1) + 1 =
        p * lapValue + ((p - 1) + 1) := by
          simp [absoluteExponent, Nat.add_assoc]
    _ = p * lapValue + p := by rw [Nat.sub_add_cancel hone]
    _ = absoluteExponent p (lapValue + 1) 0 := by
      simp [absoluteExponent, Nat.mul_add]

/-! ## A generic finite mixed-radix cell -/

/--
Heterogeneous bounded digits.  The head of the radix list is the least
significant coordinate, matching `S₀ = 1` in the protocol definition.
-/
@[surface_novel]
inductive BoundedCell : List ℕ → Type
  | nil : BoundedCell []
  | cons {radix : ℕ} {radices : List ℕ} :
      Fin radix → BoundedCell radices → BoundedCell (radix :: radices)

/-- The size of a mixed-radix bounded cell. -/
@[expose, surface_novel]
def cellCapacity : List ℕ → ℕ
  | [] => 1
  | radix :: radices => cellCapacity radices * radix

@[surface_novel, surface_published]
theorem cellCapacity_eq_prod (radices : List ℕ) :
    cellCapacity radices = radices.prod := by
  induction radices with
  | nil => rfl
  | cons radix radices ih =>
      simp [cellCapacity, ih, Nat.mul_comm]

/-- Split a nonempty bounded cell into its higher digits and its head digit. -/
@[expose, surface_novel]
def splitCellEquiv {radix : ℕ} {radices : List ℕ} :
    BoundedCell (radix :: radices) ≃ BoundedCell radices × Fin radix where
  toFun cell :=
    match cell with
    | .cons digit tail => ⟨tail, digit⟩
  invFun pair := .cons pair.2 pair.1
  left_inv cell := by cases cell; rfl
  right_inv pair := by rcases pair with ⟨tail, digit⟩; rfl

/--
The complete mixed-radix encoder.  `finProdFinEquiv` uses
`head + radix * tail`, so this is the requested least-significant-first rank.
-/
@[expose, surface_novel]
def mixedRadixEquiv : (radices : List ℕ) →
    BoundedCell radices ≃ Fin (cellCapacity radices)
  | [] =>
      { toFun := fun _ => ⟨0, by simp [cellCapacity]⟩
        invFun := fun _ => .nil
        left_inv := by intro cell; cases cell; rfl
        right_inv := by
          intro index
          apply Fin.ext
          change 0 = index.val
          have hi := index.isLt
          change index.val < 1 at hi
          omega }
  | radix :: radices =>
      splitCellEquiv.trans
        ((Equiv.prodCongr (mixedRadixEquiv radices)
          (Equiv.refl (Fin radix))).trans finProdFinEquiv)

/-- Encode a bounded state as its finite storage ordinal. -/
@[expose, surface_novel]
def encode {radices : List ℕ} (cell : BoundedCell radices) :
    Fin (cellCapacity radices) :=
  mixedRadixEquiv radices cell

/-- Decode a valid storage ordinal back into all bounded digits. -/
@[expose, surface_novel]
def decode {radices : List ℕ} (index : Fin (cellCapacity radices)) :
    BoundedCell radices :=
  (mixedRadixEquiv radices).symm index

/-- The scalar ordinal underlying `encode`. -/
@[expose, surface_novel]
def rank {radices : List ℕ} (cell : BoundedCell radices) : ℕ :=
  (encode cell).val

@[surface_novel, surface_published, simp]
theorem rank_nil : rank BoundedCell.nil = 0 :=
  rfl

@[surface_novel, surface_published, simp]
theorem rank_cons {radix : ℕ} {radices : List ℕ}
    (digit : Fin radix) (tail : BoundedCell radices) :
    rank (BoundedCell.cons digit tail) = digit.val + radix * rank tail :=
  rfl

/-- Every encoded rank is inside the full product bound. -/
@[surface_novel, surface_published]
theorem rank_lt_capacity {radices : List ℕ} (cell : BoundedCell radices) :
    rank cell < cellCapacity radices :=
  (encode cell).isLt

/-- Decoding an encoded state recovers every bounded digit. -/
@[surface_novel, surface_published]
theorem decode_encode {radices : List ℕ} (cell : BoundedCell radices) :
    decode (encode cell) = cell :=
  (mixedRadixEquiv radices).symm_apply_apply cell

/-- Encoding a decoded in-range ordinal recovers the ordinal. -/
@[surface_novel, surface_published]
theorem encode_decode {radices : List ℕ}
    (index : Fin (cellCapacity radices)) :
    encode (decode index) = index :=
  (mixedRadixEquiv radices).apply_symm_apply index

@[surface_novel, surface_published]
theorem rank_decode {radices : List ℕ}
    (index : Fin (cellCapacity radices)) :
    rank (decode index) = index.val := by
  exact congrArg Fin.val (encode_decode index)

/-! ## A finite CRT coordinate equivalence -/

/--
For a finite family of pairwise-coprime radices, CRT identifies the product of
the cyclic coordinate rings with the single cyclic class modulo their product.
The inverse direction is called `finiteCrtEncode` below because it takes the
coordinate packet to its torsion-compatible scalar class.
-/
@[expose, surface_novel]
noncomputable def finiteCrtEquiv {Index : Type*} [Fintype Index]
    (radix : Index → ℕ)
    (coprime : Pairwise (Function.onFun Nat.Coprime radix)) :
    ((i : Index) → ZMod (radix i)) ≃+* ZMod (∏ i, radix i) :=
  (ZMod.prodEquivPi radix coprime).symm

@[expose, surface_novel]
noncomputable def finiteCrtEncode {Index : Type*} [Fintype Index]
    (radix : Index → ℕ)
    (coprime : Pairwise (Function.onFun Nat.Coprime radix))
    (coordinates : (i : Index) → ZMod (radix i)) : ZMod (∏ i, radix i) :=
  finiteCrtEquiv radix coprime coordinates

@[expose, surface_novel]
noncomputable def finiteCrtDecode {Index : Type*} [Fintype Index]
    (radix : Index → ℕ)
    (coprime : Pairwise (Function.onFun Nat.Coprime radix))
    (crtClass : ZMod (∏ i, radix i)) : (i : Index) → ZMod (radix i) :=
  (finiteCrtEquiv radix coprime).symm crtClass

@[surface_novel, surface_published]
theorem finiteCrt_decode_encode {Index : Type*} [Fintype Index]
    (radix : Index → ℕ)
    (coprime : Pairwise (Function.onFun Nat.Coprime radix))
    (coordinates : (i : Index) → ZMod (radix i)) :
    finiteCrtDecode radix coprime (finiteCrtEncode radix coprime coordinates) =
      coordinates :=
  (finiteCrtEquiv radix coprime).symm_apply_apply coordinates

@[surface_novel, surface_published]
theorem finiteCrt_encode_decode {Index : Type*} [Fintype Index]
    (radix : Index → ℕ)
    (coprime : Pairwise (Function.onFun Nat.Coprime radix))
    (crtClass : ZMod (∏ i, radix i)) :
    finiteCrtEncode radix coprime (finiteCrtDecode radix coprime crtClass) =
      crtClass :=
  (finiteCrtEquiv radix coprime).apply_symm_apply crtClass

/-- CRT encoding preserves componentwise cyclic addition. -/
@[surface_novel, surface_published]
theorem finiteCrt_encode_add {Index : Type*} [Fintype Index]
    (radix : Index → ℕ)
    (coprime : Pairwise (Function.onFun Nat.Coprime radix))
    (left right : (i : Index) → ZMod (radix i)) :
    finiteCrtEncode radix coprime (left + right) =
      finiteCrtEncode radix coprime left + finiteCrtEncode radix coprime right :=
  map_add (finiteCrtEquiv radix coprime) left right

/-! ## Request-depth metadata is not torsion-power metadata -/

@[surface_novel]
inductive ExponentKind
  | requestExponent
  | torsionPower
  deriving DecidableEq, Repr

/-- Scheduler-depth metadata.  Its exponent counts operator applications. -/
@[surface_novel]
structure RequestExponentMetadata (p : PrimeRadix) where
  coordinate : PrimeCoordinate p

/-- Integral homology metadata for a factor `Z / p^power Z`. -/
@[surface_novel]
structure TorsionPowerMetadata where
  factorId : String
  prime : ℕ
  isPrime : Nat.Prime prime
  power : ℕ
  powerPositive : 0 < power

@[surface_novel]
def RequestExponentMetadata.kind {p : PrimeRadix}
    (_ : RequestExponentMetadata p) : ExponentKind :=
  .requestExponent

@[surface_novel]
def TorsionPowerMetadata.kind (_ : TorsionPowerMetadata) : ExponentKind :=
  .torsionPower

@[surface_novel, surface_published]
theorem request_exponent_kind_ne_torsion_power :
    ExponentKind.requestExponent ≠ ExponentKind.torsionPower := by
  decide

/-! ## Authority-preserving deterministic classification -/

@[surface_novel]
inductive Authority
  | modelProposed
  | deterministic
  | certificate
  | theorem
  deriving DecidableEq, Repr

/-- An artifact whose authority is tracked in its type. -/
@[surface_novel]
structure Authorized (authority : Authority) (Payload : Type) where
  payload : Payload

/-- Wrap an untrusted model result with proposal-only authority. -/
@[expose, surface_interface]
def modelProposal {Payload : Type} (payload : Payload) :
    Authorized .modelProposed Payload :=
  ⟨payload⟩

/--
Deterministic classification can change the payload but cannot promote the
authority index of a model proposal.
-/
@[expose, surface_interface]
def deterministicClassify {Input Output : Type} (classifier : Input → Output)
    (proposal : Authorized .modelProposed Input) :
    Authorized .modelProposed Output :=
  ⟨classifier proposal.payload⟩

@[expose, surface_novel]
def authorityOf {authority : Authority} {Payload : Type}
    (_ : Authorized authority Payload) : Authority :=
  authority

@[surface_novel, surface_published]
theorem deterministic_classification_preserves_proposal_authority
    {Input Output : Type} (classifier : Input → Output)
    (proposal : Authorized .modelProposed Input) :
    authorityOf (deterministicClassify classifier proposal) =
      Authority.modelProposed :=
  rfl

@[surface_novel, surface_published]
theorem deterministic_classification_not_theorem_authority
    {Input Output : Type} (classifier : Input → Output)
    (proposal : Authorized .modelProposed Input) :
    authorityOf (deterministicClassify classifier proposal) ≠ Authority.theorem := by
  change Authority.modelProposed ≠ Authority.theorem
  decide

/-! ## Sparse ledger extension and external-prime breaches -/

/-- One prime-labelled absolute request exponent in the immutable ledger. -/
@[surface_novel]
structure LedgerCoordinate where
  prime : ℕ
  absoluteExponent : ℕ
  deriving DecidableEq, Repr

/-- A finite ledger epoch represented by its stable prime coordinates. -/
@[surface_novel]
structure LedgerExponentState where
  epoch : ℕ
  coordinates : List LedgerCoordinate
  deriving DecidableEq, Repr

/-- The sparse arithmetic identity retains only nonzero absolute exponents. -/
@[expose, surface_novel]
def sparseNonzeroCoordinateIdentity (ledger : LedgerExponentState) :
    List LedgerCoordinate :=
  ledger.coordinates.filter (fun coordinate => coordinate.absoluteExponent ≠ 0)

/-- Extend the ledger by a newly discovered prime at zero request depth. -/
@[expose, surface_novel]
def appendZeroExponent (ledger : LedgerExponentState) (newPrime : ℕ) :
    LedgerExponentState where
  epoch := ledger.epoch + 1
  coordinates := ledger.coordinates ++ [⟨newPrime, 0⟩]

/-- Appending a zero exponent preserves the old sparse nonzero node identity. -/
@[surface_novel, surface_published]
theorem append_zero_preserves_sparse_identity
    (ledger : LedgerExponentState) (newPrime : ℕ) :
    sparseNonzeroCoordinateIdentity (appendZeroExponent ledger newPrime) =
      sparseNonzeroCoordinateIdentity ledger := by
  simp [sparseNonzeroCoordinateIdentity, appendZeroExponent]

@[expose, surface_novel]
def ledgerPrimes (ledger : LedgerExponentState) : List ℕ :=
  ledger.coordinates.map LedgerCoordinate.prime

/-- An external-prime breach carries both primality and ledger-absence proofs. -/
@[surface_certificate]
structure ExternalPrimeBreach (ledger : LedgerExponentState) where
  prime : ℕ
  isPrime : Nat.Prime prime
  absentFromLedger : prime ∉ ledgerPrimes ledger

@[surface_novel, surface_published]
theorem external_breach_names_absent_prime
    {ledger : LedgerExponentState} (breach : ExternalPrimeBreach ledger) :
    breach.prime ∉ ledgerPrimes ledger :=
  breach.absentFromLedger

/-! ## Certified torsion references and precision authority -/

/-- The precision of the homology evidence, kept separate from request depth. -/
@[surface_novel]
inductive HomologyPrecision
  | integralExact
  | fieldOnly
  deriving DecidableEq, Repr

/--
Exact-power authority is inhabited only at integral precision.  There is no
constructor whose result has `fieldOnly` precision.
-/
@[surface_certificate]
inductive ExactPowerAuthority : HomologyPrecision → Type
  | certified (receiptDigest : String) :
      ExactPowerAuthority .integralExact

@[surface_novel, surface_published]
theorem field_only_cannot_yield_exact_power_authority :
    IsEmpty (ExactPowerAuthority .fieldOnly) :=
  ⟨by intro evidence; cases evidence⟩

@[surface_novel, surface_published]
theorem no_exact_power_from_field_only
    (evidence : ExactPowerAuthority .fieldOnly) : False := by
  cases evidence

/-- One exact integral torsion factor `Z / prime^power Z`. -/
@[surface_certificate]
structure CertifiedTorsionFactor where
  factorId : String
  degree : ℕ
  prime : ℕ
  isPrime : Nat.Prime prime
  power : ℕ
  powerPositive : 0 < power
  multiplicity : ℕ
  multiplicityPositive : 0 < multiplicity

/-- A factor list tied to an external exact-power certificate. -/
@[surface_certificate]
structure CertifiedTorsionPacket where
  degree : ℕ
  factors : List CertifiedTorsionFactor
  allFactorsAtDegree : ∀ factor ∈ factors, factor.degree = degree
  exactPowerAuthority : ExactPowerAuthority .integralExact

/-- A torsion reference is an in-bounds index into one certified packet. -/
@[surface_certificate]
structure CertifiedTorsionFactorReference (packet : CertifiedTorsionPacket) where
  index : Fin packet.factors.length

@[expose, surface_novel]
def resolveTorsionFactor (packet : CertifiedTorsionPacket)
    (reference : CertifiedTorsionFactorReference packet) : CertifiedTorsionFactor :=
  packet.factors.get reference.index

/-- Every well-typed factor reference resolves to a factor in its certificate. -/
@[surface_novel, surface_published]
theorem every_certified_torsion_reference_resolves
    (packet : CertifiedTorsionPacket)
    (reference : CertifiedTorsionFactorReference packet) :
    resolveTorsionFactor packet reference ∈ packet.factors := by
  exact List.get_mem packet.factors reference.index

@[surface_novel, surface_published]
theorem resolved_torsion_reference_has_packet_degree
    (packet : CertifiedTorsionPacket)
    (reference : CertifiedTorsionFactorReference packet) :
    (resolveTorsionFactor packet reference).degree = packet.degree :=
  packet.allFactorsAtDegree _
    (every_certified_torsion_reference_resolves packet reference)

/-! ## Executable first-five-prime specimen -/

@[surface_novel]
def firstFiveRadices : List ℕ :=
  [2, 3, 5, 7, 11]

@[surface_certificate]
theorem firstFive_cell_capacity :
    cellCapacity firstFiveRadices = 2310 := by
  native_decide

/-- Residues `(0,1,0,0,0)` for `12 = 2^2 * 3`. -/
@[surface_novel]
def twelveBoundedCell : BoundedCell firstFiveRadices :=
  .cons ⟨0, by decide⟩
    (.cons ⟨1, by decide⟩
      (.cons ⟨0, by decide⟩
        (.cons ⟨0, by decide⟩
          (.cons ⟨0, by decide⟩ .nil))))

@[surface_certificate]
theorem twelve_bounded_cell_ordinal :
    rank twelveBoundedCell = 2 := by
  native_decide

@[surface_novel]
def primeTwo : PrimeRadix :=
  ⟨2, by norm_num⟩

@[surface_certificate]
theorem twelve_two_coordinate_lap_residue :
    (PrimeCoordinate.ofExponent primeTwo 2).lap = 1 ∧
      (PrimeCoordinate.ofExponent primeTwo 2).digit.val = 0 := by
  native_decide

@[surface_certificate]
theorem twelve_cell_round_trip :
    decode (encode twelveBoundedCell) = twelveBoundedCell :=
  decode_encode twelveBoundedCell

/-!
The generic finite CRT equivalence above is proof-oriented and noncomputable
because Mathlib obtains it through quotient rings.  The following fixed P5
formula is the executable presentation used for concrete certificates.  Its
coefficients are `M_i * u_i` for moduli `(2,3,5,7,11)`.
-/

@[expose, surface_novel]
def p5RadixFamily : Fin 5 → ℕ :=
  ![2, 3, 5, 7, 11]

@[surface_novel, surface_published]
theorem p5Radices_pairwise_coprime :
    Pairwise (Function.onFun Nat.Coprime p5RadixFamily) := by
  intro i j hij
  fin_cases i <;> fin_cases j <;>
    simp [Function.onFun, p5RadixFamily] at * <;> norm_num [Nat.Coprime]

@[surface_certificate]
theorem p5_radix_product :
    (∏ i, p5RadixFamily i) = 2310 := by
  native_decide

@[expose, surface_novel]
def p5NodeTwelveResidues : Fin 5 → ℕ :=
  ![0, 1, 0, 0, 0]

/-- An executable least nonnegative CRT representative for the P5 cell. -/
@[expose, surface_novel]
def p5CrtRepresentative (residues : Fin 5 → ℕ) : ℕ :=
  (residues 0 * 1155 + residues 1 * 1540 + residues 2 * 1386 +
      residues 3 * 330 + residues 4 * 210) % 2310

@[expose, surface_novel]
def p5DecodeRepresentative (crtClass : ℕ) : Fin 5 → ℕ :=
  ![crtClass % 2, crtClass % 3, crtClass % 5, crtClass % 7, crtClass % 11]

@[surface_certificate]
theorem node_twelve_p5_crt_certificate :
    p5CrtRepresentative p5NodeTwelveResidues = 1540 := by
  native_decide

/-- The executable representative decodes to all five requested residues. -/
@[surface_certificate]
theorem node_twelve_p5_crt_decodes :
    p5DecodeRepresentative (p5CrtRepresentative p5NodeTwelveResidues) =
      p5NodeTwelveResidues := by
  native_decide

@[expose, surface_novel]
def nodeTwelveP5Ledger : LedgerExponentState where
  epoch := 1
  coordinates := [⟨2, 2⟩, ⟨3, 1⟩, ⟨5, 0⟩, ⟨7, 0⟩, ⟨11, 0⟩]

@[surface_certificate]
def nodeTwelveThirteenBreach : ExternalPrimeBreach nodeTwelveP5Ledger where
  prime := 13
  isPrime := by norm_num
  absentFromLedger := by
    norm_num [ledgerPrimes, nodeTwelveP5Ledger]

@[surface_certificate]
theorem node_twelve_extension_by_thirteen_preserves_sparse_identity :
    sparseNonzeroCoordinateIdentity
        (appendZeroExponent nodeTwelveP5Ledger nodeTwelveThirteenBreach.prime) =
      sparseNonzeroCoordinateIdentity nodeTwelveP5Ledger :=
  append_zero_preserves_sparse_identity _ _

end Surface.PrimeBoundedContinuation
