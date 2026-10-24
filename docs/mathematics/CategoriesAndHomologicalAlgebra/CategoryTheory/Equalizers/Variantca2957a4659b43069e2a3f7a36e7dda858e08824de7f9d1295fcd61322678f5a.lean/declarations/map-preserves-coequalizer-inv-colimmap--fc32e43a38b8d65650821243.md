# map_π_preserves_coequalizer_inv_colimMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fe25afb-f354-ccb1-51f9-31c8c2dac20b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2773d91a-0a36-22f4-c8e6-28519ffbdf4d",
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
  "slug": "map-preserves-coequalizer-inv-colimmap--fc32e43a38b8d65650821243",
  "source": {
    "blob": "3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc32e43a38b8d6565082124375d3a99e64cc17be407038433dceee2a0b97fdde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2773d91a-0a36-22f4-c8e6-28519ffbdf4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–213.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
