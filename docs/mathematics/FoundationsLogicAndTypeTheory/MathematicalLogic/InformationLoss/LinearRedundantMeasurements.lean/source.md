# Complete source: GRWTSK.Logic.InformationLoss.LinearRedundantMeasurements

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb036375da2510a1580f578e54edeb3cf5405722` · SHA-256 `d2006c14914121fd09033b203fb8370b5b40bbcfe2251e502f6be11418f218de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED; no root import.
-/
import GRWTSK.Logic.InformationLoss.LinearObservationKernels

/-!
# Redundant linear measurements and invisible directions

A second linear measurement A obtained by postcomposing P cannot shrink
the common kernel. Conversely, an added measurement that removes a
particular invisible direction does not factor through P.

This is pointwise algebra only. No minimal measurement count, norm bound,
closed range, stability or spectral/analytic assertion is made.
-/
set_option autoImplicit false

universe u v w t
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]
variable {Z : Type t} [AddCommGroup Z] [Module K Z]

/-- Postprocessing an existing linear observation adds no new invisible
direction information. -/
theorem postprocessed_linear_observation_kernel_iff
    (P : V →ₗ[K] Y) (B : Y →ₗ[K] W) (h : V) :
    P h = 0 ∧ (B.comp P) h = 0 ↔ P h = 0 := by
  constructor
  · exact And.left
  · intro hp
    constructor
    · exact hp
    · simp [LinearMap.comp_apply, hp]

/-- Adding postprocessed observations cannot repair a kernel-containment
failure: recovery of R from the pair is equivalent to recovery from P. -/
theorem postprocessed_augmented_reconstruction_iff
    (P : V →ₗ[K] Y) (B : Y →ₗ[K] W) (R : V →ₗ[K] Z) :
    (∀ h : V, P h = 0 → (B.comp P) h = 0 → R h = 0) ↔
      (∀ h : V, P h = 0 → R h = 0) := by
  constructor
  · intro ha h hp
    exact ha h hp (by simp [LinearMap.comp_apply, hp])
  · intro hr h hp _
    exact hr h hp

/-- Detecting an old invisible direction certifies that the additional
linear observation cannot itself be a postprocessing of the old one. -/
theorem detecting_invisible_direction_not_postprocessed
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (h : V) (hp : P h = 0) (ha : A h ≠ 0) :
    ¬ ∃ B : Y →ₗ[K] W, A = B.comp P := by
  rintro ⟨B, hfactor⟩
  apply ha
  rw [hfactor]
  simp [LinearMap.comp_apply, hp]

end GRWTSK.Logic.InformationLoss
```
