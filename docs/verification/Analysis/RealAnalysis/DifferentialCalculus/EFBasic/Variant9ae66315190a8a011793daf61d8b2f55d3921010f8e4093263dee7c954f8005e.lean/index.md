# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EFBasic.Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3be1b63d6b73cf535968d8bb367401c8ae167f3d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3be1b63d6b73cf535968d8bb367401c8ae167f3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.TwoLine` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.Expansion` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [differentiableAt_Gammaℝ_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/differentiableat-gamma-of-ne--f0d585171d2c07181f53f151.md) | 32 | `result-track:f0d585171d2c07181f53f15133888ccf34d89fba1b18293bb0e23d8c494f7cb3` |
| 2 | `def` | [GoodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/goodstrip--1f3cb7dc7b57b1090f0066f6.md) | 43 | `declaration-track:1f3cb7dc7b57b1090f0066f64e7809027b0dd42116d27a68967fe57cf50bd9c0` |
| 3 | `lemma` | [isOpen_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/isopen-goodstrip--343ba36626dff7ebf1c43f16.md) | 45 | `result-track:343ba36626dff7ebf1c43f16acc8a0c88f1f9502ef09483487a4bd25458a9fa9` |
| 4 | `lemma` | [goodStrip_half_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/goodstrip-half-ne--427ebf3e5ff53d0e3e115cbb.md) | 48 | `result-track:427ebf3e5ff53d0e3e115cbb0d7026677a32d0d6696f9cfaeb4a020002f26e3f` |
| 5 | `lemma` | [goodStrip_one_sub_half_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/goodstrip-one-sub-half-ne--a41ce49747d2f1654f68455e.md) | 56 | `result-track:a41ce49747d2f1654f68455ed95342aae35a264b3761324271f7ea4c92fc9066` |
| 6 | `lemma` | [goodStrip_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/goodstrip-ne-zero--7155925d6317f3be3ec39acd.md) | 67 | `result-track:7155925d6317f3be3ec39acda1eabda9abe15683f0eb52bf39eea378c692b4f0` |
| 7 | `lemma` | [goodStrip_ne_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/goodstrip-ne-one--c1fc89574ad594a3a2cc488f.md) | 69 | `result-track:c1fc89574ad594a3a2cc488f5295a030dc5ed3e009fcdd4b95a74b8935cc4014` |
| 8 | `lemma` | [Gammaℝ_ne_zero_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/gamma-ne-zero-of-ne--20b45e00ac5c0279f10daa88.md) | 72 | `result-track:20b45e00ac5c0279f10daa8830aa7750c9f2818f08a3f71dfd35fb80de088b8f` |
| 9 | `lemma` | [analyticAt_Gammaℝ_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/analyticat-gamma-goodstrip--f69050f9cb1e1b3cc4248a70.md) | 78 | `result-track:f69050f9cb1e1b3cc4248a70b639dbae1ab35becf1f857fd0cd2d829885af45a` |
| 10 | `lemma` | [analyticAt_Gammaℝ_one_sub_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/analyticat-gamma-one-sub-goodstrip--0c267c1dd131811caf032f87.md) | 83 | `result-track:0c267c1dd131811caf032f87c9229dc6a83e06266a02950717962d446dd06b3b` |
| 11 | `lemma` | [chiFE_analyticAt_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/chife-analyticat-goodstrip--5c50b5986d75fbd0d4b19d6c.md) | 96 | `result-track:5c50b5986d75fbd0d4b19d6c3a0b654d07a53378460ad3ab5844c16d6fba3181` |
| 12 | `lemma` | [chiFE_ne_zero_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/chife-ne-zero-goodstrip--20fac37d0a58dc5170f30ce2.md) | 102 | `result-track:20fac37d0a58dc5170f30ce2772adf0de7c5e804dac69f58e72a302061b018fa` |
| 13 | `lemma` | [L2_analyticAt_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/l2-analyticat-goodstrip--3731170e20fe6f20bcdf0164.md) | 105 | `result-track:3731170e20fe6f20bcdf01642a828864e087d7ff9e1fe5bb9acff659e19e6b85` |
| 14 | `lemma` | [hardyW_analyticAt_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/hardyw-analyticat-goodstrip--67d858dd22f808c3f3a7460b.md) | 112 | `result-track:67d858dd22f808c3f3a7460bb50e3389a9a9c9673e72723d102e7bdd72ae524d` |
| 15 | `def` | [E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/e2fn--607bf6a012ef08fb50d609ec.md) | 121 | `declaration-track:607bf6a012ef08fb50d609ec7d2470ab5922912df6e6634473ed0654e700b6a5` |
| 16 | `def` | [FZfn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/fzfn--211897f130d326bae0f83ea4.md) | 124 | `declaration-track:211897f130d326bae0f83ea49311b64a3ba42ba55f64de6d394e445b13668036` |
| 17 | `theorem` | [hardyW_eq_zeta_mul_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/hardyw-eq-zeta-mul-e2fn--44a53cb877405b3c44baa808.md) | 126 | `result-track:44a53cb877405b3c44baa808e0353eb04d9f4fe4f48d7e4951a072b5c7d98d5e` |
| 18 | `theorem` | [E2fn_eq_L2_sub_Afn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/e2fn-eq-l2-sub-afn--fbdbefc84e9109215fb169a4.md) | 129 | `result-track:fbdbefc84e9109215fb169a4652402e5aa4acd2e8ff5fe3a9eb59cc756ab8703` |
| 19 | `theorem` | [E2fn_eq_Efn_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/e2fn-eq-efn-add--2150a654c10fa43d127ccf9c.md) | 132 | `result-track:2150a654c10fa43d127ccf9cb6f430b16eb6f60e0cde5fb9fe1decc1527f71ee` |
| 20 | `theorem` | [analyticAt_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/analyticat-e2fn--37efbe98457c0483f6515523.md) | 135 | `result-track:37efbe98457c0483f65155230947491b2064c4d11dcea35da17bda68082b16d5` |
| 21 | `theorem` | [differentiableAt_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/differentiableat-e2fn--d3d495ab91cd8aa84d653bae.md) | 145 | `result-track:d3d495ab91cd8aa84d653baec21fd5e108e33309d2b50566cb4ca82c7dae3d6f` |
| 22 | `theorem` | [differentiableAt_L2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/differentiableat-l2--4d1c60d90e94b070b4b2177e.md) | 148 | `result-track:4d1c60d90e94b070b4b2177e53081e39acf176292e66c8c067b36ec888d67ab5` |
| 23 | `theorem` | [deriv_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/deriv-e2fn--f405c3553ddd4e6f5b57abc2.md) | 151 | `result-track:f405c3553ddd4e6f5b57abc288f0c33494b3b79a8f7e45c12fd4dff5c77cbbfd` |
| 24 | `theorem` | [E2fn_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/e2fn-ne-zero--0ed28653a462844683fe2c8e.md) | 156 | `result-track:0ed28653a462844683fe2c8efdb80b82f6d8eeb9afaf45448022c335b82ac786` |
| 25 | `theorem` | [FZfn_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/fzfn-eq--b6f78c404d9a8ed1578a1bbc.md) | 161 | `result-track:b6f78c404d9a8ed1578a1bbca57dd9eaf7fd921f190d9f01262922b7d0dce07d` |
| 26 | `theorem` | [derivE2_div_E2_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/derive2-div-e2-eq--0530e6bca622b53a8e8f0e6a.md) | 175 | `result-track:0530e6bca622b53a8e8f0e6a4f1398054476a8834fb7283d5a2ddf47e98a08b6` |
| 27 | `theorem` | [logDeriv_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/logderiv-riemannzeta-conj--582be4cdd26f2437ce3f2a6a.md) | 181 | `result-track:582be4cdd26f2437ce3f2a6a4ea528b4b87638737aa768d3e7f7878be0c81693` |
| 28 | `theorem` | [E2fn_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/e2fn-conj--7d5c8d051908e5d9ea38f7b7.md) | 185 | `result-track:7d5c8d051908e5d9ea38f7b7852fc6dc94d739e66b0e4a5f20efc7572fc316be` |
| 29 | `theorem` | [logDeriv_hardyW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/logderiv-hardyw-conj--2ae7d67765af113740af26d2.md) | 188 | `result-track:2ae7d67765af113740af26d2a84f699efe6c919559d27d7ede294a13d6811494` |
| 30 | `theorem` | [FZfn_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/fzfn-conj--ab2995519084286f5603cd6d.md) | 196 | `result-track:ab2995519084286f5603cd6d722bf610370280e143804093fa922f1fb7b6345d` |
| 31 | `theorem` | [logDeriv_hardyW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/logderiv-hardyw-one-sub--fbb6baf36eb8ede5bc315254.md) | 200 | `result-track:fbb6baf36eb8ede5bc315254bcff3533a96957ab913979cc0a999c7a0266a98a` |
| 32 | `theorem` | [FZfn_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/fzfn-one-sub--4d96311f683a157b4a5038e2.md) | 230 | `result-track:4d96311f683a157b4a5038e2845448f579fd516b4d31736d6b3d5b186321681e` |
| 33 | `theorem` | [finite_lowZeros_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/finite-lowzeros-right--0ef9f70acc89530296e58912.md) | 236 | `result-track:0ef9f70acc89530296e589127a8da66d0556d6bdb5bcfa839327dfbdf4460a69` |
| 34 | `theorem` | [exists_zeroFree_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/exists-zerofree-line--c6df0de9bc9aaf348c2d84d2.md) | 321 | `result-track:c6df0de9bc9aaf348c2d84d2a7f132f5c417bb9602950be39cc950d3dafae5c4` |
| 35 | `theorem` | [hardyW_ne_zero_reflect_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/declarations/hardyw-ne-zero-reflect-line--0b3e47b262eba16809e86a24.md) | 332 | `result-track:0b3e47b262eba16809e86a24cde0942b2e240b015c58ea405a50f206f5c1b200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
