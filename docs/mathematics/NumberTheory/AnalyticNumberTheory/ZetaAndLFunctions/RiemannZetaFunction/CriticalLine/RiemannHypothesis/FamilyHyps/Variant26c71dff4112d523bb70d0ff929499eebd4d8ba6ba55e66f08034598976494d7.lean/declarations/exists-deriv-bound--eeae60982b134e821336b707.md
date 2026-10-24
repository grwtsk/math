# exists_deriv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:857fdb75-49d8-3157-fbeb-ae91fab1d700",
  "kind": "lemma",
  "lexical_name": "exists_deriv_bound",
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
  "slug": "exists-deriv-bound--eeae60982b134e821336b707",
  "source": {
    "blob": "c8f4e074d5bf4bcdafab14cf356cbadc1f486fdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeae60982b134e821336b70710b3b089ead1a7e4e917590cd3c550a035d66aa9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:857fdb75-49d8-3157-fbeb-ae91fab1d700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_deriv_bound (hϱ : TaperProfile ϱ) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ i : ℕ, 1 ≤ i → i ≤ 3 → ∀ x : ℝ, |iteratedDeriv i ϱ x| ≤ B := by
  have hb : ∀ i : ℕ, i ≤ 3 → ∃ C : ℝ, ∀ x ∈ Set.Icc (0:ℝ) 1, ‖iteratedDeriv i ϱ x‖ ≤ C := fun i hi =>
    isCompact_Icc.exists_bound_of_continuousOn
      ((hϱ.contDiff.continuous_iteratedDeriv i (by exact_mod_cast hi)).continuousOn)
  obtain ⟨C1, hC1⟩ := hb 1 (by norm_num)
  obtain ⟨C2, hC2⟩ := hb 2 (by norm_num)
  obtain ⟨C3, hC3⟩ := hb 3 le_rfl
  refine ⟨max (max (max C1 C2) C3) 0, le_max_right _ _, fun i hi hi3 x => ?_⟩
  by_cases hx : x ∈ Set.Ioo (0:ℝ) 1
  · have hx' : x ∈ Set.Icc (0:ℝ) 1 := Set.Ioo_subset_Icc_self hx
    interval_cases i
    · exact (hC1 x hx').trans (le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) (le_max_left _ _))
    · exact (hC2 x hx').trans (le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) (le_max_left _ _))
    · exact (hC3 x hx').trans (le_trans (le_max_right _ _) (le_max_left _ _))
  · rw [iteratedDeriv_eq_zero hϱ hi hi3 hx, abs_zero]; exact le_max_right _ _

open Taper in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8f4e074d5bf4bcdafab14cf356cbadc1f486fdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
