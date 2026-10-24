# uniformity_eq_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3ee378d-cafa-9b87-c823-dbe7bb04bfd0",
  "kind": "lemma",
  "lexical_name": "uniformity_eq_seminorm",
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
  "slug": "uniformity-eq-seminorm--700da997101df503ac5857c4",
  "source": {
    "blob": "b6554ac8fb793d39cda120d65d711f619846d213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:700da997101df503ac5857c4789ab15d8ec2a9ff67b09edf2ae982b6bc3243e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ee378d-cafa-9b87-c823-dbe7bb04bfd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma uniformity_eq_seminorm :
    𝓤 (E →SL[σ₁₂] F) = ⨅ r > 0, 𝓟 {f | ‖-f.1 + f.2‖ < r} := by
  have A (f : (E →SL[σ₁₂] F) × (E →SL[σ₁₂] F)) : ‖-f.1 + f.2‖ = ‖f.1 - f.2‖ := by
    rw [← opNorm_neg, neg_add, neg_neg, sub_eq_add_neg]
  simp only [A]
  refine ContinuousLinearMap.seminorm (σ₁₂ := σ₁₂) (E := E) (F := F) |>.uniformity_eq_of_hasBasis
    (ContinuousLinearMap.hasBasis_nhds_zero_of_basis Metric.nhds_basis_closedBall)
    ?_ fun (s, r) ⟨hs, hr⟩ ↦ ?_
  · rcases NormedField.exists_lt_norm 𝕜 1 with ⟨c, hc⟩
    refine ⟨‖c‖, ContinuousLinearMap.hasBasis_nhds_zero.mem_iff.2
      ⟨(closedBall 0 1, closedBall 0 1), ?_⟩⟩
    suffices ∀ f : E →SL[σ₁₂] F, (∀ x, ‖x‖ ≤ 1 → ‖f x‖ ≤ 1) → ‖f‖ ≤ ‖c‖ by
      simpa [NormedSpace.isVonNBounded_closedBall, closedBall_mem_nhds, subset_def] using! this
    intro f hf
    refine opNorm_le_of_shell (f := f) one_pos (norm_nonneg c) hc fun x hcx hx ↦ ?_
    exact (hf x hx.le).trans ((div_le_iff₀' <| one_pos.trans hc).1 hcx)
  · rcases (NormedSpace.isVonNBounded_iff' _).1 hs with ⟨ε, hε⟩
    rcases exists_pos_mul_lt hr ε with ⟨δ, hδ₀, hδ⟩
    refine ⟨δ, hδ₀, fun f hf x hx ↦ ?_⟩
    simp only [Seminorm.mem_ball_zero, mem_closedBall_zero_iff] at hf ⊢
    rw [mul_comm] at hδ
    exact le_trans (le_of_opNorm_le_of_le _ hf.le (hε _ hx)) hδ.le

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6554ac8fb793d39cda120d65d711f619846d213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
