# smoothKernelFT_eq_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f092d2a08e049e55de14dc1053b4bccde602832b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d74e51da-b12e-355f-a931-bc62ce4d8ee9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcbb691a-4c0b-c77e-c3f6-1623c0cc3053",
  "kind": "theorem",
  "lexical_name": "smoothKernelFT_eq_square",
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
  "slug": "smoothkernelft-eq-square--da380795d5eacae9d4e1a153",
  "source": {
    "blob": "f092d2a08e049e55de14dc1053b4bccde602832b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 288,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da380795d5eacae9d4e1a15334bbd7293046183af6a541c02145402ce4a5e028",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcbb691a-4c0b-c77e-c3f6-1623c0cc3053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothKernelFT_eq_square (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (w : ℂ) :
    smoothKernelFT A ε hε w =
      smoothedBilateralTransform A ε hε (Complex.I * w) ^ 2 := by
  change bilateral (correlation (smoothedTest A ε hε)) (Complex.I * w) =
    smoothedBilateralTransform A ε hε (Complex.I * w) ^ 2
  rw [bilateral_correlation (smoothedTest A ε hε)
    (smoothedTest_contDiff A ε hA hε).continuous
    (smoothedTest_hasCompactSupport A ε hA hε)
    (smoothedTest_even A ε hA hε)]
  rfl

/-- Dividing the external spectral argument by `i` recovers the full shifted
zero, not merely its imaginary part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f092d2a08e049e55de14dc1053b4bccde602832b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
