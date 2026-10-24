# gf2MatMul_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2bb593f-0bc5-587d-5023-5c969f83d134",
  "kind": "theorem",
  "lexical_name": "gf2MatMul_assoc",
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
  "slug": "gf2matmul-assoc--eed58322291f9fce92826c1c",
  "source": {
    "blob": "b78c597d5b641f25b60c29c02322f9481bd4bfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eed58322291f9fce92826c1c2448a7e64e5f9199bf4126906773b5ba00a94283",
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

Occurrence: `result:e2bb593f-0bc5-587d-5023-5c969f83d134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gf2MatMul_assoc (A B C : BinMat r r) :
    gf2MatMul (gf2MatMul A B) C =
      gf2MatMul A (gf2MatMul B C) := by
  apply (boolMatrixGF2Equiv r r).injective
  simp [gf2MatMul, Matrix.mul_assoc]

/--
The entry formula for `gf2MatMul`, stated after converting the Boolean result
to `GF2`: each entry is the usual row-by-column finite sum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant41080fa5284fd85f0c1d7c85bacb2f92c8fb77328c76d555404d7c5a085e2d14.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b78c597d5b641f25b60c29c02322f9481bd4bfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
