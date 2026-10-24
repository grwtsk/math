# finite_pole_subtraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f95305-09d2-7c8c-6a3a-7bf3210ddea9",
  "kind": "theorem",
  "lexical_name": "finite_pole_subtraction",
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
  "slug": "finite-pole-subtraction--7fd46d67cb924824ff30267b",
  "source": {
    "blob": "1686ea7594c4c99791be80c7603cc94612f2150c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 102,
    "path": "GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fd46d67cb924824ff30267b8c8324dcaa153a5e37a3ec62e401e996ffdcf569",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f95305-09d2-7c8c-6a3a-7bf3210ddea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_pole_subtraction (S : Finset ℂ) (f : ℂ → ℂ) (c : ℂ → ℂ) (D : Set ℂ)
    (hreg : ∀ z ∈ D, z ∉ S → AnalyticAt ℂ f z)
    (hparts : ∀ a ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      f =ᶠ[𝓝[≠] a] fun z => c a / (z - a) + A z) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g D ∧
      ∀ z : ℂ, z ∉ S → f z = g z + ∑ a ∈ S, c a / (z - a) := by
  classical
  induction S using Finset.induction_on generalizing f with
  | empty =>
      exact ⟨f, fun z hz => hreg z hz (by simp), by simp⟩
  | @insert a S ha ih =>
      obtain ⟨A, hA, hpart⟩ := hparts a (Finset.mem_insert_self _ _)
      obtain ⟨f₁, hf₁a, heq⟩ := one_pole_subtraction f A a (c a) hA hpart
      have hnear (z : ℂ) (hza : z ≠ a) :
          f₁ =ᶠ[𝓝 z] fun w => f w - c a / (w - a) := by
        filter_upwards [isOpen_ne.mem_nhds hza] with w hw
        exact heq w hw
      have hreg₁ : ∀ z ∈ D, z ∉ S → AnalyticAt ℂ f₁ z := by
        intro z hz hzS
        by_cases hza : z = a
        · subst z
          exact hf₁a
        · have hr : AnalyticAt ℂ (fun w => c a / (w - a)) z :=
            analyticAt_const.div (analyticAt_id.sub analyticAt_const) (sub_ne_zero.mpr hza)
          exact ((hreg z hz (by simp [hza, hzS])).sub hr).congr (hnear z hza).symm
      have hparts₁ : ∀ b ∈ S, ∃ B : ℂ → ℂ, AnalyticAt ℂ B b ∧
          f₁ =ᶠ[𝓝[≠] b] fun z => c b / (z - b) + B z := by
        intro b hb
        have hba : b ≠ a := by intro he; subst b; exact ha hb
        obtain ⟨B, hB, hp⟩ := hparts b (Finset.mem_insert_of_mem hb)
        refine ⟨fun z => B z - c a / (z - a), hB.sub
          (analyticAt_const.div (analyticAt_id.sub analyticAt_const) (sub_ne_zero.mpr hba)), ?_⟩
        filter_upwards [hp, (hnear b hba).filter_mono nhdsWithin_le_nhds] with z hz he
        rw [he, hz]
        ring
      obtain ⟨g, hg, hgf⟩ := ih f₁ hreg₁ hparts₁
      refine ⟨g, hg, ?_⟩
      intro z hz
      have hza : z ≠ a := by intro he; subst z; exact hz (Finset.mem_insert_self _ _)
      have hzS : z ∉ S := fun he => hz (Finset.mem_insert_of_mem he)
      have h₁ := heq z hza
      have h₂ := hgf z hzS
      rw [Finset.sum_insert ha]
      linear_combination h₂ - h₁

end
end GRWTSK.Analysis.Complex.FinitePoleSubtraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1686ea7594c4c99791be80c7603cc94612f2150c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
