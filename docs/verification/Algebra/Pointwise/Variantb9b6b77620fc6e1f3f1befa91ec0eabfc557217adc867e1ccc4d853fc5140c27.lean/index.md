# Verification target: GRWTSK.Algebra.Pointwise.Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7327ab520c49e4d321d7821191aaa1e7d641b042",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7327ab520c49e4d321d7821191aaa1e7d641b042`.

Source path: `GRWTSK/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--862336069d915c4581f910f9.md) | 40 | `declaration-track:862336069d915c4581f910f9b518febb627fcbd71a379723a1aa13918a1ac441` |
| 2 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/coe-mul--f8b7bef0f122263a7c3489e7.md) | 43 | `result-track:f8b7bef0f122263a7c3489e70b87f3007b14b54412c385a96b5295bf4d2e7acb` |
| 3 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/mul-apply--da94b00f8ffa6c2e595aa04e.md) | 47 | `result-track:da94b00f8ffa6c2e595aa04ed5bcde3cc16a598b69db66234dfed320ae3cd41f` |
| 4 | `theorem` | [single_mul](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/single-mul--cd3eb00b65be0b0cf52d61dd.md) | 51 | `result-track:cd3eb00b65be0b0cf52d61dd083f1e529c679c3bbce3e3ac5209b1f14b8b38f0` |
| 5 | `lemma` | [support_mul_subset_left](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/support-mul-subset-left--a05d1d2859273b7291094794.md) | 54 | `result-track:a05d1d2859273b7291094794c4b5dd49a637813cd45779f6a04b0cea10c11603` |
| 6 | `lemma` | [support_mul_subset_right](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/support-mul-subset-right--30c7748fbc00da73fa0aacf0.md) | 58 | `result-track:30c7748fbc00da73fa0aacf099dec12827843ffd0b8b0202f331567f8a6054a9` |
| 7 | `theorem` | [support_mul](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/support-mul--489a4d298ca5e46776f8eed3.md) | 62 | `result-track:489a4d298ca5e46776f8eed3f83df402afb5c605e2929e87c45f94f6fbf2ec29` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--1a8a158958c8814cfd2e09ed.md) | 66 | `declaration-track:1a8a158958c8814cfd2e09ed5756fc8275afc72f0cdf5b46e71a529cf9700a66` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--7cde1cdde80d104f0c462d39.md) | 71 | `declaration-track:7cde1cdde80d104f0c462d39f60fe0bc72c8b9e42372df651daf054e598e619e` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--941468237c3b0612bf20c980.md) | 74 | `declaration-track:941468237c3b0612bf20c9803d41c8ed7f4ddef3f8a8f1760503d93e033176ec` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--e355dbdf626a76d94adbda2d.md) | 77 | `declaration-track:e355dbdf626a76d94adbda2d8cabd44fd82ed50cc6b72ec6ccbb1730c3ff23b1` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--f45ef32467c1dd8268e88f7e.md) | 80 | `declaration-track:f45ef32467c1dd8268e88f7e3aba27fa657e99f691efbb63ca9927b4f9177c69` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--1fa47247f027953278ef0e31.md) | 83 | `declaration-track:1fa47247f027953278ef0e31b1d97b8a419d1c7a2b6af955dba4cfff49aaa004` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--c4fec294c50beca0a1ed05cd.md) | 87 | `declaration-track:c4fec294c50beca0a1ed05cda39a62b6500b89906b0104f09d350da695961b62` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/instance--0bfdae76691eb84b339c14c6.md) | 91 | `declaration-track:0bfdae76691eb84b339c14c6881285a3bca8a2a86c8c3fa12bb9e8718aeccec4` |
| 16 | `instance` | [pointwiseScalar](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/pointwisescalar--8e42f0d3ec51980130f6fc5d.md) | 98 | `declaration-track:8e42f0d3ec51980130f6fc5d3f248cd4e58dcc9cf0e2abbf055d312c67754dc4` |
| 17 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/coe-pointwise-smul--1bc2da495b86d435874ce2d2.md) | 109 | `result-track:1bc2da495b86d435874ce2d2fa0db929b3cd3b03c71e5d5ee4c7f84d8fefe6e9` |
| 18 | `instance` | [pointwiseModule](../../../../mathematics/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/declarations/pointwisemodule--8ce410965523d954049157ef.md) | 113 | `declaration-track:8ce410965523d954049157ef7ee10093c1fbec94527422f0f58d1e97a611f8f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
