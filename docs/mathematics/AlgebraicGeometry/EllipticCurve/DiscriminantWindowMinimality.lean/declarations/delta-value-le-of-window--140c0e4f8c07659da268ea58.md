# delta_value_le_of_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3da20552-5778-9c9f-ee0a-2e6c372669b2",
  "kind": "theorem",
  "lexical_name": "delta_value_le_of_window",
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
  "slug": "delta-value-le-of-window--140c0e4f8c07659da268ea58",
  "source": {
    "blob": "e1870610a625e6e7a6c84f93ce9c7c9742fbb1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 83,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140c0e4f8c07659da268ea58e989d191ae81f99f7d1470705af34b80f6a0b4cd",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da20552-5778-9c9f-ee0a-2e6c372669b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delta_value_le_of_window (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (hsmall : discriminantExponent R W < 12) (C : VariableChange K)
    (hC : IsIntegral R (C • W)) :
    localVal R (C • W).Δ ≤ localVal R W.Δ := by
  have hs := scale_log_nonneg_of_window R W hΔ hsmall C hC
  have he := exponent_change R W hΔ C
  rw [delta_value_eq_exp R (C • W) (changed_delta_ne_zero R W hΔ C),
    delta_value_eq_exp R W hΔ, WithZero.exp_le_exp]
  omega

/-- Strictly BELOW twelve. Nothing is asserted for exponent twelve or above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1870610a625e6e7a6c84f93ce9c7c9742fbb1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
