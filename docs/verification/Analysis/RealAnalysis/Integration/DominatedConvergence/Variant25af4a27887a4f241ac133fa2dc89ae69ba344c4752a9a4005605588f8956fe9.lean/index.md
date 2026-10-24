# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44cee00211d413e61250a77d2d7beb5a82a518f1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44cee00211d413e61250a77d2d7beb5a82a518f1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.IndicatorFunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/tendsto-integral-of-dominated-convergence--ff94a127b7e82009ae033307.md) | 54 | `result-track:ff94a127b7e82009ae03330778e75257bb26d7ffd5473e615be2319015266194` |
| 2 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/tendsto-integral-filter-of-dominated-convergence--ad9df8d486f61c9cc2868526.md) | 66 | `result-track:ad9df8d486f61c9cc286852657cfecfad5f4fad595de05af2177f2bc3cf6bfec` |
| 3 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/hassum-integral-of-dominated-convergence--59220a91b6aa7ac831ddc8f8.md) | 78 | `result-track:59220a91b6aa7ac831ddc8f88752657a1eb73f316872af5d5fd501243f51eeb2` |
| 4 | `theorem` | [integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/integral-tsum--304169e9c23675c78e60fa9c.md) | 105 | `result-track:304169e9c23675c78e60fa9cfa4cdf9a839858827e2713c14582334fbf81f600` |
| 5 | `lemma` | [hasSum_integral_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/hassum-integral-of-summable-integral-norm--7c032a17599ccb522c525962.md) | 137 | `result-track:7c032a17599ccb522c52596290edceb9d4588ce829c109ff467c3989b18c1fe3` |
| 6 | `lemma` | [integral_tsum_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/integral-tsum-of-summable-integral-norm--fbacc01f473d8668fb1631c1.md) | 152 | `result-track:fbacc01f473d8668fb1631c14291ca1bd434063c910feb0e90e57f0b36227f4a` |
| 7 | `theorem` | [tendsto_integral_filter_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/tendsto-integral-filter-of-norm-le-const--cf68b56856f0c22f12a46b51.md) | 161 | `result-track:cf68b56856f0c22f12a46b51ffe3cbc0c024fdad6d8b7e7461c31e061d379b14` |
| 8 | `theorem` | [_root_.Antitone.tendsto_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/root-antitone-tendsto-setintegral--bed2b91150944266e66955fb.md) | 180 | `result-track:bed2b91150944266e66955fb90444aa63a7159d6641bdc07571d80f88065c79d` |
| 9 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/tendsto-integral-filter-of-dominated-convergence--396e71fcf49c49af7c51636a.md) | 213 | `result-track:396e71fcf49c49af7c51636a64b613f4cb9d6220cb269c07ebad343b3008c782` |
| 10 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/hassum-integral-of-dominated-convergence--2d8a5c2a0e76534aefba900a.md) | 226 | `result-track:2d8a5c2a0e76534aefba900a40e606be4822ea8769db238667284bebbfdd6341` |
| 11 | `theorem` | [hasSum_intervalIntegral_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/hassum-intervalintegral-of-summable-norm--964a9a332fea959c94562857.md) | 242 | `result-track:964a9a332fea959c9456285747ea77872575888ef3f908f6ab1c78d7d36c090b` |
| 12 | `theorem` | [tsum_intervalIntegral_eq_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/tsum-intervalintegral-eq-of-summable-norm--13de193b065605e5e39ff213.md) | 261 | `result-track:13de193b065605e5e39ff21304016a0d784ad7b4888169f9243a4da3a19a15ca` |
| 13 | `theorem` | [continuousWithinAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouswithinat-of-dominated-interval--418251d8d7a0cef04fecd403.md) | 274 | `result-track:418251d8d7a0cef04fecd403dd42dbdb69772c37757bc7f84b06520ec037780e` |
| 14 | `theorem` | [continuousAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuousat-of-dominated-interval--7fb83f491e3a52f5a6d4cf47.md) | 288 | `result-track:7fb83f491e3a52f5a6d4cf4779cf923ca1b0ca728059de62befa06773a0bd868` |
| 15 | `theorem` | [continuous_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuous-of-dominated-interval--89e02a51eb0d89dfbb874697.md) | 301 | `result-track:89e02a51eb0d89dfbb87469714470388f66cd658efc17ff329362f6bc919c0f7` |
| 16 | `theorem` | [continuousWithinAt_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouswithinat-primitive--176e62ec5c0d63cce5232362.md) | 321 | `result-track:176e62ec5c0d63cce5232362c1afb59d58669ccd08387aac4a9f3cc69dbb9be9` |
| 17 | `theorem` | [continuousAt_parametric_primitive_of_dominated](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuousat-parametric-primitive-of-dominated--2ec8e73e6dbab2283dba7db3.md) | 387 | `result-track:2ec8e73e6dbab2283dba7db3a1015f7d7176a5709c5572dad3623e41b55e1e3f` |
| 18 | `theorem` | [continuousOn_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouson-primitive--1155140935df64202e46ac80.md) | 462 | `result-track:1155140935df64202e46ac801a102ea2d31e39e78370e7839f3fd8b8481d9929` |
| 19 | `theorem` | [continuousOn_primitive_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouson-primitive-icc--b1d88e946ab1aea19028157a.md) | 477 | `result-track:b1d88e946ab1aea19028157ae49d00d8cdde307a731ab43289d0d7ed094a480d` |
| 20 | `theorem` | [continuousOn_primitive_interval'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouson-primitive-interval--b4e458234af6509c80615583.md) | 486 | `result-track:b4e458234af6509c80615583b2835e6f4e3bb985a6b0c36d457a7f4350269093` |
| 21 | `theorem` | [continuousOn_primitive_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouson-primitive-interval--f8502375d345974ba95b919b.md) | 492 | `result-track:f8502375d345974ba95b919baf484eee3e295904fba11a5a034ec96cce7391ea` |
| 22 | `theorem` | [continuousOn_primitive_interval_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuouson-primitive-interval-left--d3886e1d29f9540b0c5e7b90.md) | 496 | `result-track:d3886e1d29f9540b0c5e7b90ddbb5458d5d2075c400e51afcc6d02c8d4007142` |
| 23 | `theorem` | [continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuous-primitive--222f767f1087f88f3903ba44.md) | 502 | `result-track:222f767f1087f88f3903ba4444b85b8b0998c4a17aa2b159b517376f18df39a0` |
| 24 | `theorem` | [_root_.MeasureTheory.Integrable.continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/root-measuretheory-integrable-continuous-primitive--dee54eb2b06f577054cb6681.md) | 511 | `result-track:dee54eb2b06f577054cb6681bb09c8da6b8c9ea779ccdf9b3f262d1858b2e8c9` |
| 25 | `theorem` | [continuous_parametric_primitive_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuous-parametric-primitive-of-continuous--222f39271f382464c416e905.md) | 517 | `result-track:222f39271f382464c416e90557257123cdb7bd767c815a56b79c00691741b5ca` |
| 26 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuous-parametric-intervalintegral-of-continuous--2c4f4874403fa249f2b96d20.md) | 632 | `result-track:2c4f4874403fa249f2b96d2018fa193fbfa682519f4f258763fe3fa6ecf0ed81` |
| 27 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/declarations/continuous-parametric-intervalintegral-of-continuous--74413bed9c2fcb66e5ca88c4.md) | 638 | `result-track:74413bed9c2fcb66e5ca88c4fbdea85f9f44514eefc3d2c761ba8d03b866f5ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
