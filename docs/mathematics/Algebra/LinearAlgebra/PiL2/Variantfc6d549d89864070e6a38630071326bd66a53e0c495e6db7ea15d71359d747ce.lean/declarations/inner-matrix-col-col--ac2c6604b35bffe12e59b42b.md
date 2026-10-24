# inner_matrix_col_col

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49e30bb74bd904ca644d790d4a578a68b89065c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1012,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca68ac10-6fd2-2a8b-3250-2b6573c9a39b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf747b65-a9d6-7420-4e22-937badd71b26",
  "kind": "theorem",
  "lexical_name": "inner_matrix_col_col",
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
  "slug": "inner-matrix-col-col--ac2c6604b35bffe12e59b42b",
  "source": {
    "blob": "49e30bb74bd904ca644d790d4a578a68b89065c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 1012,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac2c6604b35bffe12e59b42ba63f31c39e280ad941807f4d48e653fbeb6bdc12",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf747b65-a9d6-7420-4e22-937badd71b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1012–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_matrix_col_col [Fintype m] (A B : Matrix m n 𝕜) (i j : n) :
    ⟪Aᵀ i, Bᵀ j⟫ₑ = (Aᴴ * B) i j :=
  rfl
#align inner_matrix_col_col inner_matrix_col_col

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean#L1012).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e30bb74bd904ca644d790d4a578a68b89065c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
