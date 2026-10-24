# Verification target: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91d193d7e09c93c96bc523db7d93c975dd231349",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91d193d7e09c93c96bc523db7d93c975dd231349`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Synonym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instsmulwithzero--ba126839ed3cd804a336e661.md) | 26 | `declaration-track:ba126839ed3cd804a336e66142b789ed6beddf32465a9cc5326a869ce05d5ac5` |
| 2 | `instance` | [instSMulWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instsmulwithzero--fb4fb3034a8725cbab192619.md) | 29 | `declaration-track:fb4fb3034a8725cbab192619080f918a35d96f8b1651fbd94efe179db8152439` |
| 3 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribsmul--d711de03fe635da723f934f4.md) | 32 | `declaration-track:d711de03fe635da723f934f4add46c36549059016bad7e7327cf2589c624befb` |
| 4 | `instance` | [instDistribSMul'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribsmul--db2dad3b1ee1288214a48947.md) | 35 | `declaration-track:db2dad3b1ee1288214a4894721a71c93bc3bdb7c2ea0a6b300b928e5e9245202` |
| 5 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribmulaction--194cd7d89686e8db8980bdf6.md) | 38 | `declaration-track:194cd7d89686e8db8980bdf69e545854daf78aab60f08fb56929035dd5e66a1d` |
| 6 | `instance` | [instDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribmulaction--25205b4fd839df19406a7885.md) | 41 | `declaration-track:25205b4fd839df19406a788549fec59e6adab5c19ff4e6dac4eae08bd4a57701` |
| 7 | `instance` | [instMulActionWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instmulactionwithzero--b6a3317a548fc8ef09b4bfa1.md) | 44 | `declaration-track:b6a3317a548fc8ef09b4bfa1b3f0febac65f45dd1feb9da66ca2a4d866907de5` |
| 8 | `instance` | [instMulActionWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instmulactionwithzero--1a7a5fb590193cf2eb0365bf.md) | 47 | `declaration-track:1a7a5fb590193cf2eb0365bf657053e8a073dc6cc5ced41c778da937baccc10f` |
| 9 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instsmulwithzero--9e5885a190cac453bf83ee72.md) | 54 | `declaration-track:9e5885a190cac453bf83ee72e9e7c7a228b372484e09bcf7029c02ad564d04f5` |
| 10 | `instance` | [instSMulWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instsmulwithzero--0b8f0182ad0b115000c2ff97.md) | 57 | `declaration-track:0b8f0182ad0b115000c2ff97e84ef6f880c853d671dca16a197ad3d5ad1f08a8` |
| 11 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribsmul--92d6721d25c5b768ebc4df69.md) | 60 | `declaration-track:92d6721d25c5b768ebc4df69bb3b73d1c1e9f2661c29ec4cce28b8d8b3d27e07` |
| 12 | `instance` | [instDistribSMul'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribsmul--a3345552b94d8ced1c462738.md) | 63 | `declaration-track:a3345552b94d8ced1c462738397f1bd09f0caf4b00ff2a2a9095accfdcdad7b6` |
| 13 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribmulaction--e05cdda721c9200dd57aa5ff.md) | 66 | `declaration-track:e05cdda721c9200dd57aa5ff8ed477523010e5af603d4ba55cba747428d269b4` |
| 14 | `instance` | [instDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instdistribmulaction--55a674347c05bccf00f19f17.md) | 69 | `declaration-track:55a674347c05bccf00f19f174866a6aef9e8436c1e2488dea1603a3b0c6def41` |
| 15 | `instance` | [instMulActionWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instmulactionwithzero--f09de3a2812bb3369987731e.md) | 72 | `declaration-track:f09de3a2812bb3369987731e3e8ec4a5aab6455394cd0ab9dca35379da46043b` |
| 16 | `instance` | [instMulActionWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variant1a7951e48fd705980201c6e9eb35f63db261aa791e1e5f064c96806fbfbe3cf9.lean/declarations/instmulactionwithzero--89b22b02c8b093a8d9a302e9.md) | 75 | `declaration-track:89b22b02c8b093a8d9a302e9a3cde049cfc50c217113e8c2f2d2b07a090fbe28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
