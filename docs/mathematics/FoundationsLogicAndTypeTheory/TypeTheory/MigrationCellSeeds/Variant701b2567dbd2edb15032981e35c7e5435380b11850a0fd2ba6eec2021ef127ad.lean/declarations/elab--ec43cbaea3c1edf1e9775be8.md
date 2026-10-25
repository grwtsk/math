# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d20dc46fbbd61542d0bb6c33a592d7c1b75c4bf58a25661a178d13dbb95401ff",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--ec43cbaea3c1edf1e9775be8",
  "source": {
    "blob": "cf7a0b20060cd03a7c30e5bf3de55d0d8e55616e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/MigrationCellSeeds/Variant701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec43cbaea3c1edf1e9775be8321eae09c7df97b1f21bf299da984b19cd865a80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/MigrationCellSeeds/Variant701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d20dc46fbbd61542d0bb6c33a592d7c1b75c4bf58a25661a178d13dbb95401ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#audit_seed_cells" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.MigrationCellSeeds.localFamily, `GRWTSK.MigrationCellSeeds.localFamily_zero,
    `GRWTSK.MigrationCellSeeds.externalRamp, `GRWTSK.MigrationCellSeeds.userForkAdaptation,
    `GRWTSK.MigrationCellSeeds.mixedAttribution, `GRWTSK.MigrationCellSeeds.conditional,
    `GRWTSK.MigrationCellSeeds.negative] do
    let some info := env.find? n | throwError "missing seed declaration"
    let some body := info.value? true | throwError "missing seed body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "seed body/type drift"
    let axs ← collectAxioms n
    if axs.contains ``sorryAx then throwError "seed placeholder"
    logInfo m!"SEED::{n}"
    logInfo <| MessageData.ofFormat <| Format.text <| (Json.mkObj [
      ("name", toJson n.toString), ("type", LeanCompiledTyping.exprJson info.type),
      ("body", LeanCompiledTyping.exprJson body), ("axioms", toJson (axs.map toString))]).compress
  let some eqs ← Meta.getEqnsFor? `GRWTSK.MigrationCellSeeds.localFamily | throwError "missing recursive family"
  unless eqs.contains `GRWTSK.MigrationCellSeeds.localFamily.eq_1 && eqs.contains `GRWTSK.MigrationCellSeeds.localFamily.eq_2 do throwError "generated owner drift"
  logInfo m!"SEED_FAMILY::{eqs}"
#audit_seed_cells
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/MigrationCellSeeds/Variant701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/MigrationCellSeeds/Variant701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7a0b20060cd03a7c30e5bf3de55d0d8e55616e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
