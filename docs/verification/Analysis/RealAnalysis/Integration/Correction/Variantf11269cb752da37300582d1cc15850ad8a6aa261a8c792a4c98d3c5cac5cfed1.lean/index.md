# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Correction.Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e48916634355d4dd3f164851a04c2c15cd6049",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e48916634355d4dd3f164851a04c2c15cd6049`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Assembly` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/normalizationpolynomial--bdcc6156998f9722c6f1cf6f.md) | 44 | `declaration-track:bdcc6156998f9722c6f1cf6f86f88ad4b52d3a410a750119ca79ae5af3c117c7` |
| 2 | `theorem` | [normalizationPolynomial_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/normalizationpolynomial-eq--dd2d597efb276dfc67b0b839.md) | 51 | `result-track:dd2d597efb276dfc67b0b8390ebad28434f9e759ede2a924f8cd22d8a068efec` |
| 3 | `def` | [correctedSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctedsource--87faff88e16744be0d55ee36.md) | 60 | `declaration-track:87faff88e16744be0d55ee36afb33afe7eae24af6c88b88a3be2be1610e05964` |
| 4 | `theorem` | [corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/corrected-source-eq--210d191340a5ef9a50f022bb.md) | 66 | `result-track:210d191340a5ef9a50f022bb1fd1525d352fdffb34bdd52495a8347b6f168499` |
| 5 | `theorem` | [nonnegative_corrected_source_of_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/nonnegative-corrected-source-of-uniform--0bbd7c11351da24c17264492.md) | 76 | `result-track:0bbd7c11351da24c1726449283ddaee75d74cb6d482eee1ead9ed233143d4b87` |
| 6 | `def` | [correctionKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctionkernel--710164ee1f3c9aacb327678e.md) | 98 | `declaration-track:710164ee1f3c9aacb327678e81af3a4c00c4891a74933bc60f2c714539f29970` |
| 7 | `theorem` | [weighted_correction_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/weighted-correction-eq--63ca470721c7cddb9473c904.md) | 105 | `result-track:63ca470721c7cddb9473c9041a657605ae9538c4b2f1d4a12f968060e988ed30` |
| 8 | `theorem` | [correction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correction-integrable--e29816d8e88ff247e65ef053.md) | 121 | `result-track:e29816d8e88ff247e65ef053d113414a445508e6bd8248913a871d0306b16ade` |
| 9 | `theorem` | [integral_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/integral-correction--ab96a02dc006ddb63e18baa7.md) | 135 | `result-track:ab96a02dc006ddb63e18baa7aceaf8a9b1e635c563a9dd1556fef4f7c4b52279` |
| 10 | `theorem` | [correctionKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctionkernel-analytic--bb09215218718fd97d5c382c.md) | 181 | `result-track:bb09215218718fd97d5c382c56340e1288fc3c6fbc4d3bb61bc06f69639819d9` |
| 11 | `def` | [correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctedtransform--80e059a799f819f3ce4174c4.md) | 191 | `declaration-track:80e059a799f819f3ce4174c4c48f13efbc0d3c26e61fef48b7f39c6c3c718483` |
| 12 | `theorem` | [weighted_corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/weighted-corrected-source-eq--8baab5df5887895057745dc8.md) | 195 | `result-track:8baab5df5887895057745dc8ceaaa0a664072e9a8b8673be89c4769eb699e991` |
| 13 | `theorem` | [corrected_source_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/corrected-source-integrable--ff369847028140f15e569333.md) | 207 | `result-track:ff369847028140f15e5693338c5003934c71db2423e9fdd3f510a1b3204ef9f1` |
| 14 | `theorem` | [integral_corrected_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/integral-corrected-source--9f749a52cfb1e142c924cc5a.md) | 223 | `result-track:9f749a52cfb1e142c924cc5abfc0ff861912d6c9c98a33ea338f65807220a4ad` |
| 15 | `theorem` | [correctedTransform_analytic_on_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctedtransform-analytic-on-domain--66fe8c5e0247cc5260133886.md) | 245 | `result-track:66fe8c5e0247cc5260133886a5e1f2950b76962d009c8ac33675588bdf245502` |
| 16 | `theorem` | [correctedTransform_meromorphic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctedtransform-meromorphic--62274176434f1844d88cf02f.md) | 257 | `result-track:62274176434f1844d88cf02f631027fde4e3af4d910610882987a6e77c67b2a8` |
| 17 | `theorem` | [correctedTransform_analytic_positive_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctedtransform-analytic-positive-real--3dceac331ac732baf6e51b8e.md) | 271 | `result-track:3dceac331ac732baf6e51b8e52829133137d397066f8e034d76e2fd38a6a9916` |
| 18 | `def` | [CorrectedSourceCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/correctedsourcecheckpoint--d51b854a81559a36835d074a.md) | 282 | `declaration-track:d51b854a81559a36835d074a699c8b50cdb33d896adcc2d24ae7f607a67dc476` |
| 19 | `theorem` | [corrected_source_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/declarations/corrected-source-checkpoint--79c427d0ecd16706ae1ab019.md) | 301 | `result-track:79c427d0ecd16706ae1ab01947cddc6ff65141a9905e44946d89d10e2121fb4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
