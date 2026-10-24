# Verification target: GRWTSK.Algebra.LinearAlgebra.Reflection.Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4285bfd5ff07b7aa7a53fe270ced2a2bb057ea0d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4285bfd5ff07b7aa7a53fe270ced2a2bb057ea0d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Torsion` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteSpan` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preReflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/prereflection--805f0da39292193df0e9ecd0.md) | 75 | `declaration-track:805f0da39292193df0e9ecd06ea97e2a6337f8e74124c2ddf50790f73abe4f24` |
| 2 | `lemma` | [preReflection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/prereflection-apply--c91374bfda3dc7ed5f364674.md) | 78 | `result-track:c91374bfda3dc7ed5f36467497fcf289db859b03d47b72a37210be04ec329d9b` |
| 3 | `lemma` | [preReflection_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/prereflection-apply-self--a562089d3f6c4a3c453d2072.md) | 84 | `result-track:a562089d3f6c4a3c453d2072f47e13fda6fc46360d1069522609e79551dd7496` |
| 4 | `lemma` | [involutive_preReflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/involutive-prereflection--4ec8897dbac55589c8862975.md) | 88 | `result-track:4ec8897dbac55589c88629751a571ed297b1f708c6cfe000c179cd0a7f34f9cd` |
| 5 | `lemma` | [preReflection_preReflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/prereflection-prereflection--2d30a3aa732186286e46bd3f.md) | 92 | `result-track:2d30a3aa732186286e46bd3fff60894977d9244acb338fb4fe74b645dcd1f240` |
| 6 | `def` | [reflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection--ff7fde25b16ea15edfc3f4bc.md) | 105 | `declaration-track:ff7fde25b16ea15edfc3f4bcd57d07d7b412fba71f5f36bdb355c235e41513a2` |
| 7 | `lemma` | [reflection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-apply--6abff3cb74c694bcc37a6e6a.md) | 108 | `result-track:6abff3cb74c694bcc37a6e6ade8bad4af405749d0584bf27ba9d298197bccdae` |
| 8 | `lemma` | [reflection_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-apply-self--7c5ce5b8484758eb2de28b9e.md) | 113 | `result-track:7c5ce5b8484758eb2de28b9ee4e483ab67291061bf6d313d4a208c0eac3934b2` |
| 9 | `lemma` | [involutive_reflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/involutive-reflection--294f06b3c93f7c24ed1bf6ab.md) | 117 | `result-track:294f06b3c93f7c24ed1bf6ab8e7db828dd9bad640a71c291b2c61f727244c19c` |
| 10 | `lemma` | [reflection_inv](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-inv--77d504c200a3d68fdb2636ac.md) | 122 | `result-track:77d504c200a3d68fdb2636ac73749983d79846b385dc94782eff0810855b72e1` |
| 11 | `lemma` | [reflection_symm](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-symm--6bc07158c5fb42ac5e00b716.md) | 125 | `result-track:6bc07158c5fb42ac5e00b716d84a25ddb953e05ae70de5e7cefceffc47eeb3e8` |
| 12 | `lemma` | [invOn_reflection_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/invon-reflection-of-mapsto--9918404b2dd5497e017e3b88.md) | 129 | `result-track:9918404b2dd5497e017e3b8890a9b5df9d849997fbb142ab8ea6891098938870` |
| 13 | `lemma` | [bijOn_reflection_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/bijon-reflection-of-mapsto--8829d5402f67f7cf56b2f5b4.md) | 133 | `result-track:8829d5402f67f7cf56b2f5b41379b665da4e51ebd8cb843b6f786763c90bc482` |
| 14 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.PreReflection.Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.Submodule.mem_invtSubmodule_reflection_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/root-grwtsk-algebra-linearalgebra-prereflection-variantc75a18e97deb09672--c679bda99aa7950df5bcd61c.md) | 137 | `result-track:c679bda99aa7950df5bcd61ccec3dac1954e2c5830d407fbd34fd46c58189ae6` |
| 15 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.PreReflection.Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.Submodule.mem_invtSubmodule_reflection_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/root-grwtsk-algebra-linearalgebra-prereflection-variantc75a18e97deb09672--edde6ad57c970d89b7f2b4ec.md) | 145 | `result-track:edde6ad57c970d89b7f2b4ece2c76f720c480d3d1d60a359e9493c07c9f07955` |
| 16 | `lemma` | [reflection_mul_reflection_pow_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-pow-apply--dc73811a55875ab5ebfeb072.md) | 187 | `result-track:dc73811a55875ab5ebfeb0725dcb4ea7aecfa00bd0ba8bb1be980d26244abed2` |
| 17 | `lemma` | [reflection_mul_reflection_pow](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-pow--114e7bafb12c527422a82969.md) | 236 | `result-track:114e7bafb12c527422a82969c5bf562fa11f83dbcd7710873f00167c42ef321d` |
| 18 | `lemma` | [reflection_mul_reflection_zpow_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-zpow-apply--7ed5658b57237c3bd12b95cb.md) | 248 | `result-track:7ed5658b57237c3bd12b95cbf7674c1d3b0ef892cad764bf4b73794879556d01` |
| 19 | `lemma` | [reflection_mul_reflection_zpow](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-zpow--21e36b7d55acb1f4a3f4ac1d.md) | 268 | `result-track:21e36b7d55acb1f4a3f4ac1df1aac5045cfa92b5b778953961b201480ee66947` |
| 20 | `lemma` | [reflection_mul_reflection_zpow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-zpow-apply-self--663047174344373c47a7cb5e.md) | 281 | `result-track:663047174344373c47a7cb5ee3afac95354330b9af4f8d23ae93174b9d9c3bb5` |
| 21 | `lemma` | [reflection_mul_reflection_pow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-pow-apply-self--49ccf7bef2694285bf14051f.md) | 314 | `result-track:49ccf7bef2694285bf14051f94058ba7de5dce69549efc26f936332783771a9c` |
| 22 | `lemma` | [reflection_mul_reflection_mul_reflection_zpow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-mul-reflection-zpow-apply-self--74abc0890f23150e1d647a43.md) | 321 | `result-track:74abc0890f23150e1d647a43552372b5a428b3abc0e4c75e73c1cb3d10b94405` |
| 23 | `lemma` | [reflection_mul_reflection_mul_reflection_pow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-mul-reflection-mul-reflection-pow-apply-self--fc55c3edef1b96a8aef73b83.md) | 332 | `result-track:fc55c3edef1b96a8aef73b8346a062a6af8ad407c361ffb4906354eb01144524` |
| 24 | `lemma` | [Dual.eq_of_preReflection_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/dual-eq-of-prereflection-mapsto--1902308c97398d12eb2c7166.md) | 348 | `result-track:1902308c97398d12eb2c716673dd8fc8404b43739c94d29208bd78b0e0e54343` |
| 25 | `lemma` | [Dual.eq_of_preReflection_mapsTo'](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/dual-eq-of-prereflection-mapsto--03447675f9aefaa09135e990.md) | 382 | `result-track:03447675f9aefaa09135e990b9c7cec5ec6a0c193258cc44cd30b916d08b8853` |
| 26 | `lemma` | [reflection_reflection_iterate](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/reflection-reflection-iterate--1a13ea23b003ded2671765ca.md) | 409 | `result-track:1a13ea23b003ded2671765ca05b76e7ffafa3801cef00d6f7f494f61204355b2` |
| 27 | `lemma` | [infinite_range_reflection_reflection_iterate_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/infinite-range-reflection-reflection-iterate-iff--094f47614234d5f363f305a0.md) | 424 | `result-track:094f47614234d5f363f305a0f79f5b6021a0f3bfac9e3e304f486d47e97f0fce` |
| 28 | `lemma` | [eq_of_mapsTo_reflection_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/eq-of-mapsto-reflection-of-mem--deddfa2f2e035708bd9ee4d4.md) | 430 | `result-track:deddfa2f2e035708bd9ee4d491abbe4440f1c3efedc73251c6a7eaf21e55df33` |
| 29 | `lemma` | [injOn_dualMap_subtype_span_range_range](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/declarations/injon-dualmap-subtype-span-range-range--e6fecce3d88a91e5982e3bc1.md) | 449 | `result-track:e6fecce3d88a91e5982e3bc17a6344f9f21ea6ffafdb0b740b5aab183d8e0dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
