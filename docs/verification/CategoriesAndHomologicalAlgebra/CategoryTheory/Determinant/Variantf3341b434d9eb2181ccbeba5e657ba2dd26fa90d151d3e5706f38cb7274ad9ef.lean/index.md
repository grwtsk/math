# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Determinant.Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Determinant` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 2; external provider; requires a separately pinned dependency.
- `Authority.BoundaryCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeterminantLineSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinesymbol--633e6dd87e0d953d9d59d65b.md) | 30 | `declaration-track:633e6dd87e0d953d9d59d65b19385108c9ec361bc555d3bec97fc0729e77517b` |
| 2 | `structure` | [DeterminantLineMorphismSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinemorphismsymbol--5f113c7c8af3a71db76b6484.md) | 36 | `declaration-track:5f113c7c8af3a71db76b6484d750379971f7f992599abdeda2bc86836f46ab30` |
| 3 | `structure` | [ZetaRegularizedDeterminantSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/zetaregularizeddeterminantsymbol--bac18f18bdf13a0d7710c536.md) | 43 | `declaration-track:bac18f18bdf13a0d7710c53629e45bb52d3662198c384c425477b93329316e7e` |
| 4 | `structure` | [FredholmDeterminantSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/fredholmdeterminantsymbol--060e9246495badfe88a70e7d.md) | 50 | `declaration-track:060e9246495badfe88a70e7d2a802f70c8323ad12d5db2c91b96c5b957416d60` |
| 5 | `structure` | [TraceLogExpansionSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/tracelogexpansionsymbol--beecfbb51aae6d7898e6778b.md) | 57 | `declaration-track:beecfbb51aae6d7898e6778b3d83c879d2a6ef819cbb3917f6be69718d32a5b6` |
| 6 | `structure` | [AnomalyFormulaSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/anomalyformulasymbol--8f32f10790c90e3617c13011.md) | 63 | `declaration-track:8f32f10790c90e3617c13011952bea39ed4104631d2410378fe22abc309e4517` |
| 7 | `structure` | [DeterminantLineAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlineauthority--5b6c386dfa662359dd5e60c4.md) | 70 | `declaration-track:5b6c386dfa662359dd5e60c44a2c8656b24f14fb0e90764a8161075c8009919c` |
| 8 | `structure` | [DeterminantLineFunctorialityAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinefunctorialityauthority--571a3aff45ee3e61fd1bd6cc.md) | 76 | `declaration-track:571a3aff45ee3e61fd1bd6ccb17f846245e8020beb32306f2e300f8fb2e970b0` |
| 9 | `structure` | [ZetaRegularizedDeterminantAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/zetaregularizeddeterminantauthority--935b996ba5d76b5bd0950d28.md) | 88 | `declaration-track:935b996ba5d76b5bd0950d283dd7575460a9dc545a55a6369d44d071158033ab` |
| 10 | `structure` | [FredholmDeterminantConvergenceAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/fredholmdeterminantconvergenceauthority--8f69f63151088390a11a8022.md) | 98 | `declaration-track:8f69f63151088390a11a8022dfbd908bddb729f97ec5ab2a2e306554a1a626ff` |
| 11 | `structure` | [TraceLogExpansionAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/tracelogexpansionauthority--bff0ce468e8635889fc62d2b.md) | 108 | `declaration-track:bff0ce468e8635889fc62d2b8addc14ed2217ac84ac832a101567bd08e0e9658` |
| 12 | `structure` | [AnomalyFormulaAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/anomalyformulaauthority--e8f9df33c1f78facd4fc154f.md) | 118 | `declaration-track:e8f9df33c1f78facd4fc154fe35cd69495eb73dc54a576eb6eeb138a9df1e273` |
| 13 | `theorem` | [determinant_line_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinant-line-authorized--fee83cda9877d09214214465.md) | 127 | `result-track:fee83cda9877d0921421446503b1f49bb7561f9b953bf69f563025cd507b98cd` |
| 14 | `theorem` | [determinant_line_functoriality_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinant-line-functoriality-authorized--59b35c7c5e77e0cb422c2222.md) | 132 | `result-track:59b35c7c5e77e0cb422c222219c2085407906b468142123bfce23ba9ec4153d2` |
| 15 | `theorem` | [zeta_regularized_determinant_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/zeta-regularized-determinant-authorized--ca0ee01cd2a3bb5214388366.md) | 141 | `result-track:ca0ee01cd2a3bb52143883662df835911e6c5add17cb867dd5e0da895784050e` |
| 16 | `theorem` | [fredholm_determinant_convergence_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/fredholm-determinant-convergence-authorized--007278bdd2812a4ef676780c.md) | 150 | `result-track:007278bdd2812a4ef676780cd82b829f65e2e7968d4735976622cda00b4f078c` |
| 17 | `theorem` | [trace_log_expansion_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/trace-log-expansion-authorized--d990c9d991a89d8228369917.md) | 159 | `result-track:d990c9d991a89d82283699178d333dfdb6ef9a9a23714451a91a74ee291d0af8` |
| 18 | `theorem` | [anomaly_formula_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/anomaly-formula-authorized--bf3442dcafe19ab8c1f400ce.md) | 168 | `result-track:bf3442dcafe19ab8c1f400ce3272594d214672f2aae641f01a5ca8bef90c5633` |
| 19 | `def` | [DeterminantLineSymbolOwnsFunctoriality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinesymbolownsfunctoriality--46e46a97394b28b16d042f35.md) | 178 | `declaration-track:46e46a97394b28b16d042f35d0237326adc03a9314d867e4c6d32e33851e781e` |
| 20 | `def` | [DeterminantLineSymbolOwnsAnalyticComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinesymbolownsanalyticcomparison--f8a93331752bb83dd69045a8.md) | 183 | `declaration-track:f8a93331752bb83dd69045a8637285a50c181cb083bc3b468dadb8e77d5bd335` |
| 21 | `def` | [ZetaRegularizedDeterminantSymbolOwnsRegularization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/zetaregularizeddeterminantsymbolownsregularization--b22deb87dc07c892a52f9656.md) | 188 | `declaration-track:b22deb87dc07c892a52f9656f909ed6b74f4511c6094d8e469b0a1beb56fe98e` |
| 22 | `def` | [FredholmDeterminantSymbolOwnsConvergence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/fredholmdeterminantsymbolownsconvergence--442f5b76e8062f30192e9393.md) | 193 | `declaration-track:442f5b76e8062f30192e9393fa6ddb22226e69af287b371caa07e8f362c97aff` |
| 23 | `def` | [TraceLogExpansionSymbolOwnsExpansion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/tracelogexpansionsymbolownsexpansion--5d3c3d2b5e79eb1987c9e7c9.md) | 198 | `declaration-track:5d3c3d2b5e79eb1987c9e7c93fb87b0a1d93c87754e8ab4b681c50c627c36fd6` |
| 24 | `def` | [AnomalyFormulaSymbolOwnsFormula](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/anomalyformulasymbolownsformula--d1a3b3d6b7b0cda97c183b14.md) | 203 | `declaration-track:d1a3b3d6b7b0cda97c183b144b4d007437c8d72a0370109c8596a98e3a611714` |
| 25 | `theorem` | [determinant_line_symbol_not_functoriality_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinant-line-symbol-not-functoriality-authority--f22e17878e7d0fa318a49523.md) | 207 | `result-track:f22e17878e7d0fa318a49523ce483cad80bbf05ee84ea6d48ea6cf4cea6bace9` |
| 26 | `theorem` | [determinant_line_symbol_not_analytic_comparison_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinant-line-symbol-not-analytic-comparison-authority--e936dc122028f6778bc96715.md) | 213 | `result-track:e936dc122028f6778bc96715fb3866b406720579a2b62a79864a9be517175135` |
| 27 | `theorem` | [zeta_regularized_symbol_not_regularization_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/zeta-regularized-symbol-not-regularization-authority--5667aaca0e52a444a3364c80.md) | 219 | `result-track:5667aaca0e52a444a3364c8038c2e497c36c3c87a0c1a5f5880a5bd3998dce87` |
| 28 | `theorem` | [fredholm_symbol_not_convergence_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/fredholm-symbol-not-convergence-authority--1745c65e62b86cf7a4ee6fff.md) | 225 | `result-track:1745c65e62b86cf7a4ee6fffe856eeda8ca1c6ebda8fd39ff637502366447ed7` |
| 29 | `theorem` | [trace_log_symbol_not_expansion_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/trace-log-symbol-not-expansion-authority--cfb886c070e649ea1baa776f.md) | 231 | `result-track:cfb886c070e649ea1baa776f3f0cadfbd1780aaef3f946278033f8148ff017e9` |
| 30 | `theorem` | [anomaly_symbol_not_formula_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/anomaly-symbol-not-formula-authority--0613d26048de2e3ad5ba928d.md) | 237 | `result-track:0613d26048de2e3ad5ba928d122963d13f61a2a34f2ac60f3746bf2a7c1abe97` |
| 31 | `theorem` | [determinant_symbol_boundary_summary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinant-symbol-boundary-summary--95440fb2621ce5291e83038d.md) | 249 | `result-track:95440fb2621ce5291e83038d30dadf6bd6edcfda52659d73160775045978d32b` |
| 32 | `def` | [determinantLineCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinecertificate--25f3d3cddff331b20266867f.md) | 269 | `declaration-track:25f3d3cddff331b20266867f3adda4fda7ee05d66bab86c765978d4f3ab9ceb2` |
| 33 | `def` | [determinantLineFunctorialityCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/determinantlinefunctorialitycertificate--395c42d0867729efffd49f39.md) | 279 | `declaration-track:395c42d0867729efffd49f39003dcf2b08431f01351e574f7cbf47fde854e893` |
| 34 | `def` | [zetaRegularizedDeterminantCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/zetaregularizeddeterminantcertificate--e377d8348b32edd66297825b.md) | 292 | `declaration-track:e377d8348b32edd66297825bec3e39dbcaa2450b7d93b247549969b36985e96a` |
| 35 | `def` | [fredholmDeterminantConvergenceCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/fredholmdeterminantconvergencecertificate--7fa4c7de17496780154fe11d.md) | 305 | `declaration-track:7fa4c7de17496780154fe11d08aa7663b2c86ff1546035fd38ae997a00d47a9f` |
| 36 | `def` | [traceLogExpansionCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/tracelogexpansioncertificate--bc9f090c52afb0264a4f97e8.md) | 318 | `declaration-track:bc9f090c52afb0264a4f97e8a244a9045441fa1ecbe026e748cca6e78b5fe03d` |
| 37 | `def` | [anomalyFormulaCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/declarations/anomalyformulacertificate--5f937117a5e92eb24a71ac64.md) | 331 | `declaration-track:5f937117a5e92eb24a71ac64e87432a148936de4597f8bf4d502a73f15bcfa4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
