# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaFeatureNormBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e63b032cf102e51e3c0a4f83068703c8fb81d71",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e63b032cf102e51e3c0a4f83068703c8fb81d71`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaPairBasisSaturation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftFeatureL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/leftfeaturel1--662ada90d5ab9196ddd5c67b.md) | 44 | `declaration-track:662ada90d5ab9196ddd5c67b99d567881b594df85881d497ddc86f0c0eb3a3a2` |
| 2 | `def` | [rightFeatureL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/rightfeaturel1--3ac5026cce93a3d7ee79e571.md) | 50 | `declaration-track:3ac5026cce93a3d7ee79e571851bb6c63634e374b87077070ec845bac2ec6bba` |
| 3 | `def` | [separatedFeatureNormMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/separatedfeaturenormmass--86a4e5385581b3d2563ad7c9.md) | 56 | `declaration-track:86a4e5385581b3d2563ad7c9a3dcad6143abd34fc24ada3be450b4f174ac7add` |
| 4 | `theorem` | [leftFeatureL1_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/leftfeaturel1-nonnegative--79e204c8a7c7f6301bfb2015.md) | 64 | `result-track:79e204c8a7c7f6301bfb2015b5326aee69d991a5eb8dabd3b69f7c8e77dd4b07` |
| 5 | `theorem` | [rightFeatureL1_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/rightfeaturel1-nonnegative--167c1f63b5f352fea542355a.md) | 71 | `result-track:167c1f63b5f352fea542355a8cfdd41792067f3215912d606dad1cbb01241fb7` |
| 6 | `theorem` | [separatedFeatureNormMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/separatedfeaturenormmass-nonnegative--71f3bd079f6bbb55177fa2c5.md) | 78 | `result-track:71f3bd079f6bbb55177fa2c50b5ccd60e9ffd01b7a7e0ddcc80c63fcb0cc09eb` |
| 7 | `theorem` | [absoluteFactorMass_eq_separatedFeatureNormMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/absolutefactormass-eq-separatedfeaturenormmass--3bc07db04f6ae9f686d16c32.md) | 88 | `result-track:3bc07db04f6ae9f686d16c322fb68fa1e0f9a3e7a635ba515c9190cee6c7579e` |
| 8 | `structure` | [PrimeThetaFeatureNormCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/primethetafeaturenormcertificate--0e7c0064f4a99e3acf5efe97.md) | 166 | `declaration-track:0e7c0064f4a99e3acf5efe970d01495e6b875e5cc01f0e5c4ac5267db7125ea4` |
| 9 | `def` | [certifiedFeatureBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/certifiedfeaturebudget--10e5c9f23062ac034b46eed5.md) | 183 | `declaration-track:10e5c9f23062ac034b46eed5032281d9ffa09c25ae4ccd4a71a1b069ccd7e482` |
| 10 | `theorem` | [certifiedFeatureBudget_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/certifiedfeaturebudget-nonnegative--a91d601ab561bb8e7c6d4554.md) | 192 | `result-track:a91d601ab561bb8e7c6d4554c0650a90ad13630d39f44c6c79bf3b9ea84eafe1` |
| 11 | `theorem` | [absoluteFactorMass_le_certifiedFeatureBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/absolutefactormass-le-certifiedfeaturebudget--f1feb7d1109badea4db50281.md) | 205 | `result-track:f1feb7d1109badea4db50281a5b1b924afe1a96f7235201356fc9f4cd19c3ff5` |
| 12 | `def` | [PrimeThetaFeatureNormCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/primethetafeaturenormcriterionat--b4038e3255f0f9ce95c8fdd3.md) | 241 | `declaration-track:b4038e3255f0f9ce95c8fdd334b93ae5fbd27fec5b6af1f80081ecbe6721534c` |
| 13 | `theorem` | [primeThetaFeatureNormCriterion_to_separableCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/primethetafeaturenormcriterion-to-separablecriterion--4d05ed98d28c6a6df1d19417.md) | 270 | `result-track:4d05ed98d28c6a6df1d19417a61dc8a416d3a5f91bc849966b32cb5ed433145e` |
| 14 | `theorem` | [primeThetaFeatureNormCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/primethetafeaturenormcriterion-to-recurrence--b2bee1c6aa5d5f7935079c64.md) | 294 | `result-track:b2bee1c6aa5d5f7935079c64602b735ea86750ee7a00a769fa99f39da524e1bf` |
| 15 | `theorem` | [primeThetaFeatureNormCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/declarations/primethetafeaturenormcriterion-to-descent--186295b3d87145d7f783d20e.md) | 303 | `result-track:186295b3d87145d7f783d20e27a26bb517e6c4892b54b4968c16171fe7557eca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
