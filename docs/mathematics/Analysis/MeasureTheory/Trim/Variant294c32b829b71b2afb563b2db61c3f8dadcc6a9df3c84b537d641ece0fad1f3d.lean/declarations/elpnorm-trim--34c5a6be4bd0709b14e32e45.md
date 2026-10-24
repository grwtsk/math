# eLpNorm_trim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f27509ea01a24cc4770a665d3963b2f988cdfdd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:065436c3-db39-d221-7007-68bf58deb076",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed0b0fdc-d86a-8675-c638-6f2f13e5db3a",
  "kind": "theorem",
  "lexical_name": "eLpNorm_trim",
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
  "slug": "elpnorm-trim--34c5a6be4bd0709b14e32e45",
  "source": {
    "blob": "f27509ea01a24cc4770a665d3963b2f988cdfdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c5a6be4bd0709b14e32e45923bdb48ae85b9b54c3d26c67ca6298db082a024",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Trim/Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed0b0fdc-d86a-8675-c638-6f2f13e5db3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_trim (hm : m ≤ m0) {f : α → ε} (hf : StronglyMeasurable[m] f) :
    eLpNorm f p (μ.trim hm) = eLpNorm f p μ := by
  have hfμ : AEStronglyMeasurable f μ := (hf.mono hm).aestronglyMeasurable
  by_cases h0 : p = 0
  · subst p
    rw [eLpNorm_exponent_zero (hf.aestronglyMeasurable (μ := μ.trim hm)),
      eLpNorm_exponent_zero hfμ]
  by_cases h_top : p = ∞
  · simpa only [h_top, eLpNorm_exponent_top (hf.aestronglyMeasurable (μ := μ.trim hm)),
      eLpNorm_exponent_top hfμ] using
      eLpNormEssSup_trim hm hf
  rw [eLpNorm_eq_eLpNorm' h0 h_top (hf.aestronglyMeasurable (μ := μ.trim hm)),
    eLpNorm_eq_eLpNorm' h0 h_top hfμ]
  exact eLpNorm'_trim hm hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Trim/Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Trim/Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f27509ea01a24cc4770a665d3963b2f988cdfdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
