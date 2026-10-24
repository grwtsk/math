# exists_upperSemicontinuous_lt_integral_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d80913873fa0b783accfad293d215b8870aad78b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22cc3dd1-fc2a-f18f-cae5-6063372611c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b13a5f4-5ba0-139d-c012-59a4541116cd",
  "kind": "theorem",
  "lexical_name": "exists_upperSemicontinuous_lt_integral_gt",
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
  "slug": "exists-uppersemicontinuous-lt-integral-gt--0af4a67abb0d66f8af9b9daa",
  "source": {
    "blob": "d80913873fa0b783accfad293d215b8870aad78b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 537,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af4a67abb0d66f8af9b9daa3c78ca582de27f12eec48f0f2d4de81169d8f175",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b13a5f4-5ba0-139d-c012-59a4541116cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_upperSemicontinuous_lt_integral_gt [SigmaFinite μ] (f : α → ℝ) (hf : Integrable f μ)
    {ε : ℝ} (εpos : 0 < ε) :
    ∃ g : α → EReal,
      (∀ x, (g x : EReal) < f x) ∧
      UpperSemicontinuous g ∧
      Integrable (fun x => EReal.toReal (g x)) μ ∧
      (∀ᵐ x ∂μ, ⊥ < g x) ∧ (∫ x, f x ∂μ) < (∫ x, EReal.toReal (g x) ∂μ) + ε := by
  rcases exists_lt_lowerSemicontinuous_integral_lt (fun x => -f x) hf.neg εpos with
    ⟨g, g_lt_f, gcont, g_integrable, g_lt_top, gint⟩
  refine' ⟨fun x => -g x, _, _, _, _, _⟩
  · exact fun x => EReal.neg_lt_iff_neg_lt.1 (by simpa only [EReal.coe_neg] using g_lt_f x)
  · exact
      continuous_neg.comp_lowerSemicontinuous_antitone gcont fun x y hxy =>
        EReal.neg_le_neg_iff.2 hxy
  · convert g_integrable.neg
    simp
  · simpa [bot_lt_iff_ne_bot, lt_top_iff_ne_top] using g_lt_top
  · simp_rw [integral_neg, lt_neg_add_iff_add_lt] at gint
    rw [add_comm] at gint
    simpa [integral_neg] using gint
#align measure_theory.exists_upper_semicontinuous_lt_integral_gt MeasureTheory.exists_upperSemicontinuous_lt_integral_gt

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d80913873fa0b783accfad293d215b8870aad78b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
