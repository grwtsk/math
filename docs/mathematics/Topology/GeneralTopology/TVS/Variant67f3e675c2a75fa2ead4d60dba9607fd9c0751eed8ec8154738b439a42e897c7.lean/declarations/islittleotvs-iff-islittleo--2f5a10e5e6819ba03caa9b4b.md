# isLittleOTVS_iff_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55eab333-676d-5efb-76a5-5c5074d7890a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5029874f-8ce7-77fc-38ac-c46d02923682",
  "kind": "lemma",
  "lexical_name": "isLittleOTVS_iff_isLittleO",
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
  "slug": "islittleotvs-iff-islittleo--2f5a10e5e6819ba03caa9b4b",
  "source": {
    "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 521,
    "path": "GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5a10e5e6819ba03caa9b4b51b4ea31f753871135ff8c41ba47263862181ee3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5029874f-8ce7-77fc-38ac-c46d02923682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLittleOTVS_iff_isLittleO {f : α → E} {g : α → F} {l : Filter α} :
    f =o[𝕜; l] g ↔ f =o[l] g := by
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc : 1 < ‖c‖₊⟩
  have hc₀ : 0 < ‖c‖₊ := one_pos.trans hc
  simp only [isLittleO_iff, nhds_basis_ball.isLittleOTVS_iff nhds_basis_ball]
  refine ⟨fun h ε hε ↦ ?_, fun h ε hε ↦ ⟨1, one_pos, fun δ hδ ↦ ?_⟩⟩
  · rcases h ε hε with ⟨δ, hδ₀, hδ⟩
    lift ε to ℝ≥0 using hε.le; lift δ to ℝ≥0 using hδ₀.le; norm_cast at hε hδ₀
    filter_upwards [hδ (δ / ‖c‖₊) (div_pos hδ₀ hc₀).ne'] with x hx
    suffices (‖f x‖₊ / ε : ℝ≥0∞) ≤ ‖g x‖₊ by
      rw [← ENNReal.coe_div hε.ne'] at this
      rw [← div_le_iff₀' (NNReal.coe_pos.2 hε)]
      exact_mod_cast this
    calc
      (‖f x‖₊ / ε : ℝ≥0∞) ≤ egauge 𝕜 (ball 0 ε) (f x) := div_le_egauge_ball 𝕜 _ _
      _ ≤ ↑(δ / ‖c‖₊) * egauge 𝕜 (ball 0 ↑δ) (g x) := hx
      _ ≤ (δ / ‖c‖₊) * (‖c‖₊ * ‖g x‖₊ / δ) := by
        gcongr
        exacts [ENNReal.coe_div_le, egauge_ball_le_of_one_lt_norm hc (.inl <| ne_of_gt hδ₀)]
      _ = (δ / δ) * (‖c‖₊ / ‖c‖₊) * ‖g x‖₊ := by simp only [div_eq_mul_inv]; ring
      _ ≤ 1 * 1 * ‖g x‖₊ := by gcongr <;> exact ENNReal.div_self_le_one
      _ = ‖g x‖₊ := by simp
  · filter_upwards [@h ↑(ε * δ / ‖c‖₊) (by positivity)] with x (hx : ‖f x‖₊ ≤ ε * δ / ‖c‖₊ * ‖g x‖₊)
    lift ε to ℝ≥0 using hε.le
    calc
      egauge 𝕜 (ball 0 ε) (f x) ≤ ‖c‖₊ * ‖f x‖₊ / ε :=
        egauge_ball_le_of_one_lt_norm hc (.inl <| ne_of_gt hε)
      _ ≤ ‖c‖₊ * (↑(ε * δ / ‖c‖₊) * ‖g x‖₊) / ε := by gcongr; exact_mod_cast hx
      _ = (‖c‖₊ / ‖c‖₊) * (ε / ε) * δ * ‖g x‖₊ := by
        simp only [div_eq_mul_inv, ENNReal.coe_inv hc₀.ne', ENNReal.coe_mul]; ring
      _ ≤ 1 * 1 * δ * ‖g x‖₊ := by gcongr <;> exact ENNReal.div_self_le_one
      _ = δ * ‖g x‖₊ := by simp
      _ ≤ δ * egauge 𝕜 (ball 0 1) (g x) := by gcongr; apply le_egauge_ball_one

alias ⟨isLittleOTVS.isLittleO, IsLittleO.isLittleOTVS⟩ := isLittleOTVS_iff_isLittleO

end NormedSpace

end Asymptotics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5624ae2be391f87ef07b2377952d05a28e73510e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
