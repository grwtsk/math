# isLittleOTVS_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a77fd7b-6ae4-41bf-d70e-e03a37d8918f",
  "kind": "lemma",
  "lexical_name": "isLittleOTVS_one",
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
  "slug": "islittleotvs-one--22ac9f638f664f9eeb1877a3",
  "source": {
    "blob": "b4d1414f6409bd8837ab6212ea881887616138ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 446,
    "path": "GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22ac9f638f664f9eeb1877a3b29a23e735e42110ad64bb6817f6b60b6126487c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a77fd7b-6ae4-41bf-d70e-e03a37d8918f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLittleOTVS_one [ContinuousSMul 𝕜 E] : f =o[𝕜; l] (1 : α → 𝕜) ↔ Tendsto f l (𝓝 0) := by
  constructor
  · intro hf
    rw [(basis_sets _).isLittleOTVS_iff nhds_basis_ball] at hf
    rw [(nhds_basis_balanced 𝕜 E).tendsto_right_iff]
    rintro U ⟨hU, hUb⟩
    rcases hf U hU with ⟨r, hr₀, hr⟩
    lift r to ℝ≥0 using hr₀.le
    norm_cast at hr₀
    rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
    obtain ⟨ε, hε₀, hε⟩ : ∃ ε : ℝ≥0, 0 < ε ∧ (ε * ‖c‖₊ / r : ℝ≥0∞) < 1 := by
      apply Eventually.exists_gt
      refine Continuous.tendsto' ?_ _ _ (by simp) |>.eventually_lt_const zero_lt_one
      fun_prop (disch := intros; first | apply ENNReal.coe_ne_top | positivity)
    filter_upwards [hr ε hε₀.ne'] with x hx
    refine mem_of_egauge_lt_one hUb (hx.trans_lt ?_)
    calc
      (ε : ℝ≥0∞) * egauge 𝕜 (ball (0 : 𝕜) r) 1 ≤ (ε * ‖c‖₊ / r : ℝ≥0∞) := by
        rw [mul_div_assoc]
        gcongr
        simpa using egauge_ball_le_of_one_lt_norm (r := r) (x := (1 : 𝕜)) hc (by simp)
      _ < 1 := ‹_›
  · simp only [isLittleOTVS_iff]
    intro hf U hU
    refine ⟨ball 0 1, ball_mem_nhds _ one_pos, fun ε hε ↦ ?_⟩
    rcases NormedField.exists_norm_lt 𝕜 hε.bot_lt with ⟨c, hc₀, hcε⟩
    replace hc₀ : c ≠ 0 := by simpa using hc₀
    filter_upwards [hf ((set_smul_mem_nhds_zero_iff hc₀).2 hU)] with a ha
    calc
      egauge 𝕜 U (f a) ≤ ‖c‖₊ := egauge_le_of_mem_smul ha
      _ ≤ ε := mod_cast hcε.le
      _ ≤ ε * egauge 𝕜 (ball (0 : 𝕜) 1) 1 := by
        apply le_mul_of_one_le_right'
        simpa using le_egauge_ball_one 𝕜 (1 : 𝕜)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d1414f6409bd8837ab6212ea881887616138ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
