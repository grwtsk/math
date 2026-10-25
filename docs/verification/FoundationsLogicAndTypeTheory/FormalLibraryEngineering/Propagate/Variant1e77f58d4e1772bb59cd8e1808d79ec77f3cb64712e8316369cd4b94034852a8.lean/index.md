# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propagate.Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65636bb150601251ec38988562b68283506f898d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65636bb150601251ec38988562b68283506f898d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.RingId` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommRingM` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommSemiringM` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [propagateNatBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/declarations/propagatenatbinop--2c17ca54b2137118a0d96665.md) | 42 | `declaration-track:2c17ca54b2137118a0d9666582e485f82ea3eb241a655108adf99f524f3dfc44` |
| 2 | `def` | [supportedSemiring](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/declarations/supportedsemiring--dda7fcc23625b8b92956f1ee.md) | 67 | `declaration-track:dda7fcc23625b8b92956f1ee6e6bf976f9f52e7d3e60e5707f99b81ad12945ef` |
| 3 | `def` | [isSupportedSemiringQuick](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/declarations/issupportedsemiringquick--7f6a33690a08719d6fa0f854.md) | 70 | `declaration-track:7f6a33690a08719d6fa0f8545999c9e64f17cdf7dc0b5130f12672a605924078` |
| 4 | `def` | [isUnsupportedSemiring?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/declarations/isunsupportedsemiring--3ca07032a6e02d77cad087ca.md) | 81 | `declaration-track:3ca07032a6e02d77cad087caa600a365394c35e7b23423c67a4eab1339fce7e0` |
| 5 | `def` | [isOfNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/declarations/isofnat--2819b244f2dd15f8acb88eab.md) | 98 | `declaration-track:2819b244f2dd15f8acb88eabf816e5a2a9cecb2ff7aba2eb6607887352697b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
