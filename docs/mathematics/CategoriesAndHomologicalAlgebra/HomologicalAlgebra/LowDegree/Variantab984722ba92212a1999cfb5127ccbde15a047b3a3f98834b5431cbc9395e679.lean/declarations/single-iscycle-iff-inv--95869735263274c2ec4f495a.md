# single_isCycle₂_iff_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c7ff337eb8bd6257d3aada1ec1b9cccacbed085",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 522,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ab5e67d-f84e-70cd-c61a-ed409f1b5c0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f50d5a2-1787-e7c4-2b7e-1659af63c4f5",
  "kind": "theorem",
  "lexical_name": "single_isCycle₂_iff_inv",
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
  "slug": "single-iscycle-iff-inv--95869735263274c2ec4f495a",
  "source": {
    "blob": "6c7ff337eb8bd6257d3aada1ec1b9cccacbed085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 522,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95869735263274c2ec4f495a64522fc34d156c0923b0e0559d5fa5118868e2d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f50d5a2-1787-e7c4-2b7e-1659af63c4f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_isCycle₂_iff_inv (g : G × G) (a : A) :
    IsCycle₂ (single g a) ↔
      single g.2 (g.1⁻¹ • a) + single g.1 a = single (g.1 * g.2) a := by
  simp [IsCycle₂]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7ff337eb8bd6257d3aada1ec1b9cccacbed085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
