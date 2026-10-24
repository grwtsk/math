# Verification target: GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b16f7b18c9bcf064072bb3e5422d2b6786f1f6b3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/QuadraticCollisionOrder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b16f7b18c9bcf064072bb3e5422d2b6786f1f6b3`.

Source path: `GRWTSK/Algebra/RingTheory/QuadraticCollisionOrder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/QuadraticCollisionOrder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticAlgebra.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Carrier](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/carrier--237dffd18bdd30507087d3ac.md) | 23 | `declaration-track:237dffd18bdd30507087d3ac77a0b3d6a24d482c3df2bfe2578f2d57237d1508` |
| 2 | `def` | [generator](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/generator--0a6b37320750ff4e981bb2ba.md) | 28 | `declaration-track:0a6b37320750ff4e981bb2ba7118511c60568fa8cab262f9daf8ebcdb935fe2b` |
| 3 | `def` | [basis](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/basis--8f5ebd4cd1edb3e4d20a41ae.md) | 31 | `declaration-track:8f5ebd4cd1edb3e4d20a41aebef08f90dc80ff572b98e575fd251856ff3d5e6a` |
| 4 | `theorem` | [rank_two](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/rank-two--6d5b239ec1d61dcf1c509c4f.md) | 34 | `result-track:6d5b239ec1d61dcf1c509c4fbb80e0d461c2c5cd2d3eaa191e2e48c70b9bfba5` |
| 5 | `theorem` | [generator_relation](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/generator-relation--20ad321933a649e408c65b3c.md) | 37 | `result-track:20ad321933a649e408c65b3c5fdb6538d9efc5aca2604f5086de2d518396bf21` |
| 6 | `theorem` | [normal_form](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/normal-form--8a36236281efd3c244978d9e.md) | 42 | `result-track:8a36236281efd3c244978d9ef74c26f587957b2cb01a61b82612f0026aa9c423` |
| 7 | `def` | [values](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/values--f0ca2835aeae8f5d27760ecc.md) | 48 | `declaration-track:f0ca2835aeae8f5d27760ecc0d37d410ecbaea707df8bdf1b2ed3f9bb60b3bd0` |
| 8 | `theorem` | [values_mk](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/values-mk--47f3ce79028c37ca3c3c839b.md) | 55 | `result-track:47f3ce79028c37ca3c3c839ba8ca95a10fe4aa97fc094178020b8c69b1aec1c9` |
| 9 | `def` | [mapCoefficients](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/mapcoefficients--6a3ebadcede52f654248f5ff.md) | 58 | `declaration-track:6a3ebadcede52f654248f5ff28f79cdbbb691aabc7c311584d6d898a1b8429e2` |
| 10 | `theorem` | [values_map](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/values-map--fc91f34252e7dc1bfef6cb2b.md) | 66 | `result-track:fc91f34252e7dc1bfef6cb2bd945c278760233f1a834e65c9c70719cc1438828` |
| 11 | `theorem` | [values_image_iff](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/values-image-iff--3beb9c9c9c9085e8191054fb.md) | 72 | `result-track:3beb9c9c9c9085e8191054fb1ef920241520862c5d7334b73930a287c718a74a` |
| 12 | `theorem` | [values_injective](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/values-injective--500186ebfd09eb5e8cb67755.md) | 83 | `result-track:500186ebfd09eb5e8cb677550195abaf72034e88d26f8884014df387ee707ce9` |
| 13 | `theorem` | [values_star](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/values-star--769f5e8b20e44759d8b1d944.md) | 95 | `result-track:769f5e8b20e44759d8b1d9441b979000af34355d7471117d61ec21cc8c72bb4f` |
| 14 | `theorem` | [quadratic_remainder](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/quadratic-remainder--b900de1f879e5330f05634c2.md) | 100 | `result-track:b900de1f879e5330f05634c258ccb62126ff290fcb5419cec8e3a8cbe86f98c2` |
| 15 | `theorem` | [trace_entries](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/trace-entries--9b9443a8eaff33574df44e4b.md) | 107 | `result-track:9b9443a8eaff33574df44e4b4e6f6a04a2c54761c4b133c254b2563ed429a7b7` |
| 16 | `theorem` | [trace_discriminant](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/trace-discriminant--bb4ad9f00780815705b08269.md) | 115 | `result-track:bb4ad9f00780815705b082690c3eb4d945ceca978d12137174be43f3f545bad3` |
| 17 | `def` | [genericSplit](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/genericsplit--b6509464e447b659fcada769.md) | 129 | `declaration-track:b6509464e447b659fcada769d5cbb6a292c4856d0258e4565936a73ecd7614fb` |
| 18 | `theorem` | [universal_clearing_iff](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/universal-clearing-iff--95450a859bf9b5ef5e43c099.md) | 146 | `result-track:95450a859bf9b5ef5e43c0994fa71cefbd36fa22c25b8aa5a0c79635c98d2bd1` |
| 19 | `def` | [binaryReduction](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binaryreduction--13fd1ffa999c162782d3c1aa.md) | 160 | `declaration-track:13fd1ffa999c162782d3c1aa0987fa2b464b020cc67ee346cb56890d45d3f0ec` |
| 20 | `theorem` | [binaryReduction_surjective](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binaryreduction-surjective--4199158069aa2afff673162c.md) | 170 | `result-track:4199158069aa2afff673162c2d3b255feef09ee040b32dd7f99799429ca22167` |
| 21 | `theorem` | [binaryReduction_kernel](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binaryreduction-kernel--fdf15e2576704e79cacad13e.md) | 177 | `result-track:fdf15e2576704e79cacad13ec686ae9581b7144310064e1e84d4fbc53f8d19b1` |
| 22 | `theorem` | [binaryReduction_ker_ideal](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binaryreduction-ker-ideal--5a494fe87cf2c1f0adfa03e6.md) | 190 | `result-track:5a494fe87cf2c1f0adfa03e68304ac47a803a33def8b723c7bd35be199c1b421` |
| 23 | `def` | [binaryFiberEquiv](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binaryfiberequiv--d670bb831e49e69abded1ea6.md) | 197 | `declaration-track:d670bb831e49e69abded1ea6816fee540db948b2379c1057673be9142d1de598` |
| 24 | `theorem` | [binary_nilpotent](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binary-nilpotent--c35014eef2f945190f4e7a7d.md) | 202 | `result-track:c35014eef2f945190f4e7a7dcdf0312d6d993fdddec6dfb013963357fcc4ee85` |
| 25 | `theorem` | [binary_values](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binary-values--44354e109dc48114299e8186.md) | 210 | `result-track:44354e109dc48114299e818684befcd01e77351784b4d622f56d374dd157f85c` |
| 26 | `theorem` | [binary_values_not_injective](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binary-values-not-injective--e4d7ffbaf7a5af0d83fade9b.md) | 214 | `result-track:e4d7ffbaf7a5af0d83fade9bf321f690e8f57244f2b1db2bc2aeee6b2139301e` |
| 27 | `theorem` | [binary_quadratic_jet](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/declarations/binary-quadratic-jet--5bcac6adabea4d620ae993f8.md) | 222 | `result-track:5bcac6adabea4d620ae993f8630ae88d0d4de104f82353a6b8939bcdb84943b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
