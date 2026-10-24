# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Dependence.Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Transfer.Inputs` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer.Abstract` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Trace` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Pc_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/pc-sub--8bbb776787a16d20225cd91e.md) | 47 | `result-track:8bbb776787a16d20225cd91e562409b8c3941738dae1ed2ffcdbe334a4926374` |
| 2 | `lemma` | [integrable_phiHat_mul_mul_bdd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/integrable-phihat-mul-mul-bdd--58b16916dba6bb4e8458b9d2.md) | 56 | `result-track:58b16916dba6bb4e8458b9d2ca1b229609847c683f410f7e4edf063675c1ec60` |
| 3 | `lemma` | [integrable_phiHat_sq_shift_mul_nucW](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/integrable-phihat-sq-shift-mul-nucw--ba88d9ec47ad2d00e81f70f8.md) | 79 | `result-track:ba88d9ec47ad2d00e81f70f81b1d56113d5f5f23b33e5b83c0568407f3c4314e` |
| 4 | `lemma` | [integrable_gentryW_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/integrable-gentryw-integrand--798c7f1a16fca99bcb3edd9e.md) | 90 | `result-track:798c7f1a16fca99bcb3edd9e8b321db286217823ebc15ce04376cc6c2cf6e8b8` |
| 5 | `lemma` | [gentryW_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/gentryw-sub--200423442b509987745fd98e.md) | 112 | `result-track:200423442b509987745fd98e0d63ec5c346c0f46d98a5a48175aab7b09a1dff5` |
| 6 | `lemma` | [gentryW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/gentryw-one-sub--e73285a1c60b27256a542e86.md) | 124 | `result-track:e73285a1c60b27256a542e86b52427f7bcef52f76896f73207fcf60dbd486faf` |
| 7 | `lemma` | [gentryW_weight_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/gentryw-weight-sub--750bf83b6bcfa693cc27d572.md) | 130 | `result-track:750bf83b6bcfa693cc27d572440795e674c68c0e5c4e95d5babe8fc29866dafe` |
| 8 | `def` | [Jc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/jc--479eb5b3c91896ed594916be.md) | 146 | `declaration-track:479eb5b3c91896ed594916bec18a749d39e84ee1834c7dcab252100172f2d852` |
| 9 | `def` | [Js](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/js--2711be8f7a9e85a3f5a858fb.md) | 151 | `declaration-track:2711be8f7a9e85a3f5a858fb237bd2fb0982a33fd7a6d077bfe263e25ba327ea` |
| 10 | `lemma` | [abs_trig_div_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/abs-trig-div-le--4df891f8016cdc0af7bd6bfd.md) | 157 | `result-track:4df891f8016cdc0af7bd6bfdf6bc29aa1f6c9b3225ca97253af48459dc7e4e09` |
| 11 | `lemma` | [gentryNu_Pc_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/gentrynu-pc-eq-sum--ce87e6e03eb4dfb637e2ddf9.md) | 164 | `result-track:ce87e6e03eb4dfb637e2ddf99497e451f85d207ef471ecebad3f13703dff6037` |
| 12 | `theorem` | [hasSum_gentryNu_Pc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/hassum-gentrynu-pc--d8b36b8344efa23e1d547f2b.md) | 207 | `result-track:d8b36b8344efa23e1d547f2b5ae32ec0eeace1e0ec7505167fd748286411d4f5` |
| 13 | `lemma` | [Aphi_mul_norm_tauKernel_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/aphi-mul-norm-taukernel-le--a1e9f4e683b41bd850491307.md) | 234 | `result-track:a1e9f4e683b41bd850491307d5b6ea4b7022bed69addb284439c4402fa635dde` |
| 14 | `theorem` | [norm_sum_smul_le_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/norm-sum-smul-le-of-monotone--8775ff6d03e15c2dd477cb45.md) | 305 | `result-track:8775ff6d03e15c2dd477cb451c04301a3d6f051b3d1b4477557fc4d6adbe0eb1` |
| 15 | `theorem` | [abs_weighted_diag_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/abs-weighted-diag-sum-le--486cf7d4b73c27fa7769f2b3.md) | 341 | `result-track:486cf7d4b73c27fa7769f2b3302e0f78276d8684f4bb689527da5f2f0e0b0df1` |
| 16 | `lemma` | [geom_partial_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/geom-partial-le--ad295f754b8637267812fe80.md) | 380 | `result-track:ad295f754b8637267812fe80602196d57a2240068a1e08daf4069a242a3adb30` |
| 17 | `lemma` | [hasSum_geom_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/hassum-geom-succ--fa9a207ffbbccd8764c9316d.md) | 397 | `result-track:fa9a207ffbbccd8764c9316d8833de7e4cc3d3c8cf89ee7d93233807a90d0699` |
| 18 | `lemma` | [mul_inv_one_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/mul-inv-one-sub-le--ade33b0f18c6508cb1e0f3dd.md) | 402 | `result-track:ade33b0f18c6508cb1e0f3dd96c9f058fe4eaf2355f7b7b80162be9ad91fd248` |
| 19 | `lemma` | [frobSq_ofReal_fin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/frobsq-ofreal-fin--ddd87d290d8945f2f7f33683.md) | 408 | `result-track:ddd87d290d8945f2f7f33683d9d4aa41ac814f34e115d6b84e4b2b683ea8239c` |
| 20 | `theorem` | [dependence_frob](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/dependence-frob--cfd74bfcb6b188d3344db375.md) | 420 | `result-track:cfd74bfcb6b188d3344db375333eab96fc5a7a1423827f344ff447d8815b0469` |
| 21 | `lemma` | [gentryNu_Pc_diag](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/gentrynu-pc-diag--6ec5ececb5553d6f5448c99e.md) | 501 | `result-track:6ec5ececb5553d6f5448c99ebe47b1a2836f159829928d606d898cbd5666da3d` |
| 22 | `theorem` | [dependence_trace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/declarations/dependence-trace--604d15e8cb6e06ad3fc7a48b.md) | 513 | `result-track:604d15e8cb6e06ad3fc7a48b3673775311d9b850b47de47f6e2133eabcdbe8fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
