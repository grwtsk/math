# mapAction_μ_inv_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ca2ecb725b5fd0acb79fe1018c5f90f56f25987",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1020,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:433c62f6-de05-f4c4-c772-f94a5299ac0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6ed229a-dce0-d7b0-d6e3-3c5b99d4daaf",
  "kind": "theorem",
  "lexical_name": "mapAction_μ_inv_hom",
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
  "slug": "mapaction-inv-hom--ab37336ed26f0df4ae33e328",
  "source": {
    "blob": "7ca2ecb725b5fd0acb79fe1018c5f90f56f25987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1027,
    "line": 1020,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab37336ed26f0df4ae33e328a91da826b15f310f0b955b70e9fd8ed3673b61fb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6ed229a-dce0-d7b0-d6e3-3c5b99d4daaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1020–1027.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAction_μ_inv_hom (X Y : Action V G) :
    (inv ((F.mapAction G).μ X Y)).hom = inv (F.μ X.V Y.V) := by
  rw [← cancel_mono (F.μ X.V Y.V), IsIso.inv_hom_id, ← F.mapAction_toLaxMonoidalFunctor_μ_hom G,
    ← Action.comp_hom, IsIso.inv_hom_id, Action.id_hom]
set_option linter.uppercaseLean3 false in
#align category_theory.monoidal_functor.map_Action_μ_inv_hom CategoryTheory.MonoidalFunctor.mapAction_μ_inv_hom

end CategoryTheory.MonoidalFunctor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean#L1020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca2ecb725b5fd0acb79fe1018c5f90f56f25987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
