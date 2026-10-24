# firstPrimeStorageSurplus_eq_contrast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38551a259e68ad118b8dd9e82f8f4090fc76ce6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a87dcc37-7d80-be65-d698-592fe6e43d32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05800227-9f4a-8026-19aa-0684ae08ed4b",
  "kind": "theorem",
  "lexical_name": "firstPrimeStorageSurplus_eq_contrast",
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
  "slug": "firstprimestoragesurplus-eq-contrast--bdaccb334760eb622e35e4ed",
  "source": {
    "blob": "38551a259e68ad118b8dd9e82f8f4090fc76ce6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdaccb334760eb622e35e4edac43702e8c0ed433642cc9f8b85b5da209fabaab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05800227-9f4a-8026-19aa-0684ae08ed4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeStorageSurplus_eq_contrast {A : ℝ} (hA : 1 ≤ A) :
    SourceMangoldtStorage.firstPrimeStorageSurplus A = pairedErrorContrast A -
      negativeErrorMean A - criticalContinuousMoment A - diagonalMainCoefficient A * A := by
  rw [firstPrimeStorageSurplus_eq_paired hA,
    ← criticalSignedWork_eq_paired (show 0 < A by linarith),
    criticalSignedWork_eq_contrast_sub_mean hA]



/-- Two actual errors disclose the complete oriented closed-prime window and continuous drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38551a259e68ad118b8dd9e82f8f4090fc76ce6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
