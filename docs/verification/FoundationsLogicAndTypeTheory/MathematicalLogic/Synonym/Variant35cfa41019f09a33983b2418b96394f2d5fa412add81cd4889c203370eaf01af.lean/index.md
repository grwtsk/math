# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Synonym.Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a976a81731a5ef01eecd372dc2d4e0fb80ac151",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a976a81731a5ef01eecd372dc2d4e0fb80ac151`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/instance--6e243c378ac1afa82aea6723.md) | 46 | `declaration-track:6e243c378ac1afa82aea67230f9b684761537b0ecaf9263d29075f696158c81e` |
| 2 | `def` | [toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual--e6df667b2d60f54d10a962f2.md) | 50 | `declaration-track:e6df667b2d60f54d10a962f286a4cad27c8f4f72537407a6c53db073fab8bd2b` |
| 3 | `def` | [ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/ofdual--4c39847962247a68537e2a9e.md) | 55 | `declaration-track:4c39847962247a68537e2a9e64e6a13ece544cacacb485357f64cefeafb3dbdb` |
| 4 | `theorem` | [toDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-symm-eq--0310562d4c40149dd26dfe60.md) | 60 | `result-track:0310562d4c40149dd26dfe606d538d44f1b4f693d80837c3adb820e4ffb4206c` |
| 5 | `theorem` | [ofDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/ofdual-symm-eq--5d9580951076383db46baa79.md) | 64 | `result-track:5d9580951076383db46baa7912ddada4114dd2100fcde3fb567ab54de17e6a97` |
| 6 | `theorem` | [toDual_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-ofdual--50df43e3e8497a1e9d4f8874.md) | 68 | `result-track:50df43e3e8497a1e9d4f8874eaa4f868ba83263837cc133c7e5292c2032d2f7e` |
| 7 | `theorem` | [ofDual_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/ofdual-todual--b2ce0793fb431ba1b2b39ea5.md) | 73 | `result-track:b2ce0793fb431ba1b2b39ea577d1abfab6dfbfa28932e022acbebf18cc3ab312` |
| 8 | `theorem` | [toDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-inj--d55ed7278070e724453c055d.md) | 79 | `result-track:d55ed7278070e724453c055d48baa5171c3dbe3494911ec32a9cb9c8baa4a732` |
| 9 | `theorem` | [ofDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/ofdual-inj--bceca3516ff00856cfd59729.md) | 85 | `result-track:bceca3516ff00856cfd59729fc94c6ce0fc9a3c6efe21c32d5cc37ba7b8001d2` |
| 10 | `theorem` | [toDual_le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-le-todual--8f43fd5ffc3decd8b18b1ce3.md) | 90 | `result-track:8f43fd5ffc3decd8b18b1ce3562975b24e25a2f4b97fa3ace4200fcfea15094c` |
| 11 | `theorem` | [toDual_lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-lt-todual--9264d3f675ae5d8e7acf8abf.md) | 95 | `result-track:9264d3f675ae5d8e7acf8abf71fbab549fa53d8191055fbe78b8d3822a5c0171` |
| 12 | `theorem` | [ofDual_le_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/ofdual-le-ofdual--64e94a620d9973c8dd34f8ae.md) | 100 | `result-track:64e94a620d9973c8dd34f8ae754cf2bbc74b7c452ac247f8add01a379879a995` |
| 13 | `theorem` | [ofDual_lt_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/ofdual-lt-ofdual--1f3dc5182518ffdcd99848ad.md) | 105 | `result-track:1f3dc5182518ffdcd99848ad55372627f048aaadcbaa8a650f984f2ffb5b1d7d` |
| 14 | `theorem` | [le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/le-todual--d5b7d222bd4de61e420c6d96.md) | 109 | `result-track:d5b7d222bd4de61e420c6d96134575bf9d1963655bfec6a376c60834d3df0992` |
| 15 | `theorem` | [lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/lt-todual--5c943093df69fca548279182.md) | 113 | `result-track:5c943093df69fca5482791827106f0d747caab572fe5974f4c915aed55ee4221` |
| 16 | `theorem` | [toDual_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-le--6dbcaec8637ed058da14df08.md) | 117 | `result-track:6dbcaec8637ed058da14df088f1ae20d8cc4b2f785fa57ca993b3c43498ca95f` |
| 17 | `theorem` | [toDual_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/todual-lt--eae0014342cafbe05407504d.md) | 121 | `result-track:eae0014342cafbe05407504de94203f6ab26a97eb9e656d2c133ef9026af3eac` |
| 18 | `def` | [rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/rec--be0c987c6f24c86975a74a1b.md) | 127 | `declaration-track:be0c987c6f24c86975a74a1b7a272c64c7eff18e578750c627ed096a47a41d48` |
| 19 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/forall--a70ebe994a9b73ae67de144a.md) | 132 | `result-track:a70ebe994a9b73ae67de144a2de20c32294a6f473b568adbb97bda5bb73b376e` |
| 20 | `theorem` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/exists--2bcec14f6b801a31a3340176.md) | 137 | `result-track:2bcec14f6b801a31a334017649ec513da2ef73c706bf7413a76cacc3fe9bc4b9` |
| 21 | `def` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/lex--aa9347f145673527359bc531.md) | 157 | `declaration-track:aa9347f145673527359bc531823b1c719798fb507d0d4fd5c0ff0561d86a50bd` |
| 22 | `def` | [toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/tolex--fd7348269d6078d49fab9588.md) | 163 | `declaration-track:fd7348269d6078d49fab958888e1a1cd1e28939f467a32e5dc520be07a8bc0a4` |
| 23 | `def` | [ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/oflex--affb87a28704547b1ba89ec0.md) | 169 | `declaration-track:affb87a28704547b1ba89ec053daa25a36137293b1b421a00054634acc97b1e5` |
| 24 | `theorem` | [toLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/tolex-symm-eq--c26f7bf322598f414a4d6f45.md) | 174 | `result-track:c26f7bf322598f414a4d6f45b3b6b01de5317c22f68525eb1b82ce3d273ff2f5` |
| 25 | `theorem` | [ofLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/oflex-symm-eq--1b4be36fd88e3c7fd7c80344.md) | 179 | `result-track:1b4be36fd88e3c7fd7c803440eb88ff827b2787c9d954243d3a7ec12866c31ae` |
| 26 | `theorem` | [toLex_ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/tolex-oflex--e0f8c495c8846835d5502925.md) | 184 | `result-track:e0f8c495c8846835d550292549df9d73f24864a564904f5aa2f47bd88b34608c` |
| 27 | `theorem` | [ofLex_toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/oflex-tolex--9e9885695615324570cdf3b9.md) | 189 | `result-track:9e9885695615324570cdf3b907b027d6fad1f88dc330efc89380813b43b2fd60` |
| 28 | `theorem` | [toLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/tolex-inj--ce25c49115ca5ff167cb3354.md) | 195 | `result-track:ce25c49115ca5ff167cb335408bf4841616519dc3473fa6aedb0cf1bf0d620ed` |
| 29 | `theorem` | [ofLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/oflex-inj--2924a09ea2ec4bc11e2fdced.md) | 201 | `result-track:2924a09ea2ec4bc11e2fdced1483a94982c4d38c21973eebf9f94e06d4da0951` |
| 30 | `def` | [Lex.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant35cfa41019f09a33983b2418b96394f2d5fa412add81cd4889c203370eaf01af.lean/declarations/lex-rec--f8faaee9454a5ce009371cd0.md) | 206 | `declaration-track:f8faaee9454a5ce009371cd0f6e1be6fea21ad7ee7eb504fa68db35a120503bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
