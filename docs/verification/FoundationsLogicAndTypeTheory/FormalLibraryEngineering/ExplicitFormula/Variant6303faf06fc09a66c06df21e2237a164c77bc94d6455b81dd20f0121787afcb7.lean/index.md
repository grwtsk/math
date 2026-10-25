# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExplicitFormula.Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "047594e3603cf1174ada670b1eb8ab9a1136e9e7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `047594e3603cf1174ada670b1eb8ab9a1136e9e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiCriticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/centeredtwistedpsicriticalrate--8fb2a99b88ac35810b52487a.md) | 36 | `declaration-track:8fb2a99b88ac35810b52487a74d7d0c49c830e871896231188e536b32fe04788` |
| 2 | `def` | [CenteredTwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/centeredtwistedpsicriticalbound--4677614118f1d4944bbe4bad.md) | 41 | `declaration-track:4677614118f1d4944bbe4bad20c9bba8e373ef81d57b441f3aa0f8af915bea6f` |
| 3 | `theorem` | [centeredTwistedPsiCriticalRate_le_halfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/centeredtwistedpsicriticalrate-le-halfplusepsilon--768f1057388e025227cfb752.md) | 50 | `result-track:768f1057388e025227cfb75268f182a90b5dcc63aedb0b28d64e5cb5db224450` |
| 4 | `theorem` | [centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/centeredtwistedpsicriticalbound-implies-halfplusepsilon--fc09cac4ccc1f39d3e5dada4.md) | 107 | `result-track:fc09cac4ccc1f39d3e5dada456b0a4dbb4bfa88d08405ca37f915bd251fb116d` |
| 5 | `structure` | [PrimitiveExplicitFormulaSquare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/primitiveexplicitformulasquare--b307fc7f4c259fc4ff606a0a.md) | 129 | `declaration-track:b307fc7f4c259fc4ff606a0acb2dff2fb80842cd0a2f7b089fd152aa3d9c1e98` |
| 6 | `def` | [IsCenteredCriticalRateBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/iscenteredcriticalratebound--203be441483635b5b703acdb.md) | 150 | `declaration-track:203be441483635b5b703acdb574cd4d19495052085c3a8575968a57664fe63e1` |
| 7 | `def` | [PrimitiveExplicitFormulaBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/primitiveexplicitformulabounds--273d4f194ed5528bbf63dc0c.md) | 160 | `declaration-track:273d4f194ed5528bbf63dc0ca9ef1f4112f4092cd5ba3eec51b003b5f0a01460` |
| 8 | `theorem` | [grh_implies_centeredTwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/grh-implies-centeredtwistedpsicriticalbound--b14b89176da40ae98368b823.md) | 174 | `result-track:b14b89176da40ae98368b823fbb6d9b73498dd8106cd8da2521bde96589f888d` |
| 9 | `theorem` | [grh_implies_centeredTwistedPsiHalfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/declarations/grh-implies-centeredtwistedpsihalfplusepsilon--6f4ce5925e9b4362bec11a5f.md) | 244 | `result-track:6f4ce5925e9b4362bec11a5f3adabb66d41633ea0dc44478c81115136441d557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
