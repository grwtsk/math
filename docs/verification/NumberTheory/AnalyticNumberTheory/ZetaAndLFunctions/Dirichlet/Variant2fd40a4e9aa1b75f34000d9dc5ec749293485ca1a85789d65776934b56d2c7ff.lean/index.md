# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Dirichlet.Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c90d86855802903ec13d926c02565be2db4d9979",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c90d86855802903ec13d926c02565be2db4d9979`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.VonMangoldt` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ArithmeticFunction.one_eq_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/arithmeticfunction-one-eq-delta--10d3b9b686fc9a869c5d355e.md) | 45 | `result-track:10d3b9b686fc9a869c5d355e0fc58ee7cb629fb84f0cdde682fa9436cabad318` |
| 2 | `lemma` | [not_LSeriesSummable_moebius_at_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/not-lseriessummable-moebius-at-one--e0f5dd5e05f125a4185c8699.md) | 62 | `result-track:e0f5dd5e05f125a4185c8699f4d39bdb1bddb81f2e48824de64ac79777e6942f` |
| 3 | `lemma` | [LSeriesSummable_moebius_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-moebius-iff--a2d3f651b42d5012669d9e28.md) | 70 | `result-track:a2d3f651b42d5012669d9e285c54d023f4cbeda86d7f40de1a04cdd6a44bc86e` |
| 4 | `lemma` | [abscissaOfAbsConv_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/abscissaofabsconv-moebius--52e567498b9c1126779164ee.md) | 78 | `result-track:52e567498b9c1126779164eee731e4e80cda647f35793cc81f1191f9f0b389dc` |
| 5 | `lemma` | [ArithmeticFunction.const_one_eq_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/arithmeticfunction-const-one-eq-zeta--032ccb0755dbc09f2cc347f7.md) | 94 | `result-track:032ccb0755dbc09f2cc347f76297adff10f7c9aa9ad81f368249eba7826a9d13` |
| 6 | `lemma` | [LSeries.one_convolution_eq_zeta_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-one-convolution-eq-zeta-convolution--76603a1d6bbbc2dc632eb676.md) | 98 | `result-track:76603a1d6bbbc2dc632eb676f22828e5000703386c5334a51af9d29e73d11c9b` |
| 7 | `lemma` | [LSeries.convolution_one_eq_convolution_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-convolution-one-eq-convolution-zeta--d84ff2a0055ed351636ebaa5.md) | 102 | `result-track:d84ff2a0055ed351636ebaa5e0124b6b41e74ba8611f8af285d58d7c13b9fef6` |
| 8 | `lemma` | [isMultiplicative_toArithmeticFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/ismultiplicative-toarithmeticfunction--032b0be092740a8a39cee985.md) | 113 | `result-track:032b0be092740a8a39cee98561736e91b0cb3202f262f5defebbe8c3ccdb23ee` |
| 9 | `lemma` | [apply_eq_toArithmeticFunction_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/apply-eq-toarithmeticfunction-apply--f3210ce6df7f2f5d34ca8480.md) | 120 | `result-track:f3210ce6df7f2f5d34ca8480f8b9ece5fb02b6620993c53762f2c0a6053b2f18` |
| 10 | `lemma` | [mul_convolution_distrib](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/mul-convolution-distrib--4b3214ff51dfd31e33f89116.md) | 128 | `result-track:4b3214ff51dfd31e33f89116e6921678ba624f7a63a01c6bc445eaf94b7f4755` |
| 11 | `lemma` | [mul_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/mul-delta--102dcc8343f5546b6ef2201e.md) | 137 | `result-track:102dcc8343f5546b6ef2201eac98a3ae58f5246cfb536cf7a13f5cc2f4c0c63a` |
| 12 | `lemma` | [delta_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/delta-mul--f567b9c60e7443b67eb81152.md) | 140 | `result-track:f567b9c60e7443b67eb81152046ac9b52812106d0d57eba1b62d4c0410c8e2be` |
| 13 | `lemma` | [convolution_mul_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/convolution-mul-moebius--88d54a2e86d389cee1c882b0.md) | 146 | `result-track:88d54a2e86d389cee1c882b0ac3fa188a8c91b7749f21cee2b64029d05725c95` |
| 14 | `lemma` | [modZero_eq_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/modzero-eq-delta--6608fd5454391dbaa7215edb.md) | 154 | `result-track:6608fd5454391dbaa7215edbf82f6963902ade0783bd0c757ad52d2ea2abf650` |
| 15 | `lemma` | [modOne_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/modone-eq-one--302def10d08c63055e39e8af.md) | 164 | `result-track:302def10d08c63055e39e8afb439705f9b889bc64d22196da2256216d946e3a7` |
| 16 | `lemma` | [LSeries_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-modone-eq--b28fb5f40cc009e2af474787.md) | 169 | `result-track:b28fb5f40cc009e2af474787a21d5cc434aca7b9cd8939ecd7b684202d4f9e5a` |
| 17 | `lemma` | [not_LSeriesSummable_at_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/not-lseriessummable-at-one--4f099901aa65146f256e7529.md) | 173 | `result-track:4f099901aa65146f256e75293af361e0119cb3d9eaa7b73768b2886235af05ae` |
| 18 | `lemma` | [LSeriesSummable_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-of-one-lt-re--8f69840baeeed03011c8e280.md) | 185 | `result-track:8f69840baeeed03011c8e280fa51dbd35f66f4fc56180f64af8e62af9501661a` |
| 19 | `lemma` | [LSeriesSummable_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-iff--d56bdebef1cd37c9f414fd04.md) | 191 | `result-track:d56bdebef1cd37c9f414fd046bc031230066611ea833d9a14ec779c1cb31be44` |
| 20 | `lemma` | [absicssaOfAbsConv_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/absicssaofabsconv-eq-one--f4f40197b36b92ab451d280a.md) | 199 | `result-track:f4f40197b36b92ab451d280a9e111a5eee060c79187110cbd13972960a7c7d16` |
| 21 | `lemma` | [LSeriesSummable_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-mul--eebba0200bd2401bff8f8453.md) | 206 | `result-track:eebba0200bd2401bff8f84536daa996e44ff03e0cbbd2f179268fb2d8be6ee02` |
| 22 | `lemma` | [LSeries.mul_mu_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-mul-mu-eq-one--254088dd9182d8e65a145ffa.md) | 215 | `result-track:254088dd9182d8e65a145ffa3b01848613b82434672d202141091310926d36d9` |
| 23 | `lemma` | [LSeries_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-ne-zero-of-one-lt-re--da533ef06b8a29ff60a6d924.md) | 227 | `result-track:da533ef06b8a29ff60a6d924296216c414e339c4412fb7086d0b47e4212dcd5e` |
| 24 | `lemma` | [LSeries.abscissaOfAbsConv_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-abscissaofabsconv-one--716fed52e3b50ccfa92ee54e.md) | 247 | `result-track:716fed52e3b50ccfa92ee54e13b78c1242354f611da7eab33d4c635f55d09ddd` |
| 25 | `theorem` | [LSeriesSummable_one_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-one-iff--42c4ee25de06a03d0d560693.md) | 251 | `result-track:42c4ee25de06a03d0d5606937d49a160248cbb9084151f21271a045ac7ad3938` |
| 26 | `lemma` | [LSeries_zeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-zeta-eq--6d3477432c8316bd7f84993e.md) | 259 | `result-track:6d3477432c8316bd7f84993e8a72042ef03abf4f389d1cf58850336a3cdbb54f` |
| 27 | `theorem` | [LSeriesSummable_zeta_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-zeta-iff--39590d42b3b9a228f0e51935.md) | 265 | `result-track:39590d42b3b9a228f0e5193550b4a16ab1bad5674efbe2d8e56672b3e1d29945` |
| 28 | `lemma` | [abscissaOfAbsConv_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/abscissaofabsconv-zeta--20e52176f76dff035bfc3ff0.md) | 269 | `result-track:20e52176f76dff035bfc3ff0d169b5c9c5f7fe8aae9c8619eb077da7fcd8a511` |
| 29 | `lemma` | [LSeries_zeta_eq_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-zeta-eq-riemannzeta--599e9c7930d4d99b4bca32ba.md) | 274 | `result-track:599e9c7930d4d99b4bca32baa4b57f0204ea93f9dce6be5e0eff6aeb61d8fc3e` |
| 30 | `lemma` | [LSeriesHasSum_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lserieshassum-zeta--c30ecd4b48b74224626d2e2b.md) | 283 | `result-track:c30ecd4b48b74224626d2e2bc22ee3d80301684f07fc9920f80bdc68624d9487` |
| 31 | `lemma` | [LSeries_zeta_mul_Lseries_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-zeta-mul-lseries-moebius--93e8541a95bdbf60caef2ba2.md) | 287 | `result-track:93e8541a95bdbf60caef2ba2cc0a4faa9307678edf522f68c5a8a311165445a4` |
| 32 | `lemma` | [LSeries_zeta_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-zeta-ne-zero-of-one-lt-re--eeedfc61bf67c7025dba6ed4.md) | 294 | `result-track:eeedfc61bf67c7025dba6ed49c78db14001847f05992baea6bb82f5214f27068` |
| 33 | `lemma` | [LSeries_one_eq_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-one-eq-riemannzeta--31eefa8d2f592c256fa7265b.md) | 303 | `result-track:31eefa8d2f592c256fa7265b528e82cba6d49393dc0cc01ca01a15b2ab05c050` |
| 34 | `lemma` | [LSeriesHasSum_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lserieshassum-one--49e50a731046034819a4ef2c.md) | 308 | `result-track:49e50a731046034819a4ef2c0d1f5c9b44743d6d30892aab8e2f7cd0ee5a955b` |
| 35 | `lemma` | [LSeries_one_mul_Lseries_moebius](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-one-mul-lseries-moebius--cd103d85fd149152faac2ce9.md) | 312 | `result-track:cd103d85fd149152faac2ce9ecef504732e53dcd9979b5390dff8d55746fccf5` |
| 36 | `lemma` | [LSeries_one_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-one-ne-zero-of-one-lt-re--77142f4e0615a737008350e3.md) | 317 | `result-track:77142f4e0615a737008350e3e3b3890f805b349beda3cdfdfc38a07fe4b6a72c` |
| 37 | `lemma` | [riemannZeta_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/riemannzeta-ne-zero-of-one-lt-re--2062adbd7e905b595ad8d9d0.md) | 321 | `result-track:2062adbd7e905b595ad8d9d0eb4267f6331886793e6212774b62a27ca70eb061` |
| 38 | `lemma` | [convolution_vonMangoldt_zeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/convolution-vonmangoldt-zeta--c6c7446571f4892215f4badb.md) | 339 | `result-track:c6c7446571f4892215f4badb6782b20ad4702c1a666fc99667a7d3ac98652ebc` |
| 39 | `lemma` | [convolution_vonMangoldt_const_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/convolution-vonmangoldt-const-one--bf1f046c797ddfc9cda51451.md) | 344 | `result-track:bf1f046c797ddfc9cda514512a39b0feec846b3bfdc59f277e63d62b726c0112` |
| 40 | `lemma` | [LSeriesSummable_vonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-vonmangoldt--0f86dd3e09acd4f5ec9796ea.md) | 348 | `result-track:0f86dd3e09acd4f5ec9796eace2721194da5ce5318e3567ca43e6b686b7a6c5e` |
| 41 | `lemma` | [convolution_twist_vonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/convolution-twist-vonmangoldt--d7881a98396fd4ee9657262c.md) | 363 | `result-track:d7881a98396fd4ee9657262c70796f8a9d5949b4100bec56ffa55b5bea237a7b` |
| 42 | `lemma` | [LSeriesSummable_twist_vonMangoldt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseriessummable-twist-vonmangoldt--1976d6a2c66bfcb3ca51a74a.md) | 369 | `result-track:1976d6a2c66bfcb3ca51a74a34a16365e70578ab7d25570b116d011307fada40` |
| 43 | `lemma` | [LSeries_twist_vonMangoldt_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-twist-vonmangoldt-eq--aafb43004e5bba8fa1b8f7a6.md) | 376 | `result-track:aafb43004e5bba8fa1b8f7a6ccf60beac929bdb3e33bd501b18ec479f4119628` |
| 44 | `lemma` | [LSeries_vonMangoldt_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-vonmangoldt-eq--7a6e06ce00b5aa09d001b488.md) | 396 | `result-track:7a6e06ce00b5aa09d001b48815bf92e905621b5c84e5990968364838b5a83ba7` |
| 45 | `lemma` | [LSeries_vonMangoldt_eq_deriv_riemannZeta_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/declarations/lseries-vonmangoldt-eq-deriv-riemannzeta-div--e740cf4924f8e6e373a160bf.md) | 403 | `result-track:e740cf4924f8e6e373a160bfc6f237c437e32db43d33ea447d6b58a586052f88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
