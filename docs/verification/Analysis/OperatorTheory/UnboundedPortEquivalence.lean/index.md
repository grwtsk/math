# Verification target: GRWTSK.Analysis.Operator.UnboundedPortEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0f45912a7067c59bbe7fcf4365f49057fcc4459",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/UnboundedPortEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0f45912a7067c59bbe7fcf4365f49057fcc4459`.

Source path: `GRWTSK/Analysis/Operator/UnboundedPortEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/UnboundedPortEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.UnboundedPort`](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graphSet](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/graphset--6ab9fa55d3430e6f7cc36374.md) | 14 | `declaration-track:6ab9fa55d3430e6f7cc36374453deb7b13ba97dc667fef0fac1a4c12f0533ce9` |
| 2 | `structure` | [FramedEquivalence](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/framedequivalence--09400cdebb09e2858a5f1666.md) | 20 | `declaration-track:09400cdebb09e2858a5f1666c96277dc5ac64805e8442ea9b3dcefd7e93d0384` |
| 3 | `def` | [toPort](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/toport--f6c4f6b6614d8ff9e3bf457f.md) | 35 | `declaration-track:f6c4f6b6614d8ff9e3bf457fa2d28fb1c60a857f91a65f2ccff2905933e992ce` |
| 4 | `def` | [domainEquiv](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/domainequiv--7666ae4169b457cf43bd9ffd.md) | 40 | `declaration-track:7666ae4169b457cf43bd9ffd44c46ffa1b298de8ccaff32682ada36ca6c9fbe2` |
| 5 | `theorem` | [coe_domainEquiv](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/coe-domainequiv--98db8ec84902c0b847be27e8.md) | 57 | `result-track:98db8ec84902c0b847be27e8b8887a32c1f94d4f340d3f7ca4ad68fd8c10276f` |
| 6 | `theorem` | [intertwines_apply](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/intertwines-apply--141b548128f30d7855f19f0e.md) | 61 | `result-track:141b548128f30d7855f19f0e62b7c435e0e0303254b39d6e5fcb9ffe48db00cb` |
| 7 | `def` | [symm](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/symm--75f0f6f4b7c6cb11371cce39.md) | 68 | `declaration-track:75f0f6f4b7c6cb11371cce39d183d0099a5a608abfbe66d0cc7b655e1c068303` |
| 8 | `def` | [identity](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/identity--bb561470b7b3de3342c7adf0.md) | 81 | `declaration-track:bb561470b7b3de3342c7adf0e0a1fc6e8229a44c86344b7eb970eb2a8b1813b8` |
| 9 | `def` | [comp](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/comp--af0ce98a534dc31566ba81cb.md) | 88 | `declaration-track:af0ce98a534dc31566ba81cb76506ba1fe736feb457a4d10bd32b5e5cf7667e2` |
| 10 | `theorem` | [conjugation_apply](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/conjugation-apply--6d8402fc83fbaae43a1d982c.md) | 104 | `result-track:6d8402fc83fbaae43a1d982c2a96df70787fb1e9d799e3bda287c1b39cba4948` |
| 11 | `def` | [graphFrame](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/graphframe--b0402039c2436f0cd242354b.md) | 109 | `declaration-track:b0402039c2436f0cd242354b2585b1918d179eabc74357286e35956b9e18985e` |
| 12 | `theorem` | [image_graphSet](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/declarations/image-graphset--141806b8059fed3320064742.md) | 113 | `result-track:141806b8059fed3320064742c3c42b444b8ded5a48f926c10c7684c7faddac93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
