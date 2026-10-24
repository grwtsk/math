# Verification target: GRWTSK.Algebra.Int.Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517457618d612ee5f1f955d197778b4732547aa5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/index.md) · [Full source](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517457618d612ee5f1f955d197778b4732547aa5`.

Source path: `GRWTSK/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteger](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/isinteger--dc72b03c9c17112cc5aaf9ff.md) | 45 | `declaration-track:dc72b03c9c17112cc5aaf9ffe5c105c57c87111da7b18ba380b74e15aa0a445d` |
| 2 | `lemma` | [isInteger_zero](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/isinteger-zero--973f88bc3f1816ba85eec54f.md) | 48 | `result-track:973f88bc3f1816ba85eec54f8bc5f0fdfde4dec5d3ee400a7b66381f234fd47b` |
| 3 | `theorem` | [isInteger_add](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/isinteger-add--8a8d8ab3b8a058aedd3dca8d.md) | 51 | `result-track:8a8d8ab3b8a058aedd3dca8da8581da943e3831fa6806117b1c7dae37ee42736` |
| 4 | `theorem` | [isInteger_smul](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/isinteger-smul--297f99f0882e68273f2616bd.md) | 54 | `result-track:297f99f0882e68273f2616bd6878e79b18605e7507fb95cc4d1fb656af386466` |
| 5 | `theorem` | [exists_integer_multiple](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/exists-integer-multiple--d9d0bf0d2ba624aabb2fa401.md) | 63 | `result-track:d9d0bf0d2ba624aabb2fa401c6e6ffab8b461800a8be50ff6f6c926597bb7cb4` |
| 6 | `theorem` | [exist_integer_multiples](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/exist-integer-multiples--b71ace231486dc008c255bdd.md) | 68 | `result-track:b71ace231486dc008c255bddf977fd9c2d549621161ec95f2c68dc33fefac3a1` |
| 7 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/exist-integer-multiples-of-finite--b85d344394870c6258e2874c.md) | 82 | `result-track:b85d344394870c6258e2874c3998dacfd7da25e6d03519fa60021e24ca50296d` |
| 8 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/exist-integer-multiples-of-finset--6d9253edca28f9ff051a99cc.md) | 89 | `result-track:6d9253edca28f9ff051a99ccb5162d1c4e61fe22b4008f956f03384622cc3ccc` |
| 9 | `def` | [commonDenom](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/commondenom--5ea9b67f0ee3d8072aba590c.md) | 94 | `declaration-track:5ea9b67f0ee3d8072aba590cefbc2350f7a2d80eae9a9839b44325d2e9c95918` |
| 10 | `def` | [integerMultiple](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/integermultiple--c3a6b72874f6bc1f92f2acc5.md) | 99 | `declaration-track:c3a6b72874f6bc1f92f2acc51132d807f7da0827a66b52c66c4c9177efb57553` |
| 11 | `theorem` | [map_integerMultiple](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/map-integermultiple--560b023503146ffa097ff721.md) | 103 | `result-track:560b023503146ffa097ff721c3cf3ea0c45d75d1c874da9d45087a7d342db741` |
| 12 | `def` | [commonDenomOfFinset](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/commondenomoffinset--342ad23ba43e197f05bfeed8.md) | 108 | `declaration-track:342ad23ba43e197f05bfeed8b459e5fefa20bd88e073fa98ffaee4c56fd557c0` |
| 13 | `def` | [finsetIntegerMultiple](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/finsetintegermultiple--d8e34e47a054e16fb325ed5b.md) | 112 | `declaration-track:d8e34e47a054e16fb325ed5b81a4fb4be73f4a74906dab79e4bea63d30bbe7d4` |
| 14 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/finsetintegermultiple-image--a559b53a7eec896996311fbc.md) | 117 | `result-track:a559b53a7eec896996311fbcf1721f40b00a36e840666238c8b38823ec7b6916` |
| 15 | `theorem` | [smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/Int/Variant16409b0d16f0f8c183fccf0f4c282839c9f82be846e06ed71baec7abe105fd59.lean/declarations/smul-mem-finsetintegermultiple-span--455eadfda7c51ed9e3778990.md) | 130 | `result-track:455eadfda7c51ed9e37789909e1b0c18feaeb3804015eaf2719b76cabb5947f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
