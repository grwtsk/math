# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Examples.Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d2013317ce2251b6279d29fdf574de188279169",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d2013317ce2251b6279d29fdf574de188279169`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NumberBridge` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Bridge.Number` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exampleHalfPlane](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplehalfplane--e72e6e39b48b3cfa3b808d8c.md) | 28 | `declaration-track:e72e6e39b48b3cfa3b808d8c42d8eecaa19f8fcda6812a19d32f165ac2b30aaf` |
| 2 | `def` | [exampleZeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplezeta--2240da812a956b4fffc2626e.md) | 32 | `declaration-track:2240da812a956b4fffc2626e238603a764978fba91427c62e170878bfea3e69c` |
| 3 | `def` | [exampleArithmeticFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplearithmeticfunction--047d0c7a3ec06530011364b0.md) | 35 | `declaration-track:047d0c7a3ec06530011364b0dfe8a14086426805db6028b5b58de52f55494c60` |
| 4 | `def` | [exampleMobiusSeries](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplemobiusseries--06b693e7a23cdc9f1945994f.md) | 39 | `declaration-track:06b693e7a23cdc9f1945994fffe05130349b3f5287f5a7ce30c74e9666e7fd54` |
| 5 | `def` | [examplePrimeWindow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/exampleprimewindow--42a8c413a5e0d75853d050b0.md) | 43 | `declaration-track:42a8c413a5e0d75853d050b09565c931b6b6f3186c5a6ee73bc1e8097bd73b0f` |
| 6 | `def` | [exampleFiniteMobiusWindow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplefinitemobiuswindow--034b3a17ba93adcb36468c1e.md) | 48 | `declaration-track:034b3a17ba93adcb36468c1eca0d4cb28aae569f75769055e68796410ca29a88` |
| 7 | `def` | [exampleAbsoluteConvergence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/exampleabsoluteconvergence--d098fe57613bde1a23ca2334.md) | 56 | `declaration-track:d098fe57613bde1a23ca23342d1d7140f6812d1fb647f879a67d2ede4d246fdb` |
| 8 | `def` | [exampleZetaMobiusAuthority](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplezetamobiusauthority--48da1686656f4cc7dc175dbe.md) | 63 | `declaration-track:48da1686656f4cc7dc175dbe1b55c55962d32c3610ee0ae24dcd693bc267f2ab` |
| 9 | `def` | [exampleBooleanShadow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplebooleanshadow--fd5b9e67b5a94de2f77b272e.md) | 76 | `declaration-track:fd5b9e67b5a94de2f77b272e80b85b7fada0930749cb0be790e1bd34bc123d00` |
| 10 | `def` | [exampleBooleanToNumber](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplebooleantonumber--91c128f28548cb6f8a55f193.md) | 86 | `declaration-track:91c128f28548cb6f8a55f19347bf636c7630d4b78bacd57d047554826b6d1642` |
| 11 | `def` | [exampleArithmeticPayload](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplearithmeticpayload--6aaa5d9d1ccc27894efd5428.md) | 91 | `declaration-track:6aaa5d9d1ccc27894efd54287aeaf6542439e66175975b21bf797816e6113444` |
| 12 | `def` | [exampleAnalyticCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/exampleanalyticcertificate--0a07cb2ee74b5270b4dc076f.md) | 94 | `declaration-track:0a07cb2ee74b5270b4dc076f05303f42b363024be11f7a4d1a17db5e12cac9b9` |
| 13 | `def` | [examplePrecision](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/exampleprecision--37ada9fb34a705a03c41956e.md) | 101 | `declaration-track:37ada9fb34a705a03c41956efec78b1436421264f9d01ec1e1393376c3df37fc` |
| 14 | `def` | [exampleNumberToAnalyticError](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplenumbertoanalyticerror--1d22620561391ff832adde75.md) | 107 | `declaration-track:1d22620561391ff832adde75cd25a774757c98c4e743cf2524f6ac94fdb7f8ec` |
| 15 | `def` | [exampleAnalyticToNumberError](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/exampleanalytictonumbererror--0de76bfbb3b4ecbf9644f3d8.md) | 113 | `declaration-track:0de76bfbb3b4ecbf9644f3d82d307b496410c108a2f8bafd942bcbe53f0f3ad5` |
| 16 | `def` | [exampleAnalyticShadow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/exampleanalyticshadow--f3d6ad07d4fde811c4ad7f2a.md) | 119 | `declaration-track:f3d6ad07d4fde811c4ad7f2aa069c03a52384fb9e536ad71b10d16905e3c310a` |
| 17 | `def` | [exampleNumberToAnalyticBridge](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/examplenumbertoanalyticbridge--2b7b38b04d86c50b3b1dcdef.md) | 127 | `declaration-track:2b7b38b04d86c50b3b1dcdeff4567fb9913931e2eb74d43db00a047ace06d1e7` |
| 18 | `theorem` | [example_boolean_to_number_boundary](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/example-boolean-to-number-boundary--c194fbab9e0a89017d00c063.md) | 145 | `result-track:c194fbab9e0a89017d00c0631a5d2a55e6248b786b98e902978e077f24d3e1b6` |
| 19 | `theorem` | [example_number_to_analytic_boundary](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/example-number-to-analytic-boundary--006a9521c7a971adcba69736.md) | 156 | `result-track:006a9521c7a971adcba69736aa2a34b24832bd4a6d62ae8a10fb94d5333cdb0a` |
| 20 | `theorem` | [example_zeta_mobius_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/example-zeta-mobius-identity--9fd4a98371b246cb937931e9.md) | 170 | `result-track:9fd4a98371b246cb937931e9fe1f229595e999eef88268cca9e2a0a630f3c987` |
| 21 | `theorem` | [example_finite_mobius_not_analytic_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/example-finite-mobius-not-analytic-identity--49bcfb296e7685a611884dd2.md) | 174 | `result-track:49bcfb296e7685a611884dd223868a92dd67c3c8367a9fd8c7d2576b527fdd14` |
| 22 | `theorem` | [example_arithmetic_payload_not_infinite_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/declarations/example-arithmetic-payload-not-infinite-product--cd2bd4032a9016168d79327f.md) | 180 | `result-track:cd2bd4032a9016168d79327fe54621c96226ef4499bcf14e62210e018912daa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
