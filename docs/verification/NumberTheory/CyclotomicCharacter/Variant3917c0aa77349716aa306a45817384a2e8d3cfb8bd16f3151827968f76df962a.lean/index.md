# Verification target: GRWTSK.NumberTheory.CyclotomicCharacter.Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54ea476741d5a3beee9d20d12c30433e4ebc3040`.

Source path: `GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Aut` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.RingHoms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.KrullTopology` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rootsOfUnity.integer_power_of_ringEquiv](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/rootsofunity-integer-power-of-ringequiv--88b3ae00019546b064f00f2f.md) | 77 | `result-track:88b3ae00019546b064f00f2f01b3c7217aaad0d8ebf937182909bfc7b35bd596` |
| 2 | `theorem` | [rootsOfUnity.integer_power_of_ringEquiv'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/rootsofunity-integer-power-of-ringequiv--57ac59ba98da50db54cf0d11.md) | 82 | `result-track:57ac59ba98da50db54cf0d11825e43db66010c8a99d952a52923a7c0bfe2154d` |
| 3 | `def` | [modularCyclotomicCharacter.aux](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter-aux--eaf695729619af2e9018f5a0.md) | 89 | `declaration-track:eaf695729619af2e9018f5a059fd974df73c814dcb5a4093fe3eb76ff0ce7b97` |
| 4 | `theorem` | [modularCyclotomicCharacter.aux_spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter-aux-spec--093856bbc03f601dd6e3007a.md) | 93 | `result-track:093856bbc03f601dd6e3007ad2e7180e4c93dd7455b2a95b3feb2792d76244ad` |
| 5 | `theorem` | [modularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter-pow-dvd-aux-pow-sub-aux-pow--379a5c24e849dc18ffd83268.md) | 97 | `result-track:379a5c24e849dc18ffd832689816eb9060be0df273a448fec2d022bc3ad5b7da` |
| 6 | `def` | [modularCyclotomicCharacter.toFun](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter-tofun--68ef86fcb637e344c7104ebf.md) | 119 | `declaration-track:68ef86fcb637e344c7104ebf139eb00d0e07a2fd90b818e6f81490adce38c6b1` |
| 7 | `theorem` | [toFun_spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-spec--c586ccfbdda5910fdabbd0c8.md) | 128 | `result-track:c586ccfbdda5910fdabbd0c8794be3934d9534641e133c19c19a274ef689c018` |
| 8 | `theorem` | [toFun_spec'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-spec--c2c379f875eda0ff8fe3f1f1.md) | 135 | `result-track:c2c379f875eda0ff8fe3f1f172721c9ceec677e995db841351e00d48be47c220` |
| 9 | `theorem` | [toFun_spec''](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-spec--493ee8a6f8e9619edfc4ca00.md) | 139 | `result-track:493ee8a6f8e9619edfc4ca0060eb1adbcf2d20d223b1a531f77d25c3a569feee` |
| 10 | `theorem` | [toFun_unique](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-unique--4b831f5b4f287ff03fe5e136.md) | 144 | `result-track:4b831f5b4f287ff03fe5e1366426b57af7d1f9ee73e3a9bf0b5be5a7cf902138` |
| 11 | `theorem` | [toFun_unique'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-unique--172de9a61462ebdd12e0a45e.md) | 151 | `result-track:172de9a61462ebdd12e0a45e03806e160c5e7165ad5161814ec2caabbe910de2` |
| 12 | `lemma` | [id](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/id--b222a71297e67517e46e7bd8.md) | 155 | `result-track:b222a71297e67517e46e7bd801253002fde55c3d92f5017d40dc5cbb6fd213e7` |
| 13 | `lemma` | [comp](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/comp--a2605e478d312820366722c0.md) | 165 | `result-track:a2605e478d312820366722c05e64f353d8193053b4c41d6b8a2a9cb8665a879f` |
| 14 | `def` | [modularCyclotomicCharacter'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter--ec44e024b438c1325d5698d5.md) | 186 | `declaration-track:ec44e024b438c1325d5698d56f24f466a345ceaea41479999751441a2b6894c4` |
| 15 | `lemma` | [modularCyclotomicCharacter'.spec'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter-spec--f9ad6b930edafdf3b0242141.md) | 192 | `result-track:f9ad6b930edafdf3b0242141be8037d7f0fa9b40d3677c6878fc322e3d55ab1b` |
| 16 | `lemma` | [modularCyclotomicCharacter'.unique'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter-unique--40cea73c15ff8517337a91af.md) | 197 | `result-track:40cea73c15ff8517337a91afc955d61c652baec941523716292113fab10be626` |
| 17 | `def` | [modularCyclotomicCharacter](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/modularcyclotomiccharacter--078ea9fc1263003ed780963e.md) | 208 | `declaration-track:078ea9fc1263003ed780963e8d2448881642603837cfa17cdce804dfa2e47157` |
| 18 | `lemma` | [spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/spec--e7d2af91070283ad835e919c.md) | 218 | `result-track:e7d2af91070283ad835e919c348dfc43ce2fbf69cb7fca67e96a559ab16075c6` |
| 19 | `lemma` | [unique](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/unique--2c3a63b5620e3a476f26b918.md) | 224 | `result-track:2c3a63b5620e3a476f26b918185cc342793527fa5084642c9380f358faac3fc7` |
| 20 | `lemma` | [IsPrimitiveRoot.autToPow_eq_modularCyclotomicCharacter](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/isprimitiveroot-auttopow-eq-modularcyclotomiccharacter--109da14e33a5dc326e9afaf0.md) | 238 | `result-track:109da14e33a5dc326e9afaf08163ebbefd0abfa127cc77613a95e9bf23263dfc` |
| 21 | `def` | [cyclotomicCharacter.toFun](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/cyclotomiccharacter-tofun--ae2769d7e61b18888be929c0.md) | 259 | `declaration-track:ae2769d7e61b18888be929c097aa89f14adf0ee536006a820a935d01f4b9b64c` |
| 22 | `theorem` | [toFun_apply](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-apply--af7d3710575c99c6b18af78c.md) | 273 | `result-track:af7d3710575c99c6b18af78cf01704b665a0462f6e0a3b45c5386212e8ba986a` |
| 23 | `theorem` | [toZModPow_toFun](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tozmodpow-tofun--083552235a08c4fcd65693f7.md) | 280 | `result-track:083552235a08c4fcd65693f7c7d7d67e94f9199619e76c3d177a0d0ae2e0398a` |
| 24 | `theorem` | [toFun_spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/tofun-spec--93a758e1b30204445b819b42.md) | 289 | `result-track:93a758e1b30204445b819b42be01ef1557da3e77dff9708d85e4f2c334d8e2a8` |
| 25 | `def` | [cyclotomicCharacter](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/cyclotomiccharacter--d870f171e3a2073088290942.md) | 303 | `declaration-track:d870f171e3a207308829094214fd2b3715d345994bc02aed915449d6f013298a` |
| 26 | `theorem` | [cyclotomicCharacter.spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/cyclotomiccharacter-spec--7c482a72744896533f86168e.md) | 319 | `result-track:7c482a72744896533f86168ea5a74285ca15f89feaaa89a30746170dcdc1bee6` |
| 27 | `theorem` | [cyclotomicCharacter.toZModPow](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/cyclotomiccharacter-tozmodpow--50c24516f7e45854e3dc0e0f.md) | 324 | `result-track:50c24516f7e45854e3dc0e0ff8a16152fcb9a466368a5518324e4c0bbecaa86a` |
| 28 | `lemma` | [cyclotomicCharacter.continuous](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/declarations/cyclotomiccharacter-continuous--c1645efc6c719c4ebc27a130.md) | 332 | `result-track:c1645efc6c719c4ebc27a130b2987a2e4d9b496f5fef0e69fe0da170a0ab5c30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
