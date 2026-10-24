# li2_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47a30a82-e564-7c0b-4afa-056115d6ab75",
  "kind": "theorem",
  "lexical_name": "li2_decomposition",
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
  "slug": "li2-decomposition--855c840df29f28e95ba20ab4",
  "source": {
    "blob": "db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 388,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:855c840df29f28e95ba20ab497904e6c478236b5b326595d3c3985ab41638bfd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47a30a82-e564-7c0b-4afa-056115d6ab75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_decomposition :
    li2 = (∫ t in (0:ℝ)..(1/100000), g t)
        + (∫ t in (1/100000:ℝ)..(1/10000), g t)
        + (∫ t in (1/10000:ℝ)..(1/1000), g t)
        + (∫ t in (1/1000:ℝ)..(999/1000), g t)
        + (∫ t in (999/1000:ℝ)..(9999/10000), g t)
        + (∫ t in (9999/10000:ℝ)..(99999/100000), g t)
        + (∫ t in (99999/100000:ℝ)..1, g t) := by
  unfold li2
  have hInt := g_intervalIntegrable_full
  have hIcc_sub : ∀ a b : ℝ, 0 ≤ a → b ≤ 1 → Set.Icc a b ⊆ Set.Icc (0:ℝ) 1 := by
    intro a b ha hb
    exact Set.Icc_subset_Icc ha hb
  have h1 : ∫ t in (0:ℝ)..1, g t =
      (∫ t in (0:ℝ)..(99999/100000), g t) + (∫ t in (99999/100000:ℝ)..1, g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 99999/100000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (99999:ℝ)/100000 ≤ 1),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h2 : ∫ t in (0:ℝ)..(99999/100000), g t =
      (∫ t in (0:ℝ)..(9999/10000), g t) + (∫ t in (9999/10000:ℝ)..(99999/100000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 9999/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (9999:ℝ)/10000 ≤ 99999/100000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h3 : ∫ t in (0:ℝ)..(9999/10000), g t =
      (∫ t in (0:ℝ)..(999/1000), g t) + (∫ t in (999/1000:ℝ)..(9999/10000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 999/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (999:ℝ)/1000 ≤ 9999/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h4 : ∫ t in (0:ℝ)..(999/1000), g t =
      (∫ t in (0:ℝ)..(1/1000), g t) + (∫ t in (1/1000:ℝ)..(999/1000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (1:ℝ)/1000 ≤ 999/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h5 : ∫ t in (0:ℝ)..(1/1000), g t =
      (∫ t in (0:ℝ)..(1/10000), g t) + (∫ t in (1/10000:ℝ)..(1/1000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (1:ℝ)/10000 ≤ 1/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h6 : ∫ t in (0:ℝ)..(1/10000), g t =
      (∫ t in (0:ℝ)..(1/100000), g t) + (∫ t in (1/100000:ℝ)..(1/10000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1/100000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (1:ℝ)/100000 ≤ 1/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  rw [h1, h2, h3, h4, h5, h6]

/-- Lower bound on integral over an interval given pointwise lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
