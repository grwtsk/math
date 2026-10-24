# pullbackId_hom_counit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a4338b3-ec01-2768-7f04-192fbdda7951",
  "kind": "theorem",
  "lexical_name": "pullbackId_hom_counit",
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
  "slug": "pullbackid-hom-counit--aa9b97f840763322c428239d",
  "source": {
    "blob": "3f01b0ba88c1460b6cb4fc8daa65803dbe5628e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa9b97f840763322c428239d637e50aebb4281779a12e7e3689cf2984fd766a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4338b3-ec01-2768-7f04-192fbdda7951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackId_hom_counit (X : C) [ChosenPullbacksAlong (𝟙 X)] :
    Functor.whiskerRight (pullbackId X).hom (Over.map (𝟙 X)) ≫ (id X).mapPullbackAdj.counit =
      (mapPullbackAdj (𝟙 X)).counit := by
  have := Adjunction.rightAdjointUniq_hom_counit (mapPullbackAdj (𝟙 X)) (id X).mapPullbackAdj
  rw [pullbackId, Adjunction.rightAdjointUniq_hom_counit]

set_option backward.defeqAttrib.useBackward true in
/-- Every isomorphism has a functorial choice of pullbacks. -/
@[simps, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f01b0ba88c1460b6cb4fc8daa65803dbe5628e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
