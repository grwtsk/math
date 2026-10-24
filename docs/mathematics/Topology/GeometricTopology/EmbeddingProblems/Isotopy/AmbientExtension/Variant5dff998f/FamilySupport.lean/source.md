# Complete source: GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.FamilySupport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bc71d41a16ff504c49889fa46ccf75c748a24e3` · SHA-256 `2c1c5a85ed250887db6efebd8e92a0c8a5609b6828babd8888a1aa9bfcc3baec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed conditional candidate: Consequences of a supplied ambient extension family and its support controls

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the source archives and copied source documentation.
Original source SHA256: 5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f
Organized source SHA256: 3cfff07d632287e4fb5b99ebca7556f3f6a8912e9ce1719093a82f9238770d90
Review: attribution-254-review-000034.
PMD: 510.4.060.060.040 isotopy; secondary 510.4.060.030 surgery theory.
The taxonomy is editorial navigation only.
All family and support results are conditional projections of the supplied extension record, preserving all-time and terminal control distinctions.
Legacy dependency Surface.SmoothFramedSurgery.CollaredGluing remains explicit
and unresolved for replay. Original module documentation covers the complete
unsplit source; no Lean compilation, proof acceptance or public admission is asserted.
-/

import Surface.SmoothFramedSurgery.CollaredGluing
import GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.Theory

/-!
# Conditional ambient isotopy extension

An isotopy of framed attaching data yields a comparison of surgery outputs
only after an ambient isotopy-extension theorem with support and boundary
control is available.  Mathlib does not currently provide that theorem in the
generality required here.  `AmbientIsotopyExtensionTheory` therefore retains
the whole parameterized extension: a nondegenerate time object with named
endpoints, a jointly smooth ambient family, the framed-embedding path it
carries, and support, interiority, fixed-outside, and fixed-boundary control at
every time.  Its terminal ambient map is identified with the time-one member
of that family and induces the natural map on surgery.  Identity, reversal,
and concatenation laws make the endpoint assignment coherent.

This is a conditional port.  No ambient-extension capability is manufactured
from a proof of `FramedIsotopic`; callers must supply the whole record.
-/

open Surface.SmoothFramedSurgery

namespace GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f

universe uD uA

namespace AmbientIsotopyExtensionTheory

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)

include A G

/-- The time object used by ambient extension has distinct named endpoints. -/
theorem time_endpoints_distinct :
    A.timeZero ≠ A.timeOne :=
  A.time_zero_ne_one

/-- The supplied ambient family is jointly smooth in the model-specific sense. -/
theorem ambientFamily_isSmooth
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.AmbientFamilySmooth (A.ambientFamily h) :=
  A.ambient_family_smooth h

/-- The carried framed-embedding path is jointly smooth as well. -/
theorem framedEmbeddingAt_isSmooth
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.FramedFamilySmooth (A.framedEmbeddingAt h) :=
  A.framed_family_smooth h

/-- The parameterized ambient extension starts at the identity. -/
theorem ambientFamily_zero
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.ambientFamily h A.timeZero = G.refl M :=
  A.ambient_family_zero h

/-- The parameterized framed path has the prescribed initial embedding. -/
theorem framedEmbeddingAt_zero
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.framedEmbeddingAt h A.timeZero = e₀ :=
  A.framed_embedding_zero h

/-- The parameterized framed path has the prescribed terminal embedding. -/
theorem framedEmbeddingAt_one
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.framedEmbeddingAt h A.timeOne = e₁ :=
  A.framed_embedding_one h

/-- The named terminal ambient map is not independent endpoint data. -/
theorem ambientFamily_one
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.ambientFamily h A.timeOne = A.ambientEnd h :=
  A.ambient_family_one h

/-- Every time slice carries the initial attaching embedding to the framed path. -/
theorem carries_embedding_at
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time) :
    A.CarriesEmbedding (A.ambientFamily h t) e₀ (A.framedEmbeddingAt h t) :=
  A.ambient_carries_embedding_at h t

/-- Support stays away from the old boundary at every time. -/
theorem supported_away_from_old_boundary_at
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time) :
    A.SupportedAwayFromOldBoundary (A.ambientFamily h t) :=
  A.ambient_supported h t

/-- The selected support remains in the interior at every time. -/
theorem supported_in_interior_at
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time) :
    A.SupportedInInterior (A.ambientFamily h t) :=
  A.ambient_interior h t

/-- Every time slice is fixed outside its selected support. -/
theorem fixes_outside_support_at
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time) :
    A.FixesOutsideSupport (A.ambientFamily h t) :=
  A.ambient_fixes_outside h t

/-- Every time slice is fixed on the old boundary. -/
theorem fixes_old_boundary_at
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time) :
    A.FixesOldBoundary (A.ambientFamily h t) :=
  A.ambient_fixes_boundary h t

/--
The load-bearing family certificate: the retained extension is smooth, starts
at the identity and the initial framed embedding, ends at the requested
embedding and named terminal map, and satisfies every control predicate at
every parameter value.
-/
theorem ambient_family_certificate
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.AmbientFamilySmooth (A.ambientFamily h) ∧
      A.FramedFamilySmooth (A.framedEmbeddingAt h) ∧
      A.ambientFamily h A.timeZero = G.refl M ∧
      A.framedEmbeddingAt h A.timeZero = e₀ ∧
      A.framedEmbeddingAt h A.timeOne = e₁ ∧
      A.ambientFamily h A.timeOne = A.ambientEnd h ∧
      ∀ t, A.CarriesEmbedding (A.ambientFamily h t) e₀
          (A.framedEmbeddingAt h t) ∧
        A.SupportedAwayFromOldBoundary (A.ambientFamily h t) ∧
        A.SupportedInInterior (A.ambientFamily h t) ∧
        A.FixesOutsideSupport (A.ambientFamily h t) ∧
        A.FixesOldBoundary (A.ambientFamily h t) :=
  ⟨A.ambient_family_smooth h,
    A.framed_family_smooth h,
    A.ambient_family_zero h,
    A.framed_embedding_zero h,
    A.framed_embedding_one h,
    A.ambient_family_one h,
    fun t =>
      ⟨A.ambient_carries_embedding_at h t,
        A.ambient_supported h t,
        A.ambient_interior h t,
        A.ambient_fixes_outside h t,
        A.ambient_fixes_boundary h t⟩⟩

/-- The ambient extension supplied for an isotopy has controlled support. -/
theorem supported_away_from_old_boundary
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.SupportedAwayFromOldBoundary (A.ambientEnd h) := by
  rw [← A.ambient_family_one h]
  exact A.ambient_supported h A.timeOne

/-- The supplied support is explicitly interior, not merely disjoint from a label. -/
theorem supported_in_interior
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.SupportedInInterior (A.ambientEnd h) := by
  rw [← A.ambient_family_one h]
  exact A.ambient_interior h A.timeOne

/-- The terminal ambient extension is fixed outside its selected support. -/
theorem fixes_outside_support
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.FixesOutsideSupport (A.ambientEnd h) := by
  rw [← A.ambient_family_one h]
  exact A.ambient_fixes_outside h A.timeOne

/-- The ambient extension is relative to the old boundary. -/
theorem fixes_old_boundary
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.FixesOldBoundary (A.ambientEnd h) := by
  rw [← A.ambient_family_one h]
  exact A.ambient_fixes_boundary h A.timeOne

/-- The ambient extension carries the first framed embedding to the second. -/
theorem carries_embedding
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.CarriesEmbedding (A.ambientEnd h) e₀ e₁ := by
  rw [← A.ambient_family_one h]
  exact Eq.mp
    (congrArg
      (fun e => A.CarriesEmbedding (A.ambientFamily h A.timeOne) e₀ e)
      (A.framed_embedding_one h))
    (A.ambient_carries_embedding_at h A.timeOne)

/-- All four support-control obligations are retained together. -/
theorem controlled_support
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.SupportedAwayFromOldBoundary (A.ambientEnd h) ∧
      A.SupportedInInterior (A.ambientEnd h) ∧
      A.FixesOutsideSupport (A.ambientEnd h) ∧
      A.FixesOldBoundary (A.ambientEnd h) :=
  ⟨A.supported_away_from_old_boundary h,
    A.supported_in_interior h,
    A.fixes_outside_support h,
    A.fixes_old_boundary h⟩

end AmbientIsotopyExtensionTheory

end GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f
```
