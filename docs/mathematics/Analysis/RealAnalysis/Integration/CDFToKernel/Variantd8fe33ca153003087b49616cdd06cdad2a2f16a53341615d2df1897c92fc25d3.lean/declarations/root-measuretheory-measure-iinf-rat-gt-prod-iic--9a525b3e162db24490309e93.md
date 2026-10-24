# _root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic

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
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57232d4d-c6a7-a24b-4a43-1bdc8ab8d212",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc82c264-7cbd-a9e3-f190-fd7e944a2261",
  "kind": "lemma",
  "lexical_name": "_root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic",
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
  "slug": "root-measuretheory-measure-iinf-rat-gt-prod-iic--9a525b3e162db24490309e93",
  "source": {
    "blob": "25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 331,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a525b3e162db24490309e939fd914698c38cd1164922323a47d56b10ed8cb3c",
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

Occurrence: `result:bc82c264-7cbd-a9e3-f190-fd7e944a2261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic {ρ : Measure (α × ℝ)} [IsFiniteMeasure ρ]
    {s : Set α} (hs : MeasurableSet s) (t : ℚ) :
    ⨅ r : { r' : ℚ // t < r' }, ρ (s ×ˢ Iic (r : ℝ)) = ρ (s ×ˢ Iic (t : ℝ)) := by
  rw [← Monotone.measure_iInter]
  · rw [← prod_iInter]
    congr with x : 1
    simp only [mem_iInter, mem_Iic, Subtype.forall, Subtype.coe_mk]
    refine ⟨fun h ↦ ?_, fun h a hta ↦ h.trans ?_⟩
    · refine le_of_forall_lt_rat_imp_le fun q htq ↦ h q ?_
      exact mod_cast htq
    · exact mod_cast hta.le
  · exact fun r r' hrr' ↦ prod_mono_right <| by gcongr
  · exact fun _ => (hs.prod measurableSet_Iic).nullMeasurableSet
  · exact ⟨⟨t + 1, lt_add_one _⟩, measure_ne_top ρ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
