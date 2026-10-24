# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearRelaxation.Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d035c5b8aff4629e939c73c649ec64a4b817cc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d035c5b8aff4629e939c73c649ec64a4b817cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.BoundedRicciFlow` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FrozenMetricLinearRelaxation](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/frozenmetriclinearrelaxation--ed2ae6c5649f77609cf52f89.md) | 33 | `declaration-track:ed2ae6c5649f77609cf52f891c5bc4216d484d8b517a551cff708067a6fda7c5` |
| 2 | `def` | [composeChronological](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/composechronological--7bf0f68af36467cc21f09ee1.md) | 58 | `declaration-track:7bf0f68af36467cc21f09ee1742595ef20418bf1f9af001e49aa303c33a8357a` |
| 3 | `def` | [prefixMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/prefixmap--9b48adc6dc81e1189f3bcf33.md) | 63 | `declaration-track:9b48adc6dc81e1189f3bcf336a9061b17c4df950aace5ed27f815e3d90f16775` |
| 4 | `def` | [horizonMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/horizonmap--5d12463d687afce3e2d100cc.md) | 69 | `declaration-track:5d12463d687afce3e2d100cc79b2fd2fbb1a65336ac90bb276e3f880e2e5bb49` |
| 5 | `def` | [trajectory](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/trajectory--6458d4eed7a3c6f259fe95d0.md) | 74 | `declaration-track:6458d4eed7a3c6f259fe95d0b4c2ac066b7bcb510d0be3c07998df8cff2310b3` |
| 6 | `theorem` | [prefixMap_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/prefixmap-zero--8e9261c7178c5b77e264c8ee.md) | 80 | `result-track:8e9261c7178c5b77e264c8ee5034946938c2d50ea8b8ad2202a395be7c30d77a` |
| 7 | `theorem` | [horizonMap_add](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/horizonmap-add--ce87435addccbc63483fd475.md) | 85 | `result-track:ce87435addccbc63483fd4751fac9515beb5e95b25dfffe5daf5089a1af0e537` |
| 8 | `theorem` | [horizonMap_smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/horizonmap-smul--9dde36530e6c19f785f3a137.md) | 91 | `result-track:9dde36530e6c19f785f3a13768d119e1d36db3332eced1b13b4c1311b0b5a821` |
| 9 | `def` | [reconstructAbsolute](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/reconstructabsolute--ea58b22efb916b4157384164.md) | 99 | `declaration-track:ea58b22efb916b4157384164c4a4cad744bece6624525df035578ab2b0c3173c` |
| 10 | `structure` | [ContinuousRelaxationRaster](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/continuousrelaxationraster--811014edb36dfbadbbd79c0a.md) | 109 | `declaration-track:811014edb36dfbadbbd79c0af0f6d0882d9388ec5ed6f8d9301176f9381996dc` |
| 11 | `structure` | [RelaxationParameter](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/relaxationparameter--884b43c8b62ba7ba42757167.md) | 128 | `declaration-track:884b43c8b62ba7ba4275716769d570b5828d3e89fea8b89e7fcd9c605ab77028` |
| 12 | `theorem` | [one_sub_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/one-sub-nonnegative--9630766d3b4f188c18a77029.md) | 136 | `result-track:9630766d3b4f188c18a770295bbc9f0abcf515b9f14be36877a6f5e4933ee078` |
| 13 | `def` | [involutionProjection](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/involutionprojection--d32d0f8b18b80459816df7c9.md) | 143 | `declaration-track:d32d0f8b18b80459816df7c9f94e5d91eda1e34f8190ca0e50a6db95f27964cd` |
| 14 | `theorem` | [involutionProjection_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/involutionprojection-idempotent--fa5cfbfe29e071164ebbb0ed.md) | 148 | `result-track:fa5cfbfe29e071164ebbb0ed09dfeff3724db248bebb8fcecf060809595faa10` |
| 15 | `def` | [involutionRelaxation](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/involutionrelaxation--e9ae36cef234c566d7d05e8c.md) | 163 | `declaration-track:e9ae36cef234c566d7d05e8ca5e04b9a8d55f2fb1fc0b7e57a45278a9df782f1` |
| 16 | `def` | [RelaxationParameter.operator](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/relaxationparameter-operator--d3dd710658faded53cc59f17.md) | 169 | `declaration-track:d3dd710658faded53cc59f17ee87158540eb58e1934c8cddeea3eafef18111ff` |
| 17 | `theorem` | [involutionRelaxation_apply_of_invariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/involutionrelaxation-apply-of-invariant--4760ffbab698c4fae609ed45.md) | 175 | `result-track:4760ffbab698c4fae609ed45beafafce61385eee1f6ea503888aeb098187f171` |
| 18 | `theorem` | [involutionRelaxation_apply_of_antiInvariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/involutionrelaxation-apply-of-antiinvariant--f9f0487303613efed8089b8b.md) | 186 | `result-track:f9f0487303613efed8089b8bc23ad837bd51ad23406fc04d5d076ce3121ac842` |
| 19 | `theorem` | [norm_involutionRelaxation_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/norm-involutionrelaxation-le--da4da42dbf9747709c94b899.md) | 208 | `result-track:da4da42dbf9747709c94b899edaa7b87e91077140f51000ef635e536e2107ae3` |
| 20 | `theorem` | [norm_involutionRelaxation_lt_of_antiInvariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/declarations/norm-involutionrelaxation-lt-of-antiinvariant--6a6940f67c9fa7837f779d30.md) | 236 | `result-track:6a6940f67c9fa7837f779d30b0814862c712c096b6f54d3f87bca3e68c3881aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
