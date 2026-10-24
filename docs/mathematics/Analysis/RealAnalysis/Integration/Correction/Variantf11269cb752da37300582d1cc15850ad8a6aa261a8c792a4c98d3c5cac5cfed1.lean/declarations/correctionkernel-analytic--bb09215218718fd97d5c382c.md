# correctionKernel_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55e48916634355d4dd3f164851a04c2c15cd6049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:324bc000-6da1-7e56-f936-dd5d4f138f76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f51a8e5e-f249-390d-03bb-f5e702d3fbe3",
  "kind": "theorem",
  "lexical_name": "correctionKernel_analytic",
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
  "slug": "correctionkernel-analytic--bb09215218718fd97d5c382c",
  "source": {
    "blob": "55e48916634355d4dd3f164851a04c2c15cd6049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb09215218718fd97d5c382c56340e1288fc3c6fbc4d3bb61bc06f69639819d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f51a8e5e-f249-390d-03bb-f5e702d3fbe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctionKernel_analytic
    (s : ℂ) (hs : s ≠ 0) :
    AnalyticAt ℂ correctionKernel s := by
  unfold correctionKernel
  exact
    ((analyticAt_const.mul (J_analytic 17 s hs)).add
      (analyticAt_const.mul (J_analytic 15 s hs))).add
      (analyticAt_const.mul (J_analytic 13 s hs))

/-- The complete corrected continuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e48916634355d4dd3f164851a04c2c15cd6049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
