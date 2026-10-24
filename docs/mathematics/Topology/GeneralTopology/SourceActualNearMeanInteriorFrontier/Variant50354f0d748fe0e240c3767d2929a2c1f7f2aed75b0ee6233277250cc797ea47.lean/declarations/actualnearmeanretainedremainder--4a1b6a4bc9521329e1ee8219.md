# actualNearMeanRetainedRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:250a56906300071de007891cc7a23293ef5fe7dfa0b6a849ac27fcd786bbd2f9",
  "kind": "def",
  "lexical_name": "actualNearMeanRetainedRemainder",
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
  "slug": "actualnearmeanretainedremainder--4a1b6a4bc9521329e1ee8219",
  "source": {
    "blob": "2b43185030ebfa47a95a16f34a0b02bd74fc02c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a1b6a4bc9521329e1ee82190fec1c64caf8cdcc2800ab063d1aab413d40f4d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:250a56906300071de007891cc7a23293ef5fe7dfa0b6a849ac27fcd786bbd2f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualNearMeanRetainedRemainder (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
  actualNearMeanInterior A - centeredDeletedDiagonal A - independentMainTerm A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b43185030ebfa47a95a16f34a0b02bd74fc02c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
