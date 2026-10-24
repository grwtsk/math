# integral_le_sum_mul_Ico_of_antitone_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e18e8f8052a6b06bdf333c85060d5c41791c343",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c6e470d-836c-a3f4-60d3-4ecd4e2ff991",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93c2c97d-6686-aefa-b19b-5597f5fae551",
  "kind": "lemma",
  "lexical_name": "integral_le_sum_mul_Ico_of_antitone_monotone",
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
  "slug": "integral-le-sum-mul-ico-of-antitone-monotone--003f27cebae720d8e5fb53a8",
  "source": {
    "blob": "4e18e8f8052a6b06bdf333c85060d5c41791c343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003f27cebae720d8e5fb53a8425f49938f74fd34f2e3387eb9c372ff5975d798",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93c2c97d-6686-aefa-b19b-5597f5fae551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_le_sum_mul_Ico_of_antitone_monotone
    (hab : a ≤ b) (hf : AntitoneOn f (Icc a b)) (hg : MonotoneOn g (Icc (a - 1) (b - 1)))
    (fpos : 0 ≤ f b) (gpos : 0 ≤ g (a - 1)) :
    ∫ x in a..b, f x * g (x - 1) ≤ ∑ i ∈ Finset.Ico a b, f i * g i := by
  apply integral_le_sum_Ico_of_le (f := fun x ↦ f x * g x) hab
  · intro i hi x hx
    simp only [Nat.cast_add, Nat.cast_one, mem_Ico] at hx hi
    have I0 : (i : ℝ) ≤ b - 1 := by
      simp only [le_sub_iff_add_le]
      norm_cast
      omega
    have I1 : (i : ℝ) ∈ Icc (a - 1 : ℝ) (b - 1) := by
      simp only [mem_Icc, tsub_le_iff_right]
      exact ⟨by norm_cast; omega, I0⟩
    have I2 : x ∈ Icc (a : ℝ) b := by
      refine ⟨le_trans (mod_cast hi.1) hx.1, hx.2.le.trans ?_⟩
      norm_cast
      omega
    apply mul_le_mul
    · apply hf
      · simp only [mem_Icc, Nat.cast_le]
        exact ⟨hi.1, hi.2.le⟩
      · exact I2
      · exact hx.1
    · apply hg
      · simp only [mem_Icc, tsub_le_iff_right, sub_add_cancel]
        refine ⟨le_trans (mod_cast hi.1) hx.1, hx.2.le.trans ?_⟩
        norm_cast
        omega
      · exact I1
      · simpa [sub_le_iff_le_add] using hx.2.le
    · apply gpos.trans
      apply hg (by simp [hab]) (by simpa using I2) (by simpa using I2.1)
    · apply fpos.trans
      apply hf ⟨mod_cast hi.1, mod_cast hi.2.le⟩ (by simpa using hab) (mod_cast hi.2.le)
  · apply Integrable.mono_measure _ (Measure.restrict_mono_set _ Ico_subset_Icc_self)
    apply Integrable.mul_of_top_left
    · exact hf.integrableOn_isCompact isCompact_Icc
    · apply MonotoneOn.memLp_isCompact isCompact_Icc
      intro x hx y hy hxy
      apply hg
      · simpa using hx
      · simpa using hy
      · simpa using hxy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e18e8f8052a6b06bdf333c85060d5c41791c343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
