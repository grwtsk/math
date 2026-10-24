# IsRatCondKernelCDFAux.integrable_iInf_rat_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36983675-118d-aaec-4000-884cc87bf637",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c8ca065-dd0c-c5b3-1722-38eb33e7c05d",
  "kind": "lemma",
  "lexical_name": "IsRatCondKernelCDFAux.integrable_iInf_rat_gt",
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
  "slug": "isratcondkernelcdfaux-integrable-iinf-rat-gt--d6badd3a03902a3263d94095",
  "source": {
    "blob": "25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6badd3a03902a3263d94095d3a6ac5a7acf865a6f310adfd4ab4654187363d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8ca065-dd0c-c5b3-1722-38eb33e7c05d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRatCondKernelCDFAux.integrable_iInf_rat_gt (hf : IsRatCondKernelCDFAux f κ ν)
    [IsFiniteKernel ν] (a : α) (q : ℚ) :
    Integrable (fun t ↦ ⨅ r : Ioi q, f (a, t) r) (ν a) := by
  rw [← memLp_one_iff_integrable]
  refine ⟨(Measurable.iInf fun i ↦ hf.measurable_right a _).aestronglyMeasurable, ?_⟩
  refine (?_ : _ ≤ (ν a univ : ℝ≥0∞)).trans_lt (measure_lt_top _ _)
  refine (eLpNorm_le_of_ae_bound (C := 1) ?_).trans (by simp)
  filter_upwards [hf.bddBelow_range a, hf.nonneg a, hf.le_one a]
    with t hbdd_below h_nonneg h_le_one
  rw [Real.norm_eq_abs, abs_of_nonneg]
  · refine ciInf_le_of_le ?_ ?_ ?_
    · exact hbdd_below _
    · exact ⟨q + 1, by simp⟩
    · exact h_le_one _
  · exact le_ciInf fun r ↦ h_nonneg _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
