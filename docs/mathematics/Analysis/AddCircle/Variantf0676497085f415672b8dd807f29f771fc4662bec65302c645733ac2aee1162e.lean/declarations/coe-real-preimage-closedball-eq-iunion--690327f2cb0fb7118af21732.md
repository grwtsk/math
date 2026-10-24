# coe_real_preimage_closedBall_eq_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be91940b-596c-e2a9-105e-94033da1f062",
  "kind": "theorem",
  "lexical_name": "coe_real_preimage_closedBall_eq_iUnion",
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
  "slug": "coe-real-preimage-closedball-eq-iunion--690327f2cb0fb7118af21732",
  "source": {
    "blob": "38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:690327f2cb0fb7118af21732cf16ccdbc073d4b2bffea5f178d7912a952a90ec",
  "verification": {
    "reference": "docs/verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be91940b-596c-e2a9-105e-94033da1f062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_real_preimage_closedBall_eq_iUnion (x ε : ℝ) :
    (↑) ⁻¹' closedBall (x : AddCircle p) ε = ⋃ z : ℤ, closedBall (x + z • p) ε := by
  rcases eq_or_ne p 0 with (rfl | hp)
  · simp [iUnion_const]
  ext y
  simp only [dist_eq_norm, mem_preimage, mem_closedBall, zsmul_eq_mul, mem_iUnion, Real.norm_eq_abs,
    ← QuotientAddGroup.mk_sub, norm_eq, ← sub_sub]
  refine' ⟨fun h => ⟨round (p⁻¹ * (y - x)), h⟩, _⟩
  rintro ⟨n, hn⟩
  rw [← mul_le_mul_left (abs_pos.mpr <| inv_ne_zero hp), ← abs_mul, mul_sub, mul_comm _ p,
    inv_mul_cancel_left₀ hp] at hn ⊢
  exact (round_le (p⁻¹ * (y - x)) n).trans hn
#align add_circle.coe_real_preimage_closed_ball_eq_Union AddCircle.coe_real_preimage_closedBall_eq_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
