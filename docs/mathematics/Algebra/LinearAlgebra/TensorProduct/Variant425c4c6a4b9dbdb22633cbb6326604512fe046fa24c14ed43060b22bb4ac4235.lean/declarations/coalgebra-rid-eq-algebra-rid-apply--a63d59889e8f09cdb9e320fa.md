# coalgebra_rid_eq_algebra_rid_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e50b1962-bb6e-d900-9a62-b4d6263952f3",
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
  "slug": "coalgebra-rid-eq-algebra-rid-apply--a63d59889e8f09cdb9e320fa",
  "source": {
    "blob": "35c3c17774cd1fad6e2b043042b05294a8065b8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a63d59889e8f09cdb9e320faed86a956c849fd7c30dcf2618dccb82b55c9f17f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e50b1962-bb6e-d900-9a62-b4d6263952f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–132.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c3c17774cd1fad6e2b043042b05294a8065b8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
