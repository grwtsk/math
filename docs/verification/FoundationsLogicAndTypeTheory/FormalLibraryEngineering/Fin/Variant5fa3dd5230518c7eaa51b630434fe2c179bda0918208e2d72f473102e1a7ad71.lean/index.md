# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fin.Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a5a9d5290052dfa2db43cbc6b6592ba021904d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a5a9d5290052dfa2db43cbc6b6592ba021904d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [npow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/npow--5fe174712da178a2b203c633.md) | 26 | `declaration-track:5fe174712da178a2b203c6330daaa58db4df89aadde77d8d8572f3f1cb803a4f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/instance--1ca0389ef7fd1a26047443b1.md) | 28 | `declaration-track:1ca0389ef7fd1a26047443b16fb0b3fe4ee21efedf480b7f439d9a5e3224f6a4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/instance--a3862815712257a6db17d23d.md) | 31 | `declaration-track:a3862815712257a6db17d23df76b07c2c4ae055e8e34c256be7fd71995bf6a4a` |
| 4 | `theorem` | [pow_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/pow-zero--80dc1c9f596b79d22093d93b.md) | 34 | `result-track:80dc1c9f596b79d22093d93b10270fe8f34ef216707d9f020c6d55597d0268ff` |
| 5 | `theorem` | [pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/pow-succ--bfd296c6dee14ae519a69d71.md) | 35 | `result-track:bfd296c6dee14ae519a69d71ab98e312b75e669dc3e4d4a5c2f589cfe7b9ee07` |
| 6 | `theorem` | [add_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/add-assoc--695269539314437a03822610.md) | 37 | `result-track:695269539314437a0382261045e3fa392f08252bbfb460b29c96e5c56cf8aa0f` |
| 7 | `theorem` | [add_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/add-comm--003eaa4f81625ff5981b87ef.md) | 40 | `result-track:003eaa4f81625ff5981b87ef47c5b0dea11a4e47c55f62d73f482e24012af553` |
| 8 | `theorem` | [add_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/add-zero--4ad94dab82d5384d6d21dd8e.md) | 43 | `result-track:4ad94dab82d5384d6d21dd8e1ca4e8f364ed6fb27d6fca502de92d7eb18470e6` |
| 9 | `theorem` | [neg_add_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/neg-add-cancel--b0228105df76dce953f113bf.md) | 47 | `result-track:b0228105df76dce953f113bf713e3c07a563f597aef938246d77b6b58eccf0e2` |
| 10 | `theorem` | [mul_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/mul-assoc--50ce1fb24cb03578f372bd48.md) | 51 | `result-track:50ce1fb24cb03578f372bd482a5ee1fed5de2bfda799edec51fbd25b38b9079f` |
| 11 | `theorem` | [mul_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/mul-comm--e9a0e3e9a2fc4d31073fb43a.md) | 54 | `result-track:e9a0e3e9a2fc4d31073fb43af84e0205763578180c31a6cde4556cc9d22fbeec` |
| 12 | `theorem` | [zero_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/zero-mul--295ab0ad54e6dd2a396b725a.md) | 57 | `result-track:295ab0ad54e6dd2a396b725a84919e56636f9251a250e938993c0dce31e4f05d` |
| 13 | `theorem` | [mul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/mul-one--640ef177e5f78d67dd21a007.md) | 60 | `result-track:640ef177e5f78d67dd21a0073c889950e0aa8bead0f712b0314b6508738483d9` |
| 14 | `theorem` | [left_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/left-distrib--b4f70907a06d16837778780a.md) | 64 | `result-track:b4f70907a06d16837778780ace41662819e81563c9c9b1bd6b88d632eee4f922` |
| 15 | `theorem` | [ofNat_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/ofnat-succ--2e5aa126fb25d8f8cfaed9ab.md) | 67 | `result-track:2e5aa126fb25d8f8cfaed9ab46c27805951715c103a3e4f934952f4279b2d437` |
| 16 | `theorem` | [sub_eq_add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/sub-eq-add-neg--c3be65c184c6affc42a4b1b0.md) | 70 | `result-track:c3be65c184c6affc42a4b1b0593b5981c7cb953343f75ae0cb15b5e7f570ca45` |
| 17 | `theorem` | [neg_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/neg-neg--2b3d33e8bd1854672509c111.md) | 73 | `result-track:2b3d33e8bd1854672509c111ebc8c719bdf00c93ec69559578b48431fda97e51` |
| 18 | `theorem` | [_root_.Nat.sub_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/root-nat-sub-sub-right--6ba7ad7acb54df9e7df51c61.md) | 80 | `result-track:6ba7ad7acb54df9e7df51c61f34d9e1e874b795f72dd91142302b0dc790d4254` |
| 19 | `theorem` | [neg_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/neg-mul--cdea8354d2d467a444334787.md) | 82 | `result-track:cdea8354d2d467a444334787500f39166c6bb6955ce99832bedb5fe1d4ffb015` |
| 20 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/intcast-neg--9dfd4f6caf9802254937011d.md) | 104 | `result-track:9dfd4f6caf9802254937011dd62af2b47bf890c573a3c7b6fc7d014c4eb1bd6f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/instance--5423fa2903edba5dc4ed76c6.md) | 111 | `declaration-track:5423fa2903edba5dc4ed76c657dcc9a2fd75314e501df7bea9d05b64be6b4974` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/instance--116cf2cf95bafa9837bc138a.md) | 135 | `declaration-track:116cf2cf95bafa9837bc138a3193474a32f2411f561f62e7b714769d99ee6776` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/example--6429bba1454436263cf3ef26.md) | 142 | `declaration-track:6429bba1454436263cf3ef26692ab7232df24fea829ed0255e0db59afaede2d4` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/example--e0ce62cf9237f8f6047cd01b.md) | 143 | `declaration-track:e0ce62cf9237f8f6047cd01b51d59e11e9ee0f5730471ee2bc8882381ea4302f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/instance--fe5262c32a04bda28c8fa137.md) | 146 | `declaration-track:fe5262c32a04bda28c8fa137cdd4469def934a4d737c308cc2a9da9cf53dc376` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/declarations/instance--3009eb8e61e140124d86bc33.md) | 159 | `declaration-track:3009eb8e61e140124d86bc33bf249e4e132399cdb6834cf1ff0f02f5ff724c19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
