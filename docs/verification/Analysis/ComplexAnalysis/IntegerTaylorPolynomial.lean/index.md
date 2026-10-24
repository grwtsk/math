# Verification target: GRWTSK.Analysis.Complex.IntegerTaylorPolynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0fb0112f43dfe779ef7f3bab3efbc722a1a21d4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntegerTaylorPolynomial.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0fb0112f43dfe779ef7f3bab3efbc722a1a21d4`.

Source path: `GRWTSK/Analysis/Complex/IntegerTaylorPolynomial.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntegerTaylorPolynomial.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerDyadicTrace`](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Gaussian](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/gaussian--23d79c79f0bbb4030e8f4d09.md) | 24 | `declaration-track:23d79c79f0bbb4030e8f4d091e80931ec1af4f270dbf8ee5d97a077d85c60f5f` |
| 2 | `def` | [addZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/addz--4b2ec388236de7358824d57e.md) | 26 | `declaration-track:4b2ec388236de7358824d57e684f7b342b1a8e7a68b86bb78e8b2b30563b6b0f` |
| 3 | `def` | [mulZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/mulz--8bafd26ca01b7030cfd145ff.md) | 27 | `declaration-track:8bafd26ca01b7030cfd145ffd20fb067a0decd1879a9260acf7a2c027e1d5a33` |
| 4 | `def` | [scalePair](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/scalepair--c69d8d7ec928e490aafabf0b.md) | 29 | `declaration-track:c69d8d7ec928e490aafabf0b1251730d11f5d0a8fc5c765ecfcc7a73283ba4f3` |
| 5 | `def` | [powerZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/powerz--ace3da87dfdd269d454d487e.md) | 31 | `declaration-track:ace3da87dfdd269d454d487efcdd2d20873df5f847deb4498b1ab6c3194223b2` |
| 6 | `def` | [numeratorZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/numeratorz--aa41415ee480aa95af26dd31.md) | 36 | `declaration-track:aa41415ee480aa95af26dd3107e05522039fbdc651a0762bb3372271e72f2217` |
| 7 | `def` | [denominatorZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/denominatorz--4bcfa56d84da0f6cb8177fef.md) | 41 | `declaration-track:4bcfa56d84da0f6cb8177fefb2ba47ff01a719478671eefe56f3b0cfa9733113` |
| 8 | `def` | [argumentQ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/argumentq--02fae773f1dfd0a131a189d7.md) | 43 | `declaration-track:02fae773f1dfd0a131a189d7b9e30da8bb0976d82cafec4270393fef73e09f04` |
| 9 | `def` | [decodeQ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/decodeq--824592ee7d13d2cf4861052f.md) | 46 | `declaration-track:824592ee7d13d2cf4861052f7a6c39728f16ffa57c13cf2518ec122a4d1f5ab4` |
| 10 | `def` | [embedZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embedz--8fea5280ba2cc729501fae8b.md) | 49 | `declaration-track:8fea5280ba2cc729501fae8b8ce45fcb2c1e7cb5de329201341d14d4cfb2148a` |
| 11 | `theorem` | [embedZ_add](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embedz-add--46cbd2471fddbc5b785aeefd.md) | 51 | `result-track:46cbd2471fddbc5b785aeefd4e1de0532564a4d96ddb1ff8b7dee6dc60571175` |
| 12 | `theorem` | [embedZ_mul](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embedz-mul--d8a832804f2d479a45469752.md) | 55 | `result-track:d8a832804f2d479a454697521dca32f8172b3aa30a0b56290ba142af03ed49a6` |
| 13 | `theorem` | [embedZ_scale](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embedz-scale--318c18a996be62116f36be3d.md) | 59 | `result-track:318c18a996be62116f36be3d45d3a93e2fdc30295d51651dd5b1b674a51fc565` |
| 14 | `theorem` | [embedZ_power](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embedz-power--c0425dda4d73081d8b1f7c15.md) | 63 | `result-track:c0425dda4d73081d8b1f7c15e6f1533468a7520214669fefe09b13a599f58c6b` |
| 15 | `theorem` | [embed_argumentQ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embed-argumentq--85dbc393967933edabcd0701.md) | 69 | `result-track:85dbc393967933edabcd0701b949922e49f54c7f77ee49c56de06b4d1855b67a` |
| 16 | `theorem` | [embed_decodeQ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embed-decodeq--3b09678cef1250de5a4e674a.md) | 74 | `result-track:3b09678cef1250de5a4e674a410e0e2da2e7a8a176d44b84b80250f5d9e6b995` |
| 17 | `theorem` | [embed_injective](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/embed-injective--31088cb790ac0adfa6627f35.md) | 78 | `result-track:31088cb790ac0adfa6627f35ee5000676a0bf4335566183cadb4a1ae3ac2d797` |
| 18 | `theorem` | [denominator_pos](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/denominator-pos--50c65072779f2be3ded0874f.md) | 92 | `result-track:50c65072779f2be3ded0874f66a67a078c534533fc86cc88477b89833b9e6896` |
| 19 | `theorem` | [denominator_succ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/denominator-succ--283b280cf7bc01a15f1f8e35.md) | 97 | `result-track:283b280cf7bc01a15f1f8e3507d3df19d9f3490566361105ccf1e8135552808e` |
| 20 | `theorem` | [complex_ratio_eq_polynomial](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/complex-ratio-eq-polynomial--828ede6e0a5723500258833c.md) | 104 | `result-track:828ede6e0a5723500258833c39643a86a5ef1725cf95506a67d6c760b97e2b53` |
| 21 | `theorem` | [polynomial_eq_decode](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/polynomial-eq-decode--4a247eb0c597d23310103d33.md) | 128 | `result-track:4a247eb0c597d23310103d33f6dc359099139d0b027e4380e1b5fd5f92824d04` |
| 22 | `theorem` | [rect_decode](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/rect-decode--d85bb06fc0e43ccc5d944330.md) | 136 | `result-track:d85bb06fc0e43ccc5d944330e9b4f0d261045e579672f7b07c59687ec0db2779` |
| 23 | `theorem` | [floor_window_scaled](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/floor-window-scaled--e5d55b413830dc620c0e0f88.md) | 142 | `result-track:e5d55b413830dc620c0e0f88aeb72e04beec4693df1647b97b487f5a8e869ed7` |
| 24 | `theorem` | [error_window_scaled](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/declarations/error-window-scaled--6fd2479028a8ad0b88bab0dd.md) | 157 | `result-track:6fd2479028a8ad0b88bab0dd8c52d67869e424e830c9c720a774ab9b167f67fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
