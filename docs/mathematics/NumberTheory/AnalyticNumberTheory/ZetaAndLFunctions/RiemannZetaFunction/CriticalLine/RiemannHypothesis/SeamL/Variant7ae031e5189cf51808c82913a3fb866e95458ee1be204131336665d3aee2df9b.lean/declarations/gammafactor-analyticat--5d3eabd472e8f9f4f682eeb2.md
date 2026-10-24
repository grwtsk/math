# gammaFactor_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d6435b-c7bb-9504-81f2-7055be109cb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ab26a67-de88-a9cf-12b1-3e7605f10c01",
  "kind": "lemma",
  "lexical_name": "gammaFactor_analyticAt",
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
  "slug": "gammafactor-analyticat--5d3eabd472e8f9f4f682eeb2",
  "source": {
    "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d3eabd472e8f9f4f682eeb2ba15f272982877f10ea368aef5691bf851f07081",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab26a67-de88-a9cf-12b1-3e7605f10c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gammaFactor_analyticAt {w : ℂ} (h0 : 0 < w.re) :
    AnalyticAt ℂ (gammaFactor χ) w ∧ gammaFactor χ w ≠ 0 := by
  have key : ∀ a : ℂ, 0 < (w + a).re → AnalyticAt ℂ (fun z => Gammaℝ (z + a)) w ∧
      Gammaℝ (w + a) ≠ 0 := by
    intro a ha
    constructor
    · have hπ : AnalyticAt ℂ (fun z : ℂ => (Real.pi : ℂ) ^ (-(z + a) / 2)) w := by
        rw [analyticAt_iff_eventually_differentiableAt]
        filter_upwards with z
        exact (((differentiableAt_id.add_const a).neg).div_const 2).const_cpow
          (Or.inl (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero))
      have hΓ : AnalyticAt ℂ (fun z : ℂ => Complex.Gamma ((z + a) / 2)) w := by
        rw [analyticAt_iff_eventually_differentiableAt]
        have hopen : IsOpen {z : ℂ | 0 < (z + a).re} := by
          have : Continuous fun z : ℂ => (z + a).re :=
            Complex.continuous_re.comp (continuous_add_const a)
          exact isOpen_lt continuous_const this
        filter_upwards [hopen.mem_nhds ha] with z hz
        have hd : DifferentiableAt ℂ Complex.Gamma ((z + a) / 2) := by
          refine Complex.differentiableAt_Gamma _ fun m => ?_
          intro h
          have h2 : z + a = -2 * (m : ℂ) := by
            rw [div_eq_iff (two_ne_zero (α := ℂ))] at h
            rw [h]; ring
          have h3 : (z + a).re = -2 * (m : ℝ) := by
            rw [h2]
            simp [Complex.mul_re]
          rw [h3] at hz
          have hm : (0 : ℝ) ≤ (m : ℝ) := Nat.cast_nonneg m
          nlinarith
        exact hd.comp z ((differentiableAt_id.add_const a).div_const 2)
      have := hπ.mul hΓ
      refine this.congr ?_
      filter_upwards with z
      simp [Complex.Gammaℝ_def]
    · exact Complex.Gammaℝ_ne_zero_of_re_pos ha
  rcases χ.even_or_odd with he | ho
  · have h := key 0 (by simpa using h0)
    refine ⟨?_, ?_⟩
    · refine h.1.congr ?_
      filter_upwards with z
      simp [he.gammaFactor_def]
    · simpa [he.gammaFactor_def] using h.2
  · have h := key 1 (by simp only [Complex.add_re, Complex.one_re]; linarith)
    refine ⟨?_, ?_⟩
    · refine h.1.congr ?_
      filter_upwards with z
      simp [ho.gammaFactor_def]
    · simpa [ho.gammaFactor_def] using h.2

/-- `Λ = γ·L` on the right half plane (`q > 1`), as an eventual equality near strip points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ea63e64d7797979babbd0b3690aa95ded64f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
