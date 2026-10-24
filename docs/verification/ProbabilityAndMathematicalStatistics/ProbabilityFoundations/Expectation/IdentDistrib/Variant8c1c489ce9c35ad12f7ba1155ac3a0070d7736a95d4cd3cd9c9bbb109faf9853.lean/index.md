# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IdentDistrib.Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a344d23c2b3d886fa04ad862a338cab90b98fa07",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a344d23c2b3d886fa04ad862a338cab90b98fa07`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Variance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IdentDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/identdistrib--48d2d6cd9551a01bfd3294e6.md) | 76 | `declaration-track:48d2d6cd9551a01bfd3294e658269fb7edfa9089ebcee8c5a43c36617eeac32b` |
| 2 | `theorem` | [refl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/refl--3cb144cc28f1f9480674c85a.md) | 90 | `result-track:3cb144cc28f1f9480674c85a4c4396cc3f3a4710c6f9fcd87b7781ae49f63de7` |
| 3 | `theorem` | [symm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/symm--39d0557cc9c9dcda2902c546.md) | 96 | `result-track:39d0557cc9c9dcda2902c546140ef579ad8be12d9275efd52851fb83f21ac57d` |
| 4 | `theorem` | [trans](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/trans--bdf87088bd307fb3bdc435d4.md) | 102 | `result-track:bdf87088bd307fb3bdc435d42b4f727f9485c7dc148f8ee267d8e105ed25ff65` |
| 5 | `theorem` | [comp_of_aemeasurable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/comp-of-aemeasurable--03a16df7bdabc9ea7d2994d8.md) | 109 | `result-track:03a16df7bdabc9ea7d2994d8f72f230dc0aabf99464b86cadbb3f4b04c5253d5` |
| 6 | `theorem` | [comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/comp--ea55253ecfe11b87f3089565.md) | 119 | `result-track:ea55253ecfe11b87f308956572ca9ab6c64b011ca9330bfe4b50dc227a2621a2` |
| 7 | `theorem` | [of_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/of-ae-eq--5567e1f3b253422fd45593ef.md) | 124 | `result-track:5567e1f3b253422fd45593efb0c4bead9238857384b289b61129062cc579fadf` |
| 8 | `theorem` | [measure_mem_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/measure-mem-eq--d34a8d435b4ad314d2eca6b4.md) | 131 | `result-track:d34a8d435b4ad314d2eca6b4a12a9eff6153006680b29f652f4dd1a00dc6a86b` |
| 9 | `theorem` | [ae_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/ae-snd--de543155f9f64cf6395c2112.md) | 140 | `result-track:de543155f9f64cf6395c2112a97a7dcaa24f2247c877bd85a085bdee7ab24859` |
| 10 | `theorem` | [ae_mem_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/ae-mem-snd--9cf83c30ce958f2ca0765b67.md) | 147 | `result-track:9cf83c30ce958f2ca0765b67bca3499d80c6ac58d5f29f272c2734df1d197064` |
| 11 | `theorem` | [aestronglyMeasurable_fst](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/aestronglymeasurable-fst--643a9c750bb7ada38c88b461.md) | 155 | `result-track:643a9c750bb7ada38c88b461e548a03d19e86845c7867d1e52d5c058f0397c3f` |
| 12 | `theorem` | [aestronglyMeasurable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/aestronglymeasurable-snd--d00dd038fb2f3fda379e2a6f.md) | 161 | `result-track:d00dd038fb2f3fda379e2a6f0734704c11d8c5a100bbbc543e811e3138829ccc` |
| 13 | `theorem` | [aestronglyMeasurable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/aestronglymeasurable-iff--b2d5bc156e6e387eae1b8a81.md) | 170 | `result-track:b2d5bc156e6e387eae1b8a819956b45d770c6cc999c48402cab27c955e5c5f47` |
| 14 | `theorem` | [essSup_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/esssup-eq--0197703c38bd05ec0119df9b.md) | 175 | `result-track:0197703c38bd05ec0119df9bcc009fcc2edb93d8562cf36689dcbc8ca6553275` |
| 15 | `theorem` | [lintegral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/lintegral-eq--b8acc018b1656fc6218f864a.md) | 182 | `result-track:b8acc018b1656fc6218f864a818d98e0d159e08944f3e8cb144f585a947019bb` |
| 16 | `theorem` | [integral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/integral-eq--25bc5129551a6bccf972238c.md) | 189 | `result-track:25bc5129551a6bccf972238cf3214afcef0533cf8f2d46bdce28ee5d9d7bda0f` |
| 17 | `theorem` | [snorm_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/snorm-eq--087af0000d5f098ef8fe6b0d.md) | 208 | `result-track:087af0000d5f098ef8fe6b0d680bc133d122874e9909b949d44752f85910c6f7` |
| 18 | `theorem` | [memℒp_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/mem-p-snd--356707b55b286159701874ce.md) | 223 | `result-track:356707b55b286159701874cef57d0ec44751f3f048c0eea1d6780913d653ea2c` |
| 19 | `theorem` | [memℒp_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/mem-p-iff--f2444b85705bebd0d6efc55e.md) | 230 | `result-track:f2444b85705bebd0d6efc55e58742cf80309bfed0b182a82ebd07443e7cc7e63` |
| 20 | `theorem` | [integrable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/integrable-snd--045ee399abc699cb040a1402.md) | 235 | `result-track:045ee399abc699cb040a140200bddf41467704650e22f70d3919a7daf90d1459` |
| 21 | `theorem` | [integrable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/integrable-iff--994a6094d463311119e4757d.md) | 241 | `result-track:994a6094d463311119e4757d179b4fc492ada16c1a814949604fe020b82d1eca` |
| 22 | `theorem` | [norm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/norm--e7bee340de2a8298d56e4975.md) | 246 | `result-track:e7bee340de2a8298d56e4975676caed8b86f10bfb1a656f9941ff283321e5b32` |
| 23 | `theorem` | [nnnorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/nnnorm--6afc95c2d2d9720b4c73d400.md) | 251 | `result-track:6afc95c2d2d9720b4c73d40082f91a7d3ddba31eea9660f411fb7dfb35d483b4` |
| 24 | `theorem` | [pow](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/pow--8439cee58bbff2ca514a62da.md) | 256 | `result-track:8439cee58bbff2ca514a62dadbb7cf9c911f41d4dbdfadce7eb45296237f9208` |
| 25 | `theorem` | [sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/sq--21cb989dc6368fe27fcc534f.md) | 261 | `result-track:21cb989dc6368fe27fcc534f0ce60f276da6a3b2aac7040390114145162af67d` |
| 26 | `theorem` | [coe_nnreal_ennreal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/coe-nnreal-ennreal--f315596466427153ce510813.md) | 266 | `result-track:f315596466427153ce51081382977a0837cecaf6b9a00ab27c32e5c8a1929d92` |
| 27 | `theorem` | [mul_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/mul-const--e542492553a4298a03e29ec9.md) | 272 | `result-track:e542492553a4298a03e29ec90949dbaf58e1b25f416f2853edcdff479d5740e0` |
| 28 | `theorem` | [const_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/const-mul--5f82da0ed4846d1ff49a8aeb.md) | 279 | `result-track:5f82da0ed4846d1ff49a8aeb813d20ddc50190d94773de82ccf5c48705d0098b` |
| 29 | `theorem` | [div_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/div-const--291bba703e6ede170ace7423.md) | 286 | `result-track:291bba703e6ede170ace74230a7ce53ced22a4fde6e019914c86ddae0ea1f4c9` |
| 30 | `theorem` | [const_div](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/const-div--0c9f6462b22ed14b7be261d1.md) | 293 | `result-track:0c9f6462b22ed14b7be261d19a39b6e36c237f21b8e28092dd6512fe9b7ebb1d` |
| 31 | `theorem` | [evariance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/evariance-eq--be09208085f6a2ceb42f0fdf.md) | 299 | `result-track:be09208085f6a2ceb42f0fdf9e524e3887abe0655280c90e03fad810ab0b310d` |
| 32 | `theorem` | [variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/variance-eq--6dc86e94249e670e1a3ef6a0.md) | 306 | `result-track:6dc86e94249e670e1a3ef6a080b923d08b0c062eea80ad4d0e457ae1b4ee8cc8` |
| 33 | `theorem` | [Memℒp.uniformIntegrable_of_identDistrib_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/mem-p-uniformintegrable-of-identdistrib-aux--cb36fe3a5bbe54d750b541e3.md) | 321 | `result-track:cb36fe3a5bbe54d750b541e36c2a6ea86c7148a07a5115b3fcf40f5e3a5cd00b` |
| 34 | `theorem` | [Memℒp.uniformIntegrable_of_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/declarations/mem-p-uniformintegrable-of-identdistrib--2820883253f683f570d0b8ef.md) | 343 | `result-track:2820883253f683f570d0b8efbc7d1af316d4b518a2243d91aeddb8bee6e66c8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
