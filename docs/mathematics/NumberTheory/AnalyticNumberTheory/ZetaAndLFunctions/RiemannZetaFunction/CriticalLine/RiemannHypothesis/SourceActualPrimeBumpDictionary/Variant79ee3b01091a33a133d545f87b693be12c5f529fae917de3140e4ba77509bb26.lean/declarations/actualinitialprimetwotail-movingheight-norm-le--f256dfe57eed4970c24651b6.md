# actualInitialPrimeTwoTail_movingHeight_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f765d4-bf24-5911-bd5b-d78b9a851701",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeTwoTail_movingHeight_norm_le",
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
  "slug": "actualinitialprimetwotail-movingheight-norm-le--f256dfe57eed4970c24651b6",
  "source": {
    "blob": "8535d8f5032eb1856de0f04713b2da7c6c597235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant79ee3b01091a33a133d545f87b693be12c5f529fae917de3140e4ba77509bb26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f256dfe57eed4970c24651b6d5d9ef76eb417cca91f3972181556cf3f046a45f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant79ee3b01091a33a133d545f87b693be12c5f529fae917de3140e4ba77509bb26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f765d4-bf24-5911-bd5b-d78b9a851701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeTwoTail_movingHeight_norm_le {A c : ℝ}
    (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualInitialPrimeTwoTail A c (actualBumpMovingHeight A c)‖ ≤
      actualBumpMovingTailConstant c / A^9 := by
  rw [actualInitialPrimeTwoTail_eq_bump hA hc]
  exact actualBumpTwoTail_movingHeight_norm_le A c hA hc

/-- The original source residual has the precise quantified difference from the signed finite head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant79ee3b01091a33a133d545f87b693be12c5f529fae917de3140e4ba77509bb26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant79ee3b01091a33a133d545f87b693be12c5f529fae917de3140e4ba77509bb26.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8535d8f5032eb1856de0f04713b2da7c6c597235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
