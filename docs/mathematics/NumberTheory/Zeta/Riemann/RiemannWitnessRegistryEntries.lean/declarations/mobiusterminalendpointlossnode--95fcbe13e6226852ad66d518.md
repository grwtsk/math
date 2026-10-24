# mobiusTerminalEndpointLossNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9618767c71c5fb7e9f023006499c81ac93732ae78dd1a462c571f15f073fa265",
  "kind": "def",
  "lexical_name": "mobiusTerminalEndpointLossNode",
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
  "slug": "mobiusterminalendpointlossnode--95fcbe13e6226852ad66d518",
  "source": {
    "blob": "5ef55c875af63e14cf27997b5a1af638da547453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95fcbe13e6226852ad66d518efa607727340be8ad8683ef2e0ba50ee8f68f380",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9618767c71c5fb7e9f023006499c81ac93732ae78dd1a462c571f15f073fa265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mobiusTerminalEndpointLossNode : WitnessNode where
  id := .mobiusTerminalEndpointLoss
  kind := .obstruction
  scope := .finiteArithmetic
  availability := .externalBranch
  source := some (sourceRef 432
    "research/rh-terminal-prefix-obstruction-430-20261021"
    "30acfd2babb7443461b8d4bb57f23982c50cbe08"
    "GRWTSK/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean"
    "not_terminalMultiplierRecovery"
    "Actual Möbius values at 1, 2 and 3 refute terminal-only recovery at one exact scope.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy"
    "Obstruction only; the all-scale maximal-energy premise remains open.")
  summary := "An earlier nonzero two-point Möbius prefix is erased by a zero terminal prefix."

/-- Connection atlas for the endpoint witness and Chowla/Elliott/short-interval/
Sarnak programs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef55c875af63e14cf27997b5a1af638da547453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
