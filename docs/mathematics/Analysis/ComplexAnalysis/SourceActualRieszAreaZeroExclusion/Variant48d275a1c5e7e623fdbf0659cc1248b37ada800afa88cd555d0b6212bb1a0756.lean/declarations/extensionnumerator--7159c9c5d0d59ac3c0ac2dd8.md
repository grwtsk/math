# extensionNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1ab6cfac21451996d1598c4ca129c204b74339fb90e0284df73d93d50a8c0c3",
  "kind": "def",
  "lexical_name": "extensionNumerator",
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
  "slug": "extensionnumerator--7159c9c5d0d59ac3c0ac2dd8",
  "source": {
    "blob": "93d5f60d77607ead7fa8dbe25e611d7cccfc1dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7159c9c5d0d59ac3c0ac2dd8775b56f0f588f20cf262186d06590531a9e5ed35",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1ab6cfac21451996d1598c4ca129c204b74339fb90e0284df73d93d50a8c0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def extensionNumerator (s : ℂ) : ℂ :=
  (s - 1 / 2) ^ 2 * actualFixedCenteredRieszLaplace (s - 1 / 2) +
    (actualRieszLimitingLinearCenter : ℂ) +
      (actualRieszRealConstantCenter : ℂ) * (s - 1 / 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d5f60d77607ead7fa8dbe25e611d7cccfc1dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
