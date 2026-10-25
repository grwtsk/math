# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowMod.Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f8a8e4ac668a5159d5436502cfc9e65a76b1f9d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f8a8e4ac668a5159d5436502cfc9e65a76b1f9d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.PowMod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmod--107d84085cf662e739724723.md) | 21 | `declaration-track:107d84085cf662e7397247234ac23c774dd231d7af729f390a0322a74da22142` |
| 2 | `def` | [powModAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodaux--ec35a30b260376337ea0c7d3.md) | 23 | `declaration-track:ec35a30b260376337ea0c7d3b4b4642e4752d454c885a031766a740c3d5261d1` |
| 3 | `def` | [Nat.eager](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/nat-eager--1b59f63fba67891db74b6971.md) | 25 | `declaration-track:1b59f63fba67891db74b6971ac5af28efa10f9e3000635f72c8c1ed2b6fd9650` |
| 4 | `def` | [powModTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr--e366b94c7523bc0e4cd91a52.md) | 29 | `declaration-track:e366b94c7523bc0e4cd91a52441608a7dbbbf973d967d321ee650435572de0fd` |
| 5 | `def` | [powModTR'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr--3b9cc47742e4b6fe8c71a2da.md) | 43 | `declaration-track:3b9cc47742e4b6fe8c71a2daab08b6c0b1eaeacb039a309335677a6fda1c2bd3` |
| 6 | `lemma` | [Bool.rec_eq_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/bool-rec-eq-ite--c24af21628f956df4419dcce.md) | 54 | `result-track:c24af21628f956df4419dcce5bada876d2ef380b1ce50ad388d14dca6393c0db` |
| 7 | `lemma` | [Nat.mod_eq_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/nat-mod-eq-mod--7c133239d6d1c6e6877c9821.md) | 57 | `result-track:7c133239d6d1c6e6877c98210e2e7fe5719869095bc16c2746e8fe5e30810e58` |
| 8 | `lemma` | [Nat.div_eq_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/nat-div-eq-div--81b52916c474c9a02eaef2fa.md) | 58 | `result-track:81b52916c474c9a02eaef2fa199352e593de209d484ee36f8763d9439f09f91a` |
| 9 | `lemma` | [Nat.land_eq_land](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/nat-land-eq-land--bc321f2f7270423d00541d14.md) | 59 | `result-track:bc321f2f7270423d00541d14abda8420f2a428be34fd951c8c0e67a6104b6a20` |
| 10 | `lemma` | [powModTR_aux_zero_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr-aux-zero-eq--bf5b42febb476156055b0f24.md) | 61 | `result-track:bf5b42febb476156055b0f240deaab114345b38fa505bc4c26552b0cd9086866` |
| 11 | `lemma` | [powModTR_aux_succ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr-aux-succ-eq--e07c370249a1df3d73638774.md) | 64 | `result-track:e07c370249a1df3d736387740387a53a15ef8233cccd234c089f0530e75e580b` |
| 12 | `lemma` | [powModTR_aux_succ_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr-aux-succ-eq--75e9609acf3cc6aa215a9ed1.md) | 72 | `result-track:75e9609acf3cc6aa215a9ed1f3128ae8918bdc9b7596249d800eef091f135488` |
| 13 | `lemma` | [powModTR_aux_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr-aux-eq--a64b171feca86e70259c9841.md) | 79 | `result-track:a64b171feca86e70259c9841c25321909cb3beadd7c71d55f7269fbf14a95a83` |
| 14 | `lemma` | [powModTR_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmodtr-eq--dabf1532e37f4d536c5d2b5f.md) | 101 | `result-track:dabf1532e37f4d536c5d2b5f005c328b02c8aa60a212bb8f6346928761015037` |
| 15 | `lemma` | [powMod_eq_of_powModTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmod-eq-of-powmodtr--be7eb82496ef020c4d857dea.md) | 105 | `result-track:be7eb82496ef020c4d857dea86fd491e57ac3fed6f4f8a76aea144e9b2ea8da7` |
| 16 | `lemma` | [powMod_ne_of_powModTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/powmod-ne-of-powmodtr--07f0825e92208a8d142e8e8d.md) | 108 | `result-track:07f0825e92208a8d142e8e8d66da2f7d7f41ab4fe32d64d2431ac13c09c1af05` |
| 17 | `def` | [mkPowModEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/mkpowmodeq--4f0e3d981184a7534dfe7a81.md) | 118 | `declaration-track:4f0e3d981184a7534dfe7a81b94755eaf9b95fd1dfc718df989245e35d72989b` |
| 18 | `def` | [provePowModEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/provepowmodeq--dae187ebd634c5203540d5e8.md) | 124 | `declaration-track:dae187ebd634c5203540d5e8e2531f9c234b1ee7e190f838a7089aa6f079e383` |
| 19 | `def` | [provePowModNe'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/provepowmodne--43d6294a9ca6a332606d5162.md) | 130 | `declaration-track:43d6294a9ca6a332606d5162de5abbf1dfd89f50df939e655586c90a7de15073` |
| 20 | `def` | [prove_pow_mod_tac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/prove-pow-mod-tac--09f7308e6fbadffb66c4171c.md) | 135 | `declaration-track:09f7308e6fbadffb66c4171c620cd83145364ef39bdfd3f0a8ec46547b3358ae` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant0441217b31f8eedd57175b45cc893621aa818c31895c1eb28d02b97aba8796c1.lean/declarations/elab--0319d5aae1bd4aa9f2e5b0fe.md) | 172 | `declaration-track:0319d5aae1bd4aa9f2e5b0fe62fc7e9ffe5eb22e8c8c83777e43f750bd918ce1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
