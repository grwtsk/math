# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WithLp.Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "786d1dbb7a04c9caf49140a073e56dfc1fd9bc7a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `786d1dbb7a04c9caf49140a073e56dfc1fd9bc7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/withlp--b433cff03b1487642a4e90c5.md) | 47 | `declaration-track:b433cff03b1487642a4e90c565634bfd02e50ef974bf04dec1e80fd0dbeb69f7` |
| 2 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv--d26a2d757e3bbd38f338173c.md) | 55 | `declaration-track:d26a2d757e3bbd38f338173c2a2186cded252c68ccac2c60d0d7e1549a81c941` |
| 3 | `instance` | [instNontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instnontrivial--6a13e78a0010620b13143168.md) | 59 | `declaration-track:6a13e78a0010620b1314316892588438c4b198f0f3004eaf5ab50d5a3af4e114` |
| 4 | `instance` | [instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instunique--3ae9f4eb237edfdd08cfcc4b.md) | 60 | `declaration-track:3ae9f4eb237edfdd08cfcc4be0b98469e4e285eeee85caa21afef142a22f1837` |
| 5 | `instance` | [instDecidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instdecidableeq--10e83ff7fb0f7c5c528cb286.md) | 61 | `declaration-track:10e83ff7fb0f7c5c528cb286fa9e682cf19845a391c486cceb0c4a0c66c864e6` |
| 6 | `instance` | [instAddCommGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instaddcommgroup--0ae67ba8954bc36c4bb6e8e3.md) | 63 | `declaration-track:0ae67ba8954bc36c4bb6e8e34e1529cb62f09edc75545d606007a8fd9c4528d5` |
| 7 | `instance` | [instSMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instsmul--edd31ee9f821840e029abec9.md) | 64 | `declaration-track:edd31ee9f821840e029abec99da85497677d926b8e865e5f876402b209de4929` |
| 8 | `instance` | [instMulAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instmulaction--51bdb1c3a6521c468c92a678.md) | 65 | `declaration-track:51bdb1c3a6521c468c92a678f7237aa109e524052c1c482f8ef949d1bed2d3a8` |
| 9 | `instance` | [instDistribMulAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instdistribmulaction--b9225d9826ca285c2f41bb6f.md) | 66 | `declaration-track:b9225d9826ca285c2f41bb6fd95794d0c1f4379259ef621bfc4350efe27ec199` |
| 10 | `instance` | [instModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instmodule--10aec7562add72582be4abd2.md) | 68 | `declaration-track:10aec7562add72582be4abd2991d1a9a9b54cc881ab54d7e44a9b803ff14e2f2` |
| 11 | `instance` | [instIsScalarTower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instisscalartower--da74e187ac2e21eba3d9c070.md) | 72 | `declaration-track:da74e187ac2e21eba3d9c070127f0839e3ddf6282f7709ebf6459bbd15173622` |
| 12 | `instance` | [instSMulCommClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instsmulcommclass--6c5269c7eb336b65972e2aed.md) | 77 | `declaration-track:6c5269c7eb336b65972e2aed992d9db09300697f4f154dfffcaeeb692c0499ab` |
| 13 | `instance` | [instModuleFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/instmodulefinite--136b4df127419bf62234561f.md) | 81 | `declaration-track:136b4df127419bf62234561f34d379afb61ce989743b228b2d86681872928a0e` |
| 14 | `theorem` | [equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-zero--4cf9ba25338948b24716ddd3.md) | 91 | `result-track:4cf9ba25338948b24716ddd3c0aa07757047bd9f4a9d7d6ad9b1a6cdca118bcb` |
| 15 | `theorem` | [equiv_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-symm-zero--e7b5b2a907f49463336f46de.md) | 95 | `result-track:e7b5b2a907f49463336f46de77926403d5ff1e6d8534493849dbc93770dc1b53` |
| 16 | `theorem` | [equiv_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-add--dd698d84aabeb888cf5eade7.md) | 99 | `result-track:dd698d84aabeb888cf5eade7f2311c380d1ef52e1f455ea54097d68e7ad5013f` |
| 17 | `theorem` | [equiv_symm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-symm-add--aef47f13cfbec0542b8bd989.md) | 104 | `result-track:aef47f13cfbec0542b8bd989af59ec7ca3810bf68eb14e1e8f3883cd1fc876be` |
| 18 | `theorem` | [equiv_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-sub--c646f62ad092e56c0fc82e2d.md) | 109 | `result-track:c646f62ad092e56c0fc82e2dda4cb8ee2ccf572e664a022c19b3c84e212b0832` |
| 19 | `theorem` | [equiv_symm_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-symm-sub--0fc6bbc5ec8f5c00f395c485.md) | 114 | `result-track:0fc6bbc5ec8f5c00f395c485e9105af8a54541f832307dc2683e0d5126d9be1d` |
| 20 | `theorem` | [equiv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-neg--918d24ce478edbc9ff709109.md) | 119 | `result-track:918d24ce478edbc9ff709109ecc42710ae751d48347551f0500e0e5995ae69a4` |
| 21 | `theorem` | [equiv_symm_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-symm-neg--669cbeec75354cb5df718007.md) | 123 | `result-track:669cbeec75354cb5df7180079db19375d1f37d51dd515b92c3609e4a0a743302` |
| 22 | `theorem` | [equiv_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-smul--39c9164fcdff7d42ec04f802.md) | 128 | `result-track:39c9164fcdff7d42ec04f8025a63e7403011dacedb9c40dd61586ed6536b9522` |
| 23 | `theorem` | [equiv_symm_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/equiv-symm-smul--4187634b4a164259f8e04b2e.md) | 133 | `result-track:4187634b4a164259f8e04b2ee4fc591dee76bd5f28c5bcf85712d5bf14251266` |
| 24 | `def` | [linearEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant14b92cabc6bb72f4009be1ddd7c889108524362da52e9ebebe6703fcf9318cce.lean/declarations/linearequiv--1f68e8363cad445210f7527d.md) | 141 | `declaration-track:1f68e8363cad445210f7527d879b7b7e24bf1bfe09b18e52c4bb58b7aec16511` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
