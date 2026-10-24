# actual_critical_ordinate_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12089344-8d92-ba2d-09f7-e770fb8a3b77",
  "kind": "theorem",
  "lexical_name": "actual_critical_ordinate_radius",
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
  "slug": "actual-critical-ordinate-radius--bd37b43c3acc5d6e9c1e9836",
  "source": {
    "blob": "0dc20dbe7657ca83ffc9a5edc736a84b33e28dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant6b252657a0ce867b90af46558ca4fe9d6de53140cb1688f9b1d8c9e096719fb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd37b43c3acc5d6e9c1e9836115d67084a93711712866120a79461b63d51bd2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant6b252657a0ce867b90af46558ca4fe9d6de53140cb1688f9b1d8c9e096719fb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12089344-8d92-ba2d-09f7-e770fb8a3b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_ordinate_radius :
    ∃ R0 : ℝ, 1 ≤ R0 ∧ ∀ ρ : (zetaZeros zetaSeam).carrier,
      (ρ : ℂ).re = 1 / 2 → 1 ≤ R0 * |(ρ : ℂ).im| := by
  classical
  let F := (actualZeroHeightHead_finite 4).toFinset.filter
    (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)
  have hfinite (G : Finset (zetaZeros zetaSeam).carrier)
      (hG : ∀ ρ ∈ G, (ρ : ℂ).re = 1 / 2) :
      ∃ R0 : ℝ, 1 ≤ R0 ∧ ∀ ρ ∈ G, 1 ≤ R0 * |(ρ : ℂ).im| := by
    induction G using Finset.induction_on with
    | empty => exact ⟨1, le_rfl, fun _ h => False.elim (not_mem_empty _ h)⟩
    | @insert ρ G hnot ih =>
      obtain ⟨r, hr, hb⟩ := ih (fun σ hσ => hG σ (mem_insert_of_mem hσ))
      have hp : 0 < |(ρ : ℂ).im| :=
        abs_pos.mpr (actual_critical_ordinate_ne_zero ρ (hG ρ (mem_insert_self _ _)))
      refine ⟨max r |(ρ : ℂ).im|⁻¹, hr.trans (le_max_left _ _), ?_⟩
      intro σ hσ
      rcases mem_insert.mp hσ with hσ | hσ
      · subst σ
        calc
          1 = |(ρ : ℂ).im|⁻¹ * |(ρ : ℂ).im| := (inv_mul_cancel₀ hp.ne').symm
          _ ≤ max r |(ρ : ℂ).im|⁻¹ * |(ρ : ℂ).im| :=
            mul_le_mul_of_nonneg_right (le_max_right _ _) hp.le
      · exact (hb σ hσ).trans
          (mul_le_mul_of_nonneg_right (le_max_left _ _) (abs_nonneg _))
  obtain ⟨R0, hR0, hb⟩ := hfinite F (fun ρ hρ => (mem_filter.mp hρ).2)
  refine ⟨R0, hR0, fun ρ hρ => ?_⟩
  by_cases hh : |(ρ : ℂ).im| < 4
  · apply hb ρ
    apply mem_filter.mpr
    exact ⟨by simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using hh, hρ⟩
  · nlinarith [le_of_not_gt hh]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant6b252657a0ce867b90af46558ca4fe9d6de53140cb1688f9b1d8c9e096719fb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant6b252657a0ce867b90af46558ca4fe9d6de53140cb1688f9b1d8c9e096719fb3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dc20dbe7657ca83ffc9a5edc736a84b33e28dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
