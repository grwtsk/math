# mul_dist_le_mul_dist_add_mul_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4905c248-cb3a-467c-d6e5-4bab8c97365a",
  "kind": "theorem",
  "lexical_name": "mul_dist_le_mul_dist_add_mul_dist",
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
  "slug": "mul-dist-le-mul-dist-add-mul-dist--7354d69858d8ab60181fcc35",
  "source": {
    "blob": "29906d71d40aff862123d44634945ae14980abe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 188,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7354d69858d8ab60181fcc3567016c5b370e2a17556fea7df4057f14f5fd1a2b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4905c248-cb3a-467c-d6e5-4bab8c97365a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dist_le_mul_dist_add_mul_dist (a b c d : P) :
    dist a c * dist b d ≤ dist a b * dist c d + dist b c * dist a d := by
  -- If one of the points `b`, `c`, `d` is equal to `a`, then the inequality is trivial.
  rcases eq_or_ne b a with (rfl | hb)
  · rw [dist_self, zero_mul, zero_add]
  rcases eq_or_ne c a with (rfl | hc)
  · rw [dist_self, zero_mul]
    positivity
  rcases eq_or_ne d a with (rfl | hd)
  · rw [dist_self, mul_zero, add_zero, dist_comm d, dist_comm d, mul_comm]
  /- Otherwise, we apply the triangle inequality to `EuclideanGeometry.inversion a 1 b`,
    `EuclideanGeometry.inversion a 1 c`, and `EuclideanGeometry.inversion a 1 d`. -/
  have H := dist_triangle (inversion a 1 b) (inversion a 1 c) (inversion a 1 d)
  rw [dist_inversion_inversion hb hd, dist_inversion_inversion hb hc,
    dist_inversion_inversion hc hd, one_pow] at H
  rw [← dist_pos] at hb hc hd
  rw [← div_le_div_iff_of_pos_right (mul_pos hb (mul_pos hc hd))]
  convert H using 1 <;> (field_simp [hb.ne', hc.ne', hd.ne', dist_comm a]; ring)

end EuclideanGeometry

open EuclideanGeometry

/-!
### Continuity of inversion
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29906d71d40aff862123d44634945ae14980abe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
