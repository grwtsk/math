# det_ne_zero_of_sum_col_lt_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca6059ced1fbb770771d45b9ffc23d3cd9d9951a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cac65dc1-cb74-824e-6caf-1b6a256aca33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04a88ca7-cf5c-ec51-11c1-a1890d5d268d",
  "kind": "theorem",
  "lexical_name": "det_ne_zero_of_sum_col_lt_diag",
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
  "slug": "det-ne-zero-of-sum-col-lt-diag--12a2a51961ee722ae1aa4111",
  "source": {
    "blob": "ca6059ced1fbb770771d45b9ffc23d3cd9d9951a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a2a51961ee722ae1aa41114c7df83e2562b36ccb47b02500fb3e9804c88e10",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a88ca7-cf5c-ec51-11c1-a1890d5d268d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_ne_zero_of_sum_col_lt_diag (h : ∀ k, ∑ i ∈ Finset.univ.erase k, ‖A i k‖ < ‖A k k‖) :
    A.det ≠ 0 := by
  rw [← Matrix.det_transpose]
  exact det_ne_zero_of_sum_row_lt_diag (by simp_rw [Matrix.transpose_apply]; exact h)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca6059ced1fbb770771d45b9ffc23d3cd9d9951a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
