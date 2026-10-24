# actualRieszContinuousMagnitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eba139c84980b654ddfe5b75a35b005ced1226ddaa64a0e06a734dbc2ab0db0a",
  "kind": "def",
  "lexical_name": "actualRieszContinuousMagnitude",
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
  "slug": "actualrieszcontinuousmagnitude--183e938349850e20a1567879",
  "source": {
    "blob": "da07043012d1491c97f6f7088a19a97417a7dd56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:183e938349850e20a1567879c9a8794cdf1db93f8b47d3fcd09a4ba5bdabf718",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eba139c84980b654ddfe5b75a35b005ced1226ddaa64a0e06a734dbc2ab0db0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualRieszContinuousMagnitude (A : ℝ) : ℝ :=
  (14 * A^4 + 272 * A^2) / (7 * A^4 + 272 * A^2 + 7344)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da07043012d1491c97f6f7088a19a97417a7dd56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
