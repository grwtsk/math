# Verification target: GRWTSK.Algebra.GroupTheory.SlashActions.Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d4e9514f4526804a39e2ecdae9da07b91d37b6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d4e9514f4526804a39e2ecdae9da07b91d37b6`.

Source path: `GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/macro-rules--00e52ec3021868da2ede8736.md) | 32 | `declaration-track:00e52ec3021868da2ede87366a65088419655de3fd228cdee55034a32cbbb3e2` |
| 2 | `class` | [SlashAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slashaction--00f6cb542ee7c9ef042a30c9.md) | 45 | `declaration-track:00f6cb542ee7c9ef042a30c9250b68e6fd8410cbea456db930c9c0f7343b061b` |
| 3 | `theorem` | [SlashAction.neg_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slashaction-neg-slash--a1872d3b6ad3aa545cac562c.md) | 61 | `result-track:a1872d3b6ad3aa545cac562cff4e044b20e33abcb42b93f9901fce7e280e4f92` |
| 4 | `theorem` | [SlashAction.smul_slash_of_tower](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slashaction-smul-slash-of-tower--0a205cafe761ccf48da8617e.md) | 68 | `result-track:0a205cafe761ccf48da8617e570adaa8fe62819b38b3a731221e86f74e29b7be` |
| 5 | `def` | [monoidHomSlashAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/monoidhomslashaction--7038f2b0dcfd0d2bab44cab1.md) | 78 | `declaration-track:7038f2b0dcfd0d2bab44cab10141b9e3a5b96a14eb027bd8ac581bed7353742b` |
| 6 | `def` | [slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slash--b5198b15e41c418e57aa7d75.md) | 93 | `declaration-track:b5198b15e41c418e57aa7d75d48d6d17ac18d380a01d58bde0541da741d46d40` |
| 7 | `theorem` | [slash_mul](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slash-mul--d0093fc9c371198b54b622f2.md) | 104 | `result-track:d0093fc9c371198b54b622f2579f30f237e17365b1fbf63eab320cb50fe79c88` |
| 8 | `theorem` | [add_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/add-slash--08dc03df448eeeb3c4312ef3.md) | 121 | `result-track:08dc03df448eeeb3c4312ef3362ee3fab03963c81828905a219c3e89697eee50` |
| 9 | `theorem` | [slash_one](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slash-one--9e7e49b2b4f9cd46543b4778.md) | 127 | `result-track:9e7e49b2b4f9cd46543b4778678c6829b7468489f2a0a3f1418d33c55b0aaf81` |
| 10 | `theorem` | [smul_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/smul-slash--809cc850fb6c5b3e42575fe8.md) | 132 | `result-track:809cc850fb6c5b3e42575fe8f0af7b6ce9159e3cae3debff2cc90c85f52471cd` |
| 11 | `theorem` | [zero_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/zero-slash--3ffc5abdc1f5d4547deb2341.md) | 140 | `result-track:3ffc5abdc1f5d4547deb23410f169c5044da2ec2e0a254086da7b8ece56d7808` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/instance--c1a6df9463704641aaf1180a.md) | 143 | `declaration-track:c1a6df9463704641aaf1180ae8ca4257646f83fe36e779e7121ecf1cb15be821` |
| 13 | `theorem` | [slash_def](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slash-def--1199743f338f605c0ac8da6a.md) | 153 | `result-track:1199743f338f605c0ac8da6aa20a8544da00a612180764cc1b13e830970820ce` |
| 14 | `instance` | [subgroupAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/subgroupaction--45df37f10f83b0a23ffe4dca.md) | 157 | `declaration-track:45df37f10f83b0a23ffe4dca1e3a93ffd5edc868f4863bea7675a9f966ed3bbf` |
| 15 | `theorem` | [subgroup_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/subgroup-slash--ef35d11efa1b38d296dee766.md) | 164 | `result-track:ef35d11efa1b38d296dee76634701baca5c5754c39d964ebdb0cad6972fbb848` |
| 16 | `instance` | [SLAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slaction--9cbdbac752ed6afc1eb62522.md) | 168 | `declaration-track:9cbdbac752ed6afc1eb625223eececdf8150e9a0b9e674719a3296e505efc788` |
| 17 | `theorem` | [SL_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/sl-slash--9806c57379c88886c23db17c.md) | 176 | `result-track:9806c57379c88886c23db17cd6ce77ebc934730bdcb340e0427066bda11366bc` |
| 18 | `theorem` | [is_invariant_one](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/is-invariant-one--f003ebc7716edbe026ed048c.md) | 183 | `result-track:f003ebc7716edbe026ed048cd43fe18b4df0d8b79eef881bdfc69b3568347b89` |
| 19 | `theorem` | [slash_action_eq'_iff](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/slash-action-eq-iff--5b152e3847811e9ae8bd80a4.md) | 193 | `result-track:5b152e3847811e9ae8bd80a4080c36a5c3f137a2bd355c47e4bb775e37f77913` |
| 20 | `theorem` | [mul_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/mul-slash--80e61f3ceaa6f98caba3d1b2.md) | 204 | `result-track:80e61f3ceaa6f98caba3d1b286e30d0f1b4116c122f569acc1f086a17da6e779` |
| 21 | `theorem` | [mul_slash_SL2](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/mul-slash-sl2--e83b6aceb2132d743028a670.md) | 226 | `result-track:e83b6aceb2132d743028a670647abd2e745b3458a2d1bbee6cf63abc8dcfaf8f` |
| 22 | `theorem` | [mul_slash_subgroup](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/declarations/mul-slash-subgroup--fd28326903098b0eab2f52a7.md) | 237 | `result-track:fd28326903098b0eab2f52a76cdf37f44400b724285099bd11b8a9d9e6785c01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
