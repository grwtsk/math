# map_π_preserves_coequalizer_inv_colimMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46b946fbb4052e516a47f09183a0d8c22587dcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5522cd6c-b70b-1585-d508-7e34b605d386",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e967efdb-70b7-8f70-0745-00a7b412d5ce",
  "kind": "theorem",
  "lexical_name": "map_π_preserves_coequalizer_inv_colimMap",
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
  "slug": "map-preserves-coequalizer-inv-colimmap--b05725fc462144d3af19cd6a",
  "source": {
    "blob": "f46b946fbb4052e516a47f09183a0d8c22587dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 210,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05725fc462144d3af19cd6a1cf5503537bc92794d6bd371d5c8b0e2c18f0a3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e967efdb-70b7-8f70-0745-00a7b412d5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_π_preserves_coequalizer_inv_colimMap {X' Y' : D} (f' g' : X' ⟶ Y')
    [HasCoequalizer f' g'] (p : G.obj X ⟶ X') (q : G.obj Y ⟶ Y') (wf : G.map f ≫ q = p ≫ f')
    (wg : G.map g ≫ q = p ≫ g') :
    G.map (coequalizer.π f g) ≫
        (PreservesCoequalizer.iso G f g).inv ≫
          colimMap (parallelPairHom (G.map f) (G.map g) f' g' p q wf wg) =
      q ≫ coequalizer.π f' g' := by
  rw [← Category.assoc, map_π_preserves_coequalizer_inv, ι_colimMap, parallelPairHom_app_one]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46b946fbb4052e516a47f09183a0d8c22587dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
