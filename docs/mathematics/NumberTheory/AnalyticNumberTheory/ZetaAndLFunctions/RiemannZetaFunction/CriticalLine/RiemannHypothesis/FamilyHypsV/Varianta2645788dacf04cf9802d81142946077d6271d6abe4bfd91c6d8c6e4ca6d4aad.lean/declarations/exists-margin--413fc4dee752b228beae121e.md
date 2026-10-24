# exists_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cda9409e7d4b7818fe8c522c8ddda6ed8180fc54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05cd035b-fa68-330c-3f90-c20e0ee8c2f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7347f244-4b49-d04d-0d18-c4f38f690460",
  "kind": "lemma",
  "lexical_name": "exists_margin",
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
  "slug": "exists-margin--413fc4dee752b228beae121e",
  "source": {
    "blob": "cda9409e7d4b7818fe8c522c8ddda6ed8180fc54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413fc4dee752b228beae121eee6e550427f508e805a047686b3660b23aa0f7e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7347f244-4b49-d04d-0d18-c4f38f690460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_margin {v : ℝ → ℝ} (hv : WindowProfile v) :
    ∃ η m : ℝ, 0 < η ∧ 0 < m ∧ ∀ s : ℝ, |s| ≤ 1 / 2 + η → m ≤ v s := by
  set K : Set ℝ := Icc (-(1/2 : ℝ)) (1/2) with hK
  have hKc : IsCompact K := isCompact_Icc
  have hKne : K.Nonempty := ⟨0, by rw [hK]; constructor <;> norm_num⟩
  have hcont : Continuous v := hv.contDiff.continuous
  obtain ⟨s₀, hs₀K, hmin⟩ := hKc.exists_isMinOn hKne hcont.continuousOn
  have hm₀ : 0 < v s₀ := hv.pos s₀ hs₀K
  set O : Set ℝ := {s | v s₀ / 2 < v s} with hO
  have hOo : IsOpen O := isOpen_lt continuous_const hcont
  have hKO : K ⊆ O := fun s hs => by
    have : v s₀ ≤ v s := hmin hs
    show v s₀ / 2 < v s
    linarith
  obtain ⟨δ, hδ, hδO⟩ := hKc.exists_cthickening_subset_open hOo hKO
  refine ⟨δ, v s₀ / 2, hδ, by linarith, fun s hs => ?_⟩
  -- s is within δ of its projection onto K
  set y : ℝ := max (-(1/2)) (min (1/2) s) with hy
  have hyK : y ∈ K := by
    rw [hK, hy]; constructor
    · exact le_max_left _ _
    · exact max_le (by norm_num) (min_le_left _ _)
  have hdist : dist s y ≤ δ := by
    rw [Real.dist_eq, hy]
    have h1 := abs_le.1 hs
    rcases le_or_gt s (1/2) with h | h
    · rw [min_eq_right h]
      rcases le_or_gt (-(1/2)) s with h' | h'
      · rw [max_eq_right h']; simp [hδ.le]
      · rw [max_eq_left h'.le]; rw [abs_of_nonpos (by linarith)]; linarith
    · rw [min_eq_left h.le, max_eq_right (by norm_num)]
      rw [abs_of_nonneg (by linarith)]; linarith
  have hsO := hδO (mem_cthickening_of_dist_le s y δ K hyK hdist)
  exact le_of_lt hsO

/-- **a globally C³ square root of v near [−½, ½]** with uniformly bounded derivatives of order ≤ 3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Varianta2645788dacf04cf9802d81142946077d6271d6abe4bfd91c6d8c6e4ca6d4aad.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda9409e7d4b7818fe8c522c8ddda6ed8180fc54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
