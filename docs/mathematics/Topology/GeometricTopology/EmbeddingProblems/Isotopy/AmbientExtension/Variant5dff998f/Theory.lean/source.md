# Complete source: GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.Theory

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19ce211a629a357b9dfc164d21c4c96af487d4b1` · SHA-256 `1df6c7528107f464155d8025376bc9ac1acf9c5f857fa68c054664f81e98b85a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed conditional candidate: Conditional ambient isotopy extension capability

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
This module only defines the full supplied extension interface. It does not assert that any such capability is inhabited.
Legacy dependency Surface.SmoothFramedSurgery.CollaredGluing remains explicit
and unresolved for replay. Original module documentation covers the complete
unsplit source; no Lean compilation, proof acceptance or public admission is asserted.
-/

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

open Surface.SmoothFramedSurgery

namespace GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f

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

end GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f
```
