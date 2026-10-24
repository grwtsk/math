# im_le_im_mul_exp_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d12fd382-5af3-f5f7-b1af-d066b3e073f5",
  "kind": "theorem",
  "lexical_name": "im_le_im_mul_exp_dist",
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
  "slug": "im-le-im-mul-exp-dist--596cdc1a21763391efaa337c",
  "source": {
    "blob": "e7a86170063b026c6051d38a69c6d1bcb31babd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 230,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:596cdc1a21763391efaa337c967de2f211cbc63e09c39bdd7d9eaa5efd8f7559",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d12fd382-5af3-f5f7-b1af-d066b3e073f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem im_le_im_mul_exp_dist (z w : ℍ) : z.im ≤ w.im * Real.exp (dist z w) := by
  rw [← div_le_iff₀' w.im_pos, ← exp_log z.im_pos, ← exp_log w.im_pos, ← Real.exp_sub, exp_le_exp]
  exact (le_abs_self _).trans (dist_log_im_le z w)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a86170063b026c6051d38a69c6d1bcb31babd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
