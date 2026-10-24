# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "545090a55366cc4d7e9e6041e70221eec660ee9e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `545090a55366cc4d7e9e6041e70221eec660ee9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OrderIso.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-inv--0875a01571129b84af522655.md) | 37 | `declaration-track:0875a01571129b84af522655cc9d9e53caf4e83515e247d26fc4a6206368ba1d` |
| 2 | `theorem` | [inv_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/inv-le--e5f2831a817ccfd04243d34f.md) | 48 | `result-track:e5f2831a817ccfd04243d34fb01f9c3468e7cec403b6bf05ebb9f1eb6fe7c41c` |
| 3 | `theorem` | [le_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/le-inv--3ea04e45ef932b396130bd88.md) | 60 | `result-track:3ea04e45ef932b396130bd88f94176d53d0881915e155f78021e54b4e7497098` |
| 4 | `def` | [OrderIso.divLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-divleft--8b439134a7c3c5c68642a4c0.md) | 67 | `declaration-track:8b439134a7c3c5c68642a4c0fcd5fd95bce6c369ae0238bb5b1599ea4ee86f3e` |
| 5 | `def` | [OrderIso.mulRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-mulright--6bbbd3c72d762b0ffa7c900f.md) | 94 | `declaration-track:6bbbd3c72d762b0ffa7c900f3a3d1b1bf596c7b1c29e27910a8b36c5e576fb83` |
| 6 | `theorem` | [OrderIso.mulRight_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-mulright-symm--72efc623a605b142b386aac2.md) | 103 | `result-track:72efc623a605b142b386aac2e5a00e301e5b1c33c24961fa27779df3fa2c4e85` |
| 7 | `def` | [OrderIso.divRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-divright--702591678d84f8d7926c28f1.md) | 111 | `declaration-track:702591678d84f8d7926c28f1d709bedf7c3ce762ffa57e13ad47ed8054826962` |
| 8 | `def` | [OrderIso.mulLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-mulleft--8655a7288709f58d4abbde12.md) | 126 | `declaration-track:8655a7288709f58d4abbde12be6ab1ba34bdeb27860aaa0c46ee6299c44590fb` |
| 9 | `theorem` | [OrderIso.mulLeft_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8.lean/declarations/orderiso-mulleft-symm--148386be2e4aef46ab65ae24.md) | 136 | `result-track:148386be2e4aef46ab65ae24776503d4ae1c86821c8970ced68e0fc6d634e3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
