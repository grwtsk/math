# Verification target: GRWTSK.Algebra.Pointwise.Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e92810b3e50f96fcd9265d35a5c3b1c9e0ca204",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e92810b3e50f96fcd9265d35a5c3b1c9e0ca204`.

Source path: `GRWTSK/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseDistribMulAction](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwisedistribmulaction--51e52576ccdf9b814ddb9d41.md) | 45 | `declaration-track:51e52576ccdf9b814ddb9d41639146f6da4e8253899b207e5262a631d676274f` |
| 2 | `def` | [pointwiseMulSemiringAction](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwisemulsemiringaction--7e8296338b6b5a61010e6ec4.md) | 61 | `declaration-track:7e8296338b6b5a61010e6ec4834f391c2647ba88e8f125d5a4b0bf91963b4f6f` |
| 3 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-smul-def--c481cc34e2a1901e237451cb.md) | 68 | `result-track:c481cc34e2a1901e237451cb4abf5333cf40b9e129e0c7ec33b42a0416ebe0ba` |
| 4 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/smul-mem-pointwise-smul--fd8b3c891b65ffe2ecd33768.md) | 74 | `result-track:fd8b3c891b65ffe2ecd3376803d637825725b84f14358a8c6a6e202440647ccc` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/instance--bd6af1dc09a498d15ffb599e.md) | 77 | `declaration-track:bd6af1dc09a498d15ffb599e82b399288d0204425567e8323bbad079893fb096` |
| 6 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/smul-bot--768673b92f08d7acb6f82075.md) | 83 | `result-track:768673b92f08d7acb6f8207544e258d23fd9a7036d38a5f8e7c89bcd9a2639d1` |
| 7 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/smul-sup--d87f01f2b18452126b3a46b4.md) | 86 | `result-track:d87f01f2b18452126b3a46b472356722e7982ee105ebc3bc113c2c49f4b7c90a` |
| 8 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/smul-closure--c729bfedf1f3df163bf9c2c1.md) | 89 | `result-track:c729bfedf1f3df163bf9c2c1ad90f8bed8275583d56e13033d0e545f1e803c5f` |
| 9 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-central-scalar--8f4b221228f338272d41bdcb.md) | 92 | `declaration-track:8f4b221228f338272d41bdcb2cc8ecf508c1db332fea997a675f8256451ae51f` |
| 10 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-smul-toaddsubmonoid--d163e739433c91965d357905.md) | 97 | `result-track:d163e739433c91965d35790597743896313b8ad85da051ee8102cb1a91f75c19` |
| 11 | `theorem` | [pointwise_smul_toAddSubGroup](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-smul-toaddsubgroup--78f552dc03452fc67fc317c8.md) | 104 | `result-track:78f552dc03452fc67fc317c8a8dc5caacb04901a3f16e3c7dd9ad236f463ee3a` |
| 12 | `theorem` | [pointwise_smul_eq_comap](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-smul-eq-comap--74762df74f3afad49d1c61ef.md) | 118 | `result-track:74762df74f3afad49d1c61ef540cdde11fa23dda0ca5afb78736f177a9d91420` |
| 13 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/smul-mem-pointwise-smul-iff--f768ede9e86816950e21c459.md) | 125 | `result-track:f768ede9e86816950e21c459cc1029a38cca711e4d53f90e58d1f4b2878d02f5` |
| 14 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--83f67e1de13d87519a40b340.md) | 128 | `result-track:83f67e1de13d87519a40b340c440172553d682fe854e85f63d131c6ff57ea53d` |
| 15 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/mem-inv-pointwise-smul-iff--fbd74b4a7a069994294861db.md) | 133 | `result-track:fbd74b4a7a069994294861dbf4eb678b91546533f79af807381d0f055c02979b` |
| 16 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-smul-le-pointwise-smul-iff--430664f2956b267c0c923651.md) | 137 | `result-track:430664f2956b267c0c923651a4c5756fc0fb3d2a2264d7b9099219466cebba95` |
| 17 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/pointwise-smul-subset-iff--175769a7d4cd49e5d223e2bb.md) | 140 | `result-track:175769a7d4cd49e5d223e2bb68ebcd65e253720c09ee2acab988874324cf59f0` |
| 18 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/subset-pointwise-smul-iff--5de63c8313fe2c17ed18c4f4.md) | 143 | `result-track:5de63c8313fe2c17ed18c4f473540b00a2edadae9f26e6b8f08942b899e53a15` |
| 19 | `instance` | [IsPrime.smul](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/isprime-smul--02238fb83e46ab6f9e03c6fb.md) | 146 | `declaration-track:02238fb83e46ab6f9e03c6fb50f6a3ad8ae869cc2d1667441b3f5d137de74efe` |
| 20 | `theorem` | [IsPrime.smul_iff](../../../../mathematics/Algebra/Pointwise/Variant33be3c16148ca516147068130263d158f563d0394603b867d2e52439ff0a42c9.lean/declarations/isprime-smul-iff--b00702617a9905eb3a211bb8.md) | 151 | `result-track:b00702617a9905eb3a211bb8b70a8ca153ec9c548146416651fee08831f3a5e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
