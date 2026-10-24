# Verification target: GRWTSK.Algebra.Equiv.Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc`.

Source path: `GRWTSK/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Ideal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEmptyEquiv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/isemptyequiv--4d7c1f4d9850327f94afbdd0.md) | 55 | `declaration-track:4d7c1f4d9850327f94afbdd06ccfd0637f7d7c3e0b860c9c77177fc9c22ff32d` |
| 2 | `def` | [optionFunLeft](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionfunleft--2777caf6ad007d8f7d3fc980.md) | 67 | `declaration-track:2777caf6ad007d8f7d3fc980d40651746a70a53a5c10fc77984691467fd082a0` |
| 3 | `lemma` | [coeff_coeff_optionFunLeft](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/coeff-coeff-optionfunleft--596359f8b75368c217cca1a6.md) | 71 | `result-track:596359f8b75368c217cca1a6854f8461ff1648eaee8381ea066c0219647205d5` |
| 4 | `theorem` | [optionFunLeft_monomial](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionfunleft-monomial--a92fcde54500c5850cb27428.md) | 76 | `result-track:a92fcde54500c5850cb27428f94fac657bb96a893e6d0c25df443fd614d89b37` |
| 5 | `lemma` | [optionFunLeft_mul](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionfunleft-mul--61d70b150e7071b11127c96e.md) | 91 | `result-track:61d70b150e7071b11127c96ea41e301ceef1e2bf519f1135853f2ac1d448324f` |
| 6 | `def` | [optionInvFunLeft](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optioninvfunleft--f3ac34266126490884fe88c2.md) | 110 | `declaration-track:f3ac34266126490884fe88c23fd04382e1e266c6551faa70fb9592bd3ee6c032` |
| 7 | `lemma` | [coeff_optionInvFunLeft](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/coeff-optioninvfunleft--0232808d2b9b3b0e34065bf6.md) | 113 | `result-track:0232808d2b9b3b0e34065bf68bfabcc4ed27f954a0f27c57923fc512040f9595` |
| 8 | `def` | [optionEquivLeft](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionequivleft--2bd0281580a840005bfefbb9.md) | 120 | `declaration-track:2bd0281580a840005bfefbb9b50a7b27f499f8d711c07fdfb02750f52c5951ab` |
| 9 | `lemma` | [coeff_coeff_optionEquivLeft](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/coeff-coeff-optionequivleft--e564f2bee7e8bb95b86b30f2.md) | 131 | `result-track:e564f2bee7e8bb95b86b30f2d489bdf86403648f459ed0c2a753520a880a4686` |
| 10 | `theorem` | [optionEquivLeft_monomial](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionequivleft-monomial--d9f063cbdb5850162cfa3bbd.md) | 135 | `result-track:d9f063cbdb5850162cfa3bbda43ac1c28356d6712024a4fd715cee9d49ecee66` |
| 11 | `lemma` | [optionEquivLeft_X_some](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionequivleft-x-some--ce7e430e8afc497ed26bb9b0.md) | 140 | `result-track:ce7e430e8afc497ed26bb9b0d3bd19e688bb2f405f527c256efc93348e0f1609` |
| 12 | `lemma` | [optionEquivLeft_X_none](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionequivleft-x-none--a6728d9e1af34dc2faf1c387.md) | 149 | `result-track:a6728d9e1af34dc2faf1c387e26da25393a5c3364b9c805a1ef52bf342978b6f` |
| 13 | `lemma` | [optionEquivLeft_C](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/optionequivleft-c--42f368165f30bb1ba5b12a08.md) | 154 | `result-track:42f368165f30bb1ba5b12a08b800f13fc791a587c4d71f0e5c3efa81e0fc1ffe` |
| 14 | `lemma` | [embDomain_finSuccEquiv_cons](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/embdomain-finsuccequiv-cons--debf7ff0383f73139d375baa.md) | 163 | `result-track:debf7ff0383f73139d375baae865893554e4f16411cf0874b381b2339ef21e1b` |
| 15 | `def` | [finSuccEquiv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/finsuccequiv--5ef9449507d8ebed2c69041a.md) | 170 | `declaration-track:5ef9449507d8ebed2c69041a9cd6296f82858638cdd56beb14c582e4abb5558c` |
| 16 | `theorem` | [coeff_coeff_finSuccEquiv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/coeff-coeff-finsuccequiv--60350fe15580cdad056cc1b9.md) | 173 | `result-track:60350fe15580cdad056cc1b94576dac8455483e563a753d5f01a2fa1e63a2773` |
| 17 | `theorem` | [finSuccEquiv_X_zero](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/finsuccequiv-x-zero--9aa1f92385d391fd7c1449c8.md) | 181 | `result-track:9aa1f92385d391fd7c1449c84010964e44062602743c2ca9c43e386d1a767998` |
| 18 | `theorem` | [finSuccEquiv_X_succ](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/finsuccequiv-x-succ--1a834db354caf06e9f033b43.md) | 191 | `result-track:1a834db354caf06e9f033b43e1d80a066e512e3dc805f4b20ef177e680ac55ad` |
| 19 | `theorem` | [finSuccEquiv_C](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/finsuccequiv-c--0fe9031bae4761c41fed2c0f.md) | 201 | `result-track:0fe9031bae4761c41fed2c0f1de9940a0a1ceeee2933dd756db117edb4aecddf` |
| 20 | `theorem` | [finSuccEquiv_comp_C](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/finsuccequiv-comp-c--e02e38598885a0f83140c764.md) | 211 | `result-track:e02e38598885a0f83140c7640f3416d4d655f33d8b25a30b121de668f4993cb1` |
| 21 | `lemma` | [isNoetherianRing_fin](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/isnoetherianring-fin--995a90a4d9f7ac690bc48d98.md) | 217 | `result-track:995a90a4d9f7ac690bc48d98935903b9bd20b782edbd9fb88588bace1eb9f764` |
| 22 | `instance` | [isNoetherianRing](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/isnoetherianring--f99d990716df480af035c4d0.md) | 225 | `declaration-track:f99d990716df480af035c4d07662d24894a1c0b2bb7ce403d99707e19d43b4a0` |
| 23 | `lemma` | [truncTotal_sub_truncTotal_mem_pow_idealOfVars](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/trunctotal-sub-trunctotal-mem-pow-idealofvars--27b44adeecaf20bacc05a5f8.md) | 241 | `result-track:27b44adeecaf20bacc05a5f8149bb894056c635716c649fbce31fe84db589031` |
| 24 | `lemma` | [truncTotal_mul_sub_mul_truncTotal_mem_pow_idealOfVars](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/trunctotal-mul-sub-mul-trunctotal-mem-pow-idealofvars--5187b03f00ee368de922be1e.md) | 248 | `result-track:5187b03f00ee368de922be1eaac17f62098d0f6c8a6616028058b4fbe88f901a` |
| 25 | `def` | [truncTotalAlgHom](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/trunctotalalghom--2b1407d5904ed0d28ae3e3bf.md) | 259 | `declaration-track:2b1407d5904ed0d28ae3e3bf0e86ac05f6b676cd4fd5c1d8092606cfc2ff397c` |
| 26 | `def` | [toAdicCompletion](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletion--d8da92894c6ba9bfdb52b660.md) | 284 | `declaration-track:d8da92894c6ba9bfdb52b6604d7c13ff33f5a14e37c17f7e1e8350b73d45912a` |
| 27 | `lemma` | [toAdicCompletion_apply_eq_mk_truncTotal](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletion-apply-eq-mk-trunctotal--5878a8f432e58ee6d2e8e42a.md) | 292 | `result-track:5878a8f432e58ee6d2e8e42aa736fff6d1207b78f477082c9a284c546117ebfa` |
| 28 | `theorem` | [coeff_toAdicCompletion_val_apply_out](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/coeff-toadiccompletion-val-apply-out--95d6e1965743026c70eb7cab.md) | 295 | `result-track:95d6e1965743026c70eb7cabd09ab6618ca524e42d585cab029f9bae52035917` |
| 29 | `theorem` | [toAdicCompletion_coe](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletion-coe--9b5dc57c9f671fcbc35c5332.md) | 306 | `result-track:9b5dc57c9f671fcbc35c5332bbc146b9413170b9b8114b3cab1d2d9edaaf407e` |
| 30 | `def` | [toAdicCompletionInv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletioninv--08f718d5821836c1f7eb5d48.md) | 315 | `declaration-track:08f718d5821836c1f7eb5d483b5469edf6c80c9d704613867ee97d91cfbd15fe` |
| 31 | `lemma` | [coeff_toAdicCompletionInv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/coeff-toadiccompletioninv--708f82d7dd4ad2673a400dbf.md) | 320 | `result-track:708f82d7dd4ad2673a400dbf2cbcad9746fcc2018203436c3188fe6f47bb5859` |
| 32 | `theorem` | [mk_truncTotal_toAdicCompletionInv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/mk-trunctotal-toadiccompletioninv--d13093ea471b246f09d13274.md) | 324 | `result-track:d13093ea471b246f09d13274d8a76b53f844412f2f5979ee156e1e6f1a03c504` |
| 33 | `def` | [toAdicCompletionAlgEquiv](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletionalgequiv--ed0e26ce6ae46eef1adbd91c.md) | 344 | `declaration-track:ed0e26ce6ae46eef1adbd91c8cec9722f409124b34b967d53f660529214dd822` |
| 34 | `lemma` | [toAdicCompletionAlgEquiv_apply](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletionalgequiv-apply--041fa2a14ff88b0aa887c9ef.md) | 354 | `result-track:041fa2a14ff88b0aa887c9efd9b0543be319e206b25d7693c655a5e1ee3ee6ff` |
| 35 | `lemma` | [toAdicCompletionAlgEquiv_symm_apply](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/toadiccompletionalgequiv-symm-apply--14ceed6587bc00cd21e3eb77.md) | 358 | `result-track:14ceed6587bc00cd21e3eb7753ccefda963fbf4a9fa2d9b00337ff0a052fa4a0` |
| 36 | `def` | [toMvPowerSeries](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries--d4201cbc828816f1effe115f.md) | 377 | `declaration-track:d4201cbc828816f1effe115f1458e8863d052c353b5489d87bad0c4f5f920b05` |
| 37 | `theorem` | [toMvPowerSeries_apply](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-apply--9529f0dcd05fe3f8c4891a9b.md) | 380 | `result-track:9529f0dcd05fe3f8c4891a9b015329e6626afd3eb58310439b47c116ebb97b0b` |
| 38 | `theorem` | [toMvPowerSeries_C](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-c--2c3f8ac2e4943a2c2f8fd91f.md) | 383 | `result-track:2c3f8ac2e4943a2c2f8fd91fb900cfec0b992b850b024a369f85e53ea8af0504` |
| 39 | `theorem` | [toMvPowerSeries_X](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-x--95d24292730096a0f4aba7b8.md) | 387 | `result-track:95d24292730096a0f4aba7b810803fd8454e42eee0377afec6c34414dfc5cf56` |
| 40 | `theorem` | [toMvPowerSeries_injective](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-injective--dedb126d0c8650c9a70116c5.md) | 390 | `result-track:dedb126d0c8650c9a70116c5bb37f855f0724409ccc946707465acf84319d36f` |
| 41 | `theorem` | [toMvPowerSeries_inj](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-inj--98fc9f8a61459aad5081cbe0.md) | 393 | `result-track:98fc9f8a61459aad5081cbe0f84adc8fed6e370ce8b478f5713f2f8648498619` |
| 42 | `theorem` | [toMvPowerSeries_eq_subst](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-eq-subst--da77d9e4d09f038a1df5a2e0.md) | 401 | `result-track:da77d9e4d09f038a1df5a2e00e7f9d2f61edeca5a7ca8a07acdae64b37eaf650` |
| 43 | `theorem` | [subst_toMvPowerSeries](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/subst-tomvpowerseries--f73355efee89c6b86a8da4da.md) | 404 | `result-track:f73355efee89c6b86a8da4da9af6a9a0cf579bda0795a9e62c0be0615fd2da6b` |
| 44 | `lemma` | [toMvPowerSeries_coeff_eq_zero](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/tomvpowerseries-coeff-eq-zero--ed05309c66276c91e1a158ca.md) | 409 | `result-track:ed05309c66276c91e1a158ca3353d3e588608dbc5129bc0fc65b7a665a2dcf8b` |
| 45 | `theorem` | [_root_.MvPowerSeries.HasSubst.toMvPowerSeries](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/root-mvpowerseries-hassubst-tomvpowerseries--a1e54cc1f13987c097651438.md) | 419 | `result-track:a1e54cc1f13987c097651438a5f1ec381b992b66f6a0e1efa8a449ff94be72e2` |
| 46 | `lemma` | [MvPowerSeries.rename_comp_toMvPowerSeries](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/mvpowerseries-rename-comp-tomvpowerseries--20fbf2203de0ffc7dc6e55e2.md) | 433 | `result-track:20fbf2203de0ffc7dc6e55e26aeeb9e468e1d79c49e6ea6c03236405267fbe8f` |
| 47 | `lemma` | [MvPowerSeries.rename_toMvPowerSeries](../../../../mathematics/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/declarations/mvpowerseries-rename-tomvpowerseries--2167023aa79b3fca42f77b60.md) | 440 | `result-track:2167023aa79b3fca42f77b607e8561918b02c4208eadd13fbc2b5836085a74e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
