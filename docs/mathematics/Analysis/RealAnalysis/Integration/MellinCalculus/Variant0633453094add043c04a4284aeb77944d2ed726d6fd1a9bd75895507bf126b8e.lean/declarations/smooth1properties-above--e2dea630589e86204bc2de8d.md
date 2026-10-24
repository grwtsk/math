# Smooth1Properties_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1032,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3703d5a-4d0c-7693-f2c0-48b3ffdc68e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ec8c5d6-dce2-12c8-dcd2-f58718c9f5af",
  "kind": "lemma",
  "lexical_name": "Smooth1Properties_above",
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
  "slug": "smooth1properties-above--e2dea630589e86204bc2de8d",
  "source": {
    "blob": "f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1068,
    "line": 1032,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2dea630589e86204bc2de8d2ca8b2a504a8a3dbc9c1e7955e151042fad7e81b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec8c5d6-dce2-12c8-dcd2-f58718c9f5af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1032–1068.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Smooth1Properties_above {ν : ℝ → ℝ} (suppν : ν.support ⊆ Icc (1 / 2) 2) :
    ∃ (c : ℝ), 0 < c ∧ c = 2 * Real.log 2 ∧
      ∀ (ε x) (_ : ε ∈ Ioo 0 1), 1 + c * ε ≤ x → Smooth1 ν ε x = 0 := by
  set c := 2 * Real.log 2; use c
  constructor
  · simp only [c, zero_lt_two, mul_pos_iff_of_pos_left]; exact log_pos (by norm_num)
  constructor
  · rfl
  intro ε x hε hx
  have hx2 := Smooth1Properties_above_aux hx hε
  unfold Smooth1 MellinConvolution
  simp only [ite_mul, one_mul, zero_mul, RCLike.ofReal_real_eq_id, id_eq]
  apply setIntegral_eq_zero_of_forall_eq_zero
  intro y hy
  have ypos := mem_Ioi.mp hy
  by_cases y1 : y ≤ 1
  swap
  · simp [ypos, y1]
  simp only [mem_Ioi.mp hy, y1, and_self, ↓reduceIte, div_eq_zero_iff]; left
  apply DeltaSpikeSupport hε.1 ?_ suppν
  on_goal 1 =>
    simp only [mem_Icc, not_and, not_le]
  on_goal 2 =>
    suffices h : 2 ^ ε < x / y by
      linarith [(by apply rpow_pos_of_pos (by norm_num) : 0 < (2 : ℝ) ^ ε)]
  all_goals
  try intro
  have : x / y = ((x / y) ^ (1 / ε)) ^ ε := by
    rw [← rpow_mul]
    simp only [one_div, inv_mul_cancel₀ (ne_of_gt hε.1), rpow_one]
    apply div_nonneg_iff.mpr; left;
    exact ⟨(le_trans (rpow_pos_of_pos (by norm_num) ε).le) hx2.le, ypos.le⟩
  rw [this]
  refine rpow_lt_rpow (by norm_num) ?_ hε.1
  exact Smooth1Properties_above_aux2 hε ⟨ypos, y1⟩ hx2


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean#L1032).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
