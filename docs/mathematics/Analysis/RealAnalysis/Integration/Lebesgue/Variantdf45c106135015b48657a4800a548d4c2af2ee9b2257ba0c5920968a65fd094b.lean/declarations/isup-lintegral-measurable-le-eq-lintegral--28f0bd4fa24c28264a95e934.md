# iSup_lintegral_measurable_le_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eebb3ed-c880-1dcb-2efb-1e5b0eecb075",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59ea5dfc-163f-2f9f-7c4d-2adf75f44ef9",
  "kind": "theorem",
  "lexical_name": "iSup_lintegral_measurable_le_eq_lintegral",
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
  "slug": "isup-lintegral-measurable-le-eq-lintegral--28f0bd4fa24c28264a95e934",
  "source": {
    "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f0bd4fa24c28264a95e934bf76297d4d8f62bb54fb08e13190cba23cbbe073",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ea5dfc-163f-2f9f-7c4d-2adf75f44ef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_lintegral_measurable_le_eq_lintegral (f : α → ℝ≥0∞) :
    ⨆ (g : α → ℝ≥0∞) (_ : Measurable g) (_ : g ≤ f), ∫⁻ a, g a ∂μ = ∫⁻ a, f a ∂μ := by
  apply le_antisymm
  · exact iSup_le fun i => iSup_le fun _ => iSup_le fun h'i => lintegral_mono h'i
  · rw [lintegral]
    refine' iSup₂_le fun i hi => le_iSup₂_of_le i i.measurable <| le_iSup_of_le hi _
    exact le_of_eq (i.lintegral_eq_lintegral _).symm
#align measure_theory.supr_lintegral_measurable_le_eq_lintegral MeasureTheory.iSup_lintegral_measurable_le_eq_lintegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a866e79d6e525d1d7bdbfbfeb2574af4639840e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
