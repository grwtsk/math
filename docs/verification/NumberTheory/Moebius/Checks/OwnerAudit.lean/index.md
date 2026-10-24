# Verification target: GRWTSK.NumberTheory.Moebius.Checks.OwnerAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "717b30d74a420f15d9d2c04c86c1ff55998069d9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `717b30d74a420f15d9d2c04c86c1ff55998069d9`.

Source path: `GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/Checks/OwnerAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneratedPartialRuntimeEntry](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/declarations/generatedpartialruntimeentry--b37dad40256c3225b899c7ab.md) | 18 | `declaration-track:b37dad40256c3225b899c7ab69e6898c79a1a538f9e626b720be1f5bcab1898f` |
| 2 | `def` | [generatedPartialRuntimeEntries](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/declarations/generatedpartialruntimeentries--f52b922340b0c4d8b4214658.md) | 24 | `declaration-track:f52b922340b0c4d8b4214658788fcc035f28c4ac430f6cdd3380f8191f7884e8` |
| 3 | `def` | [generatedPartialPairIsValid](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/declarations/generatedpartialpairisvalid--b56e423dd18b14ee38138ea3.md) | 86 | `declaration-track:b56e423dd18b14ee38138ea3fa2719c1b13e1f61595c61600d9ec100c1c3799f` |
| 4 | `def` | [auditMathTrust](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/declarations/auditmathtrust--f34944e5682c7812ff40f682.md) | 101 | `declaration-track:f34944e5682c7812ff40f682ada2e52ca67d9637c8709a360b637d4ad1b0769f` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/declarations/elab--7f8b6a15cb2cdd53e9b12ed1.md) | 216 | `declaration-track:7f8b6a15cb2cdd53e9b12ed19d63554ee1214b3f9e21e13d6eb61c522e902e4d` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/NumberTheory/Moebius/Checks/OwnerAudit.lean/declarations/elab--7c318512d35885f3f76b7deb.md) | 220 | `declaration-track:7c318512d35885f3f76b7deb0646ca59da4704f66147b4a692bd36b1d2849f46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
