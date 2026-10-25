# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Synonym.Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f385fff12056ebddcbb5b7fc0eaf4ce2da6c2e72",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f385fff12056ebddcbb5b7fc0eaf4ce2da6c2e72`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/instance--daba2769d0dd221db82e3355.md) | 52 | `declaration-track:daba2769d0dd221db82e3355fc281affc30282b87b5b5d53ab0a302f5847bc95` |
| 2 | `def` | [toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual--f73625cc0853397685e59664.md) | 56 | `declaration-track:f73625cc0853397685e5966423ec1dfa9fa72220e579b1d94c164e08a8b3e76c` |
| 3 | `def` | [ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/ofdual--1bd5b428b1e29cb707467522.md) | 60 | `declaration-track:1bd5b428b1e29cb707467522114212923facb335920a848f10d82b6e5975af29` |
| 4 | `theorem` | [toDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-symm-eq--7d95464588ba71da8d731842.md) | 64 | `result-track:7d95464588ba71da8d731842ba1980d1155ea528196ec84199940a0047453d87` |
| 5 | `theorem` | [ofDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/ofdual-symm-eq--cb52e7387cdb4a81f7326c4c.md) | 67 | `result-track:cb52e7387cdb4a81f7326c4c9dd15311fd41f13dd0d9bfa6053775584afac52f` |
| 6 | `theorem` | [toDual_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-ofdual--0c918d2f40f438ba3c61e08a.md) | 70 | `result-track:0c918d2f40f438ba3c61e08a5519977be582d41ec4d693bbc850de895eb1e048` |
| 7 | `theorem` | [ofDual_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/ofdual-todual--f29e0fbc9b22c65e01e28ff0.md) | 74 | `result-track:f29e0fbc9b22c65e01e28ff0c6fd1d5f1a4388d5f7c6f2953345c97b7a16d5b5` |
| 8 | `theorem` | [toDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-inj--d014a878ee580573d4b7a45d.md) | 77 | `result-track:d014a878ee580573d4b7a45d33cf6694fd38df1b38bb3df9a7abf17e99372c7c` |
| 9 | `theorem` | [ofDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/ofdual-inj--8f98c5f625dc63eaee232eae.md) | 79 | `result-track:8f98c5f625dc63eaee232eae75111fc2d781404719792e6075bb5cf9fd922cb9` |
| 10 | `theorem` | [toDual_le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-le-todual--f5597e1a80a61e47e82f722f.md) | 82 | `result-track:f5597e1a80a61e47e82f722f29db0373b309dd5ae53ca30eb70c628f5224c7f8` |
| 11 | `theorem` | [toDual_lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-lt-todual--40ee6a03c5679d44e7dd9b0d.md) | 86 | `result-track:40ee6a03c5679d44e7dd9b0da32322dcd1de89ea0af97588b857f6a144cc2ee3` |
| 12 | `theorem` | [ofDual_le_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/ofdual-le-ofdual--aad08a3d0147fd17104d6889.md) | 90 | `result-track:aad08a3d0147fd17104d68896de471de5fb035d17434003bf8c84e58c2e3f543` |
| 13 | `theorem` | [ofDual_lt_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/ofdual-lt-ofdual--ca6f382802f23e34b4146efe.md) | 94 | `result-track:ca6f382802f23e34b4146efe41cb47286187e5fdbeccd74110442a572fab90bd` |
| 14 | `theorem` | [le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/le-todual--4304998cb02f49239d6cdb00.md) | 97 | `result-track:4304998cb02f49239d6cdb003b7b2f430e4e822eb35c3fe03c6f73f9a2ec62d5` |
| 15 | `theorem` | [lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/lt-todual--1ab0c2d8fc5258b88057ccbf.md) | 100 | `result-track:1ab0c2d8fc5258b88057ccbf68f560203d77637266af30b6798eaec2089f12bd` |
| 16 | `theorem` | [toDual_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-le--c2f81b684cb05e82da0c72c8.md) | 103 | `result-track:c2f81b684cb05e82da0c72c88c66c66909d040d554b60f4726ccee99a9fb9598` |
| 17 | `theorem` | [toDual_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/todual-lt--79922f1fbfc413ec2e4db7b8.md) | 106 | `result-track:79922f1fbfc413ec2e4db7b8b3dd9c41be775a34a86de5c8ce9e291902b7b4a1` |
| 18 | `def` | [rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/rec--72228a6a13c09d14b2f0ffaa.md) | 111 | `declaration-track:72228a6a13c09d14b2f0ffaa54766edaa9f0ceda07ed6d58329e086c29374659` |
| 19 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/forall--5de0b16d05147b0faad71e99.md) | 115 | `result-track:5de0b16d05147b0faad71e99712db05c6a3d58dbddf8f96ba5ad272de760bcbe` |
| 20 | `theorem` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/exists--3c7b2d81270c2bc8504b613c.md) | 119 | `result-track:3c7b2d81270c2bc8504b613c8290a2b56f27f64fde2f795db1026675fc6670b4` |
| 21 | `def` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/lex--b666238edcc803aaf7bb51a7.md) | 136 | `declaration-track:b666238edcc803aaf7bb51a7aac656d75b6f3be62f34866574a063d53c1dfa64` |
| 22 | `def` | [toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/tolex--a4ab4376968f52c12d4330ca.md) | 141 | `declaration-track:a4ab4376968f52c12d4330ca928910e9accfc8cbb97cb56108029377e31ca776` |
| 23 | `def` | [ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/oflex--75de71a1ce9dc9f9c3fd9c7b.md) | 146 | `declaration-track:75de71a1ce9dc9f9c3fd9c7b4390e6dcf61a6c28ca998f9d5c94b18d7ae35f2d` |
| 24 | `theorem` | [toLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/tolex-symm-eq--0cd7aeb1444b1491abd2bcbb.md) | 150 | `result-track:0cd7aeb1444b1491abd2bcbb54ffd3fbcbe64d210e82159c813c5d264fa9d109` |
| 25 | `theorem` | [ofLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/oflex-symm-eq--f32dc1d4c913e565e4c780f9.md) | 154 | `result-track:f32dc1d4c913e565e4c780f94fcc4db4c1835564f32970dbf722e0e34dc5f335` |
| 26 | `theorem` | [toLex_ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/tolex-oflex--8c9de1876ebab9e1a4cefbb2.md) | 158 | `result-track:8c9de1876ebab9e1a4cefbb2dec7a77d2704804722fa563c883fc971e265b887` |
| 27 | `theorem` | [ofLex_toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/oflex-tolex--cc0c5ff52524ebf23ab0c9f2.md) | 162 | `result-track:cc0c5ff52524ebf23ab0c9f2fd370c2305babcaa5dfeab4eefafb0520ad8459e` |
| 28 | `theorem` | [toLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/tolex-inj--49f80650bb9b884bd3dc3252.md) | 165 | `result-track:49f80650bb9b884bd3dc3252fd9d9068aeb2377e4b30e672b0cb009a8a7324d5` |
| 29 | `theorem` | [ofLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/oflex-inj--d6ead09d29cafc4a36cfcbf0.md) | 167 | `result-track:d6ead09d29cafc4a36cfcbf0260b991384b7cd113c54018d0f809c1cd05fdbdf` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/instance--1f27a2b253ba7a8d5a816afe.md) | 169 | `declaration-track:1f27a2b253ba7a8d5a816afe5b832920c721ab003190f97daaa538c721e33e59` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/instance--e7fbca96e577d68ad7027ea6.md) | 172 | `declaration-track:e7fbca96e577d68ad7027ea60eb96bf8096790909a089bf5f6bde6ba039581a7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/instance--c9e68bc06f4dc68bdc84c722.md) | 175 | `declaration-track:c9e68bc06f4dc68bdc84c7221c6ad58c13418398f33e2e4b5ac8350d73fd6849` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/instance--d305e65b353bdfe2fe1a5488.md) | 178 | `declaration-track:d305e65b353bdfe2fe1a548878653461fce9585003e51bd9fe8d90837055f910` |
| 34 | `def` | [Lex.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/lex-rec--fbdcfcf776a356a9f25b01da.md) | 183 | `declaration-track:fbdcfcf776a356a9f25b01da17699a3ceb21a47cc797c7f3ba192ce67734adfb` |
| 35 | `lemma` | [Lex.forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/lex-forall--e431e9319a161260aa93c7b9.md) | 185 | `result-track:e431e9319a161260aa93c7b9ec575a44fed893171301b603b8fa6a2dbfbab7dd` |
| 36 | `lemma` | [Lex.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant8c8cbb9367be159f411ef8dfd9881d6fd086357de76811a2665ab4f50757ea9d.lean/declarations/lex-exists--98396eedeef6f14b52de8fae.md) | 186 | `result-track:98396eedeef6f14b52de8fae051b73d17a501014a2329559ea6a4a308082c821` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
