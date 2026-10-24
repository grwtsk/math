# realKernel_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "460ca494088df4b27c60cc992e636e2ab4e0c6d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6af6ce3e-604c-d879-c3f3-a4e79ddb2db1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cea6546-fc75-33b5-a9e4-aa1d1d277e8b",
  "kind": "theorem",
  "lexical_name": "realKernel_eq_convolution",
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
  "slug": "realkernel-eq-convolution--2c7fd3d1882fd79de9f46ea4",
  "source": {
    "blob": "460ca494088df4b27c60cc992e636e2ab4e0c6d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7fd3d1882fd79de9f46ea408455f4e24f592fae13befc58fe77b128e029076",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cea6546-fc75-33b5-a9e4-aa1d1d277e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem realKernel_eq_convolution (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    realKernel A ε hε =
      smoothedTest A ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume]
        smoothedTest A ε hε := by
  funext t
  change (∫ x, smoothedTest A ε hε x * smoothedTest A ε hε (x - t)) =
    ∫ x, smoothedTest A ε hε x * smoothedTest A ε hε (t - x)
  apply integral_congr_ae
  exact Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, smoothedTest_even A ε hA hε]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460ca494088df4b27c60cc992e636e2ab4e0c6d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
