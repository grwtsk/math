# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.InitialFormula.Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "754ccac173094178192c7e051096f1ff06033325",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `754ccac173094178192c7e051096f1ff06033325`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/instance--7d4cfe464a7ed79e95b1360b.md) | 38 | `declaration-track:7d4cfe464a7ed79e95b1360be3e923c8dfc3722aed549a18fd026aa46cddd637` |
| 2 | `def` | [rCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/rcoeff--512b64e003013c573494bddd.md) | 48 | `declaration-track:512b64e003013c573494bddda1c49ea3e9980987bc65e8bfca6bb6c53b49fcb8` |
| 3 | `def` | [sCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/scoeff--59bfcfe75c641cea1d5a1d86.md) | 62 | `declaration-track:59bfcfe75c641cea1d5a1d86e12655d43daac1a3de7c84faae3c826b94a51f97` |
| 4 | `def` | [scalePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/scalepolynomial--b9616a996276a2e0f807d806.md) | 75 | `declaration-track:b9616a996276a2e0f807d8065fc2783bda7efe9448d3cbfcdb17e69ede2fba0d` |
| 5 | `def` | [positivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/positivepolynomial--25ef1c30b42c3fc461b84c1f.md) | 80 | `declaration-track:25ef1c30b42c3fc461b84c1fd09f8bfa3c64513eeb0c082f1a5fbffe348e16cc` |
| 6 | `def` | [mixedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/mixedpolynomial--e773655aea2722146d0af69e.md) | 84 | `declaration-track:e773655aea2722146d0af69e2f627bab0d65c39b93a406ffe01c017356291cdd` |
| 7 | `theorem` | [scalePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/scalepolynomial-eval--0e68cbf0d2038cee2c210e90.md) | 87 | `result-track:0e68cbf0d2038cee2c210e902474dee68deaac04afb175a444f41392a361262d` |
| 8 | `theorem` | [positivePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/positivepolynomial-eval--aa9ff6472e889bc7abd20b62.md) | 93 | `result-track:aa9ff6472e889bc7abd20b62f3d7eb680a25bd9beaa52bed29e843237bd7365e` |
| 9 | `theorem` | [mixedPolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/mixedpolynomial-eval--6721071fe439786e057d0ec1.md) | 98 | `result-track:6721071fe439786e057d0ec194c84edf08873735d0cb90ba3b5efed4342eea07` |
| 10 | `theorem` | [positivePolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/positivepolynomial-expansion--966cefae2d907b59376143a2.md) | 104 | `result-track:966cefae2d907b59376143a25b5647bd672d6147df0c0348d1e3ff3a0689f7a5` |
| 11 | `theorem` | [mixedPolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/mixedpolynomial-expansion--eccdec6ddf7d0b50b637017b.md) | 118 | `result-track:eccdec6ddf7d0b50b637017bf61151e12e9ddf2fe6df764b9f301541aae717a7` |
| 12 | `theorem` | [positivePolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/positivepolynomial-natdegree-le--06d3d118311b8a46ce39531a.md) | 129 | `result-track:06d3d118311b8a46ce39531ad0756a4164d58735b5260de58bd544e10a920ca1` |
| 13 | `theorem` | [mixedPolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/mixedpolynomial-natdegree-le--a606d7686fc8ab9a4c3bb8d2.md) | 134 | `result-track:a606d7686fc8ab9a4c3bb8d299fb9f8889708c1303956c681ce3e0e9bf7a6846` |
| 14 | `theorem` | [positivePolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/positivepolynomial-coeff--dfccd1787a49404838e03d08.md) | 140 | `result-track:dfccd1787a49404838e03d0848d751d9e07ab29acde6bcc59cbc7c64cab4f168` |
| 15 | `theorem` | [positivePolynomial_neg_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/positivepolynomial-neg-coeff--acf46bcbeccfaa9fa454f984.md) | 150 | `result-track:acf46bcbeccfaa9fa454f98451e7f7d3f76204e24c0eadcbe921b2fada4cb981` |
| 16 | `theorem` | [mixedPolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/mixedpolynomial-coeff--134547234f1688ed99ab3ec3.md) | 159 | `result-track:134547234f1688ed99ab3ec32c95c3a6a4fe37e7b1ab2d9ffb269d249d2bd53f` |
| 17 | `def` | [polynomialKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/polynomialkernel--e3406bce2d961c2844ae195d.md) | 169 | `declaration-track:e3406bce2d961c2844ae195dbedf30c917bc129e0af8a4617692a160c24dcd72` |
| 18 | `def` | [sourceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/sourcekernel--983c1b6bceef3e7bbfe3ec48.md) | 173 | `declaration-track:983c1b6bceef3e7bbfe3ec48c3b9aef9a2057844a76a755ea86404de47cdb0d3` |
| 19 | `def` | [equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/equation20summand--396e26192c8f1a470c710d38.md) | 180 | `declaration-track:396e26192c8f1a470c710d384fa71ce4694710aecc14b9411a8189d3f52c1d2f` |
| 20 | `theorem` | [polynomialKernel_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/polynomialkernel-positive--ce2ffc3e74d9e366c94d5cec.md) | 188 | `result-track:ce2ffc3e74d9e366c94d5cecec09ff2a790ea08c523632306ffe57320b832fd6` |
| 21 | `theorem` | [polynomialKernel_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/polynomialkernel-negative--f2cb663db1e47384aea8efba.md) | 200 | `result-track:f2cb663db1e47384aea8efbac3576aedd77a8b6429afba3108141f3e33e0e038` |
| 22 | `theorem` | [polynomialKernel_mixed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/polynomialkernel-mixed--1dc979baa436f3d7db41bba2.md) | 212 | `result-track:1dc979baa436f3d7db41bba2e742855b694f2e03d401e3216ca0f1b39a5fcfaa` |
| 23 | `theorem` | [sourceKernel_eq_equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/sourcekernel-eq-equation20summand--51b7b36199d9b1fda63fc073.md) | 226 | `result-track:51b7b36199d9b1fda63fc0736edfd69e4f215181084542467ce9cc5bdec3e5ce` |
| 24 | `def` | [weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/weightedpolynomial--dd45fb43b32c5ad44d8cf9c5.md) | 241 | `declaration-track:dd45fb43b32c5ad44d8cf9c5bc0a926e867f7300189734895a84a3715025ce4b` |
| 25 | `theorem` | [weightedPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/weightedpolynomial-eq-sum--c9acf69441db5cc91bb9a02c.md) | 245 | `result-track:c9acf69441db5cc91bb9a02c69ab32d2b8a986b55319018883ce2450d7512d7e` |
| 26 | `theorem` | [weightedPolynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/weightedpolynomial-integrable--3868425da7b30e71fac4f608.md) | 262 | `result-track:3868425da7b30e71fac4f60899e9d2cf96bee99d8e1ac7380329287072db2fc0` |
| 27 | `theorem` | [integral_weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/integral-weightedpolynomial--2c9cf39df645aa2485634145.md) | 275 | `result-track:2c9cf39df645aa248563414508de8480784c440750fb6a6bdb87029e6a1f5a0d` |
| 28 | `theorem` | [weighted_expandedSummand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/weighted-expandedsummand-eq--ad8d1f9aff411099cb06f49e.md) | 294 | `result-track:ad8d1f9aff411099cb06f49e61ec9b6b168d375a264a67e4528d50253cd56c5e` |
| 29 | `theorem` | [occurrence_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/occurrence-integrable--0ec7fae088c4d3df421b9ec3.md) | 323 | `result-track:0ec7fae088c4d3df421b9ec397746a4f97e35f94f4bf0b78a03939eca7df44c2` |
| 30 | `theorem` | [integral_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/integral-occurrence--ca24a91a1923583eb01641bd.md) | 360 | `result-track:ca24a91a1923583eb01641bd8fca55cd61ba8885c459538ebe0e81b17fc0b2fd` |
| 31 | `def` | [occurrenceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/occurrenceintegrand--ad8e6edc841a207021a9b24a.md) | 410 | `declaration-track:ad8e6edc841a207021a9b24a2d9d970dd974e760b9335cd45562b04c6053f387` |
| 32 | `def` | [scaleMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/scalemajorant--2e94a1d0054756d7ad3a1693.md) | 416 | `declaration-track:2e94a1d0054756d7ad3a1693a7c05db3c6a94e5dbc01698c086cfb1d64bb4134` |
| 33 | `theorem` | [scaleMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/scalemajorant-nonneg--e20a1f131311deb9d74607ba.md) | 420 | `result-track:e20a1f131311deb9d74607bad95be1edccf9610bd04acaf9f3d47bb43df1ab7f` |
| 34 | `theorem` | [scaleMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/scalemajorant-integrable--e34cf699111bf49b92d46421.md) | 428 | `result-track:e34cf699111bf49b92d46421f8659c8040e6bf930fea928b56b04e8de9d40de0` |
| 35 | `theorem` | [occurrenceIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/occurrenceintegrand-norm-le--be214a03648baafda59d78f2.md) | 457 | `result-track:be214a03648baafda59d78f25a128144e84b072d0bd5a3ed90aae2811a88663e` |
| 36 | `theorem` | [integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/integral-norm-le--8a85d61c39136cf264ce3fdb.md) | 490 | `result-track:8a85d61c39136cf264ce3fdb249820d399e2d2b8ddb82eb1525ade6c52b564ab` |
| 37 | `theorem` | [integral_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/integral-norms-summable--d1aed4c4973bef1034b21eb9.md) | 505 | `result-track:d1aed4c4973bef1034b21eb9727deea17632fa182d1bcf747c6d8fb0ff32ee38` |
| 38 | `theorem` | [summedIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/summedintegrand-eq--f27a5457a3b6342715b3ef2f.md) | 520 | `result-track:f27a5457a3b6342715b3ef2f779e4f8008ebfde1a92d8f85fee51da39dd9282e` |
| 39 | `theorem` | [integral_tsum_occurrences](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/integral-tsum-occurrences--a1ebaa39915a1d51a6ee75c0.md) | 532 | `result-track:a1ebaa39915a1d51a6ee75c0faa628e2a0e6a6ac43f73a4f2959c0586f6e0eeb` |
| 40 | `theorem` | [integrals_enorm_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/integrals-enorm-ne-top--974cf440e05c2c5c33a4300f.md) | 547 | `result-track:974cf440e05c2c5c33a4300fdca090c832b2769be45c5693598664f426feebde` |
| 41 | `theorem` | [summedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/summedintegrand-integrable--6994e74ce7393b7eea4247dd.md) | 565 | `result-track:6994e74ce7393b7eea4247dd197806ecf399287d73563cf17683c57ddc388bf4` |
| 42 | `theorem` | [weightedSource_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/weightedsource-laplace-integrable--e8305a9a200576b4088570ca.md) | 590 | `result-track:e8305a9a200576b4088570cacb5c622a37d53485ff50e3c54ec7b51ddfc917f3` |
| 43 | `theorem` | [equation20](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/equation20--294f1e6d9fd27870dbcf6413.md) | 602 | `result-track:294f1e6d9fd27870dbcf6413d18d4107e6d1ffd1e9b6cdb3d53ee0270d057c12` |
| 44 | `theorem` | [equation20_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/equation20-norms-summable--58cd73cc99213cac88228f15.md) | 624 | `result-track:58cd73cc99213cac88228f15fd348c16964093a1bfa94737ff434a63527e0cd5` |
| 45 | `def` | [InitialFormulaCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/initialformulacheckpoint--96d0c6ae64605edd55d57d12.md) | 639 | `declaration-track:96d0c6ae64605edd55d57d12b71eb585276ab8dfbf83b1c2d8eeaaffe4c64de9` |
| 46 | `theorem` | [initial_formula_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/declarations/initial-formula-checkpoint--09c3e46e1bdbe22a619ce1ee.md) | 655 | `result-track:09c3e46e1bdbe22a619ce1ee8e13b0e749890d97f234cd093816ebbd6e5bc7b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
