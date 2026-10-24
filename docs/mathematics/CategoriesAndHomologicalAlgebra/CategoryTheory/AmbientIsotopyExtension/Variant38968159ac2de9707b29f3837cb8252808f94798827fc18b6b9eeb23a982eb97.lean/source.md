# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AmbientIsotopyExtension.Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e2ea1e382339d4f06277cff8e733da5b0724334` · SHA-256 `78583597d127e4422357f69dd26acbf2a2313e62ed336c1f6a35d9ecc72eadc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AmbientIsotopyExtensionTheory.Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AmbientIsotopyExtensionTheory.Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/AmbientIsotopyExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.CollaredGluing

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


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AmbientIsotopyExtensionTheory.Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f

namespace Surface.SmoothFramedSurgery

universe uD uA

/--
Functorial ambient extension of framed isotopies, relative to the old
boundary and common exterior.

The laws prevent unrelated existential diffeomorphisms from masquerading as
one coherent isotopy-extension operation.
-/
structure AmbientIsotopyExtensionTheory
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  /-- The parameter object used by the supplied smooth isotopies. -/
  Time : Type uD
  /-- The initial parameter. -/
  timeZero : Time
  /-- The terminal parameter. -/
  timeOne : Time
  /-- An ambient isotopy has genuinely distinct initial and terminal parameters. -/
  time_zero_ne_one : timeZero ≠ timeOne
  isotopyRefl : ∀ {p q M},
    (e : T.FramedEmbedding p q M) → T.FramedIsotopic e e
  isotopySymm : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → T.FramedIsotopic e₁ e₀
  isotopyTrans : ∀ {p q M} {e₀ e₁ e₂ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → T.FramedIsotopic e₁ e₂ →
      T.FramedIsotopic e₀ e₂
  /-- The actual ambient family extending a supplied framed isotopy. -/
  ambientFamily : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → Time → G.Hom M M
  /-- The framed attaching data carried by the ambient family at each time. -/
  framedEmbeddingAt : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → Time → T.FramedEmbedding p q M
  /-- Model-specific joint smoothness of a parameterized family of ambient maps. -/
  AmbientFamilySmooth : ∀ {M}, (Time → G.Hom M M) → Prop
  /-- Model-specific joint smoothness of a parameterized family of framed embeddings. -/
  FramedFamilySmooth : ∀ {p q M},
    (Time → T.FramedEmbedding p q M) → Prop
  ambient_family_smooth : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    AmbientFamilySmooth (ambientFamily h)
  framed_family_smooth : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    FramedFamilySmooth (framedEmbeddingAt h)
  /-- The ambient family starts at the identity map. -/
  ambient_family_zero : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    ambientFamily h timeZero = G.refl M
  /-- The framed path starts at the first supplied attaching embedding. -/
  framed_embedding_zero : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    framedEmbeddingAt h timeZero = e₀
  /-- The framed path ends at the second supplied attaching embedding. -/
  framed_embedding_one : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    framedEmbeddingAt h timeOne = e₁
  ambientEnd : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → G.Hom M M
  /-- The separately named terminal map is exactly the time-one family member. -/
  ambient_family_one : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    ambientFamily h timeOne = ambientEnd h
  /-- The model-specific assertion that an ambient map has controlled support. -/
  SupportedAwayFromOldBoundary : ∀ {M}, G.Hom M M → Prop
  /-- The support is contained in the interior of the selected ambient manifold. -/
  SupportedInInterior : ∀ {M}, G.Hom M M → Prop
  /-- The ambient map is pointwise fixed outside its selected support. -/
  FixesOutsideSupport : ∀ {M}, G.Hom M M → Prop
  /-- The model-specific assertion that an ambient map fixes the old boundary. -/
  FixesOldBoundary : ∀ {M}, G.Hom M M → Prop
  /-- The model-specific assertion that an ambient map carries framed data exactly. -/
  CarriesEmbedding : ∀ {p q M},
    G.Hom M M → T.FramedEmbedding p q M → T.FramedEmbedding p q M → Prop
  /-- At every time, the ambient family carries the initial embedding to the path value. -/
  ambient_carries_embedding_at : ∀ {p q M}
      {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    CarriesEmbedding (ambientFamily h t) e₀ (framedEmbeddingAt h t)
  ambient_supported : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    SupportedAwayFromOldBoundary (ambientFamily h t)
  ambient_interior : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    SupportedInInterior (ambientFamily h t)
  ambient_fixes_outside : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    FixesOutsideSupport (ambientFamily h t)
  ambient_fixes_boundary : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁) (t : Time),
    FixesOldBoundary (ambientFamily h t)
  ambient_carries_embedding : ∀ {p q M}
      {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    CarriesEmbedding (ambientEnd h) e₀ e₁
  /-- Surgery is functorial for a controlled ambient map carrying the attaching data. -/
  inducedOnSurgery : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (ambient : G.Hom M M),
    CarriesEmbedding ambient e₀ e₁ →
      G.Hom (T.surgery e₀) (T.surgery e₁)
  surgeryEnd : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M},
    T.FramedIsotopic e₀ e₁ → G.Hom (T.surgery e₀) (T.surgery e₁)
  surgery_naturality : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    surgeryEnd h = inducedOnSurgery (ambientEnd h) (ambient_carries_embedding h)
  ambient_refl : ∀ {p q M} (e : T.FramedEmbedding p q M),
    ambientEnd (isotopyRefl e) = G.refl M
  surgery_refl : ∀ {p q M} (e : T.FramedEmbedding p q M),
    surgeryEnd (isotopyRefl e) = G.refl (T.surgery e)
  ambient_symm : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    ambientEnd (isotopySymm h) = G.symm (ambientEnd h)
  surgery_symm : ∀ {p q M} {e₀ e₁ : T.FramedEmbedding p q M}
      (h : T.FramedIsotopic e₀ e₁),
    surgeryEnd (isotopySymm h) = G.symm (surgeryEnd h)
  ambient_trans : ∀ {p q M} {e₀ e₁ e₂ : T.FramedEmbedding p q M}
      (h₀₁ : T.FramedIsotopic e₀ e₁)
      (h₁₂ : T.FramedIsotopic e₁ e₂),
    ambientEnd (isotopyTrans h₀₁ h₁₂) =
      G.trans (ambientEnd h₀₁) (ambientEnd h₁₂)
  surgery_trans : ∀ {p q M} {e₀ e₁ e₂ : T.FramedEmbedding p q M}
      (h₀₁ : T.FramedIsotopic e₀ e₁)
      (h₁₂ : T.FramedIsotopic e₁ e₂),
    surgeryEnd (isotopyTrans h₀₁ h₁₂) =
      G.trans (surgeryEnd h₀₁) (surgeryEnd h₁₂)

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

/-- The surgery comparison is precisely the map induced by ambient extension. -/
theorem surgeryEnd_eq_induced
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.surgeryEnd h =
      A.inducedOnSurgery (A.ambientEnd h) (A.ambient_carries_embedding h) :=
  A.surgery_naturality h

/-- Ambient extension supplies the relative-boundary surgery comparison. -/
theorem surgery_invariant
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    T.RelBoundaryDiffeomorphic (T.surgery e₀) (T.surgery e₁) :=
  RelativeBoundaryDiffeomorphismTheory.sound G (A.surgeryEnd h)

/-- Reversing the isotopy reverses the bundled surgery comparison. -/
theorem surgeryEnd_reverse
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.surgeryEnd (A.isotopySymm h) = G.symm (A.surgeryEnd h) :=
  A.surgery_symm h

/-- Concatenation is sent to composition, so the induced comparison is path coherent. -/
theorem surgeryEnd_concat
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ e₂ : T.FramedEmbedding p q M}
    (h₀₁ : T.FramedIsotopic e₀ e₁)
    (h₁₂ : T.FramedIsotopic e₁ e₂) :
    A.surgeryEnd (A.isotopyTrans h₀₁ h₁₂) =
      G.trans (A.surgeryEnd h₀₁) (A.surgeryEnd h₁₂) :=
  A.surgery_trans h₀₁ h₁₂

/-- The identity isotopy extends to the identity ambient comparison. -/
@[simp]
theorem ambientEnd_identity
    {p q : Nat} {M : T.Manifold}
    (e : T.FramedEmbedding p q M) :
    A.ambientEnd (A.isotopyRefl e) = G.refl M :=
  A.ambient_refl e

/-- The identity isotopy induces the identity comparison after surgery. -/
@[simp]
theorem surgeryEnd_identity
    {p q : Nat} {M : T.Manifold}
    (e : T.FramedEmbedding p q M) :
    A.surgeryEnd (A.isotopyRefl e) = G.refl (T.surgery e) :=
  A.surgery_refl e

/-- Ambient extension reverses coherently with reversal of the framed isotopy. -/
theorem ambientEnd_reverse
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.ambientEnd (A.isotopySymm h) = G.symm (A.ambientEnd h) :=
  A.ambient_symm h

/-- Ambient extension carries isotopy concatenation to groupoid composition. -/
theorem ambientEnd_concat
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ e₂ : T.FramedEmbedding p q M}
    (h₀₁ : T.FramedIsotopic e₀ e₁)
    (h₁₂ : T.FramedIsotopic e₁ e₂) :
    A.ambientEnd (A.isotopyTrans h₀₁ h₁₂) =
      G.trans (A.ambientEnd h₀₁) (A.ambientEnd h₁₂) :=
  A.ambient_trans h₀₁ h₁₂

/-- Any invariant functorial under bundled relative diffeomorphisms is isotopy invariant. -/
theorem invariant_eq
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    {Invariant : Type uA}
    (value : T.Manifold → Invariant)
    (respects : ∀ {X Y}, G.Hom X Y → value X = value Y) :
    value (T.surgery e₀) = value (T.surgery e₁) :=
  respects (A.surgeryEnd h)

end AmbientIsotopyExtensionTheory

end Surface.SmoothFramedSurgery
```
