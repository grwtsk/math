# fourierChar_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86f7840e-c686-97c1-ed2e-708aea28fb01",
  "kind": "theorem",
  "lexical_name": "fourierChar_ne_one",
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
  "slug": "fourierchar-ne-one--9d1555c1bcb50d5a3c18e139",
  "source": {
    "blob": "0bb07fd5c3a8df7065fbbdd590b0956c6999e951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d1555c1bcb50d5a3c18e139acf2683a014cc2b936321760128ce80d170f03fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86f7840e-c686-97c1-ed2e-708aea28fb01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierChar_ne_one : fourierChar ≠ 1 := by
  rw [DFunLike.ne_iff]
  use 2⁻¹
  simp only [fourierChar_apply', AddChar.one_apply]
  rw [mul_comm, ← mul_assoc, inv_mul_cancel₀ (by positivity), one_mul]
  exact Circle.exp_pi_ne_one

/-- The additive character from `ℝ` onto the circle, given by `fun x ↦ exp (x * I)`. This uses the
probabilist convention that there is no `2 * π` in the exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb07fd5c3a8df7065fbbdd590b0956c6999e951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
