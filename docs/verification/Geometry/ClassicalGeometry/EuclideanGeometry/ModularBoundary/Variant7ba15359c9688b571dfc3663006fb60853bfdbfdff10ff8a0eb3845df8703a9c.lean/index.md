# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ModularBoundary.Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c09a97e4c967d0cd23068ce402bab3cdda1fa8ea",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c09a97e4c967d0cd23068ce402bab3cdda1fa8ea`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phase](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase--40838ff2eff824afbe99a84d.md) | 27 | `declaration-track:40838ff2eff824afbe99a84d65b0500dd54ab8e11487ebb3c31752811e9d8f53` |
| 2 | `def` | [angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/angle--8961570f1915ca4e16a1ef00.md) | 31 | `declaration-track:8961570f1915ca4e16a1ef00dbd14079c8d952d2b329e414f535e2837a4b53a4` |
| 3 | `theorem` | [phase_eq_exp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-eq-exp--ec7a5aa878be9e384ce89a5c.md) | 34 | `result-track:ec7a5aa878be9e384ce89a5cd8614ede73192915e509b418fe577c478bdb23b9` |
| 4 | `theorem` | [phase_add](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-add--d798eb6a756ef765744e44ab.md) | 43 | `result-track:d798eb6a756ef765744e44ab80b57b261e944ca326bc7dfd3a24b88c94224276` |
| 5 | `theorem` | [phase_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-zero--029dcb95e0054baa6d409c35.md) | 48 | `result-track:029dcb95e0054baa6d409c3585facf0cb834f3128a37f950485bf648d10e90ad` |
| 6 | `theorem` | [phase_mul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-mul--e72c4b38c711ee39705b022d.md) | 52 | `result-track:e72c4b38c711ee39705b022dee3b6c6659ef60c357e1c5a15e7703225f9d6147` |
| 7 | `theorem` | [phase_eq_one_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-eq-one-iff--9b4c09aa9d99f474c2310cbd.md) | 59 | `result-track:9b4c09aa9d99f474c2310cbd0f8172300e4ee530a6a278b146bc71daeb09c504` |
| 8 | `theorem` | [phase_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-norm--d1b243dfd7fc087e9c1966e8.md) | 67 | `result-track:d1b243dfd7fc087e9c1966e88d1a96eb4c17444ec6545731b8aa3a342f3fc82e` |
| 9 | `theorem` | [phase_normSq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-normsq--88d6bfd8f30a7e11989f9c98.md) | 71 | `result-track:88d6bfd8f30a7e11989f9c980354410814e5afe8e8d9435afc677300a9e6c242` |
| 10 | `theorem` | [phase_pow_modulus](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-pow-modulus--bd36ff2ef592fde380cf92bd.md) | 77 | `result-track:bd36ff2ef592fde380cf92bdda05314da078c8948d0597d10f7cff1c79cf2565` |
| 11 | `def` | [defect](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect--12e4c5e71aa314bf4e221f77.md) | 82 | `declaration-track:12e4c5e71aa314bf4e221f77da75bcbfe8de2fcc9153ca1c7fa822b27292ee95` |
| 12 | `theorem` | [defect_nonneg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect-nonneg--f35d70c46f9d15a6ac744948.md) | 86 | `result-track:f35d70c46f9d15a6ac74494803c082d5d7992e96eed41603c8cdba476e43f340` |
| 13 | `theorem` | [defect_eq_zero_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect-eq-zero-iff--a1f40a58fbeb57d13df8dc0c.md) | 90 | `result-track:a1f40a58fbeb57d13df8dc0c19a9296989bb469a40076871c0dbadbfdfca3109` |
| 14 | `theorem` | [defect_pos_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect-pos-iff--d527933fbaca6c885f5ae555.md) | 95 | `result-track:d527933fbaca6c885f5ae55520157409daff803788ae3a49294ba4776cc35c8c` |
| 15 | `theorem` | [defect_eq_two_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect-eq-two-sub--862b6ed09bb01330b96073d2.md) | 106 | `result-track:862b6ed09bb01330b96073d235ab76806e2438c8f7cefd2454de5854525d725a` |
| 16 | `theorem` | [defect_eq_cos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect-eq-cos--1b4f231793d438235d572b4c.md) | 115 | `result-track:1b4f231793d438235d572b4c03b8dae0d50fcee3cdf5172cf65ce854ed4a9016` |
| 17 | `theorem` | [defect_eq_sin_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/defect-eq-sin-sq--ff4a176c61ba7adfa6c42a15.md) | 121 | `result-track:ff4a176c61ba7adfa6c42a15d031a7ea38af6f411bc2aee04f5c9e47c657678e` |
| 18 | `def` | [pairedQuadratic](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/pairedquadratic--29298ac71c8e5237b7122954.md) | 129 | `declaration-track:29298ac71c8e5237b7122954c47212f49ee2878424b0057a0350d3451f39a48a` |
| 19 | `theorem` | [phase_mul_star](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-mul-star--4dc610a4de96aa0bacae3ab7.md) | 133 | `result-track:4dc610a4de96aa0bacae3ab796879de45c6d73ec9b452414a6cc3a2539dbe932` |
| 20 | `theorem` | [pairedQuadratic_expansion](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/pairedquadratic-expansion--3fcdd09359d5e0171befc9ef.md) | 145 | `result-track:3fcdd09359d5e0171befc9eff6121d9e0c80cc2159b13604f6a12f14a78e39ec` |
| 21 | `theorem` | [pairedQuadratic_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/pairedquadratic-one--2b6abcc95e23fa4d21b5c78f.md) | 156 | `result-track:2b6abcc95e23fa4d21b5c78f5a61aff15969bf7d164c3151bbcb402c092b73c7` |
| 22 | `theorem` | [pairedQuadratic_one_eq_zero_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/pairedquadratic-one-eq-zero-iff--dfa8c458831fc7ec7ef31ec6.md) | 163 | `result-track:dfa8c458831fc7ec7ef31ec61703869919c9b867e66547e13b94db090a86f75b` |
| 23 | `theorem` | [pairedQuadratic_of_dvd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/pairedquadratic-of-dvd--bbfe65588c744abab8a5fa3c.md) | 168 | `result-track:bbfe65588c744abab8a5fa3c3b81e4ecac8d5d237690ef2e9615b09e76c85092` |
| 24 | `theorem` | [phase_geometric_sum](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/phase-geometric-sum--a17d4f84a86246157c138906.md) | 173 | `result-track:a17d4f84a86246157c13890631a96d13e7c51b6057d2fd88595f569571f17f8b` |
| 25 | `def` | [fourierDelta](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/fourierdelta--a7f403031c5acae19c4af190.md) | 185 | `declaration-track:a7f403031c5acae19c4af1905279e0bb0f29c328342809237daf45e78162f6a7` |
| 26 | `theorem` | [fourierDelta_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/declarations/fourierdelta-eq--ee368ed267992ed69e0ed8c4.md) | 189 | `result-track:ee368ed267992ed69e0ed8c4825d391884317f32a95d96ca3d2f957a4b123a0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
