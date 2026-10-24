# sourceOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcca46da1b4f2d43216df0db079c3093030bbc8f83a30f5d68f2c41e8007e3d2",
  "kind": "def",
  "lexical_name": "sourceOperator",
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
  "slug": "sourceoperator--bad43beae25ba7844b513cfd",
  "source": {
    "blob": "0eaf8d07c4775b88286bce7344d5b5547070f59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 252,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bad43beae25ba7844b513cfd1358958391b885f8c9245842521b43e1acee6766",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcca46da1b4f2d43216df0db079c3093030bbc8f83a30f5d68f2c41e8007e3d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceOperator : H →L[ℂ] H := halfConvolution fixedKernel fixedKernel_integrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaf8d07c4775b88286bce7344d5b5547070f59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
