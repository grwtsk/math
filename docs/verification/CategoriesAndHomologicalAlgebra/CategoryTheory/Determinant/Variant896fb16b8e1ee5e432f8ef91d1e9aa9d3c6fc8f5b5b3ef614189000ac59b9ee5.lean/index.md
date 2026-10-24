# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Determinant.Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3f225db0220f8fe779ca0d632248a9f71165079",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3f225db0220f8fe779ca0d632248a9f71165079`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Determinant` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 7; external provider; requires a separately pinned dependency.
- `Authority.BoundaryCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeterminantLineSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinesymbol--7ac54b2218d4919c51dbea6b.md) | 38 | `declaration-track:7ac54b2218d4919c51dbea6b6ec7390073d09838ea418c8079c195b996a9e4e4` |
| 2 | `structure` | [DeterminantLineMorphismSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinemorphismsymbol--3c464dc0e262e525d63b0eb9.md) | 44 | `declaration-track:3c464dc0e262e525d63b0eb950f72122397958ab62baf1741f569116cb32ef5e` |
| 3 | `structure` | [ZetaRegularizedDeterminantSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/zetaregularizeddeterminantsymbol--3797e75fdf8421ff78e3155c.md) | 51 | `declaration-track:3797e75fdf8421ff78e3155cf49d98b2499bfff2e2974f7e9061848ec1a40742` |
| 4 | `structure` | [FredholmDeterminantSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/fredholmdeterminantsymbol--10c348dcddcfafc42eb42c45.md) | 58 | `declaration-track:10c348dcddcfafc42eb42c45a8ab3db62393ce15127ebde0d846226542826cda` |
| 5 | `structure` | [TraceLogExpansionSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/tracelogexpansionsymbol--dec97b87744210e939861816.md) | 65 | `declaration-track:dec97b87744210e9398618167bc7d757c3c4b016e247d14a71009c89e0818b15` |
| 6 | `structure` | [AnomalyFormulaSymbol](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/anomalyformulasymbol--8b373238eaacb60fa15ca16b.md) | 71 | `declaration-track:8b373238eaacb60fa15ca16ba2a52df9ff7d904968723407597918a02e58f875` |
| 7 | `structure` | [DeterminantLineAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlineauthority--ef3213db935dfc14925e895b.md) | 78 | `declaration-track:ef3213db935dfc14925e895bce7df99069d4c953cabc0e558754f3500d306c8c` |
| 8 | `structure` | [DeterminantLineFunctorialityAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinefunctorialityauthority--e7c67834bace5a4f92459e9e.md) | 84 | `declaration-track:e7c67834bace5a4f92459e9edaf60acd45797decc89e16ddafed4e4cb182f8b7` |
| 9 | `structure` | [ZetaRegularizedDeterminantAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/zetaregularizeddeterminantauthority--5555b87b55aa098d4f7c57ee.md) | 96 | `declaration-track:5555b87b55aa098d4f7c57ee3448805016f0003a5b4e4f3ec1a73dcd8af1caec` |
| 10 | `structure` | [FredholmDeterminantConvergenceAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/fredholmdeterminantconvergenceauthority--e4c746d0da5ea01f2f3a67fb.md) | 106 | `declaration-track:e4c746d0da5ea01f2f3a67fb73db2aa29b0fa63b46ad3d56e1d0a7c1761698c7` |
| 11 | `structure` | [TraceLogExpansionAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/tracelogexpansionauthority--eda18aa4c4374c1b8888937e.md) | 116 | `declaration-track:eda18aa4c4374c1b8888937ea63edae4b9e2ac27c44275f31f02fbd126cc8f9a` |
| 12 | `structure` | [AnomalyFormulaAuthority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/anomalyformulaauthority--bc72886c5252acd68edb6daf.md) | 126 | `declaration-track:bc72886c5252acd68edb6daf01f2c81e9f99ef7aaf479424689e1b8a6398e52a` |
| 13 | `theorem` | [determinant_line_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinant-line-authorized--5b30623b77919a1eb3d137c8.md) | 135 | `result-track:5b30623b77919a1eb3d137c8d8162f82ca3db149ce7b238b640e16c60816d646` |
| 14 | `theorem` | [determinant_line_functoriality_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinant-line-functoriality-authorized--7c227ec803f8955a54ba6f52.md) | 140 | `result-track:7c227ec803f8955a54ba6f526f8aad4bfa4b74065d0dc076806de26922109fd5` |
| 15 | `theorem` | [zeta_regularized_determinant_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/zeta-regularized-determinant-authorized--d2d1aa8a99b7661f86eead5b.md) | 149 | `result-track:d2d1aa8a99b7661f86eead5b35ecdd7fa2d1bef0e77c07a44133c72e6c048e22` |
| 16 | `theorem` | [fredholm_determinant_convergence_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/fredholm-determinant-convergence-authorized--390f39aab980a48690173d39.md) | 158 | `result-track:390f39aab980a48690173d3911af7bbb03cf712a8cac57d3888a8d459e469324` |
| 17 | `theorem` | [trace_log_expansion_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/trace-log-expansion-authorized--dba1719def520f84ae57b8b5.md) | 167 | `result-track:dba1719def520f84ae57b8b583b2a286f5858f4ef1869224dc5fd2f6963ec95b` |
| 18 | `theorem` | [anomaly_formula_authorized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/anomaly-formula-authorized--c8cd5d0b4333837766d1a3a7.md) | 176 | `result-track:c8cd5d0b4333837766d1a3a746309566ccdd9bdffcba2821549269d7d9a782ae` |
| 19 | `def` | [DeterminantLineSymbolOwnsFunctoriality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinesymbolownsfunctoriality--fe93970499049df66f19d4df.md) | 186 | `declaration-track:fe93970499049df66f19d4df1cf59a85401d784d11159c2052140575e92def29` |
| 20 | `def` | [DeterminantLineSymbolOwnsAnalyticComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinesymbolownsanalyticcomparison--65e99c30d075320571e2987e.md) | 191 | `declaration-track:65e99c30d075320571e2987ebfefd7df373f46b1cf06b2cbd14ee05942f051a9` |
| 21 | `def` | [ZetaRegularizedDeterminantSymbolOwnsRegularization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/zetaregularizeddeterminantsymbolownsregularization--54a68564888a1b3e885b460e.md) | 196 | `declaration-track:54a68564888a1b3e885b460e2e99f3f7548504025344f0f1f88104f4de0a806a` |
| 22 | `def` | [FredholmDeterminantSymbolOwnsConvergence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/fredholmdeterminantsymbolownsconvergence--fc71ac6bcd5f4776169816e1.md) | 201 | `declaration-track:fc71ac6bcd5f4776169816e1cce202d58134a227f7a878381b3c138447b6f54b` |
| 23 | `def` | [TraceLogExpansionSymbolOwnsExpansion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/tracelogexpansionsymbolownsexpansion--0137d666ceb41d658624aaf0.md) | 206 | `declaration-track:0137d666ceb41d658624aaf0c34a5c17951d9e5d6bf6deb43043e286105bb5e3` |
| 24 | `def` | [AnomalyFormulaSymbolOwnsFormula](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/anomalyformulasymbolownsformula--4fb0e40170561f01d4eb5638.md) | 211 | `declaration-track:4fb0e40170561f01d4eb5638f6aabda0de8ba9f1dcdd668e70120b246d3fad17` |
| 25 | `theorem` | [determinant_line_symbol_not_functoriality_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinant-line-symbol-not-functoriality-authority--55a21c10bc5d8f45059b0538.md) | 215 | `result-track:55a21c10bc5d8f45059b05389f9f6ef91bd003ae8fddf3e48e1d38194e3df621` |
| 26 | `theorem` | [determinant_line_symbol_not_analytic_comparison_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinant-line-symbol-not-analytic-comparison-authority--af761c4c836c447e9748ed48.md) | 221 | `result-track:af761c4c836c447e9748ed48038c322c29bcf54562170ac0a9c194fbc3ea0413` |
| 27 | `theorem` | [zeta_regularized_symbol_not_regularization_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/zeta-regularized-symbol-not-regularization-authority--b086aac2cc775b88b4f7e9da.md) | 227 | `result-track:b086aac2cc775b88b4f7e9dae59d47aea4fdb3e06e400a9144f84e44fb95073b` |
| 28 | `theorem` | [fredholm_symbol_not_convergence_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/fredholm-symbol-not-convergence-authority--009bd3b53d1e03e23f7ff617.md) | 233 | `result-track:009bd3b53d1e03e23f7ff61701c07eb2e92961573e4d00fc8e8d130032b471e3` |
| 29 | `theorem` | [trace_log_symbol_not_expansion_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/trace-log-symbol-not-expansion-authority--ccc9a1ebf205c2d8a87817c4.md) | 239 | `result-track:ccc9a1ebf205c2d8a87817c4892951f6cb55f26ef1871c12177dd98065f48b21` |
| 30 | `theorem` | [anomaly_symbol_not_formula_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/anomaly-symbol-not-formula-authority--3771ef936c9a34be631bc64c.md) | 245 | `result-track:3771ef936c9a34be631bc64c10c532a0838f8f655b5585a9b889e2eac5799a02` |
| 31 | `theorem` | [determinant_symbol_boundary_summary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinant-symbol-boundary-summary--cc6dda9fdb7a57fab938bbe7.md) | 257 | `result-track:cc6dda9fdb7a57fab938bbe7e3fd3569dbcf7a68f7dd06aa0c7402b08b762d70` |
| 32 | `def` | [determinantLineCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinecertificate--c44920e84dddd3598ef0607d.md) | 277 | `declaration-track:c44920e84dddd3598ef0607d354a1805d0bccfa8be00c177310eacd277f50b46` |
| 33 | `def` | [determinantLineFunctorialityCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/determinantlinefunctorialitycertificate--2cec0a956003d96db2c74867.md) | 287 | `declaration-track:2cec0a956003d96db2c748674af2d1d5017e5b80a8c0a076c5768db4c7963e0c` |
| 34 | `def` | [zetaRegularizedDeterminantCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/zetaregularizeddeterminantcertificate--73a952c11d84894c3bcad5c2.md) | 300 | `declaration-track:73a952c11d84894c3bcad5c2cafc0127f53c2ce5d190fe829a916ef5f76b84d0` |
| 35 | `def` | [fredholmDeterminantConvergenceCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/fredholmdeterminantconvergencecertificate--5f8bb818bcbf7dae194361b3.md) | 313 | `declaration-track:5f8bb818bcbf7dae194361b3749a4e6d02d44cfb51e982a672a1ca35bde2ba6c` |
| 36 | `def` | [traceLogExpansionCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/tracelogexpansioncertificate--be9c33b4152ff8a0bb31ed0c.md) | 326 | `declaration-track:be9c33b4152ff8a0bb31ed0cbc04839c38cc7829a89458f6673a8331182ddb72` |
| 37 | `def` | [anomalyFormulaCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/declarations/anomalyformulacertificate--33d09ed2b6117a1bcc77ca75.md) | 339 | `declaration-track:33d09ed2b6117a1bcc77ca75b00771d0812c629b924097d54d016ba2ea91c643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
