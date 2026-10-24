# _root_.GRWTSK.Topology.GeneralTopology.LinearGrowthInf.Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.Monotone.linearGrowthInf_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7a5ca8f-724b-22ad-eb55-b02dacbe775a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.LinearGrowthInf.Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.Monotone.linearGrowthInf_comp",
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
  "slug": "root-grwtsk-topology-generaltopology-lineargrowthinf-variant0bd473425a43--3e1145e57f63d39bc33496e2",
  "source": {
    "blob": "b774387bd86b480da7def0ce1e8f3857fbbdf837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 545,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e1145e57f63d39bc33496e229e51452547651644dad87d63582a6329bac1a7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7a5ca8f-724b-22ad-eb55-b02dacbe775a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.LinearGrowthInf.Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.Monotone.linearGrowthInf_comp {a : EReal} (h : Monotone u)
    (hv : Tendsto (fun n ↦ (v n : EReal) / n) atTop (𝓝 a)) (ha : a ≠ 0) (ha' : a ≠ ⊤) :
    linearGrowthInf (u ∘ v) = a * linearGrowthInf u := by
  have hv₁ : 0 < liminf (fun n ↦ (v n : EReal) / n) atTop := by
    rw [← hv.liminf_eq] at ha
    exact ha.symm.lt_of_le (linearGrowthInf_natCast_nonneg v)
  have v_top := tendsto_atTop_of_linearGrowthInf_natCast_pos hv₁.ne.symm
  -- Either `u = 0`, or `u` is non-zero and bounded by `1`, or `u` is eventually larger than one.
  -- In the latter case, we apply `le_linearGrowthInf_comp` and `linearGrowthInf_comp_le`.
  by_cases u_0 : u = ⊥
  · rw [u_0, Pi.bot_comp, linearGrowthInf_bot, ← hv.liminf_eq, mul_bot_of_pos hv₁]
  by_cases h1 : ∃ᶠ n : ℕ in atTop, u n ≤ 0
  · replace h' (n : ℕ) : u n ≤ 0 := by
      obtain ⟨m, n_m, um_1⟩ := (frequently_atTop.1 h1) n
      exact (h n_m).trans um_1
    have u_0' : linearGrowthInf u = 0 := by
      apply le_antisymm _ (h.linearGrowthInf_nonneg u_0)
      exact (linearGrowthInf_monotone h').trans_eq (linearGrowthInf_const zero_ne_bot zero_ne_top)
    rw [u_0', mul_zero]
    apply le_antisymm _ (linearGrowthInf_comp_nonneg h u_0 v_top)
    apply (linearGrowthInf_monotone fun n ↦ h' (v n)).trans_eq
    exact linearGrowthInf_const zero_ne_bot zero_ne_top
  · replace h' := (not_frequently.1 h1).mono fun _ hn ↦ le_of_not_le hn
    apply le_antisymm
    · rw [← hv.limsup_eq] at ha ha' ⊢
      exact h.linearGrowthInf_comp_le ha ha'
    · rw [← hv.liminf_eq]
      exact le_linearGrowthInf_comp h' v_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774387bd86b480da7def0ce1e8f3857fbbdf837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
