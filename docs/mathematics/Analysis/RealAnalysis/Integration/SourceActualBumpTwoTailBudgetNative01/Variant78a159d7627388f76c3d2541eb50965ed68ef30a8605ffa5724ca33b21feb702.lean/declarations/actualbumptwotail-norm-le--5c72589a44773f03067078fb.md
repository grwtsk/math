# actualBumpTwoTail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8090707963cada11e86359bc74ea2fe36a5493e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78a159d7627388f76c3d2541eb50965ed68ef30a8605ffa5724ca33b21feb702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2543f1c0-7647-1920-2127-983114c4213e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc118e26-152a-b7c1-b49a-04a5ce8f3031",
  "kind": "theorem",
  "lexical_name": "actualBumpTwoTail_norm_le",
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
  "slug": "actualbumptwotail-norm-le--5c72589a44773f03067078fb",
  "source": {
    "blob": "8090707963cada11e86359bc74ea2fe36a5493e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variant78a159d7627388f76c3d2541eb50965ed68ef30a8605ffa5724ca33b21feb702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c72589a44773f03067078fb652371b6489aa1a7ada8a2fd89b0992ac9819cb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variant78a159d7627388f76c3d2541eb50965ed68ef30a8605ffa5724ca33b21feb702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc118e26-152a-b7c1-b49a-04a5ce8f3031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBumpTwoTail_norm_le (A c T : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) :
    ‖actualBumpTwoTail A c T‖ ≤
      actualRightBumpTailNumerator A c / (5 * Real.pi * T ^ 5) := by
  have hp := actual_one_tail_norm_le A c T 1 hA hc hT (by norm_num)
  have hn := actual_one_tail_norm_le A c T (-1) hA hc hT (by norm_num)
  simp only [one_mul] at hp
  simp only [neg_one_mul] at hn
  unfold actualBumpTwoTail
  rw [norm_mul]
  have hcoef : ‖(1 / (2 * Real.pi) : ℂ)‖ = 1 / (2 * Real.pi) := by
    norm_cast
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [hcoef]
  calc
    _ ≤ (1 / (2 * Real.pi)) *
      (actualRightBumpTailNumerator A c / (5 * T ^ 5) +
        actualRightBumpTailNumerator A c / (5 * T ^ 5)) := by
      gcongr
      exact (norm_add_le _ _).trans (add_le_add hp hn)
    _ = _ := by field_simp; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpTwoTailBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variant78a159d7627388f76c3d2541eb50965ed68ef30a8605ffa5724ca33b21feb702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variant78a159d7627388f76c3d2541eb50965ed68ef30a8605ffa5724ca33b21feb702.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8090707963cada11e86359bc74ea2fe36a5493e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
