# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Avalanche.Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d00ee9c03cd9f493f70e5c4d08c5ded99110181` · SHA-256 `62289a452359c31decb02c21622a638c7d23fcd72e5c72a6e18249effe10afc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ZeroBits.Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.ZeroBits.Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"f29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/Avalanche.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.Quantization
import BinaryMatrix.SATReduction
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Exact finite avalanche semantics

This module studies Boolean derivatives of fixed-width transformations using
`SATReduction.Bits`; no second bit-vector representation is introduced.

For a transformation `H` and input `x`, `localJacobian H x` is one exact
Boolean matrix.  Its `(i,j)` entry records whether output bit `j` changes when
input bit `i` is flipped at that particular input.  SAC entries are different:
they aggregate those local observations over the entire finite input domain.

Derivative values are constant on the two endpoints of every input-difference
edge.  A nonzero difference acts without fixed points, so every differential
fiber, and in particular every one-bit SAC count, is paired and therefore
even.  Injectivity rules out only the zero output difference; it does not force
the remaining differences to be balanced.  The identity permutation below is
the canonical counterexample to any claim that bijectivity alone supplies
avalanche diffusion.

The random-function weight law is binomial.  For a random permutation, the
two distinct endpoints of a fixed input edge must have distinct outputs, so
the corresponding law is the binomial law conditioned on a nonzero output
difference.  These are fixed-edge distributions (equivalently, ensemble
expectations of empirical edge histograms), not independence assertions about
all edges in one sampled function or permutation.

Finally, SAC scores measure marginal balance only.  Even perfect one-bit
marginals need not make different output-flip bits independent; the concrete
three-bit permutation in `BinaryMatrix.AvalancheTests` witnesses this with a
nonzero pair correlation.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ZeroBits.Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc

namespace Avalanche

open SATReduction
open scoped BigOperators

/-! ## Bit-vector algebra -/

/-- The all-zero bit vector. -/
def zeroBits (n : Nat) : Bits n :=
  fun _ => false

/-- Pointwise Boolean exclusive-or. -/
def xorBits {n : Nat} (x y : Bits n) : Bits n :=
  fun j => x j != y j

/-- The bit vector supported at exactly one coordinate. -/
def basisBit {n : Nat} (i : Fin n) : Bits n :=
  fun j => decide (j = i)

/-- Flip coordinate `i` of `x`. -/
def flipBit {n : Nat} (x : Bits n) (i : Fin n) : Bits n :=
  xorBits x (basisBit i)

@[simp]
theorem xorBits_zero_right {n : Nat} (x : Bits n) :
    xorBits x (zeroBits n) = x := by
  funext j
  cases h : x j <;> simp [xorBits, zeroBits, h]

@[simp]
theorem xorBits_zero_left {n : Nat} (x : Bits n) :
    xorBits (zeroBits n) x = x := by
  funext j
  cases h : x j <;> simp [xorBits, zeroBits, h]

@[simp]
theorem xorBits_self {n : Nat} (x : Bits n) :
    xorBits x x = zeroBits n := by
  funext j
  cases x j <;> simp [xorBits, zeroBits]

theorem xorBits_comm {n : Nat} (x y : Bits n) :
    xorBits x y = xorBits y x := by
  funext j
  cases hx : x j <;> cases hy : y j <;> simp [xorBits, hx, hy]

theorem xorBits_assoc {n : Nat} (x y z : Bits n) :
    xorBits (xorBits x y) z = xorBits x (xorBits y z) := by
  funext j
  cases hx : x j <;> cases hy : y j <;> cases hz : z j <;>
    simp [xorBits, hx, hy, hz]

theorem xorBits_cancel_right {n : Nat} (x y z : Bits n) :
    xorBits x z = xorBits y z ↔ x = y := by
  constructor
  · intro h
    have := congrArg (fun w => xorBits w z) h
    simpa [xorBits_assoc] using this
  · exact fun h => h ▸ rfl

theorem xorBits_eq_zero_iff {n : Nat} (x y : Bits n) :
    xorBits x y = zeroBits n ↔ x = y := by
  rw [← xorBits_self y, xorBits_cancel_right]

@[simp]
theorem xorBits_cancel_self_right {n : Nat} (x y : Bits n) :
    xorBits (xorBits x y) y = x := by
  rw [xorBits_assoc, xorBits_self, xorBits_zero_right]

@[simp]
theorem flipBit_apply_same {n : Nat} (x : Bits n) (i : Fin n) :
    flipBit x i i = !x i := by
  simp [flipBit, xorBits, basisBit]

theorem flipBit_apply_ne {n : Nat} (x : Bits n) {i j : Fin n}
    (hij : j ≠ i) :
    flipBit x i j = x j := by
  simp [flipBit, xorBits, basisBit, hij]

@[simp]
theorem flipBit_involutive {n : Nat} (x : Bits n) (i : Fin n) :
    flipBit (flipBit x i) i = x := by
  exact xorBits_cancel_self_right x (basisBit i)

theorem basisBit_ne_zero {n : Nat} (i : Fin n) :
    basisBit i ≠ zeroBits n := by
  intro h
  have := congrFun h i
  simp [basisBit, zeroBits] at this

theorem xorBits_ne_self_of_ne_zero {n : Nat} (x δ : Bits n)
    (hδ : δ ≠ zeroBits n) :
    xorBits x δ ≠ x := by
  intro h
  have h' := congrArg (fun y => xorBits x y) h
  rw [xorBits_self, ← xorBits_assoc, xorBits_self, xorBits_zero_left] at h'
  exact hδ h'

theorem flipBit_ne {n : Nat} (x : Bits n) (i : Fin n) :
    flipBit x i ≠ x :=
  xorBits_ne_self_of_ne_zero x (basisBit i) (basisBit_ne_zero i)

/-! ## Boolean derivatives and local Jacobians -/

/-- The output difference across the input edge with displacement `δ`. -/
def derivative {n : Nat} (H : Bits n → Bits n) (δ x : Bits n) : Bits n :=
  xorBits (H x) (H (xorBits x δ))

/-- The derivative in the one-bit direction `i`. -/
def bitDerivative {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (x : Bits n) : Bits n :=
  derivative H (basisBit i) x

/-- One output coordinate of a one-bit derivative. -/
def derivativeBit {n : Nat} (H : Bits n → Bits n) (i j : Fin n)
    (x : Bits n) : Bool :=
  bitDerivative H i x j

/--
The exact local derivative matrix at one input.  Avalanche probabilities are
aggregates over all inputs and are not contained in this single Boolean matrix.
-/
def localJacobian {n : Nat} (H : Bits n → Bits n) (x : Bits n) : BinMat n n :=
  fun i j => derivativeBit H i j x

@[simp]
theorem derivative_shift {n : Nat} (H : Bits n → Bits n)
    (δ x : Bits n) :
    derivative H δ (xorBits x δ) = derivative H δ x := by
  simp only [derivative, xorBits_cancel_self_right]
  exact xorBits_comm _ _

@[simp]
theorem bitDerivative_flipBit {n : Nat} (H : Bits n → Bits n)
    (i : Fin n) (x : Bits n) :
    bitDerivative H i (flipBit x i) = bitDerivative H i x := by
  exact derivative_shift H (basisBit i) x

/-- Quantize each input by its one-point local derivative matrix. -/
def jacobianQuantizer {n : Nat} (H : Bits n → Bits n) :
    BinMat.Quantizer (Bits n) n n :=
  ⟨localJacobian H⟩

@[simp]
theorem jacobianQuantizer_encode {n : Nat} (H : Bits n → Bits n)
    (x : Bits n) :
    (jacobianQuantizer H).encode x = localJacobian H x :=
  rfl

/-! ## Exact differential and SAC counts -/

/-- The number of inputs whose `δ`-derivative equals `γ`. -/
def differentialCount {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) : Nat :=
  (Finset.univ.filter fun x => derivative H δ x = γ).card

/-- Exact rational normalization of a differential count. -/
def differentialProbability {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) : ℚ :=
  differentialCount H δ γ / 2 ^ n

/-- The number of inputs for which output bit `j` flips in direction `i`. -/
def sacCount {n : Nat} (H : Bits n → Bits n) (i j : Fin n) : Nat :=
  (Finset.univ.filter fun x => derivativeBit H i j x = true).card

/-- The exact marginal output-flip frequency. -/
def sacEntry {n : Nat} (H : Bits n → Bits n) (i j : Fin n) : ℚ :=
  sacCount H i j / 2 ^ n

/-- Strict avalanche balance, expressed without truncated natural subtraction. -/
def StrictSAC {n : Nat} (H : Bits n → Bits n) : Prop :=
  ∀ i j, 2 * sacCount H i j = 2 ^ n

/-- There are exactly `2 ^ n` bit vectors of width `n`. -/
theorem card_bits (n : Nat) : Fintype.card (Bits n) = 2 ^ n := by
  change Fintype.card (Fin n → Bool) = 2 ^ n
  rw [Fintype.card_fun]
  simp

/-- Differential fibers partition the entire input space. -/
theorem differentialCount_sum {n : Nat} (H : Bits n → Bits n)
    (δ : Bits n) :
    ∑ γ : Bits n, differentialCount H δ γ = 2 ^ n := by
  classical
  simpa [differentialCount, card_bits] using
    (Finset.sum_card_fiberwise_eq_card_filter
      (Finset.univ : Finset (Bits n))
      (Finset.univ : Finset (Bits n))
      (derivative H δ))

/-- A differential fiber is the whole domain exactly for a constant derivative. -/
theorem differentialCount_eq_full_iff {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) :
    differentialCount H δ γ = 2 ^ n ↔
      ∀ x, derivative H δ x = γ := by
  classical
  rw [differentialCount, ← card_bits n, ← Finset.card_univ]
  simpa using
    (Finset.card_filter_eq_iff
      (s := (Finset.univ : Finset (Bits n)))
      (p := fun x => derivative H δ x = γ))

/-- Probability one is exactly the deterministic differential corridor condition. -/
theorem differentialProbability_eq_one_iff {n : Nat}
    (H : Bits n → Bits n) (δ γ : Bits n) :
    differentialProbability H δ γ = 1 ↔
      ∀ x, derivative H δ x = γ := by
  rw [differentialProbability,
    div_eq_one_iff_eq (by positivity : (2 : ℚ) ^ n ≠ 0)]
  constructor
  · intro h
    apply (differentialCount_eq_full_iff H δ γ).mp
    exact_mod_cast h
  · intro h
    have hc := (differentialCount_eq_full_iff H δ γ).mpr h
    exact_mod_cast hc

private theorem exists_true_of_ne_zero {n : Nat} {δ : Bits n}
    (hδ : δ ≠ zeroBits n) : ∃ i, δ i = true := by
  classical
  by_contra h
  apply hδ
  funext i
  cases hi : δ i
  · rfl
  · exact (h ⟨i, hi⟩).elim

/--
An invariant subset of bit vectors has even cardinality when a nonzero XOR
translation pairs its elements.  The proof splits at a coordinate where the
translation is `true` and exhibits a bijection between its two halves.
-/
private theorem filter_card_even_of_xor_invariant
    {n : Nat} (δ : Bits n) (hδ : δ ≠ zeroBits n)
    (P : Bits n → Prop) [DecidablePred P]
    (hP : ∀ x, P (xorBits x δ) ↔ P x) :
    Even ((Finset.univ.filter P).card) := by
  classical
  obtain ⟨i, hi⟩ := exists_true_of_ne_zero hδ
  let S : Finset (Bits n) := Finset.univ.filter P
  let Sfalse : Finset (Bits n) := S.filter fun x => x i = false
  let Strue : Finset (Bits n) := S.filter fun x => x i = true
  let f : Bits n → Bits n := fun x => xorBits x δ
  have hf_mem : Set.MapsTo f (Sfalse : Set (Bits n))
      (Strue : Set (Bits n)) := by
    intro x hx
    change x ∈ Sfalse at hx
    change f x ∈ Strue
    simp [Sfalse, S] at hx
    simp only [Strue, S, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hP x).2 hx.1
    · simp [f, xorBits, hi, hx.2]
  have hg_mem : Set.MapsTo f (Strue : Set (Bits n))
      (Sfalse : Set (Bits n)) := by
    intro x hx
    change x ∈ Strue at hx
    change f x ∈ Sfalse
    simp [Strue, S] at hx
    simp only [Sfalse, S, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hP x).2 hx.1
    · simp [f, xorBits, hi, hx.2]
  have hf_involutive : Function.Involutive f := by
    intro x
    exact xorBits_cancel_self_right x δ
  have hcard : Sfalse.card = Strue.card :=
    Finset.card_nbij' f f hf_mem hg_mem
      (fun x _ => hf_involutive x) (fun x _ => hf_involutive x)
  have hnot : S.filter (fun x => ¬x i = false) = Strue := by
    ext x
    simp only [Strue, Finset.mem_filter]
    cases x i <;> simp
  have htotal : Sfalse.card + Strue.card = S.card := by
    change (S.filter fun x => x i = false).card + Strue.card = S.card
    rw [← hnot]
    exact Finset.card_filter_add_card_filter_not
      (s := S) (fun x => x i = false)
  refine ⟨Sfalse.card, ?_⟩
  change S.card = Sfalse.card + Sfalse.card
  omega

/-- Every nonzero-difference differential count is even. -/
theorem differentialCount_even {n : Nat} (H : Bits n → Bits n)
    {δ : Bits n} (hδ : δ ≠ zeroBits n) (γ : Bits n) :
    Even (differentialCount H δ γ) := by
  classical
  apply filter_card_even_of_xor_invariant δ hδ
  intro x
  rw [derivative_shift]

/-- Injectivity prevents a nonzero input edge from collapsing to zero output difference. -/
theorem derivative_ne_zero_of_injective {n : Nat} (H : Bits n → Bits n)
    (hinjective : Function.Injective H) {δ : Bits n}
    (hδ : δ ≠ zeroBits n) (x : Bits n) :
    derivative H δ x ≠ zeroBits n := by
  intro hzero
  have hout : H x = H (xorBits x δ) :=
    (xorBits_eq_zero_iff _ _).mp hzero
  exact (xorBits_ne_self_of_ne_zero x δ hδ) (hinjective hout).symm

/-- For an injective transformation, the zero-output differential fiber is empty. -/
theorem differentialCount_zero_of_injective {n : Nat}
    (H : Bits n → Bits n) (hinjective : Function.Injective H)
    {δ : Bits n} (hδ : δ ≠ zeroBits n) :
    differentialCount H δ (zeroBits n) = 0 := by
  classical
  simp [differentialCount, derivative_ne_zero_of_injective H hinjective hδ]

/-- Every SAC count is even because the two endpoints of each bit-flip edge agree. -/
theorem sacCount_even {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    Even (sacCount H i j) := by
  classical
  apply filter_card_even_of_xor_invariant
    (basisBit i) (basisBit_ne_zero i)
  intro x
  change (bitDerivative H i (flipBit x i) j = true) ↔
    (bitDerivative H i x j = true)
  rw [bitDerivative_flipBit]

/-- Width one cannot satisfy strict SAC: balance would require the odd count one. -/
theorem not_strictSAC_one (H : Bits 1 → Bits 1) : ¬StrictSAC H := by
  intro hSAC
  have hcount := hSAC (0 : Fin 1) (0 : Fin 1)
  have heven := sacCount_even H (0 : Fin 1) (0 : Fin 1)
  obtain ⟨k, hk⟩ := heven
  norm_num at hcount
  omega

/-! ## Exact SAC marginals and positivity scores -/

/-- A SAC count cannot exceed the finite input-domain cardinality. -/
theorem sacCount_le {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    sacCount H i j ≤ 2 ^ n := by
  simp only [sacCount]
  calc
    (Finset.univ.filter fun x => derivativeBit H i j x = true).card ≤
        (Finset.univ : Finset (Bits n)).card := Finset.card_filter_le _ _
    _ = Fintype.card (Bits n) := Finset.card_univ
    _ = 2 ^ n := card_bits n

/-- Every exact SAC frequency is nonnegative. -/
theorem sacEntry_nonneg {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    0 ≤ sacEntry H i j := by
  exact div_nonneg (by positivity) (by positivity)

/-- Every exact SAC frequency is at most one. -/
theorem sacEntry_le_one {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    sacEntry H i j ≤ 1 := by
  rw [sacEntry]
  apply (div_le_one (by positivity : (0 : ℚ) < (2 : ℚ) ^ n)).2
  exact_mod_cast sacCount_le H i j

/-- Strict SAC is exactly the assertion that every rational SAC entry is `1/2`. -/
theorem strictSAC_iff_sacEntry_eq_half {n : Nat} (H : Bits n → Bits n) :
    StrictSAC H ↔ ∀ i j, sacEntry H i j = (1 / 2 : ℚ) := by
  constructor
  · intro h i j
    have hcast : (2 * sacCount H i j : Nat) = 2 ^ n := h i j
    have hcast' : (2 : ℚ) * sacCount H i j = (2 ^ n : Nat) := by
      exact_mod_cast hcast
    rw [sacEntry, div_eq_iff (by positivity : (2 : ℚ) ^ n ≠ 0)]
    norm_num at hcast'
    nlinarith
  · intro h i j
    have hij := h i j
    rw [sacEntry, div_eq_iff (by positivity : (2 : ℚ) ^ n ≠ 0)] at hij
    have hcast : ((2 * sacCount H i j : Nat) : ℚ) = (2 ^ n : Nat) := by
      push_cast
      nlinarith
    exact_mod_cast hcast

/-- On `[0,1]`, the doubled absolute bias is at most one. -/
theorem abs_two_mul_sub_one_le_one {s : ℚ} (h0 : 0 ≤ s) (h1 : s ≤ 1) :
    |2 * s - 1| ≤ 1 := by
  rw [abs_le]
  constructor <;> linarith

private theorem four_mul_variance_nonneg {s : ℚ}
    (_h0 : 0 ≤ s) (_h1 : s ≤ 1) :
    0 ≤ 4 * s * (1 - s) := by
  positivity

/-- The scaled Bernoulli variance `4s(1-s)` is bounded by one. -/
theorem four_mul_variance_le_one {s : ℚ} (_h0 : 0 ≤ s) (_h1 : s ≤ 1) :
    4 * s * (1 - s) ≤ 1 := by
  nlinarith [sq_nonneg (2 * s - 1)]

private theorem four_mul_variance_eq_one_iff {s : ℚ}
    (_h0 : 0 ≤ s) (_h1 : s ≤ 1) :
    4 * s * (1 - s) = 1 ↔ s = 1 / 2 := by
  constructor
  · intro h
    nlinarith [sq_nonneg (2 * s - 1)]
  · intro h
    rw [h]
    norm_num

/--
Average absolute-bias positivity.  At width zero there are no marginal
conditions, strict SAC is vacuous, and the score is defined to be one.
-/
def sacScore {n : Nat} (H : Bits n → Bits n) : ℚ :=
  if n = 0 then
    1
  else
    1 -
      (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) /
      ((n * n : Nat) : ℚ)

/--
Average scaled Bernoulli variance of the SAC marginals, with the same vacuous
width-zero convention as `sacScore`.
-/
def varianceScore {n : Nat} (H : Bits n → Bits n) : ℚ :=
  if n = 0 then
    1
  else
    (∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j)) /
    ((n * n : Nat) : ℚ)

private theorem bias_sum_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ ∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1| := by
  exact Finset.sum_nonneg fun _ _ =>
    Finset.sum_nonneg fun _ _ => abs_nonneg _

private theorem bias_sum_le {n : Nat} (H : Bits n → Bits n) :
    (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) ≤
      ((n * n : Nat) : ℚ) := by
  calc
    (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) ≤
        ∑ i : Fin n, ∑ _j : Fin n, (1 : ℚ) := by
          exact Finset.sum_le_sum fun i _ =>
            Finset.sum_le_sum fun j _ =>
              abs_two_mul_sub_one_le_one
                (sacEntry_nonneg H i j) (sacEntry_le_one H i j)
    _ = ((n * n : Nat) : ℚ) := by simp

private theorem variance_sum_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ ∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j) := by
  exact Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun j _ =>
    four_mul_variance_nonneg (sacEntry_nonneg H i j) (sacEntry_le_one H i j)

private theorem variance_sum_le {n : Nat} (H : Bits n → Bits n) :
    (∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j)) ≤
      ((n * n : Nat) : ℚ) := by
  calc
    (∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j)) ≤
        ∑ i : Fin n, ∑ _j : Fin n, (1 : ℚ) := by
          exact Finset.sum_le_sum fun i _ =>
            Finset.sum_le_sum fun j _ =>
              four_mul_variance_le_one
                (sacEntry_nonneg H i j) (sacEntry_le_one H i j)
    _ = ((n * n : Nat) : ℚ) := by simp

/-- The absolute-bias score is nonnegative. -/
theorem sacScore_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ sacScore H := by
  by_cases hn : n = 0
  · simp [sacScore, hn]
  · rw [sacScore, if_neg hn]
    have hden : (0 : ℚ) < ((n * n : Nat) : ℚ) := by positivity
    have hquot :
        (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) /
            ((n * n : Nat) : ℚ) ≤ 1 :=
      (div_le_one hden).2 (bias_sum_le H)
    linarith

/-- The absolute-bias score is at most one. -/
theorem sacScore_le_one {n : Nat} (H : Bits n → Bits n) :
    sacScore H ≤ 1 := by
  by_cases hn : n = 0
  · simp [sacScore, hn]
  · rw [sacScore, if_neg hn]
    have hden : (0 : ℚ) ≤ ((n * n : Nat) : ℚ) := by positivity
    have hquot :
        0 ≤ (∑ i : Fin n, ∑ j : Fin n,
          |2 * sacEntry H i j - 1|) / ((n * n : Nat) : ℚ) :=
      div_nonneg (bias_sum_nonneg H) hden
    linarith

/-- The absolute-bias score equals one exactly at strict SAC balance. -/
theorem sacScore_eq_one_iff {n : Nat} (H : Bits n → Bits n) :
    sacScore H = 1 ↔ StrictSAC H := by
  by_cases hn : n = 0
  · subst n
    simp [sacScore, StrictSAC]
  · rw [strictSAC_iff_sacEntry_eq_half]
    constructor
    · intro hscore
      rw [sacScore, if_neg hn] at hscore
      have hden : (((n * n : Nat) : ℚ)) ≠ 0 := by positivity
      have hsum :
          (∑ i : Fin n, ∑ j : Fin n,
            |2 * sacEntry H i j - 1|) = 0 := by
        have hdiv :
            (∑ i : Fin n, ∑ j : Fin n,
              |2 * sacEntry H i j - 1|) / ((n * n : Nat) : ℚ) = 0 := by
          linarith
        exact (div_eq_zero_iff).mp hdiv |>.resolve_right hden
      intro i j
      have hi : (∑ j : Fin n, |2 * sacEntry H i j - 1|) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun i _ =>
          Finset.sum_nonneg fun j _ => abs_nonneg _).mp hsum i
            (Finset.mem_univ i)
      have hij : |2 * sacEntry H i j - 1| = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun j _ => abs_nonneg _).mp hi j
          (Finset.mem_univ j)
      rw [abs_eq_zero] at hij
      linarith
    · intro hhalf
      rw [sacScore, if_neg hn]
      simp [hhalf]

/-- The variance score is nonnegative. -/
theorem varianceScore_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ varianceScore H := by
  by_cases hn : n = 0
  · simp [varianceScore, hn]
  · rw [varianceScore, if_neg hn]
    exact div_nonneg (variance_sum_nonneg H) (by positivity)

/-- The variance score is at most one. -/
theorem varianceScore_le_one {n : Nat} (H : Bits n → Bits n) :
    varianceScore H ≤ 1 := by
  by_cases hn : n = 0
  · simp [varianceScore, hn]
  · rw [varianceScore, if_neg hn]
    exact (div_le_one (by positivity)).2 (variance_sum_le H)

/-- The variance score equals one exactly at strict SAC balance. -/
theorem varianceScore_eq_one_iff {n : Nat} (H : Bits n → Bits n) :
    varianceScore H = 1 ↔ StrictSAC H := by
  by_cases hn : n = 0
  · subst n
    simp [varianceScore, StrictSAC]
  · rw [strictSAC_iff_sacEntry_eq_half]
    constructor
    · intro hscore
      rw [varianceScore, if_neg hn] at hscore
      have hden_pos : (0 : ℚ) < ((n * n : Nat) : ℚ) := by positivity
      have hsum :
          (∑ i : Fin n, ∑ j : Fin n,
            4 * sacEntry H i j * (1 - sacEntry H i j)) =
            ((n * n : Nat) : ℚ) := by
        apply (div_eq_one_iff_eq hden_pos.ne').mp
        exact hscore
      have hdeficit :
          (∑ i : Fin n, ∑ j : Fin n,
            (1 - 4 * sacEntry H i j * (1 - sacEntry H i j))) = 0 := by
        calc
          (∑ i : Fin n, ∑ j : Fin n,
            (1 - 4 * sacEntry H i j * (1 - sacEntry H i j))) =
              (∑ i : Fin n, ((∑ _j : Fin n, (1 : ℚ)) -
                (∑ j : Fin n,
                  4 * sacEntry H i j * (1 - sacEntry H i j)))) := by
                apply Finset.sum_congr rfl
                intro i _
                exact Finset.sum_sub_distrib _ _
          _ = (∑ i : Fin n, ∑ _j : Fin n, (1 : ℚ)) -
              (∑ i : Fin n, ∑ j : Fin n,
                4 * sacEntry H i j * (1 - sacEntry H i j)) :=
                Finset.sum_sub_distrib _ _
          _ = 0 := by rw [hsum]; simp
      intro i j
      have hnonneg : ∀ (i j : Fin n),
          0 ≤ 1 - 4 * sacEntry H i j * (1 - sacEntry H i j) := by
        intro i j
        linarith [four_mul_variance_le_one
          (sacEntry_nonneg H i j) (sacEntry_le_one H i j)]
      have hi :
          (∑ j : Fin n,
            (1 - 4 * sacEntry H i j * (1 - sacEntry H i j))) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun i _ =>
          Finset.sum_nonneg fun j _ => hnonneg i j).mp hdeficit i
            (Finset.mem_univ i)
      have hij :
          1 - 4 * sacEntry H i j * (1 - sacEntry H i j) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun j _ => hnonneg i j).mp hi j
          (Finset.mem_univ j)
      apply (four_mul_variance_eq_one_iff
        (sacEntry_nonneg H i j) (sacEntry_le_one H i j)).mp
      linarith
    · intro hhalf
      rw [varianceScore, if_neg hn]
      norm_num [hhalf]
      exact hn

/-! ## Hamming weights and propagation histograms -/

/-- Number of `true` coordinates in a bit vector. -/
def hammingWeight {n : Nat} (x : Bits n) : Nat :=
  (Finset.univ.filter fun j => x j = true).card

/-- Hamming weight is bounded by the vector width. -/
theorem hammingWeight_le {n : Nat} (x : Bits n) : hammingWeight x ≤ n := by
  calc
    hammingWeight x ≤ (Finset.univ : Finset (Fin n)).card :=
      Finset.card_filter_le _ _
    _ = n := by simp

/-- A bit vector has weight zero exactly when it is the zero vector. -/
theorem hammingWeight_eq_zero_iff {n : Nat} (x : Bits n) :
    hammingWeight x = 0 ↔ x = zeroBits n := by
  constructor
  · intro h
    have hempty : (Finset.univ.filter fun j => x j = true) = ∅ :=
      Finset.card_eq_zero.mp h
    funext j
    have hfalse : x j ≠ true := by
      intro hj
      have hmem : j ∈ (Finset.univ.filter fun j => x j = true) := by
        simp [hj]
      rw [hempty] at hmem
      simp at hmem
    cases hx : x j
    · rfl
    · exact (hfalse hx).elim
  · rintro rfl
    simp [hammingWeight, zeroBits]

/-- Boolean vectors are equivalent to their finite supports. -/
private def bitsSupportEquiv (n : Nat) : Bits n ≃ Finset (Fin n) where
  toFun x := Finset.univ.filter fun j => x j = true
  invFun s j := decide (j ∈ s)
  left_inv x := by
    funext j
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    cases x j <;> simp
  right_inv s := by
    ext j
    simp

/-- Exactly `n.choose k` width-`n` bit vectors have Hamming weight `k`. -/
theorem card_hammingWeight_eq (n k : Nat) :
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
      Nat.choose n k := by
  classical
  calc
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
        ((Finset.univ : Finset (Fin n)).powersetCard k).card := by
      apply Finset.card_equiv (bitsSupportEquiv n)
      intro x
      simp only [Finset.mem_filter, Finset.mem_univ, true_and,
        Finset.mem_powersetCard, Finset.subset_univ, true_and]
      rfl
    _ = Nat.choose n k := by simp

/-- Hamming weight of the one-bit derivative at an input. -/
def propagationWeight {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (x : Bits n) : Nat :=
  hammingWeight (bitDerivative H i x)

/-- Number of inputs whose direction-`i` derivative has weight `k`. -/
def propagationCount {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (k : Nat) : Nat :=
  (Finset.univ.filter fun x => propagationWeight H i x = k).card

/-- Exact rational mass of weight `k` in one empirical propagation row. -/
def propagationMass {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (k : Nat) : ℚ :=
  propagationCount H i k / 2 ^ n

/-- Weights above the output width have empty propagation fibers. -/
theorem propagationCount_eq_zero_of_gt {n : Nat} (H : Bits n → Bits n)
    (i : Fin n) {k : Nat} (hk : n < k) :
    propagationCount H i k = 0 := by
  classical
  rw [propagationCount, Finset.card_eq_zero]
  apply Finset.filter_eq_empty_iff.mpr
  intro x _ hx
  have := hammingWeight_le (bitDerivative H i x)
  simp only [propagationWeight] at hx
  omega

/-- The finite propagation histogram contains all `2^n` inputs. -/
theorem propagationCount_sum {n : Nat} (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), propagationCount H i k = 2 ^ n := by
  classical
  simpa [propagationCount, card_bits, propagationWeight,
    Nat.lt_succ_iff, hammingWeight_le] using
    (Finset.sum_card_fiberwise_eq_card_filter
      (Finset.univ : Finset (Bits n))
      (Finset.range (n + 1))
      (propagationWeight H i))

/-- The rational propagation histogram is normalized. -/
theorem propagationMass_sum {n : Nat} (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), propagationMass H i k = 1 := by
  simp only [propagationMass, ← Finset.sum_div]
  have hsum :
      (∑ k ∈ Finset.range (n + 1), (propagationCount H i k : ℚ)) =
        ((2 ^ n : Nat) : ℚ) := by
    exact_mod_cast propagationCount_sum H i
  rw [hsum]
  norm_num

/--
The first moment of the propagation-weight histogram equals the sum of the SAC
counts in that input-direction row.
-/
theorem propagation_first_moment_count {n : Nat}
    (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), k * propagationCount H i k =
      ∑ j : Fin n, sacCount H i j := by
  have hmaps : Set.MapsTo (propagationWeight H i)
      (Finset.univ : Finset (Bits n)) (Finset.range (n + 1)) := by
    intro x _
    simpa only [Finset.coe_range, Set.mem_Iio, propagationWeight,
      Nat.succ_eq_add_one] using
      Nat.lt_succ_of_le (hammingWeight_le (bitDerivative H i x))
  calc
    ∑ k ∈ Finset.range (n + 1), k * propagationCount H i k =
        ∑ k ∈ Finset.range (n + 1),
          ∑ x ∈ (Finset.univ : Finset (Bits n)) with
              propagationWeight H i x = k,
            propagationWeight H i x := by
      apply Finset.sum_congr rfl
      intro k _
      rw [propagationCount, Nat.mul_comm]
      exact (Finset.sum_const_nat fun x hx => (Finset.mem_filter.mp hx).2).symm
    _ = ∑ x : Bits n, propagationWeight H i x :=
      Finset.sum_fiberwise_of_maps_to hmaps _
    _ = ∑ j : Fin n, sacCount H i j := by
      simp only [propagationWeight, hammingWeight, sacCount,
        Finset.card_eq_sum_ones, derivativeBit]
      simp_rw [Finset.sum_filter]
      rw [Finset.sum_comm]

/-- Rational first-moment form: `Σ k, k qᵢ(k) = Σ j, S_H(i,j)`. -/
theorem propagation_first_moment_mass {n : Nat}
    (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), (k : ℚ) * propagationMass H i k =
      ∑ j : Fin n, sacEntry H i j := by
  simp only [propagationMass, sacEntry, ← Finset.sum_div]
  field_simp
  rw [Finset.mul_sum]
  simp only [mul_div_cancel₀ _ (by positivity : (2 ^ n : ℚ) ≠ 0)]
  exact_mod_cast propagation_first_moment_count H i

/-- Injectivity forbids propagation weight zero along a one-bit direction. -/
theorem propagationCount_zero_of_injective {n : Nat}
    (H : Bits n → Bits n) (hinjective : Function.Injective H) (i : Fin n) :
    propagationCount H i 0 = 0 := by
  classical
  simp only [propagationCount, Finset.card_eq_zero]
  apply Finset.filter_eq_empty_iff.mpr
  intro x _ hx
  have hzero : bitDerivative H i x = zeroBits n :=
    (hammingWeight_eq_zero_iff _).mp hx
  exact derivative_ne_zero_of_injective H hinjective
    (basisBit_ne_zero i) x hzero

/-- The zero-weight rational mass also vanishes for an injective map. -/
theorem propagationMass_zero_of_injective {n : Nat}
    (H : Bits n → Bits n) (hinjective : Function.Injective H) (i : Fin n) :
    propagationMass H i 0 = 0 := by
  simp [propagationMass, propagationCount_zero_of_injective H hinjective i]

/-! ## Exact fixed-edge random baselines -/

/-- Binomial output-difference weight mass for a uniformly random function edge. -/
def functionWeightMass (n k : Nat) : ℚ :=
  Nat.choose n k / 2 ^ n

/--
Output-difference weight mass for a uniformly random permutation edge: the
binomial law conditioned on a nonzero difference.
-/
def permutationWeightMass (n k : Nat) : ℚ :=
  if k = 0 then
    0
  else if n = 0 then
    0
  else
    Nat.choose n k / (2 ^ n - 1)

/-- The random-function fixed-edge weight masses sum to one. -/
theorem functionWeightMass_sum (n : Nat) :
    ∑ k ∈ Finset.range (n + 1), functionWeightMass n k = 1 := by
  simp only [functionWeightMass, ← Finset.sum_div, ← Nat.cast_sum]
  rw [Nat.sum_range_choose]
  norm_num

/-- A permutation edge never has zero output difference. -/
@[simp]
theorem permutationWeightMass_zero (n : Nat) :
    permutationWeightMass n 0 = 0 := by
  simp [permutationWeightMass]

/-- The positive-weight random-permutation masses sum to one. -/
theorem permutationWeightMass_sum {n : Nat} (hn : 0 < n) :
    ∑ k ∈ Finset.range (n + 1), permutationWeightMass n k = 1 := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hmem : 0 ∈ Finset.range (n + 1) := by simp
  have hsumNat :
      ∑ k ∈ (Finset.range (n + 1)).erase 0, Nat.choose n k =
        2 ^ n - 1 := by
    have htotal := Nat.sum_range_choose n
    have herase :=
      Finset.sum_erase_add (Finset.range (n + 1)) (Nat.choose n) hmem
    simp only [Nat.choose_zero_right] at herase
    omega
  simp only [permutationWeightMass, if_neg hn0]
  rw [Finset.sum_ite]
  simp only [Finset.sum_const_zero, zero_add]
  rw [Finset.filter_ne']
  simp only [← Finset.sum_div, ← Nat.cast_sum, hsumNat]
  have hden : (0 : ℚ) < 2 ^ n - 1 := by
    exact sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)
  have hleNat : 1 ≤ 2 ^ n :=
    Nat.one_le_iff_ne_zero.mpr (pow_ne_zero n (by decide : (2 : Nat) ≠ 0))
  rw [Nat.cast_sub hleNat, Nat.cast_one]
  norm_num
  exact hden.ne'

/-- The permutation law is the function law conditioned on positive weight. -/
theorem permutationWeightMass_eq_conditioned {n k : Nat}
    (hn : 0 < n) (hk : 0 < k) :
    permutationWeightMass n k =
      functionWeightMass n k / (1 - functionWeightMass n 0) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hk0 : k ≠ 0 := Nat.ne_of_gt hk
  have hpow : (2 ^ n : ℚ) ≠ 0 := by positivity
  have hden : (2 ^ n : ℚ) - 1 ≠ 0 := by
    exact (sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)).ne'
  simp only [permutationWeightMass, functionWeightMass, if_neg hk0,
    if_neg hn0, Nat.choose_zero_right]
  field_simp [hpow, hden]
  norm_num

/-- Fixed-coordinate flip marginal under the random-permutation baseline. -/
def permutationMarginal (n : Nat) : ℚ :=
  if n = 0 then 0 else 2 ^ (n - 1) / (2 ^ n - 1)

/-- The permutation marginal exceeds one half by its exact conditioning bias. -/
theorem permutationMarginal_sub_half {n : Nat} (hn : 0 < n) :
    permutationMarginal n - 1 / 2 =
      1 / (2 * (2 ^ n - 1)) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hpow : (2 ^ n : ℚ) = 2 * 2 ^ (n - 1) := by
    have hnEq : n - 1 + 1 = n :=
      Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr hn0)
    conv_lhs => rw [← hnEq, pow_succ]
    ring
  have hden : (2 ^ n : ℚ) - 1 ≠ 0 := by
    exact (sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)).ne'
  simp only [permutationMarginal, if_neg hn0]
  field_simp [hden]
  rw [hpow]
  ring

/-! ## Identity-map counterexample -/

/-- The identity transformation is bijective at every width. -/
theorem identity_bijective {n : Nat} :
    Function.Bijective (id : Bits n → Bits n) :=
  Function.bijective_id

/-- The identity derivative in direction `i` is exactly the basis vector `i`. -/
theorem identity_bitDerivative {n : Nat} (i : Fin n) (x : Bits n) :
    bitDerivative (id : Bits n → Bits n) i x = basisBit i := by
  simp only [bitDerivative, derivative, id_eq]
  rw [← xorBits_assoc, xorBits_self, xorBits_zero_left]

/-- The identity flips exactly the corresponding output coordinate. -/
theorem identity_sacCount {n : Nat} (i j : Fin n) :
    sacCount (id : Bits n → Bits n) i j =
      if i = j then 2 ^ n else 0 := by
  classical
  simp only [sacCount, derivativeBit, identity_bitDerivative]
  by_cases hij : i = j
  · subst j
    simp [basisBit]
  · have hji : j ≠ i := Ne.symm hij
    simp [basisBit, hij, hji]

/-- The identity SAC entries are one on the diagonal and zero off it. -/
theorem identity_sacEntry {n : Nat} (i j : Fin n) :
    sacEntry (id : Bits n → Bits n) i j =
      if i = j then 1 else 0 := by
  rw [sacEntry, identity_sacCount]
  split_ifs
  · norm_num
  · simp

/-- Every positive-width identity permutation has zero absolute-bias score. -/
theorem identity_sacScore {n : Nat} (hn : 0 < n) :
    sacScore (id : Bits n → Bits n) = 0 := by
  have hterm (i j : Fin n) :
      |2 * sacEntry (id : Bits n → Bits n) i j - 1| = 1 := by
    rw [identity_sacEntry]
    by_cases hij : i = j
    · rw [if_pos hij]
      norm_num
    · rw [if_neg hij]
      norm_num
  rw [sacScore, if_neg (Nat.ne_of_gt hn)]
  simp [hterm, Nat.ne_of_gt hn]

/-- Every positive-width identity permutation has zero variance score. -/
theorem identity_varianceScore {n : Nat} (hn : 0 < n) :
    varianceScore (id : Bits n → Bits n) = 0 := by
  rw [varianceScore, if_neg (Nat.ne_of_gt hn)]
  simp [identity_sacEntry]

/--
Bijectivity alone gives no positive avalanche guarantee: at every positive
width, the bijective identity has both positivity scores equal to zero.
-/
theorem exists_bijective_with_zero_avalanche_scores {n : Nat} (hn : 0 < n) :
    ∃ H : Bits n → Bits n,
      Function.Bijective H ∧ sacScore H = 0 ∧ varianceScore H = 0 := by
  exact ⟨id, identity_bijective, identity_sacScore hn,
    identity_varianceScore hn⟩

/-- The identity local Jacobian is the Boolean identity matrix. -/
theorem identity_localJacobian {n : Nat} (x : Bits n) :
    localJacobian (id : Bits n → Bits n) x =
      fun i j => basisBit i j := by
  funext i j
  change bitDerivative (id : Bits n → Bits n) i x j = basisBit i j
  rw [identity_bitDerivative]

/-- The identity local Jacobian is independent of the input. -/
theorem identity_localJacobian_const {n : Nat} (x y : Bits n) :
    localJacobian (id : Bits n → Bits n) x =
      localJacobian (id : Bits n → Bits n) y := by
  rw [identity_localJacobian, identity_localJacobian]

private theorem identity_jacobian_effectiveStates_eq_singleton {n : Nat} :
    (jacobianQuantizer (id : Bits n → Bits n)).effectiveStates =
      {localJacobian (id : Bits n → Bits n) (zeroBits n)} := by
  classical
  ext A
  rw [BinMat.Quantizer.mem_effectiveStates_iff]
  simp only [Finset.mem_singleton]
  constructor
  · rintro ⟨x, hx⟩
    rw [jacobianQuantizer_encode,
      identity_localJacobian_const x (zeroBits n)] at hx
    exact hx.symm
  · intro hA
    refine ⟨zeroBits n, ?_⟩
    rw [jacobianQuantizer_encode]
    exact hA.symm

/-- The constant identity Jacobian realizes exactly one quantized state. -/
theorem identity_jacobian_effectiveStates_card {n : Nat} :
    (jacobianQuantizer (id : Bits n → Bits n)).effectiveStates.card = 1 := by
  rw [identity_jacobian_effectiveStates_eq_singleton]
  exact Finset.card_singleton _

/-! ## Output-flip correlations -/

/-- Encode a bit as a sign: `false ↦ 1` and `true ↦ -1`. -/
def signBit (b : Bool) : ℤ :=
  if b then -1 else 1

/-- Unnormalized pair correlation of two output-flip coordinates. -/
def correlationNumerator {n : Nat} (H : Bits n → Bits n)
    (i j k : Fin n) : ℤ :=
  ∑ x : Bits n,
    signBit (derivativeBit H i j x) * signBit (derivativeBit H i k x)

/--
Exact normalized sign correlation.  A zero value represents pairwise
independence only when both derivative-bit marginals are balanced; zero
uncentered sign correlation alone is not an independence theorem.
-/
def signCorrelation {n : Nat} (H : Bits n → Bits n)
    (i j k : Fin n) : ℚ :=
  correlationNumerator H i j k / 2 ^ n

end Avalanche
```
