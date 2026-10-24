# kroneckerTMulBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73c91a98207706b581cfaf330a014386d8d3e14fe8ced63a228efa57d819ac73",
  "kind": "def",
  "lexical_name": "kroneckerTMulBilinear",
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
  "slug": "kroneckertmulbilinear--7b8c5d2031d1f4dcbac43bb0",
  "source": {
    "blob": "4cfbbd38bef87748a48b8d2982fed3c6cf31ca39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 434,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b8c5d2031d1f4dcbac43bb06c5bfaff2a9e0f4620990e9e6ae865f8557e97ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73c91a98207706b581cfaf330a014386d8d3e14fe8ced63a228efa57d819ac73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kroneckerTMulBilinear :
    Matrix l m α →ₗ[R] Matrix n p β →ₗ[R] Matrix (l × n) (m × p) (α ⊗[R] β) :=
  kroneckerMapBilinear (TensorProduct.mk R α β)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cfbbd38bef87748a48b8d2982fed3c6cf31ca39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
