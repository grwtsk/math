# Verification target: GRWTSK.Algebra.GroupTheory.FastInstance.Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d6c28f294cd647821970a1f1d3e812e693d0457",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d6c28f294cd647821970a1f1d3e812e693d0457`.

Source path: `GRWTSK/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FastInstance` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Mul](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/mul--8234fcc533a663ef74f1a4fc.md) | 15 | `declaration-track:8234fcc533a663ef74f1a4fcb81be5a8ec362723832847c8e0c4e277526daead` |
| 2 | `class` | [Semigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/semigroup--e0274c43f6c64e8f7908d809.md) | 18 | `declaration-track:e0274c43f6c64e8f7908d8096f08e9f0aa4fe06890c234ab16772b882f4d3a50` |
| 3 | `class` | [CommMagma](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/commmagma--4dfe027d766b2bfb4a3a42fa.md) | 21 | `declaration-track:4dfe027d766b2bfb4a3a42fadb198fd25fcd1b1100bed449b4d0cbf4869317d9` |
| 4 | `class` | [CommSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/commsemigroup--8f52613033cd8f18e5f1e14c.md) | 24 | `declaration-track:8f52613033cd8f18e5f1e14cbe872f1343a0e3e264b5d116b59a4022c0ed2463` |
| 5 | `structure` | [Wrapped](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/wrapped--2c375aa08978f7780a0cf7b0.md) | 26 | `declaration-track:2c375aa08978f7780a0cf7b0f959e98dc068ace3a329de38358ac2800988f651` |
| 6 | `theorem` | [val_injective](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/val-injective--54508233b21d5d52a6a0af1e.md) | 31 | `result-track:54508233b21d5d52a6a0af1e2cdbcef9aca992c448234bdfeaad5dbaba6cfae3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/instance--f573b8d81e805fbe02db3512.md) | 34 | `declaration-track:f573b8d81e805fbe02db351227730ce28aa69d06aa82b49ea64bf63a143eafe2` |
| 8 | `def` | [Function.Injective.semigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/function-injective-semigroup--79dfbbdfe621951b38c01652.md) | 36 | `declaration-track:79dfbbdfe621951b38c016521848b99bf1cf022ce832e4da4c724b6d544c47c5` |
| 9 | `def` | [Function.Injective.commMagma](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/function-injective-commmagma--1f7c6e9512f0a272bcf165ac.md) | 43 | `declaration-track:1f7c6e9512f0a272bcf165ac9c7ec95d5e5d1c1b64c14cacc48633d6cc6c04ac` |
| 10 | `def` | [Function.Injective.commSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/function-injective-commsemigroup--aeeb01493d51dbd6c65a5493.md) | 51 | `declaration-track:aeeb01493d51dbd6c65a549307822b38e140ab82cde4ffe60e67a9cb52400f77` |
| 11 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/instsemigroup--c826621861daa128f17e7689.md) | 58 | `declaration-track:c826621861daa128f17e76895890e15c3e3812a804e70fae1d66ac7bc09642b5` |
| 12 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/instcommsemigroup--d3a72afca5a5d7dc2c76c5b2.md) | 61 | `declaration-track:d3a72afca5a5d7dc2c76c5b2b8485d89e5e923b859e2de9b95299b08799b8033` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/instance--e5c88bd6a827008060f5670c.md) | 84 | `declaration-track:e5c88bd6a827008060f5670c0ddafba2b256c2ca6e2bbb8e5bb5de462ed6a2ba` |
| 14 | `class` | [Dec](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/dec--4e6bd0b8cf42667e2bc2c0bb.md) | 106 | `declaration-track:4e6bd0b8cf42667e2bc2c0bbd5389895904271c105303c89f1b285d89cc6d792` |
| 15 | `axiom` | [It](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/it--2321be5b71e953a1d79d7f0d.md) | 109 | `declaration-track:2321be5b71e953a1d79d7f0deb13312c2d26e31a0c006e9c4b31e406e3c23f4d` |
| 16 | `abbrev` | [dec1](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/dec1--945f965b980557df0f1eb2ac.md) | 113 | `declaration-track:945f965b980557df0f1eb2ac3a17e9fac948ebe1b07f0ce8808d8a85915f19f3` |
| 17 | `def` | [dec2](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/declarations/dec2--e1b07e012727a2d9cb982e60.md) | 115 | `declaration-track:e1b07e012727a2d9cb982e60d0c4a7366a6f2f8fd9db5645c248d85e400f9806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
