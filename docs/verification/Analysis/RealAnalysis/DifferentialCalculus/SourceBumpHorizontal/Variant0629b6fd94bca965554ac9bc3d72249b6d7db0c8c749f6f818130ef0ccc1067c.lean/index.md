# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpHorizontal.Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638b9380764a82574535d43848b1e957ac359e64",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638b9380764a82574535d43848b1e957ac359e64`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment--074d8519551ce6cece2e7fb2.md) | 31 | `declaration-track:074d8519551ce6cece2e7fb2e9b012ea95dc179f7c770fc0619b6911e05577c8` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-intervalintegrable--70b8fdc27a622c77f0d99a6a.md) | 36 | `result-track:70b8fdc27a622c77f0d99a6a2504a72b5e869ec5a138a51477357752a5eeec27` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-zero-eq-source--b8f65175c7212f8e3e7b4317.md) | 43 | `result-track:b8f65175c7212f8e3e7b43175105ad3b646600637eb5e96b18094b0944127510` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-zero-zero--7405901435231adba2e0e3ff.md) | 56 | `result-track:7405901435231adba2e0e3ff9e6a59d4e5900109bfd4623f5644507702d63d5c` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpflux-hasderivat--2be5f462a6671271ba809178.md) | 66 | `result-track:2be5f462a6671271ba8091783b87fb3d885710bbcfb0e52ddd8bae0a6b4da1aa` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-equation--3b457e05f274616bf2f0a681.md) | 77 | `result-track:3b457e05f274616bf2f0a68130e6788c07099c6f10a27e7ba24808bf1955c569` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/re-eq-zero-of-weighted-energy--d8e27a451ca5b91469e9cc66.md) | 112 | `result-track:d8e27a451ca5b91469e9cc66e5f30b765583679066310e15b9cdefb66cfa8cb3` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-hasderivat--df27966e34937fc7a05886fa.md) | 145 | `result-track:df27966e34937fc7a05886faeddc819a67350bd48f9f4548da5a88e8014982d0` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-continuous--1631844f0cb48e5eb2a1c4d2.md) | 181 | `result-track:1631844f0cb48e5eb2a1c4d20952638a1c38b3308c162113defc94df46f30436` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialprofile--bf10d48c2b397a5f3a05b941.md) | 186 | `declaration-track:bf10d48c2b397a5f3a05b9419764112d3578e2c53dfbb8bbe6d514967b4e91f7` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialflux--7ffc908a03857664347bc4bf.md) | 189 | `declaration-track:7ffc908a03857664347bc4bfabb29aa84aa395cae446a71208b9a15195ebf469` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialprofile-hasderivat--8780b9c3e402873922967787.md) | 193 | `result-track:8780b9c3e402873922967787b7379508de52ea00b11ee0715c0cde25ce13d093` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialflux-hasderivat--d52001095f840f1c26bba575.md) | 202 | `result-track:d52001095f840f1c26bba5755ff7916e488efa8556b7a9fcba211be655026083` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialprofile-continuous--127f18c260b998d74f9b402e.md) | 212 | `result-track:127f18c260b998d74f9b402ea84e5f5edd3494f8357ddf5a9101dbea45070e3a` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialflux-continuous--42862628ce37ae39c400d03c.md) | 216 | `result-track:42862628ce37ae39c400d03ca11db43442eaadfa61e59968d456fd0030a6406e` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialmass--ec6f2622f5c287a9020f0416.md) | 221 | `declaration-track:ec6f2622f5c287a9020f0416350826cca04be0b349292b212e4bec42b6c38ae9` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialenergy--c0692e659150ec36f9b21677.md) | 224 | `declaration-track:c0692e659150ec36f9b21677180914199703919a27f2cc10d32a5d84dba31f8c` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radial-integrands-intervalintegrable--ec8d92712b4cbdc1fdc1e72c.md) | 228 | `result-track:ec8d92712b4cbdc1fdc1e72c7d08333211433f88e5dd0108918d6a6bd4455de1` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialenergy-nonneg--c96005639cc5bbcd5c84b13d.md) | 240 | `result-track:c96005639cc5bbcd5c84b13d712c0688dfcd2f8e9fafafab0ee09e06861b26e9` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialprofile-eventually-ne-zero--2cdcc07af03a435c904fa979.md) | 246 | `result-track:2cdcc07af03a435c904fa97923052df8afa93381b0537a707178542e0746de26` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radialmass-pos--8c654f3fd1d996f4e39ba43b.md) | 253 | `result-track:8c654f3fd1d996f4e39ba43b66f0da33104ed6c654d0d0beb1ac8f4e0b034179` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radial-energy-identity--9efc4e5fe3e0e4962d2f93c6.md) | 269 | `result-track:9efc4e5fe3e0e4962d2f93c6f93cfde1ea3cbdc11916e05646575f0f26f5a70b` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-zero-re--aa486f97e0e411788e55e9a6.md) | 327 | `result-track:aa486f97e0e411788e55e9a66b05824f57d75b46aeb725d3c6a882b3ca02e33c` |
| 24 | `theorem` | [radial_boundary_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/radial-boundary-energy-identity--5a8990a40b5e489bdde008e9.md) | 342 | `result-track:5a8990a40b5e489bdde008e9f7dc1e04ef89a72463ec6f4a4f3a79da5e4c77e8` |
| 25 | `theorem` | [bumpMoment_derivative_pairing_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-derivative-pairing-nonneg--1288b112d515cc59b8252ae0.md) | 409 | `result-track:1288b112d515cc59b8252ae00484c78bcd88db6e58525680dbf0975de8fc1f61` |
| 26 | `theorem` | [bumpMoment_horizontal_norm_sq_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-horizontal-norm-sq-hasderivat--671bacb29eeb4ffc86dd3bd4.md) | 432 | `result-track:671bacb29eeb4ffc86dd3bd40d1c71b17ea5529cb84ba2228ae5eab71467694e` |
| 27 | `theorem` | [bumpMoment_horizontal_norm_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-horizontal-norm-monotone--1812f099f3d77c7b12291793.md) | 444 | `result-track:1812f099f3d77c7b12291793b5f61c82fbefef74031e872656f98b6c36064d90` |
| 28 | `theorem` | [bumpMoment_horizontal_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/declarations/bumpmoment-horizontal-norm-le--0148cf867c100148d908fb35.md) | 465 | `result-track:0148cf867c100148d908fb350299a62cb89c84fc31e0ad4fbd85cd6d9f237609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
