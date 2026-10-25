# YangMillsEnergyRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6564dfa8c093eeab83664026a0e03c37ba0e0ac01e3534e39a1b02c81ebd6435",
  "kind": "structure",
  "lexical_name": "YangMillsEnergyRecursion",
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
  "slug": "yangmillsenergyrecursion--debcbef7ef167dfcd40d5abf",
  "source": {
    "blob": "b328566b80b57e71885da6ae640203ab10f38c40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnergyRecursion/Variant36b009b15572bae3bacb7347e74dc9d8489aed2a8fc960a163d5e4a35b865acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:debcbef7ef167dfcd40d5abf47a6b432083424257ba62c76b49dc8f1566b0346",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnergyRecursion/Variant36b009b15572bae3bacb7347e74dc9d8489aed2a8fc960a163d5e4a35b865acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6564dfa8c093eeab83664026a0e03c37ba0e0ac01e3534e39a1b02c81ebd6435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure YangMillsEnergyRecursion where
  program : RecursiveObstructionProgram
  energyInvariant : program.Invariant
  positiveEnergyEnters : Prop
  positiveEnergyEnters_certified : positiveEnergyEnters
  zeroMassEscape : program.State → Prop
  stickyMassBoundary : program.Boundary → Prop
  stickyMassBoundary_implies_programSticky :
    ∀ B, stickyMassBoundary B → program.stickyBoundary B
  zeroMassEscapeCreatesObstruction :
    ∀ S, zeroMassEscape S → program.obstruction energyInvariant S
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnergyRecursion/Variant36b009b15572bae3bacb7347e74dc9d8489aed2a8fc960a163d5e4a35b865acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnergyRecursion/Variant36b009b15572bae3bacb7347e74dc9d8489aed2a8fc960a163d5e4a35b865acd.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b328566b80b57e71885da6ae640203ab10f38c40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
