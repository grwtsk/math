# explicitXiHeadJ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48f094646295fac045fc8a72d3adaa2d61f778b959b2b2e8d347d9fcdb8421c0",
  "kind": "def",
  "lexical_name": "explicitXiHeadJ",
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
  "slug": "explicitxiheadj--ee159225a7988672eb46fc59",
  "source": {
    "blob": "f4a5b3fe246579264a776618239d3f321120b5ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant3361c66e264d6e3151ff0faffb3d679b6bef6b0b99af79b4cf08d6360e512a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee159225a7988672eb46fc59ab18d0ce59de636774096da506e7220d001fab77",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant3361c66e264d6e3151ff0faffb3d679b6bef6b0b99af79b4cf08d6360e512a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48f094646295fac045fc8a72d3adaa2d61f778b959b2b2e8d347d9fcdb8421c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def explicitXiHeadJ : ℝ :=
  2 * (Real.log 2 / Real.sqrt 2 + Real.log 3 / Real.sqrt 3 + Real.log 2 / 2 +
    Real.log 5 / Real.sqrt 5 + Real.log 7 / Real.sqrt 7 - Real.log 420 / Real.sqrt 7) -
    2 * (Real.sqrt 7 - Real.sqrt 2) +
      4 * (Real.eulerMascheroniConstant + 1 - Real.log 2) *
        (1 / Real.sqrt 2 - 1 / Real.sqrt 7)

/-- Evaluation of the literal original source head, without a numerical or signed premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant3361c66e264d6e3151ff0faffb3d679b6bef6b0b99af79b4cf08d6360e512a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant3361c66e264d6e3151ff0faffb3d679b6bef6b0b99af79b4cf08d6360e512a57.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a5b3fe246579264a776618239d3f321120b5ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
