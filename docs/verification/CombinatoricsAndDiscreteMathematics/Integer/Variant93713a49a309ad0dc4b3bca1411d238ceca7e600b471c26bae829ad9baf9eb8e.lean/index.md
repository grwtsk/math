# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Integer.Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a2a7775cbc83af40d158c7299809759501b8e25",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a2a7775cbc83af40d158c7299809759501b8e25`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/isinteger--0b687a921ee0ede55ed092af.md) | 49 | `declaration-track:0b687a921ee0ede55ed092af7a484bcc5f70a1c0101fb5790c185a6293f60b63` |
| 2 | `theorem` | [isInteger_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/isinteger-zero--137beb5ed9e00834fa2b40bf.md) | 54 | `result-track:137beb5ed9e00834fa2b40bf646ce367c7314a6d7988c772d1c60becf8459ba3` |
| 3 | `theorem` | [isInteger_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/isinteger-one--8ed22c38e6a5ee8dbf8983b0.md) | 57 | `result-track:8ed22c38e6a5ee8dbf8983b088c6fce0fcbaad438a1017a524f41e0e76e21e81` |
| 4 | `theorem` | [isInteger_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/isinteger-add--657486aba09a064de637c18c.md) | 60 | `result-track:657486aba09a064de637c18c38e2a042b6c852871b193883603cdc19b3fce9e3` |
| 5 | `theorem` | [isInteger_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/isinteger-mul--4ef69511a460f4a74791d563.md) | 63 | `result-track:4ef69511a460f4a74791d563bddb9446d1d99441250f81ad82223137c94e754c` |
| 6 | `theorem` | [isInteger_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/isinteger-smul--8633d0e151e5810817b38985.md) | 66 | `result-track:8633d0e151e5810817b38985a6b01d9d881dbde948c92f100f03b71636ca7fc8` |
| 7 | `theorem` | [exists_integer_multiple'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/exists-integer-multiple--e3201c00ccb92a86a5ded97f.md) | 78 | `result-track:e3201c00ccb92a86a5ded97f3fa298217f2adae567fe96726732f37e999d7802` |
| 8 | `theorem` | [exists_integer_multiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/exists-integer-multiple--06e33595c75c0ef0dc6be164.md) | 86 | `result-track:06e33595c75c0ef0dc6be1646081d97cde06a9b32f3c7e313e9084280c9c3e88` |
| 9 | `theorem` | [exist_integer_multiples](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/exist-integer-multiples--e335409592b58c8044c3078d.md) | 91 | `result-track:e335409592b58c8044c3078d0469341489444a27011c7ce055e307832b6a57bc` |
| 10 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/exist-integer-multiples-of-finite--41ad979564c5c62fda64b2f3.md) | 106 | `result-track:41ad979564c5c62fda64b2f33709a44b321ca48574e0fe8456f63103a1140bea` |
| 11 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/exist-integer-multiples-of-finset--8941605fee21b3e2f32cb479.md) | 113 | `result-track:8941605fee21b3e2f32cb479e07da29375819a7cab9f0b1a8611f3c4f1d1372f` |
| 12 | `def` | [commonDenom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/commondenom--b5932af562580cc60a480603.md) | 118 | `declaration-track:b5932af562580cc60a48060334d5c0718e58d081997fb9b45f055644aeccba8f` |
| 13 | `def` | [integerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/integermultiple--fa1254b5fa76b4f1ea20a20e.md) | 123 | `declaration-track:fa1254b5fa76b4f1ea20a20edf368db474e499905552b44a2aafa141a0e54ad8` |
| 14 | `theorem` | [map_integerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/map-integermultiple--05a02b46954479530eca7ca9.md) | 127 | `result-track:05a02b46954479530eca7ca9d6a86e9255c9b0ed0b5998e87a740154c00cecde` |
| 15 | `def` | [commonDenomOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/commondenomoffinset--e0ecfbdbf86dc25999a90c20.md) | 132 | `declaration-track:e0ecfbdbf86dc25999a90c200fa9091dff266bbd6ce1d2e2fdc9d5e30416b376` |
| 16 | `def` | [finsetIntegerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/finsetintegermultiple--d59febd75c95d137f389b886.md) | 136 | `declaration-track:d59febd75c95d137f389b8862dafd05186dc407f73cf30eb35328006b3b815fb` |
| 17 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant93713a49a309ad0dc4b3bca1411d238ceca7e600b471c26bae829ad9baf9eb8e.lean/declarations/finsetintegermultiple-image--e18e4f5c75cf83027eb3b058.md) | 141 | `result-track:e18e4f5c75cf83027eb3b0585717276205d55ee5b0ca52a79edbd1f690092aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
