# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBoundStatements.Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10731cfece213c0d8cb948acc1ac690c7f23adbe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logsquarequadrature--c1f02c650e40c51a458de798.md) | 19 | `declaration-track:c1f02c650e40c51a458de7987ca7f8a67d2f30386a7c44d043beb185f10e0322` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logsquare-monotoneon--9daf23273608b73495bfe575.md) | 23 | `result-track:9daf23273608b73495bfe575f1895dd2793f3b214089ffc98f2b856c0af507bb` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logsquare-intervalintegrable--6825182b29a567033df53a3f.md) | 28 | `result-track:6825182b29a567033df53a3f573963d6a514191db29d7dc45613fe5ff613af5b` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logsquare-integer-bounds--582399c6bb9aa6eece2cdbe8.md) | 35 | `result-track:582399c6bb9aa6eece2cdbe8e8282710a5e6e75e456c621b15472adf173e74f8` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logsquarequadrature-abs-le--1402cf84f4e7d72623dbd8d0.md) | 68 | `result-track:1402cf84f4e7d72623dbd8d0a35562e4f44f949dcc52fc203525383ff10e77c6` |
| 6 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratiosquare--ea4a83ed7c87066d9f2207cc.md) | 107 | `declaration-track:ea4a83ed7c87066d9f2207ccc460e7d220bfbb99422eef7637de7acee67c2dc2` |
| 7 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratioprimitive--a2e4da18a9a8476872c2cb90.md) | 110 | `declaration-track:a2e4da18a9a8476872c2cb90a3913372cb279c220c5a846c0f53cafa300a8c09` |
| 8 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratiosquare-nonneg--c5d80304fb09ecc3bdbd9d60.md) | 113 | `result-track:c5d80304fb09ecc3bdbd9d6040f7c3363545aa09a21c3cfd9516070f343e6de2` |
| 9 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratiosquare-le-rpow--f8867c429087326ab0981dc8.md) | 116 | `result-track:f8867c429087326ab0981dc885a060589c4b39df84e902efa0892ba4c8e85a57` |
| 10 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratiosquare-integrableon--26a23c86b9aad89b4ac83b8f.md) | 134 | `result-track:26a23c86b9aad89b4ac83b8f030e3b43caf9a11a3b3801b81e2c6eca90900bed` |
| 11 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratiosquare-intervalintegrable--ddcd9a74fd8c88892667a852.md) | 147 | `result-track:ddcd9a74fd8c88892667a85238cca7be352b2d7cc931921bd3c6de69284537cc` |
| 12 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratioprimitive-hasderivat--2d730d8db38a6e4d84bbaf76.md) | 151 | `result-track:2d730d8db38a6e4d84bbaf760e0bc9aca92879bc9e470ff0a473060b88932785` |
| 13 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/tendsto-self-log-square--3b7e05e11bb2bba1902275b6.md) | 160 | `result-track:3b7e05e11bb2bba1902275b6a3a8ab43dacb6be332eda6c1722351ed89669634` |
| 14 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratioprimitive-tendsto-zero--d840ab55b3ae68d7a561f5d1.md) | 175 | `result-track:d840ab55b3ae68d7a561f5d19092c399b3467a7b383d1196f3e354f816a61e1f` |
| 15 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/integral-logratiosquare--9e281974515fbceaba819ecc.md) | 191 | `result-track:9e281974515fbceaba819ecce9098cb760270e057e9e6057567939f20f6c08df` |
| 16 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/logratiosquare-antitone--5f669a8334276aa79bfae51c.md) | 207 | `result-track:5f669a8334276aa79bfae51c4ec91b0201fb817822cdb4b6eb41a39f56ff9e5d` |
| 17 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/sum-logratiosquare-le-integral--bc0945875cf1d70d71168ac5.md) | 216 | `result-track:bc0945875cf1d70d71168ac5b8456871a74b22e2b0260cd2437d9a696f7b3296` |
| 18 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/sum-logratiosquare-le--cfc4053de59e2ea6580e827f.md) | 254 | `result-track:cfc4053de59e2ea6580e827f574dd0a0db329cbf51fa23674cd102c0ba4b52f1` |
| 19 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/mobiusquadratureerror--e939039f1456b9bba18376ba.md) | 261 | `declaration-track:e939039f1456b9bba18376bab41a27945fa30a8d443842c08d11a1a64e2a5253` |
| 20 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/quotient-ge-one--2bf1d41b39d203469dac763e.md) | 266 | `result-track:2bf1d41b39d203469dac763e8495f2acecfa66a08050befefd699241096ff584` |
| 21 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/mobiusquadratureerror-abs-le--008ddf3df5ddb2b821b2cd11.md) | 275 | `result-track:008ddf3df5ddb2b821b2cd11de1eaf99c53de2cc9b91a17e8967ace547be09ad` |
| 22 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/mobius-prefix-eq-integral-add-error--5bc03c12e9776036bee5ce2e.md) | 295 | `result-track:5bc03c12e9776036bee5ce2e6b368bbfa00c2e918d24612693ce5a5c8af104b3` |
| 23 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/mobius-prefix-integral-abs-le--db6c10ba339dbd066a235e71.md) | 307 | `result-track:db6c10ba339dbd066a235e71001c65de4216e825d6b32b6aa2569251d95e0746` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--3bc4e0274f4528e07c55fc74.md) | 323 | `declaration-track:3bc4e0274f4528e07c55fc7425ce0a26fb5854dbade9c3b0704852e75dfa2c1f` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--0b8c05d97363334af6f36de4.md) | 325 | `declaration-track:0b8c05d97363334af6f36de4b6a5b95b030ab4442b7226f19aee488d695e0a4a` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--f504d531c08542d5e7c76c78.md) | 327 | `declaration-track:f504d531c08542d5e7c76c78fdefdeecb5b28ad3a35a3e5205b26899441c9bbf` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--6c5f9537be2f76121736a060.md) | 330 | `declaration-track:6c5f9537be2f76121736a060a006cca770d8a9ed98aa61a0c516a13a0a31a030` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--f938e2605de98658051f6da3.md) | 334 | `declaration-track:f938e2605de98658051f6da330e41cfdc5d5d463386396eca55b89f7bef73fa8` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--efdbed106346401b38b59b15.md) | 338 | `declaration-track:efdbed106346401b38b59b15f8de27fa9f615454c6f5d4ecc52f396c61637c08` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--b2e7b1aa6c6814ae40adf07f.md) | 342 | `declaration-track:b2e7b1aa6c6814ae40adf07f077ce4a86ab8a78e369abf70ed7974f423f00b79` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--a6e8c9a151da49a9dbf5aea0.md) | 346 | `declaration-track:a6e8c9a151da49a9dbf5aea02bedcf46cf161108ed7957479c3738c8755ecc2a` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--96848a610689543d6b719090.md) | 350 | `declaration-track:96848a610689543d6b719090e1b7ab0a6ff02d803a32570e3397ed2560bea2df` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--39d38d9f10bc30cf818e8ea7.md) | 354 | `declaration-track:39d38d9f10bc30cf818e8ea76b98ee430cf536f7943d12a250b092663c5eb974` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--a0851a4c9b32700ff5a45940.md) | 358 | `declaration-track:a0851a4c9b32700ff5a45940e9884b0cae2b0cad7e5778d0069a27044313a423` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--c2e8eae24cdc09af5ede7d33.md) | 363 | `declaration-track:c2e8eae24cdc09af5ede7d334047d14ec864725464f047237d2835e1f31aa66b` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--2a2854444d168f7cb6a4ac46.md) | 367 | `declaration-track:2a2854444d168f7cb6a4ac46cef263b3b0f27f04be5fa8084d0cd0363645a01d` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--228b803b69299ddb342ab6e7.md) | 369 | `declaration-track:228b803b69299ddb342ab6e73d1cc559bf96b9f55683435e316add8ae88fa563` |
| 38 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--44685ea2428aa5908ac68d7f.md) | 373 | `declaration-track:44685ea2428aa5908ac68d7f3fb1984a7c9373de2f1ee65cf2cc4832e340f501` |
| 39 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--487708fc8f3fc8ec074df08d.md) | 377 | `declaration-track:487708fc8f3fc8ec074df08d5bba996e75619b5f8d0595b4fe8cf39c9992e172` |
| 40 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/declarations/example--535717b0e3c93dabfe6a8233.md) | 384 | `declaration-track:535717b0e3c93dabfe6a8233bbff552f4fb2aaf896823ae32f26be71ba85b239` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
