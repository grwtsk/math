# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EndsE1.Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06e0481ca042ab1ec77c43cd04ae59deb1c863bd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06e0481ca042ab1ec77c43cd04ae59deb1c863bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsCore` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.LeafIntegrals` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Wfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/wfun--a2fe216ef4101a5f5582efcc.md) | 47 | `declaration-track:a2fe216ef4101a5f5582efcc3fb99a6ca0fb3ebf2731fc1bb503d7a5ff4570b3` |
| 2 | `def` | [distB](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/distb--13dc37cac353d4f56e91d008.md) | 51 | `declaration-track:13dc37cac353d4f56e91d0088032714141b54c3107d1a46ef2f281470b43dfc7` |
| 3 | `def` | [gwt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/gwt--ca8bc917fa74e9fb6ae70e52.md) | 54 | `declaration-track:ca8bc917fa74e9fb6ae70e5251c0f21f97387069775f31b30c472c892c4bb777` |
| 4 | `theorem` | [setIntegral_gwt_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/setintegral-gwt-le--c70c2e6309bc6840fde1d944.md) | 59 | `result-track:c70c2e6309bc6840fde1d944f313e85743c59a783c3d8aa69e337e5ab493df9f` |
| 5 | `theorem` | [W1a](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/w1a--c5285d1727a455e099b7c387.md) | 66 | `result-track:c5285d1727a455e099b7c3870fa546bbd34737fad77902518cccc4e53dd49f6e` |
| 6 | `theorem` | [W1b](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/w1b--9ed0af16753faabd36313c92.md) | 82 | `result-track:9ed0af16753faabd36313c925826bbb9619abaeb63513d0ccc03f2327b0bdee7` |
| 7 | `theorem` | [antitone_setIntegral_psiA_sq_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/antitone-setintegral-psia-sq-ioi--facc215e49a344a49d59fe1f.md) | 121 | `result-track:facc215e49a344a49d59fe1fa8026eee9705da13949126eb3f2f91105b147cc3` |
| 8 | `theorem` | [W1c](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/w1c--901b28e4e7b721cca91d7355.md) | 127 | `result-track:901b28e4e7b721cca91d7355ff73e7e8feb3e9f6a18be5d291d4fecec33ca804` |
| 9 | `theorem` | [W1d](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/w1d--5a2cfd295cfea1e0736b81e7.md) | 145 | `result-track:5a2cfd295cfea1e0736b81e76b2901954cdff2e682a3f808f5b3c4e714846d0d` |
| 10 | `theorem` | [W3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/w3--5f632cad32308c3689d4cba0.md) | 172 | `result-track:5f632cad32308c3689d4cba066dd696b830e006c5c56c43ac75951670406e257` |
| 11 | `theorem` | [distB_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/distb-nonneg--1d8b64c33464091100e90738.md) | 181 | `result-track:1d8b64c33464091100e90738c6ba14b441b1a6080a157b0ac24cceaccff98754` |
| 12 | `theorem` | [gwt_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/gwt-pos--1a3c7172da4d87e42d697e51.md) | 184 | `result-track:1a3c7172da4d87e42d697e510c32554fe47aa36977211b876d2350a5712fad24` |
| 13 | `theorem` | [abs_nuX_le_B_onI](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/abs-nux-le-b-oni--44a99bd290697a5744a65e00.md) | 188 | `result-track:44a99bd290697a5744a65e0023dfab7a6a67b450803a0a679a48774d862a2358` |
| 14 | `def` | [majK1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/majk1--3b15daf281d77613d8da8640.md) | 202 | `declaration-track:3b15daf281d77613d8da8640a4c44416638bd93048f4a918acf4f48a5996d99a` |
| 15 | `theorem` | [abs_E1integrand_le_majK1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/abs-e1integrand-le-majk1--9662d22eed0caac4798185bc.md) | 207 | `result-track:9662d22eed0caac4798185bc3a7ff85bd4abbf4a2e1bfa0d25a78c7b7aad5b13` |
| 16 | `theorem` | [majK1_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/majk1-le--5107b03e171c6c58cdd1268e.md) | 240 | `result-track:5107b03e171c6c58cdd1268e4f30ebd8252e2ff0564c03fa585bd7e5902b488f` |
| 17 | `theorem` | [abs_E1integrand_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/abs-e1integrand-le--12bd170c421a7d13eec5ebea.md) | 261 | `result-track:12bd170c421a7d13eec5ebea0934d5e6498bec768f39b8735f7919dc76ed9d50` |
| 18 | `theorem` | [tau_d_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/tau-d-gt--6e161b9d9dd076c477f0abf6.md) | 271 | `result-track:6e161b9d9dd076c477f0abf6a5377d1c8fd768e1ccc199793dc7e37222c8955c` |
| 19 | `theorem` | [sum_le_sum_range_of_injOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/sum-le-sum-range-of-injon--8c1ce1586e9ea13d0187cc99.md) | 281 | `result-track:8c1ce1586e9ea13d0187cc99a78abb0386c14da282648d131d33195d2d43d87f` |
| 20 | `theorem` | [h_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/h-le-one--7d557df8400510ce05dae5c4.md) | 295 | `result-track:7d557df8400510ce05dae5c47100315189d111586d6e2e1e05cf7afc426e4ffd` |
| 21 | `theorem` | [h_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/h-pos--5f00c8f9f2b3c225273c6987.md) | 301 | `result-track:5f00c8f9f2b3c225273c698715e6d2f04c4f61a950951d1ba710242aa9518a96` |
| 22 | `theorem` | [rho_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/rho-le-majorant--446b37b678da40fabd947033.md) | 306 | `result-track:446b37b678da40fabd9470335fdc37e5a4ecc0cb75ab27b3ab63dcaf6a6a04e2` |
| 23 | `theorem` | [setIntegral_rho_div_gwt_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/setintegral-rho-div-gwt-le--41fcdc3403f4b16e032262dc.md) | 440 | `result-track:41fcdc3403f4b16e032262dc53433d95f3030542523ef895cb9675c69aa5b531` |
| 24 | `theorem` | [calE1_maj_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/cale1-maj-bound--69fb9f53a0d44f66bd6be63b.md) | 624 | `result-track:69fb9f53a0d44f66bd6be63bcff5b3d75e53330c8d36f3031218758484880541` |
| 25 | `theorem` | [calE1_maj_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/cale1-maj-bound-l--99cc35708c343efe9435ab2d.md) | 735 | `result-track:99cc35708c343efe9435ab2d0db2d13c05ccc18075180258e95e1b81b9c1a2af` |
| 26 | `theorem` | [abs_calE1_le_maj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/abs-cale1-le-maj--9a9a1659e5a1b806051ab1e1.md) | 852 | `result-track:9a9a1659e5a1b806051ab1e1d80d5e553f7c011013f9c4a6c29ebefb42b815c4` |
| 27 | `theorem` | [calE1_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/declarations/cale1-bound--60aeb12f927e6d1cc55114c5.md) | 896 | `result-track:60aeb12f927e6d1cc55114c52def5a55d1402aa4af7bd3c5b69b2b2d497a62f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
