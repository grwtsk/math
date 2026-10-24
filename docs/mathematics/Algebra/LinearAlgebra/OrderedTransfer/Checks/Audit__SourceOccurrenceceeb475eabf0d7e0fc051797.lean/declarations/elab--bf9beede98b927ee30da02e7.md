# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8bc822737a4a1bd16e36e5ac1471fdb85ad3b55145da087263c6adffbe4f4f6",
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
  "slug": "elab--bf9beede98b927ee30da02e7",
  "source": {
    "blob": "47131d3b0d8d022df2eaf4e3d4fc27317041076e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 8,
    "path": "GRWTSK/LinearAlgebra/OrderedTransfer/Checks/Audit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf9beede98b927ee30da02e70db6bda0e21d85917c221b133e539031b7b8b8e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8bc822737a4a1bd16e36e5ac1471fdb85ad3b55145da087263c6adffbe4f4f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#audit_ordered_transfer" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.LinearAlgebra.OrderedTransfer.orderedTransfer,
    `GRWTSK.LinearAlgebra.OrderedTransfer.orderedTransfer.eq_1,
    `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec,
    `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec] do
    let some info := env.find? n | throwError "missing contract"
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial"
    let some body := info.value? true | throwError "missing body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "body/type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do throwError "unexpected axiom"
    logInfo m!"ORDERED_TRANSFER_CONTRACT::{n}"
  let some endpoint := env.find? `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec | throwError "missing original consumer"
  let some proof := endpoint.value? true | throwError "missing original consumer proof"
  unless proof.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.orderedTransfer && proof.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec do throwError "original consumer lacks canonical dependencies"
  logInfo "ORDERED_TRANSFER_ORIGINAL::endpoint"
  let some info := env.find? `GRWTSK.LinearAlgebra.OrderedTransfer.Checks.use_product | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture body/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedProduct_mulVec do throwError "missing canonical dependency"
  logInfo "ORDERED_TRANSFER_SYNTHETIC::use_product"
  let some info := env.find? `GRWTSK.LinearAlgebra.OrderedTransfer.Checks.use_endpoint | throwError "missing fixture"
  let some body := info.value? true | throwError "missing fixture proof"
  Meta.checkWithKernel body
  unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "fixture body/type mismatch"
  unless body.getUsedConstants.contains `GRWTSK.LinearAlgebra.OrderedTransfer.state_eq_orderedTransfer_mulVec do throwError "missing canonical dependency"
  logInfo "ORDERED_TRANSFER_SYNTHETIC::use_endpoint"
#audit_ordered_transfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/OrderedTransfer/Checks/Audit.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47131d3b0d8d022df2eaf4e3d4fc27317041076e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
