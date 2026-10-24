# sSup_closed_unit_ball_eq_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72a258d5-adfb-3fdb-d37b-8dc26c45b8fe",
  "kind": "theorem",
  "lexical_name": "sSup_closed_unit_ball_eq_nnnorm",
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
  "slug": "ssup-closed-unit-ball-eq-nnnorm--4ebbbfb5e2e90583e1c3a4eb",
  "source": {
    "blob": "d430a4d0f26a7ca7e607d1c5349583e2d4936119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 564,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebbbfb5e2e90583e1c3a4eb08dbbd303cba2c05212422cef2f96103c584f34e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72a258d5-adfb-3fdb-d37b-8dc26c45b8fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_closed_unit_ball_eq_nnnorm {𝕜 𝕜₂ E F : Type*} [NormedAddCommGroup E]
    [SeminormedAddCommGroup F] [DenselyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] {σ₁₂ : 𝕜 →+* 𝕜₂}
    [NormedSpace 𝕜 E] [NormedSpace 𝕜₂ F] [RingHomIsometric σ₁₂] (f : E →SL[σ₁₂] F) :
    sSup ((fun x => ‖f x‖₊) '' closedBall 0 1) = ‖f‖₊ := by
  have hbdd : ∀ y ∈ (fun x => ‖f x‖₊) '' closedBall 0 1, y ≤ ‖f‖₊ := by
    rintro - ⟨x, hx, rfl⟩
    exact f.unit_le_op_norm x (mem_closedBall_zero_iff.1 hx)
  refine' le_antisymm (csSup_le ((nonempty_closedBall.mpr zero_le_one).image _) hbdd) _
  rw [← sSup_unit_ball_eq_nnnorm]
  exact csSup_le_csSup ⟨‖f‖₊, hbdd⟩ ((nonempty_ball.2 zero_lt_one).image _)
    (Set.image_subset _ ball_subset_closedBall)
#align continuous_linear_map.Sup_closed_unit_ball_eq_nnnorm ContinuousLinearMap.sSup_closed_unit_ball_eq_nnnorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d430a4d0f26a7ca7e607d1c5349583e2d4936119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
