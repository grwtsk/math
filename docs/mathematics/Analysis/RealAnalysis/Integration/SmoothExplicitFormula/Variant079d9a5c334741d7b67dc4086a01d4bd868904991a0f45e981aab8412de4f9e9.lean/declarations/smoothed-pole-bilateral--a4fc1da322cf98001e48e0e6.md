# smoothed_pole_bilateral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95dc03a1ed9d34723925a02d5679a4655ca0f446",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ed1e4e4-d1f6-c031-5deb-710bfc63b391",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08937a87-4d90-b0b0-8b7a-8caa33ca1f00",
  "kind": "theorem",
  "lexical_name": "smoothed_pole_bilateral",
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
  "slug": "smoothed-pole-bilateral--a4fc1da322cf98001e48e0e6",
  "source": {
    "blob": "95dc03a1ed9d34723925a02d5679a4655ca0f446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 308,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4fc1da322cf98001e48e0e6db34e9ecea484c3c08d50e974495889a94bcc497",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08937a87-4d90-b0b0-8b7a-8caa33ca1f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothed_pole_bilateral (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    smoothedBilateralTransform A ε hε (1 / 2) = 0 ∧
    smoothedBilateralTransform A ε hε (-1 / 2) = 0 := by
  have hp : bilateralTransform A (1 / 2) = 0 := by
    rw [ZeroTransform.actual_transform A (by linarith) (1 / 2) (by norm_num)]
    norm_num [dividedTransform]
  have hn : bilateralTransform A (-1 / 2) = 0 := by
    rw [ZeroTransform.actual_transform A (by linarith) (-1 / 2) (by norm_num)]
    norm_num [dividedTransform]
  constructor
  · rw [smoothed_bilateral_transform A ε hA hε, hp, zero_mul]
  · rw [smoothed_bilateral_transform A ε hA hε, hn, zero_mul]

/-- Exact Z2.6 target: the prescribed smooth source, with the common support
radius `A + 1`, has its convergent occurrence sum equal to the unchanged
source arithmetic form.  This proposition is not asserted below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant079d9a5c334741d7b67dc4086a01d4bd868904991a0f45e981aab8412de4f9e9.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95dc03a1ed9d34723925a02d5679a4655ca0f446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
