# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ModularBoundary.Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2515ad46120dfb804392633b22af45a21e725d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2515ad46120dfb804392633b22af45a21e725d`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phase](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase--640f6480a084b83112a2c7eb.md) | 19 | `declaration-track:640f6480a084b83112a2c7eb3d1c3b15493f2803cca14c923ea938da58964800` |
| 2 | `def` | [angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/angle--a4f47180ef0164eac0099466.md) | 23 | `declaration-track:a4f47180ef0164eac009946632d53cfadebf35eea4eb437b963beada8007b836` |
| 3 | `theorem` | [phase_eq_exp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-eq-exp--57f0944ef6b65b814247bba4.md) | 26 | `result-track:57f0944ef6b65b814247bba4e2f26cec4303202de19070553b95812d5243e379` |
| 4 | `theorem` | [phase_add](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-add--f4df6bcda7e7240021c650d0.md) | 35 | `result-track:f4df6bcda7e7240021c650d0905ec4f2836bd8b90b9cae76cf483365f02957ba` |
| 5 | `theorem` | [phase_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-zero--0a8116e2b6358ac16d0bebb8.md) | 40 | `result-track:0a8116e2b6358ac16d0bebb8e61e2906cfcb58cb052a3344f35f18ab63673b06` |
| 6 | `theorem` | [phase_mul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-mul--0371c0d70123ec6c89af2c7e.md) | 44 | `result-track:0371c0d70123ec6c89af2c7e728faea59ab313ca0c66bb92715625fe8d90a882` |
| 7 | `theorem` | [phase_eq_one_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-eq-one-iff--c5110a8823e10e15b003d9bc.md) | 51 | `result-track:c5110a8823e10e15b003d9bcb1cb9711ea58d2b8d28d2148e02c40325f9169c2` |
| 8 | `theorem` | [phase_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-norm--76b4759dd9739c30de2524c6.md) | 59 | `result-track:76b4759dd9739c30de2524c6870e6c6bb95f60854a872455e41f19847eb436f3` |
| 9 | `theorem` | [phase_normSq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-normsq--3f29d8b326240374ba3b146d.md) | 63 | `result-track:3f29d8b326240374ba3b146d13ccae1a968fc77f56db975546d9dd8e1b30c70b` |
| 10 | `theorem` | [phase_pow_modulus](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-pow-modulus--79960d9c89f31e04416d2cf3.md) | 69 | `result-track:79960d9c89f31e04416d2cf31886c610366e2c62a394c2d33e9ba1ce774e9488` |
| 11 | `def` | [defect](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect--325f7be0a5900b788fe49818.md) | 74 | `declaration-track:325f7be0a5900b788fe49818f48fe07d96e7dadb3706a43e496bad29d2831535` |
| 12 | `theorem` | [defect_nonneg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect-nonneg--590cf3438aab77eafb1f3a39.md) | 78 | `result-track:590cf3438aab77eafb1f3a39b84d9f92410ea0c120e928296365440359e3a958` |
| 13 | `theorem` | [defect_eq_zero_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect-eq-zero-iff--0111f4dbf1fe2337f20c021e.md) | 82 | `result-track:0111f4dbf1fe2337f20c021e23d71f5c83747a9df613abaaade11e6c47d1af76` |
| 14 | `theorem` | [defect_pos_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect-pos-iff--2674d333220265536c6de303.md) | 87 | `result-track:2674d333220265536c6de303cd10178d9018955e389b1eaf7db787dee9a7d653` |
| 15 | `theorem` | [defect_eq_two_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect-eq-two-sub--e9d9bd5467c4e2f11202720a.md) | 98 | `result-track:e9d9bd5467c4e2f11202720a2a4b974bcab268e7d6669844e2bf62ae8f97ed3d` |
| 16 | `theorem` | [defect_eq_cos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect-eq-cos--4133fe27207f5e9f063c5d0f.md) | 107 | `result-track:4133fe27207f5e9f063c5d0fc02f0d1590de2b94d0f5d013230018e53a2b3c20` |
| 17 | `theorem` | [defect_eq_sin_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/defect-eq-sin-sq--0edc5b23b89cf71647511d5b.md) | 113 | `result-track:0edc5b23b89cf71647511d5b7aaca99539cbe322fab593e4e2bdc81cd59cfc5d` |
| 18 | `def` | [pairedQuadratic](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/pairedquadratic--58c35ac9ee8048921998186e.md) | 121 | `declaration-track:58c35ac9ee8048921998186e5e8a19c1d9c0cddf7aef2cc1cecfd2a0e640d5c3` |
| 19 | `theorem` | [phase_mul_star](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-mul-star--0291b37c002d5e414a1a1236.md) | 125 | `result-track:0291b37c002d5e414a1a1236961772333059038af64415bdfeda993863b15e92` |
| 20 | `theorem` | [pairedQuadratic_expansion](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/pairedquadratic-expansion--13a9418aefd1420b3ffd03e1.md) | 137 | `result-track:13a9418aefd1420b3ffd03e11854af8b005c18f4769c4f5596417a44ad9151cb` |
| 21 | `theorem` | [pairedQuadratic_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/pairedquadratic-one--e6f122b7b44d55ab3536361e.md) | 148 | `result-track:e6f122b7b44d55ab3536361ed9485e564cf814abe9fa9bccd614cb6dfb69425c` |
| 22 | `theorem` | [pairedQuadratic_one_eq_zero_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/pairedquadratic-one-eq-zero-iff--69dd7e7def14f8fd85aa1758.md) | 155 | `result-track:69dd7e7def14f8fd85aa1758f2ee02c2a72ceaabed14b02b062e268c2bfb19b4` |
| 23 | `theorem` | [pairedQuadratic_of_dvd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/pairedquadratic-of-dvd--201c18323ff8b7f3b238c3c3.md) | 160 | `result-track:201c18323ff8b7f3b238c3c3f7ed00f17f5c5268dc21905a74a3bc64607b1c0a` |
| 24 | `theorem` | [phase_geometric_sum](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/phase-geometric-sum--6453c0d269bc6ddc7f7c15a5.md) | 165 | `result-track:6453c0d269bc6ddc7f7c15a5e811338de3e91c0d1c0ea45925b92d375beb9c16` |
| 25 | `def` | [fourierDelta](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/fourierdelta--a61b169fd60e4f910926ff46.md) | 177 | `declaration-track:a61b169fd60e4f910926ff46c17486cec96b215bbe285e21a059235828338787` |
| 26 | `theorem` | [fourierDelta_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variantaf380e46908e60f011c0efde43e11d14ed75205ffa0f12779f23f76c25cd887b.lean/declarations/fourierdelta-eq--aca2b0d4ef1c21d39432ecf4.md) | 181 | `result-track:aca2b0d4ef1c21d39432ecf403d17d08ddc6caf6892ce293b495001f634892ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
