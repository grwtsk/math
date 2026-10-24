# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.L2Space.Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f74a7fd4d39c136e90feb59319688cf96b27daf1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f74a7fd4d39c136e90feb59319688cf96b27daf1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousFunctions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MemLp.integrable_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/memlp-integrable-sq--e4086f5e7c8e9aa47c7eeedd.md) | 38 | `result-track:e4086f5e7c8e9aa47c7eeedd2fddbb86ac8a8467888d1fd3acff6f18bc49b354` |
| 2 | `theorem` | [memLp_two_iff_integrable_sq_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/memlp-two-iff-integrable-sq-norm--c00f28956f1d6682fb97a6b7.md) | 44 | `result-track:c00f28956f1d6682fb97a6b77387b1afddc31942d393c248eaa8a176f5491041` |
| 3 | `theorem` | [memLp_two_iff_integrable_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/memlp-two-iff-integrable-sq--ebc2902a187c8a5a831472c1.md) | 54 | `result-track:ebc2902a187c8a5a831472c1185992c2abb0a864e6f072158afa8e8dd42c26e6` |
| 4 | `theorem` | [MemLp.const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/memlp-const-inner--e1085f78ceda1e4c5e316039.md) | 71 | `result-track:e1085f78ceda1e4c5e316039e9882b8dab7eeba4a5ab2fbe51707f0b2d457e84` |
| 5 | `theorem` | [MemLp.inner_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/memlp-inner-const--16224f94f60e0cc25eefccab.md) | 78 | `result-track:16224f94f60e0cc25eefccab0b7d5a680b726bb27c05c457a92b0acf1f513cc1` |
| 6 | `theorem` | [Integrable.const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/integrable-const-inner--bafabf2c29329b2d0a6860fc.md) | 88 | `result-track:bafabf2c29329b2d0a6860fc1cf9e6876abb0fe148d460820553af6aedcdb241` |
| 7 | `theorem` | [Integrable.inner_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/integrable-inner-const--dbc07905c4be6254a39df860.md) | 93 | `result-track:dbc07905c4be6254a39df860579b3bed8a48d5408066d8f2e8952950f4b5f935` |
| 8 | `theorem` | [_root_.integral_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/root-integral-inner--c05484db803e45b9830bac23.md) | 99 | `result-track:c05484db803e45b9830bac235a490e913018edd1fc4f3489279f0a83d2afc28f` |
| 9 | `theorem` | [_root_.integral_eq_zero_of_forall_integral_inner_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/root-integral-eq-zero-of-forall-integral-inner-eq-zero--fcbacbff82476a7412278403.md) | 105 | `result-track:fcbacbff82476a741227840390f648a7f3d70ff2261616bfe7e8a92cb459f3db` |
| 10 | `theorem` | [eLpNorm_rpow_two_norm_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/elpnorm-rpow-two-norm-lt-top--53189d81e376027b455fd639.md) | 118 | `result-track:53189d81e376027b455fd639ce15083e84a7f71dccdc1c809f1b38e8ed36d539` |
| 11 | `theorem` | [eLpNorm_inner_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/elpnorm-inner-lt-top--6a074bb9394889f83623d6ce.md) | 124 | `result-track:6a074bb9394889f83623d6cea748ce4a670d8120732b5fccbc6d41f26d1ce4ec` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/instance--a7a5bf06bd44ac859dd64ea9.md) | 145 | `declaration-track:a7a5bf06bd44ac859dd64ea9ffc3b264fb2571331e7fdfa2ecb201d715f2758f` |
| 13 | `theorem` | [inner_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/inner-def--daa84ddc5ec8c483c7549dc4.md) | 148 | `result-track:daa84ddc5ec8c483c7549dc4aab4165bc2f94d62cd3080ca81b88c6f2526c0b6` |
| 14 | `theorem` | [integral_inner_eq_sq_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/integral-inner-eq-sq-elpnorm--c2424681d7e1c8633aa1bdb0.md) | 151 | `result-track:c2424681d7e1c8633aa1bdb0e36f41f22351bdd9b8596a337fbf197451152c8a` |
| 15 | `theorem` | [norm_sq_eq_re_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/norm-sq-eq-re-inner--5dcae759259b26b168e27532.md) | 166 | `result-track:5dcae759259b26b168e2753219c3abe04e9aaec1d55401326efa19fe35c4cfe3` |
| 16 | `theorem` | [mem_L1_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/mem-l1-inner--66225bdfc86b32a81e433c99.md) | 179 | `result-track:66225bdfc86b32a81e433c99dfe44afde96a1d5be3761733cff6c4fd3f07b397` |
| 17 | `theorem` | [integrable_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/integrable-inner--a8f5a52ecb01387908467255.md) | 185 | `result-track:a8f5a52ecb013879084672555d7357a2d3424c2d2d34fc49bb8dec40eba57075` |
| 18 | `theorem` | [add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/add-left--f42de353e782a86398a1241a.md) | 191 | `result-track:f42de353e782a86398a1241ad35b61578252d9a93700b016d3e3215046e04aa4` |
| 19 | `theorem` | [smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/smul-left--a358f917759ebe95d5e42c74.md) | 197 | `result-track:a358f917759ebe95d5e42c74f25b089782e58bcab4668d07428e4ef98829481c` |
| 20 | `instance` | [innerProductSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/innerproductspace--21a1ce698f17e1a03450a684.md) | 203 | `declaration-track:21a1ce698f17e1a03450a68409b2da3cd749804a04f0ab19e21586a2504225df` |
| 21 | `theorem` | [inner_indicatorConstLp_eq_setIntegral_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/inner-indicatorconstlp-eq-setintegral-inner--7ec54cf1578d1e7b131844a6.md) | 217 | `result-track:7ec54cf1578d1e7b131844a6426de6558384ad63c530867a396305820ae1ae5c` |
| 22 | `theorem` | [inner_indicatorConstLp_eq_inner_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/inner-indicatorconstlp-eq-inner-setintegral--f5211dd3b537532c1c3fadf5.md) | 245 | `result-track:f5211dd3b537532c1c3fadf508d7264eb2c1a024333625d637943e6c8a7a2596` |
| 23 | `theorem` | [inner_indicatorConstLp_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/inner-indicatorconstlp-one--aff3f1622dccbfba41f13320.md) | 255 | `result-track:aff3f1622dccbfba41f133203f39d7bcd7f44cb9577ef3dcd2a9d68aaf19619a` |
| 24 | `theorem` | [BoundedContinuousFunction.inner_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/boundedcontinuousfunction-inner-tolp--5590143b16770ced8c242568.md) | 274 | `result-track:5590143b16770ced8c242568944fb26caf3fd6272aa9d5ba5f4920d9cacc22f7` |
| 25 | `theorem` | [ContinuousMap.inner_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/declarations/continuousmap-inner-tolp--d28c6f65da317eb56e1c1f07.md) | 289 | `result-track:d28c6f65da317eb56e1c1f0781b6819a295f0534dbaa079ce26ec09d26116278` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
