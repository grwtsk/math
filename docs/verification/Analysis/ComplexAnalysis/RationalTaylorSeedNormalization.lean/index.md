# Verification target: GRWTSK.Analysis.Complex.RationalTaylorSeedNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d050e9e8b474c2e589b725ed79ecc1fdc00f6753",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTaylorSeedNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d050e9e8b474c2e589b725ed79ecc1fdc00f6753`.

Source path: `GRWTSK/Analysis/Complex/RationalTaylorSeedNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTaylorSeedNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerTaylorPolynomial`](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [argDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/argden--6474ef7cb27a59fd8bf0b248.md) | 24 | `declaration-track:6474ef7cb27a59fd8bf0b248fac1abfb2e58152f3f363cd9132589cdec193565` |
| 2 | `def` | [argNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/argnum--d1565a02c96b3f824dd6b0e1.md) | 25 | `declaration-track:d1565a02c96b3f824dd6b0e19432013a794803436e89021ad9ff2bf58671243d` |
| 3 | `def` | [seedNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/seednum--381562becc981627b8631c88.md) | 27 | `declaration-track:381562becc981627b8631c88a13b015ee67cdd2ee2ce416aa2c94eb16a164b74` |
| 4 | `def` | [seedDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/seedden--a49bee2299bd0547975bf657.md) | 28 | `declaration-track:a49bee2299bd0547975bf65740cd98fdf70ef654c028f3a4c39d0f60f476232f` |
| 5 | `def` | [tailNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/tailnum--e0491026863d5aba27ade19a.md) | 30 | `declaration-track:e0491026863d5aba27ade19a15fdad91fd474819bd273ef57ab13d386894ddb5` |
| 6 | `def` | [tailDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/tailden--966fe1309ea61d38fa73d54a.md) | 31 | `declaration-track:966fe1309ea61d38fa73d54a335bd40a46f79f90718adb81f9d31e5338495053` |
| 7 | `def` | [errorNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/errornum--cb8034f018399f953a56d0a0.md) | 33 | `declaration-track:cb8034f018399f953a56d0a0fc8a8b2c9facef6931066c92ba062ad7fa4d32e6` |
| 8 | `def` | [errorDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/errorden--8b6a94dc4daf874bc779a803.md) | 38 | `declaration-track:8b6a94dc4daf874bc779a80374360ce6e0cd7930500ad5755ba1125eb18fcbac` |
| 9 | `def` | [fullError](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/fullerror--9a00643c7c62ee9a8de0602a.md) | 42 | `declaration-track:9a00643c7c62ee9a8de0602a669ef874c99e620243219916452adced668dddee` |
| 10 | `theorem` | [argDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/argden-pos--f563f12cef4b20f5868ba4ea.md) | 46 | `result-track:f563f12cef4b20f5868ba4ea4d923fb17399071298371ec171b4d36b57c1eb73` |
| 11 | `theorem` | [argument_identity](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/argument-identity--55483274db4ca96d4860bab7.md) | 50 | `result-track:55483274db4ca96d4860bab7bdab1f7df4a3844738c9a75f2f951ed07f6ba05f` |
| 12 | `theorem` | [seedDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/seedden-pos--2f884473c137d042bd86ca32.md) | 61 | `result-track:2f884473c137d042bd86ca32a12528549ad92091aa0a6a3735814008725b8578` |
| 13 | `theorem` | [tailDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/tailden-pos--69431aa0bce0306218e7b6fe.md) | 64 | `result-track:69431aa0bce0306218e7b6fe6a5678b190bf904ddb4cd00f2f070e654e61bd85` |
| 14 | `theorem` | [errorDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/errorden-pos--870c6a26f73bf9c10401be4c.md) | 68 | `result-track:870c6a26f73bf9c10401be4c36173b9792387295c1228804aca9707e8d137fcb` |
| 15 | `theorem` | [polynomial_identity](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/polynomial-identity--0cea27b2ea269d2f6f56fe27.md) | 72 | `result-track:0cea27b2ea269d2f6f56fe279ad51c1141b18e6fd6eefa8dc113d9eebf32d1d7` |
| 16 | `theorem` | [full_error_identity](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/full-error-identity--cf2d9cde96c9bd911fedf40a.md) | 78 | `result-track:cf2d9cde96c9bd911fedf40aebf1106403ebc800b7224a68e0f9ec0a6e51475b` |
| 17 | `theorem` | [fullError_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/fullerror-nonneg--2acfb3b50d087ac60ad67031.md) | 92 | `result-track:2acfb3b50d087ac60ad67031938608a025ac5def32596d808674eb4cfaee2ae6` |
| 18 | `def` | [Windows](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/windows--5c24ed9ceefd36b40aeed630.md) | 98 | `declaration-track:5c24ed9ceefd36b40aeed630f9e8a815387ef500d6333b4d796299b380a535ed` |
| 19 | `theorem` | [seed_valid_of_windows](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/seed-valid-of-windows--717074467d85bc4b0b0777f0.md) | 105 | `result-track:717074467d85bc4b0b0777f0a3873bf6d040fa45ef77197caed425dcc36c2f24` |
| 20 | `theorem` | [original_seed_valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/declarations/original-seed-valid--d4e8c82d7a2019e451ae1c67.md) | 124 | `result-track:d4e8c82d7a2019e451ae1c673628ef58a6199824ee9a63ac32001fa7112012f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
