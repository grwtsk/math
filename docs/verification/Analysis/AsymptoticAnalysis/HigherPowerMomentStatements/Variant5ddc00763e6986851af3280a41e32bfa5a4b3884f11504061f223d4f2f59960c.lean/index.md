# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerMomentStatements.Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c15840acadf484b4d04aa270b2c057305d4920f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c15840acadf484b4d04aa270b2c057305d4920f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/integermoment--0eacc4576a247027d7652e20.md) | 11 | `declaration-track:0eacc4576a247027d7652e2089ec5424eb32823ef2d48ee2ce864330f700f23a` |
| 2 | `def` | [higherMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/highermoment--a4c607a6ca534dfd92d07007.md) | 14 | `declaration-track:a4c607a6ca534dfd92d07007c7001109e60ed8415102287b81b5d8fbe954c0d1` |
| 3 | `def` | [geometricRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/geometricratio--e5c8353f551345b80f1c1d15.md) | 18 | `declaration-track:e5c8353f551345b80f1c1d155c60f46cae7e2429882012730eb5bafaa76b59ea` |
| 4 | `def` | [exponentMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/exponentmoment--361102b5d603816684ef6562.md) | 21 | `declaration-track:361102b5d603816684ef65626fa06af61721fa1443c27cd5bbe5d427ca444925` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/integermoment-nonneg--121d3176d54d8259409dfe5b.md) | 23 | `result-track:121d3176d54d8259409dfe5bab4f5edf84a3785fd63cef28a1e54d6aad176a6e` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/highermoment-nonneg--0a48abe0e152d175bae812fe.md) | 27 | `result-track:0a48abe0e152d175bae812fe9c910940e5da5dd063ca23c2dc72dc17f698bed4` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/geometricratio-pos--ba40e0319b35d2226c8af9aa.md) | 31 | `result-track:ba40e0319b35d2226c8af9aa91be22b70d5fdb1964336c6f6b946a87b2ec59b4` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/geometricratio-lt-one--adf2e07900455f11f085fe7c.md) | 33 | `result-track:adf2e07900455f11f085fe7c3a98900f8e48e9907d0928a55f93f0bae9a21860` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/exponentmoment-nonneg--a97a537b1842668af61385fc.md) | 36 | `result-track:a97a537b1842668af61385fce9ed7187f320c5187eee8ebc56092d2ba8cde229` |
| 10 | `theorem` | [integerMoment_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/integermoment-le--f0a60d1c2208bac064bc61e1.md) | 39 | `result-track:f0a60d1c2208bac064bc61e1af2d61d9280f077a6758bfe408da620eb7dc03ac` |
| 11 | `theorem` | [integerMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/integermoment-summable--8b357407ee52a5748b156716.md) | 58 | `result-track:8b357407ee52a5748b1567164a5bdc71b9bb592a6d8051e4b966e15f011005ab` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/exponentmoment-summable--7103b7fcb51b1df31d6caaac.md) | 62 | `result-track:7103b7fcb51b1df31d6caaacbe3eb5050856a8a8fc30936590c0aa84d93d2572` |
| 13 | `theorem` | [halfPower_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/halfpower-pow--1e89b1c4f32664f1eb3c392b.md) | 75 | `result-track:1e89b1c4f32664f1eb3c392b8f69601f853becdeea2dcbbee05107b9a0189297` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/highermoment-factorization--7421c3464ee629536a906e87.md) | 82 | `result-track:7421c3464ee629536a906e870ed235ef5539d7cd48247b2559bcdd289e6038c6` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/highermoment-le-product--fcb3bcb949be9207b9f52e61.md) | 97 | `result-track:fcb3bcb949be9207b9f52e6143a4985ff9254d092d1fac601ac8a0063ee2c33a` |
| 16 | `theorem` | [higherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/highermoment-summable--e5c7ed7dccbb4464d30818d9.md) | 108 | `result-track:e5c7ed7dccbb4464d30818d98973477668c2cae39c6c669ea0ebf7ee3b6c5578` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/primehighermoment-summable--1e0a6eca135d4a52835e289e.md) | 119 | `result-track:1e0a6eca135d4a52835e289e8bd6235bd42592218d4ea1042bd3fd891006df1f` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/loglocation-sq-ge-one--a88f93282fad30890ebc3e7c.md) | 132 | `result-track:a88f93282fad30890ebc3e7cd8816c67fa5b6d74bbf0a982a7573aa579a4f53e` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/higherweight-le-moment--176a4997273941f71515ba42.md) | 143 | `result-track:176a4997273941f71515ba42ad681d3b6eeb88f0f915ee171e9cf94a308b8e10` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/primehigherweight-summable--74a56de5c8752ddebbcec3e6.md) | 148 | `result-track:74a56de5c8752ddebbcec3e621de602b32d0d0d12819cc244e90e57f3178713a` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--28c76116c0ea6c82ac95626a.md) | 160 | `declaration-track:28c76116c0ea6c82ac95626a220d796071fe91e584eaa50c40c9d293d3f5c691` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--5c2cd30be706a9ab54dd8fb5.md) | 162 | `declaration-track:5c2cd30be706a9ab54dd8fb5a7f94a87998f6a54b8fe6983ba71cef51a5956d2` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--b747ee84478ce1d17a35b885.md) | 164 | `declaration-track:b747ee84478ce1d17a35b88591539a3f67c37f26944ef1632ecc561849ed04f4` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--c94c4283fdda36f97b2b6aec.md) | 166 | `declaration-track:c94c4283fdda36f97b2b6aec25d6dd3862efa20dc1935d8905d1c611e0edbf8b` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--343488ff94fb075d8b716217.md) | 168 | `declaration-track:343488ff94fb075d8b7162174a624fe0bd86d67899c619ea8827dd592be4dc2c` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--132bcd6dc63e483da6f06938.md) | 171 | `declaration-track:132bcd6dc63e483da6f069383f6f33afd6d8d3035956b54d8417fd5532f2f436` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--95f61b3f192340cb7a45a53d.md) | 174 | `declaration-track:95f61b3f192340cb7a45a53dc6dff46327d2d991416b2291826d1e65917f2d7c` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--18cea5aef04b1a32829c83c1.md) | 177 | `declaration-track:18cea5aef04b1a32829c83c1a1a4509f7d2864cbdf92268dcf85536a44dffd6e` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--a8fe59335fc9e00242f9d000.md) | 180 | `declaration-track:a8fe59335fc9e00242f9d000b36322934868a1be007dc12980ca04d5571d9610` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--6e5fb8dc98ea4f1ad4a2f590.md) | 183 | `declaration-track:6e5fb8dc98ea4f1ad4a2f590f0b1708fa3f07003f8a338aa8e3912cc84e7c45f` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--29d63c295c4f3197d7529051.md) | 187 | `declaration-track:29d63c295c4f3197d752905124ac99eb5a9810f9849050d5d0f235930883a77d` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--ca0a48ce2cae63445d5b04aa.md) | 190 | `declaration-track:ca0a48ce2cae63445d5b04aa1d2636bcfc4c0c6a0ae0ee9f74471ee383cdcd80` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--8ae600c8f2402a2e004bf1f8.md) | 193 | `declaration-track:8ae600c8f2402a2e004bf1f844efeeb32d75025ea4b138790760c94626fca787` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--b596ea9ea770388cd794ff11.md) | 198 | `declaration-track:b596ea9ea770388cd794ff1121d223202f40bd11c8a676b8ed40ae1467cd0b5d` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--0ea944b4efc96333765eae9c.md) | 202 | `declaration-track:0ea944b4efc96333765eae9c428e9293f8fcba1e2cb079a4b069fe8712aec11c` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--ac363368abc343a950d62f43.md) | 207 | `declaration-track:ac363368abc343a950d62f43d60c4fc47bcaf31638e835e8d4896c56935b786f` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--ce653c85bc9b7563b3946ff0.md) | 213 | `declaration-track:ce653c85bc9b7563b3946ff0fc895d0cdbeb4ce878d7fe1952e110f1435b7a03` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--f1b22182a024333a2768b522.md) | 217 | `declaration-track:f1b22182a024333a2768b5223f4f6108ec667e51e1255dbb17ab2cd3b07c49d6` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean/declarations/example--4b09c47f1cf5ce0e42b3c31c.md) | 221 | `declaration-track:4b09c47f1cf5ce0e42b3c31c3bc0c6ccf9d0bfef724e45ba5972cb5acd44e7e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
