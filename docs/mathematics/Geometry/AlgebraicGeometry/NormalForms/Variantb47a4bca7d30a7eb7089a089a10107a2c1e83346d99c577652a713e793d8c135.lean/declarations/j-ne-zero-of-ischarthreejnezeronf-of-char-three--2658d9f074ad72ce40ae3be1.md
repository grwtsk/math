# j_ne_zero_of_isCharThreeJNeZeroNF_of_char_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1317fae3-0438-1c3d-7438-3ea76dc6c559",
  "kind": "theorem",
  "lexical_name": "j_ne_zero_of_isCharThreeJNeZeroNF_of_char_three",
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
  "slug": "j-ne-zero-of-ischarthreejnezeronf-of-char-three--2658d9f074ad72ce40ae3be1",
  "source": {
    "blob": "8dee9d48092d784d4092ce078e66479da3103233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 367,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2658d9f074ad72ce40ae3be1b2a2d526ae12f44d8e87135046c93aa1fa3274ae",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1317fae3-0438-1c3d-7438-3ea76dc6c559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem j_ne_zero_of_isCharThreeJNeZeroNF_of_char_three : W.j ≠ 0 := by
  rw [j_of_isCharThreeJNeZeroNF_of_char_three, div_ne_zero_iff]
  have h := W.Δ'.ne_zero
  rwa [coe_Δ', Δ_of_isCharThreeJNeZeroNF_of_char_three, mul_ne_zero_iff] at h

end Quantity

/-! ## Normal forms of characteristic = 3 -/

/-- A `WeierstrassCurve` is in normal form of characteristic = 3, if it is
`Y² = X³ + a₂X² + a₆` (`WeierstrassCurve.IsCharThreeJNeZeroNF`) or
`Y² = X³ + a₄X + a₆` (`WeierstrassCurve.IsShortNF`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantb47a4bca7d30a7eb7089a089a10107a2c1e83346d99c577652a713e793d8c135.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dee9d48092d784d4092ce078e66479da3103233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
