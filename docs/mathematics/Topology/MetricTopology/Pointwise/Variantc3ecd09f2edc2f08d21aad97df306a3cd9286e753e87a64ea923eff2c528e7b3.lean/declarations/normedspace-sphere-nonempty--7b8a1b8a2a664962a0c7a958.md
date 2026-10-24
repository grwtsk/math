# NormedSpace.sphere_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8692182c-b5c1-641b-cc7f-a5b01752b720",
  "kind": "theorem",
  "lexical_name": "NormedSpace.sphere_nonempty",
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
  "slug": "normedspace-sphere-nonempty--7b8a1b8a2a664962a0c7a958",
  "source": {
    "blob": "e64bf1cbb27bf509b67efb78dcc67513a933188e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 393,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b8a1b8a2a664962a0c7a958dd09714eefc01502d38773757fb3760ecd924a0c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8692182c-b5c1-641b-cc7f-a5b01752b720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NormedSpace.sphere_nonempty [Nontrivial E] {x : E} {r : ℝ} :
    (sphere x r).Nonempty ↔ 0 ≤ r := by
  obtain ⟨y, hy⟩ := exists_ne x
  refine ⟨fun h => nonempty_closedBall.1 (h.mono sphere_subset_closedBall), fun hr =>
    ⟨r • ‖y - x‖⁻¹ • (y - x) + x, ?_⟩⟩
  have : ‖y - x‖ ≠ 0 := by simpa [sub_eq_zero]
  simp only [mem_sphere_iff_norm, add_sub_cancel_right, norm_smul, Real.norm_eq_abs, norm_inv,
    norm_norm, ne_eq, norm_eq_zero]
  simp only [abs_norm, ne_eq, norm_eq_zero]
  rw [inv_mul_cancel₀ this, mul_one, abs_eq_self.mpr hr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64bf1cbb27bf509b67efb78dcc67513a933188e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
