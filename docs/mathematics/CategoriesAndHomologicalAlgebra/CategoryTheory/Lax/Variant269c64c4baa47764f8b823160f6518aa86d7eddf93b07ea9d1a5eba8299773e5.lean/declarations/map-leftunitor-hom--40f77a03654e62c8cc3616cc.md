# map₂_leftUnitor_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4644d064-973e-5644-a0a6-a4471b00a64d",
  "kind": "lemma",
  "lexical_name": "map₂_leftUnitor_hom",
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
  "slug": "map-leftunitor-hom--40f77a03654e62c8cc3616cc",
  "source": {
    "blob": "e6530ce28397145843432bfc66293a0400b5a850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40f77a03654e62c8cc3616cc051ac4c4c55614d37465c13009bffcd7708ff5e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4644d064-973e-5644-a0a6-a4471b00a64d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map₂_leftUnitor_hom {a b : B} (f : a ⟶ b) :
    (λ_ (F.map f)).hom = F.mapId a ▷ F.map f ≫ F.mapComp (𝟙 a) f ≫ F.map₂ (λ_ f).hom := by
  rw [← PrelaxFunctor.map₂Iso_hom, ← assoc, ← Iso.comp_inv_eq, ← Iso.eq_inv_comp]
  simp only [Functor.mapIso_inv, PrelaxFunctor.mapFunctor_map, map₂_leftUnitor]

@[reassoc, to_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variant269c64c4baa47764f8b823160f6518aa86d7eddf93b07ea9d1a5eba8299773e5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6530ce28397145843432bfc66293a0400b5a850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
