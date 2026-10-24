# correction_at_shifted_center_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b909d67-881c-ef00-7c2b-968df5eae996",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4432b8eb-d80d-5c20-fbc2-91d107a9aa05",
  "kind": "theorem",
  "lexical_name": "correction_at_shifted_center_analytic",
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
  "slug": "correction-at-shifted-center-analytic--c3a9f4153a6bbe3ebc5b74f9",
  "source": {
    "blob": "82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a9f4153a6bbe3ebc5b74f99b00b41d7759d28e2995c9b7c4f7f11ef5fa719f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4432b8eb-d80d-5c20-fbc2-91d107a9aa05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_at_shifted_center_analytic
    (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    AnalyticAt ℂ
      (fun w : ℂ ↦
        (C : ℂ) *
          correctionKernel
            (2 * (p.val - 1 / 2) + w))
      0 := by
  have hc :
      2 * (p.val - 1 / 2) + (0 : ℂ) ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    norm_num at hp
    linarith
  exact
    analyticAt_const.mul
      ((correctionKernel_analytic _ hc).comp
        (f := fun w : ℂ ↦
          2 * (p.val - 1 / 2) + w)
        (x := 0)
        (analyticAt_const.add analyticAt_id))

/-- The finite normalization correction cannot alter the B3.3 ninth-order
principal coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
