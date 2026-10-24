# actual_critical_ordinate_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bb8749d-ae8d-48da-e57f-b0d337882871",
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
  "slug": "actual-critical-ordinate-radius--e4a8733e25360116b4a8dad9",
  "source": {
    "blob": "83465f9e48f74962c04e2661bf42f86a15d2a9f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4a8733e25360116b4a8dad9c8210770679931b46a1e0ae18d34efc7cf70c42e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bb8749d-ae8d-48da-e57f-b0d337882871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–72.

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
    | empty => exact ⟨1, le_rfl, by simp⟩
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
  · exact hb ρ (mem_filter.mpr ⟨by simpa [F] using hh, hρ⟩)
  · nlinarith [le_of_not_gt hh]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83465f9e48f74962c04e2661bf42f86a15d2a9f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
