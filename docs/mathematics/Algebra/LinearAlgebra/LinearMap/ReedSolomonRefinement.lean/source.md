# Complete source: GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47590da95970d55ac5e2b49a24660ff0611083ec` · SHA-256 `61d0c683372cd6ef6c0e102fcd7ad20e3334b1cb7d1bb348663be7a7f1d36d8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Tactic.Abel

set_option autoImplicit false

open scoped BigOperators

/-!
# Source-preserving Reed--Solomon refinement

This file isolates the bounded linear algebra needed to move four-symbol quadratic
Reed--Solomon observations between refinements without replacing their three-dimensional
source.  A decoder is part of the data: distinct evaluation nodes alone do not choose a
stable decoder or provide a quantitative norm bound.

The main estimate charges the aggregate seam and every child interpolation error after
returning them through the actual source functional.  In particular, decoder norm growth
is visible in the conclusion.  Coverage is an explicit equality, and a separate lemma
records that codeword-shaped errors remain invisible to any syndrome map annihilating the
code space.
-/

namespace GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement

noncomputable section

/-- A bounded encoder and decoder with exact recovery of the source payload. -/
structure Code (𝕜 X Y : Type*) [NontriviallyNormedField 𝕜]
    [NormedAddCommGroup X] [NormedSpace 𝕜 X]
    [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] where
  encode : X →L[𝕜] Y
  decode : Y →L[𝕜] X
  decode_encode : Function.LeftInverse decode encode

/-- A four-node quadratic evaluation code in a declared coefficient basis.

The injectivity hypothesis rejects repeated ordinary Reed--Solomon nodes.  Multiplicity
weights or Hermite jets require a different code object. -/
structure QuadraticEvaluationCode (𝕜 : Type*) [NontriviallyNormedField 𝕜] where
  nodes : Fin 4 → 𝕜
  nodes_injective : Function.Injective nodes
  encode : (Fin 3 → 𝕜) →L[𝕜] (Fin 4 → 𝕜)
  encode_apply : ∀ x i,
    encode x i = x 0 + nodes i * x 1 + nodes i ^ 2 * x 2
  decode : (Fin 4 → 𝕜) →L[𝕜] (Fin 3 → 𝕜)
  decode_encode : Function.LeftInverse decode encode

/-- The bounded source code underlying a quadratic evaluation code. -/
def QuadraticEvaluationCode.toCode {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (code : QuadraticEvaluationCode 𝕜) :
    Code 𝕜 (Fin 3 → 𝕜) (Fin 4 → 𝕜) where
  encode := code.encode
  decode := code.decode
  decode_encode := code.decode_encode

/-- The heterogeneous fourth record attached to observed symbols.

No algebraic structure is imposed on the syndrome, comparison information, or coverage
certificate.  Their dimensions and scales can therefore differ from those of the symbols. -/
structure AuditRecord (Syndrome Comparison : Type*) (Coverage : Prop) where
  syndrome : Syndrome
  interpolationError : ℝ
  comparison : Comparison
  coverage : Coverage

/-- Observed symbols together with their heterogeneous audit record. -/
structure Observation (Y Syndrome Comparison : Type*) (Coverage : Prop) where
  symbols : Y
  audit : AuditRecord Syndrome Comparison Coverage

/-- A refinement covers its aggregate source exactly, with neither omission nor duplication. -/
def CoverageCertificate {X ι : Type*} [AddCommMonoid X]
    (s : Finset ι) (aggregate : X) (source : ι → X) : Prop :=
  aggregate = ∑ i ∈ s, source i

variable {𝕜 X Y Y₁ Y₂ Z W ι : Type*}
  [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup X] [NormedSpace 𝕜 X]
  [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
  [NormedAddCommGroup Y₁] [NormedSpace 𝕜 Y₁]
  [NormedAddCommGroup Y₂] [NormedSpace 𝕜 Y₂]
  [NormedAddCommGroup Z] [NormedSpace 𝕜 Z]
  [NormedAddCommGroup W] [NormedSpace 𝕜 W]

@[simp]
theorem Code.decode_encode_apply (code : Code 𝕜 X Y) (x : X) :
    code.decode (code.encode x) = x :=
  code.decode_encode x

/-- Transport child symbols by decoding to the common source and re-encoding at the parent. -/
def transport (parent : Code 𝕜 X Y₁) (child : Code 𝕜 X Y) : Y →L[𝕜] Y₁ :=
  parent.encode.comp child.decode

@[simp]
theorem transport_apply (parent : Code 𝕜 X Y₁) (child : Code 𝕜 X Y) (y : Y) :
    transport parent child y = parent.encode (child.decode y) :=
  rfl

@[simp]
theorem decode_transport_apply (parent : Code 𝕜 X Y₁) (child : Code 𝕜 X Y) (y : Y) :
    parent.decode (transport parent child y) = child.decode y := by
  simp [transport]

@[simp]
theorem transport_encode_apply (parent : Code 𝕜 X Y₁) (child : Code 𝕜 X Y) (x : X) :
    transport parent child (child.encode x) = parent.encode x := by
  simp [transport]

/-- Transports compose through any further refinement, including changes of node set. -/
theorem transport_comp (parent : Code 𝕜 X Y₂) (middle : Code 𝕜 X Y₁)
    (child : Code 𝕜 X Y) :
    (transport parent middle).comp (transport middle child) = transport parent child := by
  ext y
  simp [transport]

/-- Exact source coverage gives exact encoded aggregation at the parent node set. -/
theorem encode_aggregate (s : Finset ι) (parent : Code 𝕜 X Y₁)
    (child : ι → Code 𝕜 X Y) (aggregate : X) (source : ι → X)
    (coverage : CoverageCertificate s aggregate source) :
    parent.encode aggregate =
      ∑ i ∈ s, transport parent (child i) ((child i).encode (source i)) := by
  unfold CoverageCertificate at coverage
  rw [coverage]
  simp only [map_sum, transport_encode_apply]

/-- A syndrome that vanishes on the code space cannot detect a codeword-shaped error. -/
theorem codeword_error_invisible (code : Code 𝕜 X Y) (syndrome : Y →L[𝕜] W)
    (annihilates : syndrome.comp code.encode = 0) (x : X) :
    syndrome (code.encode x) = 0 := by
  simpa using congrArg (fun map : X →L[𝕜] W => map x) annihilates

/-- Exact decomposition of the reconstructed source error into one aggregate seam and
all child interpolation errors. -/
theorem reconstruction_identity (s : Finset ι) (parent : Code 𝕜 X Y₁)
    (child : ι → Code 𝕜 X Y) (L : X →L[𝕜] Z)
    (aggregate : X) (source : ι → X) (parentData : Y₁) (childData : ι → Y)
    (coverage : CoverageCertificate s aggregate source) :
    L (parent.decode parentData) - L aggregate =
      (L.comp parent.decode)
          (parentData - ∑ i ∈ s, transport parent (child i) (childData i)) +
        ∑ i ∈ s, (L.comp (child i).decode)
          (childData i - (child i).encode (source i)) := by
  unfold CoverageCertificate at coverage
  subst aggregate
  simp only [ContinuousLinearMap.comp_apply, map_sub, map_sum,
    decode_transport_apply, Code.decode_encode_apply]
  rw [Finset.sum_sub_distrib]
  abel

/-- Source-preserving refinement with explicit error returned through the actual consumer.

This is the quantitative Reed--Solomon aggregation estimate.  The first term charges the
parent comparison seam; every remaining term charges an independently certified child
source error.  The operator norms make ill-conditioned decoders visible. -/
theorem source_error_bound (s : Finset ι) (parent : Code 𝕜 X Y₁)
    (child : ι → Code 𝕜 X Y) (L : X →L[𝕜] Z)
    (aggregate : X) (source : ι → X) (parentData : Y₁) (childData : ι → Y)
    (ε : ι → ℝ) (δ : ℝ)
    (coverage : CoverageCertificate s aggregate source)
    (aggregateError :
      ‖parentData - ∑ i ∈ s, transport parent (child i) (childData i)‖ ≤ δ)
    (sourceError : ∀ i ∈ s,
      ‖childData i - (child i).encode (source i)‖ ≤ ε i) :
    ‖L (parent.decode parentData) - L aggregate‖ ≤
      ‖L.comp parent.decode‖ * δ +
        ∑ i ∈ s, ‖L.comp (child i).decode‖ * ε i := by
  have identity := reconstruction_identity s parent child L aggregate source
    parentData childData coverage
  calc
    ‖L (parent.decode parentData) - L aggregate‖ =
        ‖(L.comp parent.decode)
            (parentData - ∑ i ∈ s, transport parent (child i) (childData i)) +
          ∑ i ∈ s, (L.comp (child i).decode)
            (childData i - (child i).encode (source i))‖ := by rw [identity]
    _ ≤ ‖(L.comp parent.decode)
            (parentData - ∑ i ∈ s, transport parent (child i) (childData i))‖ +
          ‖∑ i ∈ s, (L.comp (child i).decode)
            (childData i - (child i).encode (source i))‖ :=
      norm_add_le _ _
    _ ≤ ‖(L.comp parent.decode)
            (parentData - ∑ i ∈ s, transport parent (child i) (childData i))‖ +
          ∑ i ∈ s, ‖(L.comp (child i).decode)
            (childData i - (child i).encode (source i))‖ := by
      exact add_le_add (le_refl _) (norm_sum_le _ _)
    _ ≤ ‖L.comp parent.decode‖ * δ +
          ∑ i ∈ s, ‖L.comp (child i).decode‖ * ε i := by
      apply add_le_add
      · calc
          ‖(L.comp parent.decode)
              (parentData - ∑ i ∈ s, transport parent (child i) (childData i))‖
              ≤ ‖L.comp parent.decode‖ *
                  ‖parentData - ∑ i ∈ s, transport parent (child i) (childData i)‖ :=
            (L.comp parent.decode).le_opNorm _
          _ ≤ ‖L.comp parent.decode‖ * δ :=
            mul_le_mul_of_nonneg_left aggregateError (norm_nonneg _)
      · apply Finset.sum_le_sum
        intro i hi
        calc
          ‖(L.comp (child i).decode)
              (childData i - (child i).encode (source i))‖
              ≤ ‖L.comp (child i).decode‖ *
                  ‖childData i - (child i).encode (source i)‖ :=
            (L.comp (child i).decode).le_opNorm _
          _ ≤ ‖L.comp (child i).decode‖ * ε i :=
            mul_le_mul_of_nonneg_left (sourceError i hi) (norm_nonneg _)

end

end GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement
```
