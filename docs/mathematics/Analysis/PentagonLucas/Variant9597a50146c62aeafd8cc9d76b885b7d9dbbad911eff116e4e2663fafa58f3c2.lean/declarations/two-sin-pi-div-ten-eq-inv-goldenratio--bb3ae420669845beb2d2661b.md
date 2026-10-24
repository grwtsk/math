# two_sin_pi_div_ten_eq_inv_goldenRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ed4161a-87ed-f913-0157-415282dc4ad5",
  "kind": "theorem",
  "lexical_name": "two_sin_pi_div_ten_eq_inv_goldenRatio",
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
  "slug": "two-sin-pi-div-ten-eq-inv-goldenratio--bb3ae420669845beb2d2661b",
  "source": {
    "blob": "97f9c850a5fef6bc1b5696be1e0e642b4b053fc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb3ae420669845beb2d2661bf6ff9e8052234c4764db359a31eb1e2bc17b3741",
  "verification": {
    "reference": "docs/verification/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ed4161a-87ed-f913-0157-415282dc4ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_sin_pi_div_ten_eq_inv_goldenRatio :
    2 * sin (π / 10) = goldenRatio⁻¹ := by
  rw [sin_pi_div_ten, inv_goldenRatio]
  unfold goldenConj
  ring

/-- β = φ⁻¹: the smaller root of the pentagon sequence is the reciprocal
    of the golden ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97f9c850a5fef6bc1b5696be1e0e642b4b053fc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
