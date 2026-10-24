# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDeltaFullAudit.Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b77464e992420e18375206e4327cf2bcb915d6ff",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b77464e992420e18375206e4327cf2bcb915d6ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Lindelof` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment--fa3d8a9c4e3f774fd264ef1e.md) | 26 | `declaration-track:fa3d8a9c4e3f774fd264ef1e6a613a6a25429a9ade445c093b43479848c13b4a` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-intervalintegrable--83a1299d2f578439b3ca7dc7.md) | 31 | `result-track:83a1299d2f578439b3ca7dc74217dfa4cf8ab6380b7ddf5a9ad77e436ce722c4` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-zero-eq-source--ef4d424887d159687a553f3c.md) | 38 | `result-track:ef4d424887d159687a553f3c5dce73cb11c49a82b7c406b8253262d35b996a91` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-zero-zero--13dfe3e94080f72edb6ea2c7.md) | 51 | `result-track:13dfe3e94080f72edb6ea2c710bde865f3999bb2c58030341e9cd71f673a20f0` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpflux-hasderivat--dc9f87e8cf1bc83a8136c944.md) | 61 | `result-track:dc9f87e8cf1bc83a8136c94415660983d513f61235d738d85a484e46c83ad067` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-equation--71448f255a3f2a68eb5ec1df.md) | 72 | `result-track:71448f255a3f2a68eb5ec1dfd31d022036b59e99f871bcd2fd5ba8809122a0e9` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/re-eq-zero-of-weighted-energy--1e78e4d06b2bff436f788a41.md) | 107 | `result-track:1e78e4d06b2bff436f788a415be9f90c9138500ba9953f5263b5369fbda11736` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpprimitive-hasderivat--b566959e7c28c7bc0aa48c77.md) | 136 | `result-track:b566959e7c28c7bc0aa48c77efa35f59d366a720ff8406acc13f6707e152b65a` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-closedformula--07e808081a90a5bcd2bda441.md) | 151 | `result-track:07e808081a90a5bcd2bda441b9b1024aac8dcf4b1c6128aefed705b884de5bde` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/v-zero--f5a9a19ff4af764308cbe536.md) | 176 | `result-track:f5a9a19ff4af764308cbe536c449e3e3946b91b54dcda2195143a10e4ef9f27a` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/v-eq-bumpmoment--a37a4d767beeca69e7b87bb0.md) | 185 | `result-track:a37a4d767beeca69e7b87bb0c9ffa22a02e23cf9d166d2f0953d15688f554599` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/w-eq-bumpmoment--c9a05896a5f725b012ea83f5.md) | 198 | `result-track:c9a05896a5f725b012ea83f5c1bb0dbdb4d94dcfcc106bb3e62ef5e3df528856` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-hasderivat--d80f1753d6b46e45af50a1e2.md) | 220 | `result-track:d80f1753d6b46e45af50a1e23979d664e001e9c0d6dce95c720e371fc8946858` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-continuous--e8cd60ce4e2f57b7a9dbf2fe.md) | 256 | `result-track:e8cd60ce4e2f57b7a9dbf2fe6c7ee59841dbed615127e0f875f3ff9c11fdf744` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialprofile--361ed0a71aa5b7da45079171.md) | 261 | `declaration-track:361ed0a71aa5b7da4507917107d6bc96d49a8fcdb6d776c9ce2f08ef46187c9a` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialflux--54cf588d9d159c7b205c87ea.md) | 264 | `declaration-track:54cf588d9d159c7b205c87ea07b4b9056da6b46d40dace05090ca295bb647eb0` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialprofile-hasderivat--45c4fc6be31581918c7833dc.md) | 268 | `result-track:45c4fc6be31581918c7833dc3f44bbdfb2ae7e50ee2482eccd6b18e434f3efff` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialflux-hasderivat--e3c6388e20bd81ed9b3bb53c.md) | 277 | `result-track:e3c6388e20bd81ed9b3bb53cc8d47b1b20c6603eaaecfed826f75929ee821b59` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialprofile-continuous--ccae36f1580c9f84ed759c2f.md) | 287 | `result-track:ccae36f1580c9f84ed759c2fa1214ef77305a0f14f9a3cea414d3b2e898ecd43` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialflux-continuous--21d479e36ffb8307fabc678e.md) | 291 | `result-track:21d479e36ffb8307fabc678ef8c59330bbf7c4caafe49ac099a6c233c502bd2f` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialmass--d7121af83a016c94037dc19a.md) | 296 | `declaration-track:d7121af83a016c94037dc19a15544fb387caaaa666fd815ca09324668d59087e` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialenergy--d67617168e20cb02b18f1977.md) | 299 | `declaration-track:d67617168e20cb02b18f1977b130fb97a9af563e396e2a8f393a570ea477290f` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radial-integrands-intervalintegrable--9897403a5f9991dc62eb3c7f.md) | 303 | `result-track:9897403a5f9991dc62eb3c7f4ddf16b7c595c0d4e27761127ebfbb5a9d260ee2` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialenergy-nonneg--bcbed85eb8fd9d34c066cf43.md) | 315 | `result-track:bcbed85eb8fd9d34c066cf43f59f631802d02725d83347ab6c6f77214e9e904e` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialprofile-eventually-ne-zero--705eef5e692d4ffe85ef8c49.md) | 321 | `result-track:705eef5e692d4ffe85ef8c493c553af744d94b3f99c6adc659cf26f973857816` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radialmass-pos--a6923a972a3346d14e5a31ba.md) | 328 | `result-track:a6923a972a3346d14e5a31baf06333a73759fe7977851dcec2430cc9e21f0096` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/radial-energy-identity--ff396fd6697e8711885fd4e0.md) | 344 | `result-track:ff396fd6697e8711885fd4e05a987f4654fda31cf442282014a5aab428c9bdf7` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/bumpmoment-zero-re--1dc5b4f0095a48b38ce8d9a8.md) | 402 | `result-track:1dc5b4f0095a48b38ce8d9a8e066ab72f14fbb2197c0698680718c2f3a33160a` |
| 29 | `theorem` | [W_zero_set_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/w-zero-set-countable--7581834a383afcb219f12cf4.md) | 419 | `result-track:7581834a383afcb219f12cf44bda0c18638470480a4d95a70eee32f80f245a2a` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/boundaryw-ae-ne-zero--891219e193a9d8a59bfdcd8e.md) | 440 | `result-track:891219e193a9d8a59bfdcd8e295d42f3c779f786b741bc453e488f0a4053cfae` |
| 31 | `def` | [boundaryFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/declarations/boundaryfilter--efafa556c38dbb528c3bfab8.md) | 447 | `declaration-track:efafa556c38dbb528c3bfab83640929503c2605eba29ec24f30043ae8ca4f0ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
