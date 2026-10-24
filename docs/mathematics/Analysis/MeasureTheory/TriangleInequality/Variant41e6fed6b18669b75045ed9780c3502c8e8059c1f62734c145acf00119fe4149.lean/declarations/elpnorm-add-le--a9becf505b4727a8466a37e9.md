# eLpNorm_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fe47e35937f2b6a629c218beff9489aa49b5be7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4217893-2746-da96-03dd-4025098ad530",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfa1c9a1-8406-8cf6-f438-5e3d9145b22c",
  "kind": "theorem",
  "lexical_name": "eLpNorm_add_le",
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
  "slug": "elpnorm-add-le--a9becf505b4727a8466a37e9",
  "source": {
    "blob": "4fe47e35937f2b6a629c218beff9489aa49b5be7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9becf505b4727a8466a37e96703591cbc3763db5a4af96cffc5f2795ae3736b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfa1c9a1-8406-8cf6-f438-5e3d9145b22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_add_le (hp1 : 1 ≤ p) :
    eLpNorm (f + g) p μ ≤ eLpNorm f p μ + eLpNorm g p μ := by
  by_cases! hf : ¬ AEStronglyMeasurable f μ
  · simp [eLpNorm_of_not_aestronglyMeasurable hf]
  by_cases! hg : ¬ AEStronglyMeasurable g μ
  · simp [eLpNorm_of_not_aestronglyMeasurable hg]
  have hfg : AEStronglyMeasurable (f + g) μ := hf.add hg
  by_cases hp0 : p = 0
  · simp [hp0, hf, hg, hfg]
  by_cases hp_top : p = ∞
  · simp [hp_top, hf, hg, hfg, eLpNormEssSup_add_le]
  have hp1_real : 1 ≤ p.toReal := by
    rwa [← ENNReal.toReal_one, ENNReal.toReal_le_toReal ENNReal.one_ne_top hp_top]
  rw [eLpNorm_eq_eLpNorm' hp0 hp_top hfg, eLpNorm_eq_eLpNorm' hp0 hp_top hf,
    eLpNorm_eq_eLpNorm' hp0 hp_top hg]
  exact eLpNorm'_add_le hf hg hp1_real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe47e35937f2b6a629c218beff9489aa49b5be7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
