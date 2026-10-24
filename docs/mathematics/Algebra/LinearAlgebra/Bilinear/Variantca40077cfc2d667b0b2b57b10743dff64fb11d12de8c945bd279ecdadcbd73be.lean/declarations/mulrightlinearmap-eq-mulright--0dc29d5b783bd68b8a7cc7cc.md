# mulRightLinearMap_eq_mulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fd6261b-953e-3628-5928-89a72653cffd",
  "kind": "theorem",
  "lexical_name": "mulRightLinearMap_eq_mulRight",
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
  "slug": "mulrightlinearmap-eq-mulright--0dc29d5b783bd68b8a7cc7cc",
  "source": {
    "blob": "cfa2517ce8d7d25c485ea99c713f9bbbf23db1f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dc29d5b783bd68b8a7cc7cc322e8caa1e133e6cd11b0fa94551d8ff3fe98547",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fd6261b-953e-3628-5928-89a72653cffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulRightLinearMap_eq_mulRight :
  mulRightLinearMap m R = LinearMap.mulRight R (A := Matrix m m A) := rfl

/-- A version of `LinearMap.mulLeft_zero_eq_zero` for matrix multiplication. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantca40077cfc2d667b0b2b57b10743dff64fb11d12de8c945bd279ecdadcbd73be.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfa2517ce8d7d25c485ea99c713f9bbbf23db1f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
