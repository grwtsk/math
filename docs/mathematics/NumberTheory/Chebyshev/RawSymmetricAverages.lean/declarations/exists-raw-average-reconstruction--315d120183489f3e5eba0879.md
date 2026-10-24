# exists_raw_average_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e22750-0dfc-ca5d-b82f-28fcd098b6b8",
  "kind": "theorem",
  "lexical_name": "exists_raw_average_reconstruction",
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
  "slug": "exists-raw-average-reconstruction--315d120183489f3e5eba0879",
  "source": {
    "blob": "a273cee76da0009cdd60eb0d7f166683085d4d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:315d120183489f3e5eba0879bf3e50ea484b08f50f8a9369c958196f6e266cce",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e22750-0dfc-ca5d-b82f-28fcd098b6b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_raw_average_reconstruction (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => rawAverage M (radius n) (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ)) ∧
      (∀ n, ‖(psiHalf (M:ℝ):ℂ)-rawAverage M (radius n) (T n)‖ < radius n) := by
  have hex (n : ℕ) : ∃ T : ℝ, (n:ℝ)+2 ≤ T ∧ rawAverageTailBudget M (radius n) T < radius n := by
    obtain ⟨T,hb,ht⟩ := ((rawAverageTailBudget_tendsto_zero M (radius n)).eventually
      (gt_mem_nhds (radius_pos n)) |>.and (eventually_ge_atTop ((n:ℝ)+2))).exists
    exact ⟨T,ht,hb⟩
  choose T hT using hex
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  have herr (n : ℕ) : ‖(psiHalf (M:ℝ):ℂ)-rawAverage M (radius n) (T n)‖ < radius n := by
    apply (norm_source_sub_average_le M hM (radius n) (T n) (radius_pos n)
      (by have := radius_le_half n; linarith) (by have := radius_le_half n; linarith)
      (by have := (hT n).1; have := Nat.cast_nonneg (α := ℝ) n; linarith)).trans_lt (hT n).2
  refine ⟨T,tendsto_atTop_mono (fun n => (hT n).1)
    (tendsto_atTop_add_const_right _ 2 tendsto_natCast_atTop_atTop),?_,herr⟩
  rw [Metric.tendsto_nhds]
  intro ε hε
  filter_upwards [radius_tendsto_zero.eventually (gt_mem_nhds hε)] with n hn
  rw [dist_eq_norm,norm_sub_rev]
  exact (herr n).trans hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a273cee76da0009cdd60eb0d7f166683085d4d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
