# regularBitMatrix_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22975e4a-558d-e344-d72e-a0a2d1276948",
  "kind": "theorem",
  "lexical_name": "regularBitMatrix_inverse",
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
  "slug": "regularbitmatrix-inverse--bfa0174e3db4b1577ca0f733",
  "source": {
    "blob": "19619f0bc72f8f86deef109287ea577a9fef4108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa0174e3db4b1577ca0f733621977f983ad129f3a6eb3672b818232fdedcbe5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22975e4a-558d-e344-d72e-a0a2d1276948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularBitMatrix_inverse
    (b : Basis (Fin r) GF2 F)
    {a : F}
    (ha : a ≠ 0) :
    gf2MatMul (regularBitMatrix b a) (regularBitMatrix b a⁻¹) =
      gf2IdentityMatrix r := by
  rw [← regularBitMatrix_mul, mul_inv_cancel₀ ha, regularBitMatrix_one]

end BitMatrix.FiniteField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19619f0bc72f8f86deef109287ea577a9fef4108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
