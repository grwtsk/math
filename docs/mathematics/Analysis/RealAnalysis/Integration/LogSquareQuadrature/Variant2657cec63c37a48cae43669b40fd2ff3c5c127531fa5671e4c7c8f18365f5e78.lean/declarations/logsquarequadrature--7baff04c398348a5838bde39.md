# logSquareQuadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b350e61b4b2b837241fc7f4b01a8861e7bcdfa486c97ebcf4418a9b7fd9fd7d",
  "kind": "def",
  "lexical_name": "logSquareQuadrature",
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
  "slug": "logsquarequadrature--7baff04c398348a5838bde39",
  "source": {
    "blob": "814d549a4dbf8cb774fd7d59cd2005070c156052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7baff04c398348a5838bde39f3dcd2b3c1443dbfcc1df92537867e08c4db1fe1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b350e61b4b2b837241fc7f4b01a8861e7bcdfa486c97ebcf4418a9b7fd9fd7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logSquareQuadrature (y : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 ⌊y⌋₊, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814d549a4dbf8cb774fd7d59cd2005070c156052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
