# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceBoundaryFullAudit.Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c04d72db71a27639edbe68c0c30bf88556c62769",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c04d72db71a27639edbe68c0c30bf88556c62769`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment--16c6f631594734247c63eb4e.md) | 24 | `declaration-track:16c6f631594734247c63eb4ed5370e2a86c9dc2e8aa24b6585b6f2457dbe18b6` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-intervalintegrable--a1f2892cefe0c8a012b1a83a.md) | 29 | `result-track:a1f2892cefe0c8a012b1a83a4953d699104a9a45f071ab15d7fa60116224e092` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-zero-eq-source--9e230ce0af97f4395ce57c60.md) | 36 | `result-track:9e230ce0af97f4395ce57c608108131402eb94bd31d8ab45bd8ffdde29018f97` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-zero-zero--c59e9f41df656bef3f961dfe.md) | 49 | `result-track:c59e9f41df656bef3f961dfe738b39fdeeb36876825c874b4e031dc249a17cd4` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpflux-hasderivat--2e2f5d48a88c114bab552a9a.md) | 59 | `result-track:2e2f5d48a88c114bab552a9ab3bc9ccef911c149c7d25523a90e5c44ad1cb1a9` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-equation--ebb5555e7f36d4524c28a850.md) | 70 | `result-track:ebb5555e7f36d4524c28a85019296e0277af7bb0a713079bf9a3d188dee32218` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/re-eq-zero-of-weighted-energy--4a85904acc76ae844d740db8.md) | 105 | `result-track:4a85904acc76ae844d740db843888dca72eb99589153407840060cc4bac73233` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpprimitive-hasderivat--fd87de1367b5ab20cdf9e4d6.md) | 134 | `result-track:fd87de1367b5ab20cdf9e4d680e64f548a5b6ec6d2e97004e04604726571bdd1` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-closedformula--082fcf49bf666cc9dbe385dd.md) | 149 | `result-track:082fcf49bf666cc9dbe385dd78464e260d5cf798a5519ad88462552b2596ebad` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/v-zero--23b72c20980aca863bba683a.md) | 174 | `result-track:23b72c20980aca863bba683a34a3c9dea7e7817e80edd64357ee27667654af75` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/v-eq-bumpmoment--1aacd840456eafe52b29ab11.md) | 183 | `result-track:1aacd840456eafe52b29ab11718f056522c8c6ab609f44a2fd8e44847eca1415` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/w-eq-bumpmoment--a1bbc86a95835aee1c131142.md) | 196 | `result-track:a1bbc86a95835aee1c13114288b1d3f572055291145bf07e50ac866ea8a5b778` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-hasderivat--656d4177be03e1cd5d1d81af.md) | 218 | `result-track:656d4177be03e1cd5d1d81af8cc5d42885d1bb641fb8d528e0f9cb55ba19af07` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-continuous--650996e3b0803436c888aa88.md) | 254 | `result-track:650996e3b0803436c888aa880406acc7dd3db561cbbf871a52100e2134bade62` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialprofile--55e5a8068375dd127a2fd778.md) | 259 | `declaration-track:55e5a8068375dd127a2fd7784f238a5da0ed71eadc47e650280787f8f9f44ff1` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialflux--6fae3a492059d2a45773bfd3.md) | 262 | `declaration-track:6fae3a492059d2a45773bfd34349578da3eb9f5cc63fbc7bcc44754431f46909` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialprofile-hasderivat--94e76ecc2544defa3b0593fa.md) | 266 | `result-track:94e76ecc2544defa3b0593fa3dfa6f3a7ae9d54f85e9fb2b7549368f8e80b381` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialflux-hasderivat--33eb9da7a56a945aca70be1a.md) | 275 | `result-track:33eb9da7a56a945aca70be1a002be6bec69a0bb9af6e8804e65a460998debe73` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialprofile-continuous--a408732568a87f51b8e2fd8d.md) | 285 | `result-track:a408732568a87f51b8e2fd8dda6b0c47e710151b2c30f6615176a98fc474b7d8` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialflux-continuous--4679c3751cdb0d6f4cff9e35.md) | 289 | `result-track:4679c3751cdb0d6f4cff9e3591b85bf605e534eeed371f65d38cf7d299ec8e53` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialmass--9365c8e6a444ffe35fab38a2.md) | 294 | `declaration-track:9365c8e6a444ffe35fab38a259cc9ac60c416b270be36fc814c3a3152a9caae0` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialenergy--2f3eb49954d8bf509bc33578.md) | 297 | `declaration-track:2f3eb49954d8bf509bc335789f54eca90d81fc67d1e8bdcd864fb08c0d9211e4` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radial-integrands-intervalintegrable--a46942559bb45f64086f44f3.md) | 301 | `result-track:a46942559bb45f64086f44f3cb072cb142e4d2306a2df8dcd24ce52c0133215d` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialenergy-nonneg--321a583d10853bcb69f07395.md) | 313 | `result-track:321a583d10853bcb69f073950263c6f394e4db0be0fe4cb88ed4edcac5bc5c18` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialprofile-eventually-ne-zero--baa191219fdc8067919eb183.md) | 319 | `result-track:baa191219fdc8067919eb18398925e39737609b8a73928820068947649cf216b` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radialmass-pos--621b0f47c377e24e7063123d.md) | 326 | `result-track:621b0f47c377e24e7063123dc58363a701bf585324c83be567f96d122616c2a1` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/radial-energy-identity--a84bf1cb14739e67ad987560.md) | 342 | `result-track:a84bf1cb14739e67ad987560077a5736006e3786e38fc75a57e024a60677aefe` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/bumpmoment-zero-re--07843ef36c7e601aab6eefb6.md) | 400 | `result-track:07843ef36c7e601aab6eefb6e87b7ad0fe6c09debda6f8831729ef3efbe17a31` |
| 29 | `theorem` | [V_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/v-continuous--02efe03c846256baac4441f3.md) | 418 | `result-track:02efe03c846256baac4441f3a7bda69d6e5b13144ee41395352b03c70ff88743` |
| 30 | `theorem` | [actualLaplace_continuousOn_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/actuallaplace-continuouson-closed--a92db23c931cccbc1139ef1f.md) | 426 | `result-track:a92db23c931cccbc1139ef1f2d34526797a291318879ac72356b9993824292a7` |
| 31 | `theorem` | [sourceProduct_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/sourceproduct-continuousat--9da683f22d96e6bec87d9001.md) | 452 | `result-track:9da683f22d96e6bec87d9001fb425801b9d1e4de04456d7a8678c4ea220fc296` |
| 32 | `theorem` | [actualLaplace_eq_product_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/actuallaplace-eq-product-closed--8fb1131d7f72947469a39deb.md) | 465 | `result-track:8fb1131d7f72947469a39debde11a8301d74b81045cfed499c8cb05754c19882` |
| 33 | `theorem` | [actualLaplace_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/declarations/actuallaplace-boundary--b5ca07c233f969239d90a3bc.md) | 491 | `result-track:b5ca07c233f969239d90a3bcc526fb730c766f50d0161bd41440a671fb6ac872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
