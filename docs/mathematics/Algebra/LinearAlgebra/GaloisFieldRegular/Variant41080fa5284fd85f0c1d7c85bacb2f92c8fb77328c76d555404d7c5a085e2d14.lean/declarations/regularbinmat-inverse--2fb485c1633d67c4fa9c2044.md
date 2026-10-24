# regularBinMat_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3c4ed73-7b3c-2fbc-fe1a-9336d7b31e90",
  "kind": "theorem",
  "lexical_name": "regularBinMat_inverse",
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
  "slug": "regularbinmat-inverse--2fb485c1633d67c4fa9c2044",
  "source": {
    "blob": "b78c597d5b641f25b60c29c02322f9481bd4bfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fb485c1633d67c4fa9c204402b2addc22bbbb442038145428a90da0775c73ad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3c4ed73-7b3c-2fbc-fe1a-9336d7b31e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularBinMat_inverse
    (b : Basis (Fin r) GF2 F)
    {a : F}
    (ha : a ≠ 0) :
    gf2MatMul (regularBinMat b a) (regularBinMat b a⁻¹) =
      gf2IdentityMatrix r := by
  rw [← regularBinMat_mul, mul_inv_cancel₀ ha, regularBinMat_one]

end BinMatGalois
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b78c597d5b641f25b60c29c02322f9481bd4bfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
