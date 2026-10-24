# Complete source: GRWTSK.Topology.MetricTopology.Interchange.Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `232a3eef882e3ff5c5babbdee300cc0b6183da9d` · SHA-256 `146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Topology.MetricSpace.Lipschitz

/-!
# Sequence--depth interchange

The comparison is a four-carrier square.  Its paths meet only in the declared
comparison carrier, preventing accidental identification of source families,
aggregates, transported sources, and comparison values.
-/

namespace Mathematics.Attention

open scoped NNReal

universe uX uPrev uNow uY uZ uR

/-- A fully typed sequence--depth comparison square. -/
structure InterchangeSquare
    (PrevSources : Type uX)
    (PrevAggregate : Type uPrev)
    (NowSources : Type uNow)
    (Compare : Type uY) where
  retrievePrev : PrevSources → PrevAggregate
  transportAggregate : PrevAggregate → Compare
  transportSources : PrevSources → NowSources
  retrieveNow : NowSources → Compare

namespace InterchangeSquare

variable {PrevSources : Type uX}
variable {PrevAggregate : Type uPrev}
variable {NowSources : Type uNow}
variable {Compare : Type uY}

/-- Retrieve first, then transport the aggregate. -/
def leftPath
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) :
    PrevSources → Compare :=
  square.transportAggregate ∘ square.retrievePrev

/-- Transport sources first, then retrieve at the new cut. -/
def rightPath
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) :
    PrevSources → Compare :=
  square.retrieveNow ∘ square.transportSources

/-- Metric interchange defect, valid without subtraction. -/
def metricDefect
    [PseudoMetricSpace Compare]
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    ℝ≥0 :=
  nndist (leftPath square input) (rightPath square input)

/-- Exact commutation certificate. -/
structure ExactCertificate
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) :
    Prop where
  commutes :
    ∀ input,
      leftPath square input = rightPath square input

/-- Sound uniform bound on the metric interchange defect. -/
structure Certificate
    [PseudoMetricSpace Compare]
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) where
  bound : ℝ≥0
  sound :
    ∀ input,
      metricDefect square input ≤ bound

/-- Sound bound at one committed, snapshot-bound input. -/
structure SnapshotCertificate
    [PseudoMetricSpace Compare]
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) where
  input : PrevSources
  bound : ℝ≥0
  sound : metricDefect square input ≤ bound

/-- Exact commutation induces a zero-defect certificate. -/
def ExactCertificate.toCertificate
    [PseudoMetricSpace Compare]
    {square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare}
    (certificate : ExactCertificate square) :
    Certificate square where
  bound := 0
  sound input := by
    simp [metricDefect, certificate.commutes input]

/-- In a metric space, a zero uniform bound forces exact commutation. -/
theorem Certificate.exact_of_bound_eq_zero
    [MetricSpace Compare]
    {square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare}
    (certificate : Certificate square)
    (boundZero : certificate.bound = 0) :
    ExactCertificate square := by
  refine ⟨fun input => ?_⟩
  have defectZero :
      metricDefect square input = 0 := by
    apply le_antisymm
    · simpa [boundZero] using certificate.sound input
    · exact bot_le
  have pathsZero :
      nndist
          (leftPath square input)
          (rightPath square input) =
        0 := by
    simpa [metricDefect] using defectZero
  exact nndist_eq_zero.mp pathsZero

/-- Postcompose both comparison paths by one downstream map. -/
def postcompose
    {Z : Type uZ}
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (post : Compare → Z) :
    InterchangeSquare
      PrevSources PrevAggregate NowSources Z where
  retrievePrev := square.retrievePrev
  transportAggregate := post ∘ square.transportAggregate
  transportSources := square.transportSources
  retrieveNow := post ∘ square.retrieveNow

/-- A downstream `K`-Lipschitz map amplifies defect by at most `K`. -/
theorem metricDefect_postcompose_le
    {Z : Type uZ}
    [PseudoMetricSpace Compare]
    [PseudoMetricSpace Z]
    {K : ℝ≥0}
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (post : Compare → Z)
    (postLipschitz : LipschitzWith K post)
    (input : PrevSources) :
    metricDefect (postcompose square post) input ≤
      K * metricDefect square input := by
  simpa [metricDefect, leftPath, rightPath, postcompose,
    Function.comp_apply] using
      postLipschitz.nndist_le
        (leftPath square input)
        (rightPath square input)

/-- Transport a defect certificate through a downstream Lipschitz map. -/
def Certificate.postcompose
    {Z : Type uZ}
    [PseudoMetricSpace Compare]
    [PseudoMetricSpace Z]
    {K : ℝ≥0}
    {square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare}
    (certificate : Certificate square)
    (post : Compare → Z)
    (postLipschitz : LipschitzWith K post) :
    Certificate (InterchangeSquare.postcompose square post) where
  bound := K * certificate.bound
  sound input := by
    calc
      metricDefect (InterchangeSquare.postcompose square post) input
          ≤ K * metricDefect square input :=
        metricDefect_postcompose_le
          square post postLipschitz input
      _ ≤ K * certificate.bound :=
        mul_le_mul_right (certificate.sound input) K

section Additive

variable [SeminormedAddCommGroup Compare]

/-- Algebraic defect, available when subtraction exists. -/
def algebraicDefect
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    Compare :=
  leftPath square input - rightPath square input

/-- The algebraic and metric defects agree through the norm. -/
theorem nnnorm_algebraicDefect
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    ‖algebraicDefect square input‖₊ =
      metricDefect square input := by
  exact
    (nndist_eq_nnnorm_sub
      (leftPath square input)
      (rightPath square input)).symm

end Additive

end InterchangeSquare

/-- Snapshot metadata wrapper for a pointwise interchange certificate. -/
structure AttentionInterchangeReceipt
    (Digest LayerId TokenId : Type*)
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY}
    [PseudoMetricSpace Compare]
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) where
  layer : LayerId
  token : TokenId
  inputDigest : Digest
  transportDigest : Digest
  snapshotDigest : Digest
  certificate : InterchangeSquare.SnapshotCertificate square

/-- Architecture-level name for the metric defect. -/
def interchangeDefect
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY}
    [PseudoMetricSpace Compare]
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    ℝ≥0 :=
  InterchangeSquare.metricDefect square input

/-- Architecture-level name for a bounded interchange certificate. -/
abbrev AttentionInterchangeCertificate
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY}
    [PseudoMetricSpace Compare]
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) :=
  InterchangeSquare.Certificate square

/-- Linear specialization realizing `K ∘ D - D ∘ (⊕ Kᵢ)`. -/
structure LinearInterchangeSquare
    (R : Type uR)
    (PrevSources : Type uX)
    (PrevAggregate : Type uPrev)
    (NowSources : Type uNow)
    (Compare : Type uY)
    [Ring R]
    [AddCommGroup PrevSources]
    [Module R PrevSources]
    [AddCommGroup PrevAggregate]
    [Module R PrevAggregate]
    [AddCommGroup NowSources]
    [Module R NowSources]
    [AddCommGroup Compare]
    [Module R Compare] where
  retrievePrev : PrevSources →ₗ[R] PrevAggregate
  transportAggregate : PrevAggregate →ₗ[R] Compare
  transportSources : PrevSources →ₗ[R] NowSources
  retrieveNow : NowSources →ₗ[R] Compare

namespace LinearInterchangeSquare

variable {R : Type uR}
variable {PrevSources : Type uX}
variable {PrevAggregate : Type uPrev}
variable {NowSources : Type uNow}
variable {Compare : Type uY}
variable [Ring R]
variable [AddCommGroup PrevSources] [Module R PrevSources]
variable [AddCommGroup PrevAggregate] [Module R PrevAggregate]
variable [AddCommGroup NowSources] [Module R NowSources]
variable [AddCommGroup Compare] [Module R Compare]

/-- Forget linear structure while retaining carrier boundaries. -/
def toInterchangeSquare
    (square :
      LinearInterchangeSquare
        R PrevSources PrevAggregate NowSources Compare) :
    InterchangeSquare
      PrevSources PrevAggregate NowSources Compare where
  retrievePrev := square.retrievePrev
  transportAggregate := square.transportAggregate
  transportSources := square.transportSources
  retrieveNow := square.retrieveNow

/-- Linear-map-valued interchange defect. -/
def defect
    (square :
      LinearInterchangeSquare
        R PrevSources PrevAggregate NowSources Compare) :
    PrevSources →ₗ[R] Compare :=
  square.transportAggregate.comp square.retrievePrev -
    square.retrieveNow.comp square.transportSources

@[simp]
theorem defect_apply
    (square :
      LinearInterchangeSquare
        R PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    defect square input =
      square.transportAggregate (square.retrievePrev input) -
        square.retrieveNow (square.transportSources input) := by
  simp [defect]

/-- Vanishing linear defect is equivalent to exact commutation. -/
theorem defect_eq_zero_iff
    (square :
      LinearInterchangeSquare
        R PrevSources PrevAggregate NowSources Compare) :
    defect square = 0 ↔
      ∀ input,
        square.transportAggregate (square.retrievePrev input) =
          square.retrieveNow (square.transportSources input) := by
  constructor
  · intro defectZero input
    have inputZero := congrArg
      (fun map : PrevSources →ₗ[R] Compare => map input)
      defectZero
    have subtractionZero :
        square.transportAggregate (square.retrievePrev input) -
            square.retrieveNow (square.transportSources input) =
          0 := by
      simpa [defect] using inputZero
    exact sub_eq_zero.mp subtractionZero
  · intro commutes
    ext input
    simp [defect, commutes input]

end LinearInterchangeSquare

end Mathematics.Attention
```
