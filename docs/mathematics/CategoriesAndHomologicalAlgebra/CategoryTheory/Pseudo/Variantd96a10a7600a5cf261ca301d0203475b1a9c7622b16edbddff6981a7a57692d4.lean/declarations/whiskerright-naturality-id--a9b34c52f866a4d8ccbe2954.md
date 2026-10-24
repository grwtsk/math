# whiskerRight_naturality_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e35a31a0-e73f-32dc-d6cb-58e8eee91d60",
  "kind": "theorem",
  "lexical_name": "whiskerRight_naturality_id",
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
  "slug": "whiskerright-naturality-id--a9b34c52f866a4d8ccbe2954",
  "source": {
    "blob": "f188e0ebe21c5ac1155f7381fbae1af05a59886b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b34c52f866a4d8ccbe295459fe6922880b625e0ca073f2ae69da4013b96cba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e35a31a0-e73f-32dc-d6cb-58e8eee91d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerRight_naturality_id (f : G.obj a ⟶ a') :
    (η.naturality (𝟙 a)).hom ▷ f ≫ (α_ _ _ _).hom ≫ η.app a ◁ (G.mapId a).hom ▷ f =
    (F.mapId a).hom ▷ η.app a ▷ f ≫ (λ_ (η.app a)).hom ▷ f ≫ (ρ_ (η.app a)).inv ▷ f ≫
    (α_ _ _ _).hom :=
  η.toOplax.whiskerRight_naturality_id _

end

end CategoryTheory.Pseudofunctor.StrongTrans
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f188e0ebe21c5ac1155f7381fbae1af05a59886b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
