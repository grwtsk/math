# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MBTC.Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ee9b16cc88ba78373adc36e6184932887d9451",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ee9b16cc88ba78373adc36e6184932887d9451`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MBTC` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.ModelUtil` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Model` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getAssignmentExt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/declarations/getassignmentext--301dac4db5b5fb6a98cca6f4.md) | 15 | `declaration-track:301dac4db5b5fb6a98cca6f405ca01982ed116b6e58e7bd1aed1c4edf038d68a` |
| 2 | `def` | [hasTheoryVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/declarations/hastheoryvar--6681a40017d280dc97d93dc9.md) | 50 | `declaration-track:6681a40017d280dc97d93dc9e0c7f65205cc55f3979272bc6abf2dd0ec746869` |
| 3 | `def` | [isNonlinearTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/declarations/isnonlinearterm--3010a7a3a6d30af4101f1f86.md) | 72 | `declaration-track:3010a7a3a6d30af4101f1f86b6d3a9c2d8962eddbc8e0b3f3327d09f0349d7a8` |
| 4 | `def` | [isInterpreted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/declarations/isinterpreted--413a2852299b74db372c583a.md) | 79 | `declaration-track:413a2852299b74db372c583acec26239b1b966c12030c004dcc5f93167eca775` |
| 5 | `def` | [eqAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/declarations/eqassignment--1e18dc8e8977f1e06410d24c.md) | 90 | `declaration-track:1e18dc8e8977f1e06410d24cafa50f6cce5af3395854b89c25dd5bec8e9f6bb7` |
| 6 | `def` | [mbtc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/declarations/mbtc--e67d0bffa6ca7c5746d3c023.md) | 95 | `declaration-track:e67d0bffa6ca7c5746d3c0232124c70f89ec0259dac46b721c698c68349534f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
