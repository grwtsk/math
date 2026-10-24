# multiplicative_of_unit_c4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3c1c6e0-60f3-94fb-c52a-d5b459f26cf0",
  "kind": "theorem",
  "lexical_name": "multiplicative_of_unit_c4",
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
  "slug": "multiplicative-of-unit-c4--57277b8991a65ddf6e8f697a",
  "source": {
    "blob": "3fa4deaeee069310b1592e8e1996afc4b1841d33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 128,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57277b8991a65ddf6e8f697ae6efd268fbe093a8fe03ab71b51840432e80d670",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3c1c6e0-60f3-94fb-c52a-d5b459f26cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicative_of_unit_c4 (W : WeierstrassCurve R)
    (h4 : IsUnit W.c₄) (hΔ : ¬ IsUnit W.Δ) :
    HasMultiplicativeReduction R (W.baseChange K) := by
  refine ⟨minimal_of_unit_c4 R W h4, ?_, ?_⟩
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using
      (val_map_lt_one_iff R (K := K) W.Δ).mpr hΔ
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using
      (val_map_eq_one_iff R (K := K) W.c₄).mpr h4

end GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa4deaeee069310b1592e8e1996afc4b1841d33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
