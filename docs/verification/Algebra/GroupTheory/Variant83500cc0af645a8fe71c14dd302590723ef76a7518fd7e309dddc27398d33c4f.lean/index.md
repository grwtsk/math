# Verification target: GRWTSK.Algebra.Group.Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e3d79e399829c0d14615cc0ef25dcad1a1666a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Group/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/index.md) · [Full source](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e3d79e399829c0d14615cc0ef25dcad1a1666a`.

Source path: `GRWTSK/Algebra/Group/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Group/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--02c0832f24fa4298f5d57156.md) | 19 | `declaration-track:02c0832f24fa4298f5d57156ccd19fcf1ce71cb22dca90786665240fdcc9912a` |
| 2 | `lemma` | [equivShrink_symm_one](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-symm-one--485234dbe7b00d72b2ec0e38.md) | 22 | `result-track:485234dbe7b00d72b2ec0e38cfe76e97015dd437a6671f0b727f4922a38b9b53` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--5868ea2639f764fe80260267.md) | 27 | `declaration-track:5868ea2639f764fe802602677560ac01f3a98a4cd3d1f24b832a4edca4dddb80` |
| 4 | `lemma` | [equivShrink_symm_mul](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-symm-mul--8b7831b0ae88ba159577f23f.md) | 30 | `result-track:8b7831b0ae88ba159577f23fe47bed2e99589175bcb0fc833bbe41d888ba295a` |
| 5 | `lemma` | [equivShrink_mul](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-mul--4319541a39f2136d0b769e5f.md) | 36 | `result-track:4319541a39f2136d0b769e5f933be74b92c2d3ea6a185f734e3a03056ba5d81a` |
| 6 | `lemma` | [equivShrink_symm_smul](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-symm-smul--a4741328837d9ff1a3cf987e.md) | 42 | `result-track:a4741328837d9ff1a3cf987e8f989e022d6b107c3e738af52cab7d4dcfb45d90` |
| 7 | `lemma` | [equivShrink_smul](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-smul--ae94197c44896b6c9e493971.md) | 48 | `result-track:ae94197c44896b6c9e4939715b72bd4c77d71abcc87490fd804216895bd03431` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--74615b09337debf495b8e90f.md) | 55 | `declaration-track:74615b09337debf495b8e90f485e9b43a3e36b7c2c8ee41906b065f91c4508ae` |
| 9 | `lemma` | [equivShrink_symm_div](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-symm-div--b24ede52294fa1cd6bef7f06.md) | 58 | `result-track:b24ede52294fa1cd6bef7f06631d6891b6fdf503abcc492118f82b276d3817c1` |
| 10 | `lemma` | [equivShrink_div](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-div--42bab8758b24f825eaf5b70c.md) | 64 | `result-track:42bab8758b24f825eaf5b70c6c7d7744e605e79e713c62d7758456c59b6d820a` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--c7a22d813e377e02b8450bda.md) | 71 | `declaration-track:c7a22d813e377e02b8450bdaf269379356dda31d96b1d54c2c365997896f18ab` |
| 12 | `lemma` | [equivShrink_symm_inv](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-symm-inv--cfab07865094a22841b4b3ad.md) | 74 | `result-track:cfab07865094a22841b4b3ad7a6e6bb66ab669a10e7be65d796faefa75cdadb3` |
| 13 | `lemma` | [equivShrink_inv](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/equivshrink-inv--6cf5d22ac9c4e6f75c8c9a9e.md) | 80 | `result-track:6cf5d22ac9c4e6f75c8c9a9ebd4188eee888aa4e842290651144372d5df3ed47` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--e3eff522256603dacd5773d4.md) | 87 | `declaration-track:e3eff522256603dacd5773d4251d46ea944ebf5652db0e52129fe9d2c2981d91` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--21e8259cfb29ce06216fdcd8.md) | 90 | `declaration-track:21e8259cfb29ce06216fdcd81e2a63ca06a112010dd4a90dfbe3d78cb76485ec` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--072a025066e4eae203b1e008.md) | 95 | `declaration-track:072a025066e4eae203b1e008b9389a1c7f0d9db73ebe096af50dbdc98852d5cd` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--9e0b19ff49702ffef155d597.md) | 98 | `declaration-track:9e0b19ff49702ffef155d59788670e5bed244b5d87ed544ee1676620b63cb744` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--30e5b8425a27ab85e9a14bc4.md) | 103 | `declaration-track:30e5b8425a27ab85e9a14bc4f92d8d77078ef9e63f3be5542b24168dab52a7b9` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--1bbca06acea4a940cf4dc345.md) | 106 | `declaration-track:1bbca06acea4a940cf4dc345331fe6bce0bd9e28f2d2c133cb4496dffa55dcda` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--3c0e0587e520ddfdbf14f38f.md) | 111 | `declaration-track:3c0e0587e520ddfdbf14f38fecd0b906fd7582d8aabf4336d320004b68894b0e` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--123ab52675374d62d8f127a9.md) | 116 | `declaration-track:123ab52675374d62d8f127a923141c5d3d11b6eeb7eaa4276106f4f940df53c4` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--b5ffffbaa26e13bd84448a54.md) | 121 | `declaration-track:b5ffffbaa26e13bd84448a54153325dd123f969efd0d3a2b4561fae8e6446bf9` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/declarations/instance--e5516c388d4cf20522228ff4.md) | 126 | `declaration-track:e5516c388d4cf20522228ff4908a2ab5eb7f1ebcc810082cd5ec67036728751d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
