# comp₀_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:580d87a0-ac6b-d07c-547d-fc43f717890e",
  "kind": "lemma",
  "lexical_name": "comp₀_rel",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "comp-rel--e0b9595f2365b7ece8cb575b",
  "source": {
    "blob": "c01295b1dc3a498f42a51e28c160231afd3a4311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 296,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b9595f2365b7ece8cb575b6270a7d0212fdaa79be6c073deab64ed40904f67",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:580d87a0-ac6b-d07c-547d-fc43f717890e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp₀_rel [W.HasLeftCalculusOfFractions]
    {X Y Z : C} (z₁ : W.LeftFraction X Y) (z₂ : W.LeftFraction Y Z)
    (z₃ z₃' : W.LeftFraction z₁.Y' z₂.Y') (h₃ : z₂.f ≫ z₃.s = z₁.s ≫ z₃.f)
    (h₃' : z₂.f ≫ z₃'.s = z₁.s ≫ z₃'.f) :
    LeftFractionRel (z₁.comp₀ z₂ z₃) (z₁.comp₀ z₂ z₃') := by
  obtain ⟨z₄, fac⟩ := exists_leftFraction (RightFraction.mk z₃.s z₃.hs z₃'.s)
  dsimp at fac
  have eq : z₁.s ≫ z₃.f ≫ z₄.f = z₁.s ≫ z₃'.f ≫ z₄.s := by
    rw [← reassoc_of% h₃, ← reassoc_of% h₃', fac]
  obtain ⟨Y, t, ht, fac'⟩ := HasLeftCalculusOfFractions.ext _ _ _ z₁.hs eq
  simp only [assoc] at fac'
  refine ⟨Y, z₄.f ≫ t, z₄.s ≫ t, ?_, ?_, ?_⟩
  · simp only [comp₀, assoc, reassoc_of% fac]
  · simp only [comp₀, assoc, fac']
  · simp only [comp₀, assoc, ← reassoc_of% fac]
    exact W.comp_mem _ _ z₂.hs (W.comp_mem _ _ z₃'.hs (W.comp_mem _ _ z₄.hs ht))

variable (W) in
/-- The morphisms in the constructed localized category for a morphism property `W`
that has left calculus of fractions are equivalence classes of left fractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01295b1dc3a498f42a51e28c160231afd3a4311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
