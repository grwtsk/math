# local_log_gap_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0acab9210e70b70d02c915b549ded26fb114ea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2638798d-1aea-1be3-4a05-e4442c1f219f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc83b571-f015-eb5c-29e4-4629f3873329",
  "kind": "theorem",
  "lexical_name": "local_log_gap_lower",
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
  "slug": "local-log-gap-lower--777a9acd0a703ecfac3fe44f",
  "source": {
    "blob": "c0acab9210e70b70d02c915b549ded26fb114ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:777a9acd0a703ecfac3fe44f6185e0da397976ede9e6f9d1a863b11dbdb6871c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc83b571-f015-eb5c-29e4-4629f3873329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_log_gap_lower (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) (hne : m ≠ n) :
    1 / ((n : ℝ) + 1) ≤ |Real.log m - Real.log n| := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  rcases lt_or_gt_of_ne hne with hmn | hnm
  · have h := log_gap_lower m n hm hmn
    have hinv : 1 / ((n : ℝ) + 1) ≤ 1 / (n : ℝ) :=
      one_div_le_one_div_of_le hn0 (by linarith)
    have hab : Real.log n - Real.log m ≤ |Real.log m - Real.log n| := by
      rw [abs_sub_comm]
      exact le_abs_self _
    exact hinv.trans (h.trans hab)
  · have hnmR : (n : ℝ) + 1 ≤ (m : ℝ) := by exact_mod_cast hnm
    have hlog : Real.log ((n : ℝ) + 1) ≤ Real.log m :=
      Real.log_le_log (by positivity) hnmR
    have h := (adjacent_log_gap_bounds n hn).1
    exact (h.trans (sub_le_sub_right hlog _)).trans (le_abs_self _)

/-- The literal coefficient square keeps the inverse-index normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0acab9210e70b70d02c915b549ded26fb114ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
