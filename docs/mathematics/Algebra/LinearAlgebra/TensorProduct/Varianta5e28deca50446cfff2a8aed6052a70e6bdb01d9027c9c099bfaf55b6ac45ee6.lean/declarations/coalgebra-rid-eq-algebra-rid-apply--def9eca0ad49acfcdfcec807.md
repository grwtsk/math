# coalgebra_rid_eq_algebra_rid_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a25df53363bdb39a3af5c11e7f2a29d666ce3e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d045a07d-8593-32d0-f33d-ded41f449b9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb03e0e6-c54a-db52-905b-371aa83d7cde",
  "kind": "theorem",
  "lexical_name": "coalgebra_rid_eq_algebra_rid_apply",
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
  "slug": "coalgebra-rid-eq-algebra-rid-apply--def9eca0ad49acfcdfcec807",
  "source": {
    "blob": "9a25df53363bdb39a3af5c11e7f2a29d666ce3e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def9eca0ad49acfcdfcec807ff006564fe9ae7dbe6c051a328e63f074dc2185d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb03e0e6-c54a-db52-905b-371aa83d7cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coalgebra_rid_eq_algebra_rid_apply (x : A ⊗[R] R) :
    Coalgebra.TensorProduct.rid R A x = Algebra.TensorProduct.rid R R A x := rfl

variable (R A) in
/-- The base ring is a right identity for the tensor product of bialgebras, up to
bialgebra equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a25df53363bdb39a3af5c11e7f2a29d666ce3e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
