# Verification target: GRWTSK.NumberTheory.LegendreSymbol.Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "248764e2acf0de3abc425da088cd215bd1d8263c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `248764e2acf0de3abc425da088cd215bd1d8263c`.

Source path: `GRWTSK/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat--8ec4046d882e5a31d3fc8a26.md) | 53 | `declaration-track:8ec4046d882e5a31d3fc8a26c7bce46eecd9483c2353a26d054c4a1dcfcc2dc1` |
| 2 | `theorem` | [jacobiSymNat.zero_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-zero-right--19c9d299bf5d923417ca5098.md) | 65 | `result-track:19c9d299bf5d923417ca50988a5c31e4d2663676cbcef1512c31dd9b0cb3c558` |
| 3 | `theorem` | [jacobiSymNat.one_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-one-right--d917b417b9c538b5f71979e7.md) | 68 | `result-track:d917b417b9c538b5f71979e7524a2675e5ce6db3bf84219d0aabb9c361e1d5a4` |
| 4 | `theorem` | [jacobiSymNat.zero_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-zero-left--38e5f13f248354b9e1005383.md) | 71 | `result-track:38e5f13f248354b9e1005383d4ac7acb891b67f1a4e6e2e2ffa2ae18e159956c` |
| 5 | `theorem` | [jacobiSymNat.one_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-one-left--426c9a8051ddb874309d21fc.md) | 79 | `result-track:426c9a8051ddb874309d21fc3e1b111b9578dc5c9f14116afd6dc272e64abbf2` |
| 6 | `theorem` | [LegendreSym.to_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/legendresym-to-jacobisym--8a51aad4b8aa284283a51426.md) | 83 | `result-track:8a51aad4b8aa284283a51426fc3ffdc5a92c7a7841d64d52ec18cf88f39c5027` |
| 7 | `theorem` | [JacobiSym.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisym-mod-left--a7e5e35f18ce88c1c76de54f.md) | 88 | `result-track:a7e5e35f18ce88c1c76de54f26999d24dbc024d4fa223c9d5feced09603e04ae` |
| 8 | `theorem` | [jacobiSymNat.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-mod-left--cd07d23f6fad3cfa68a07764.md) | 92 | `result-track:cd07d23f6fad3cfa68a077642e1b519ffa762149e59081519fe4fb858d32d4e4` |
| 9 | `theorem` | [jacobiSymNat.even_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-even-even--385314c13b2a089707a7f399.md) | 97 | `result-track:385314c13b2a089707a7f39928108bbd6a2881dfbf76d3577ef5b2713e938648` |
| 10 | `theorem` | [jacobiSymNat.odd_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-odd-even--93a2db56b6edf3901587b5d1.md) | 108 | `result-track:93a2db56b6edf3901587b5d10a637f88efe59358a3ea6c63c2512c76f766b037` |
| 11 | `theorem` | [jacobiSymNat.double_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-double-even--848278ed6502b72ef3d93832.md) | 121 | `result-track:848278ed6502b72ef3d93832f04fc12f1ae69bb5da9779930570c9090632801a` |
| 12 | `theorem` | [jacobiSymNat.even_odd₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-even-odd--793e52b19d35f33a2ff4aeb8.md) | 129 | `result-track:793e52b19d35f33a2ff4aeb8ca4ce624a6b19c383f02adcfe99b87fd8b3ae812` |
| 13 | `theorem` | [jacobiSymNat.even_odd₇](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-even-odd--315d548234e626413545a662.md) | 135 | `result-track:315d548234e626413545a662a63b15eeaa29746ae854079942336d60a53542af` |
| 14 | `theorem` | [jacobiSymNat.even_odd₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-even-odd--5ece5d8097e5fa352ee1f76e.md) | 141 | `result-track:5ece5d8097e5fa352ee1f76eefe6902a5200c804f2fa6864496642d63cbd0729` |
| 15 | `theorem` | [jacobiSymNat.even_odd₅](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-even-odd--6a2dc57610c89762b2ca24b6.md) | 147 | `result-track:6a2dc57610c89762b2ca24b642756f434bb3cfe1c77967ad8a4ff2484b9752a0` |
| 16 | `theorem` | [jacobiSymNat.qr₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-qr--aa26ec42c7c7bbec4a82533d.md) | 154 | `result-track:aa26ec42c7c7bbec4a82533dc2ff484eba2b4a1a300d00ac4aeddc67c6f85afb` |
| 17 | `theorem` | [jacobiSymNat.qr₁_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-qr-mod--5c4f3a9064fd5de72f74b8f3.md) | 158 | `result-track:5c4f3a9064fd5de72f74b8f3daee19f2ade2c99436c400b06e9fec8ebfc01798` |
| 18 | `theorem` | [jacobiSymNat.qr₁'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-qr--d8557aee2095961ffa17d9a5.md) | 162 | `result-track:d8557aee2095961ffa17d9a565eb3c16fa63d43d64c4ebf355e8162264a14d97` |
| 19 | `theorem` | [jacobiSymNat.qr₁'_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-qr-mod--d7643bafdafa5f5afc5eddd6.md) | 166 | `result-track:d7643bafdafa5f5afc5eddd6ea22d7187f1c635ee3673fffee9060b4d1edbb10` |
| 20 | `theorem` | [jacobiSymNat.qr₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-qr--4d7dbe2fc2097aed481d0ed6.md) | 170 | `result-track:4d7dbe2fc2097aed481d0ed6b66f8248bc7b4b02b5ba8fe6452df1ca31cb9dfa` |
| 21 | `theorem` | [jacobiSymNat.qr₃_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/jacobisymnat-qr-mod--5ee810e0a139dde02499cca2.md) | 174 | `result-track:5ee810e0a139dde02499cca2244b6197557b2d2801f34bba8164064ea285c015` |
| 22 | `theorem` | [isInt_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/isint-jacobisym--99ec6d04b55101f8e2dfe6b0.md) | 178 | `result-track:99ec6d04b55101f8e2dfe6b03580263f4a4422de965c866760a72b1c456c6dac` |
| 23 | `theorem` | [isInt_jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/isint-jacobisymnat--845e1e4f4e28ebd6b9711b9d.md) | 182 | `result-track:845e1e4f4e28ebd6b9711b9d8b8753f5658eaf3078e41d2aedb473354baf6d60` |
| 24 | `def` | [proveJacobiSymOdd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/provejacobisymodd--e92e828bb10808eb0016b236.md) | 207 | `declaration-track:e92e828bb10808eb0016b236243fb3486285fbc8f2d92f3f006b5dacc5a006e0` |
| 25 | `def` | [proveJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/provejacobisymnat--495e7eb99d1aada70332f273.md) | 278 | `declaration-track:495e7eb99d1aada70332f273fd3266c85a98792799da25af249bd0d343b68547` |
| 26 | `def` | [proveJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/provejacobisym--38c012939bc916fa29c31ffc.md) | 323 | `declaration-track:38c012939bc916fa29c31ffc83b66dedadb72c2d54d00a5d877685c58bfdf422` |
| 27 | `def` | [evalJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/evaljacobisym--afb08121ba4488f8f362509d.md) | 361 | `declaration-track:afb08121ba4488f8f362509db6a1cef4b30836c82d3ca40c04bc906b48e64eea` |
| 28 | `def` | [evalJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/evaljacobisymnat--4d080b5a541459afa4fdff26.md) | 372 | `declaration-track:4d080b5a541459afa4fdff26e8aed3ae294691f80a7bc5d8736bc69a377ce490` |
| 29 | `def` | [evalLegendreSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/declarations/evallegendresym--6487a535753b890fe7652efd.md) | 383 | `declaration-track:6487a535753b890fe7652efdeeffbbc7f6f4ef69c683ab2ad5a5930dc2afa186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
