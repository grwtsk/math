# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveRationalSubdivisionProbe.Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "056f22f9bc71efe7a46655c76ecf6ca6b52c9b36",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `056f22f9bc71efe7a46655c76ecf6ca6b52c9b36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Bezier.Rational` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/unitinterval--b82c5788909e7fd87f7804af.md) | 21 | `declaration-track:b82c5788909e7fd87f7804afb57243d131f27c54406d9c2ac5cfd321feb0803c` |
| 2 | `abbrev` | [ControlRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/controlrow--2e91eb29897ea7c2a07d423a.md) | 27 | `declaration-track:2e91eb29897ea7c2a07d423a7574ccc523b9c395a60ee1685e0b9e751e969825` |
| 3 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/step--90af42fc3098a907a8793159.md) | 30 | `declaration-track:90af42fc3098a907a87931594381aa7130c3e6d57a1508264772c1639fbb99b5` |
| 4 | `def` | [deCasteljau](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau--6dda210e43393b6d08486d55.md) | 34 | `declaration-track:6dda210e43393b6d08486d55f43e7f934ceda957b4df85eda55a2109030f51d0` |
| 5 | `def` | [rowCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/rowcombo--e9c2c1aeff2d4aaf03c7e857.md) | 39 | `declaration-track:e9c2c1aeff2d4aaf03c7e85766ae52c74ad2d06890fb97df847db1f7c418d118` |
| 6 | `lemma` | [step_rowCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/step-rowcombo--49224fb1277f983e411632d8.md) | 42 | `result-track:49224fb1277f983e411632d8d3e94fbc9302b66d1c64c30c75624332d75709c1` |
| 7 | `lemma` | [deCasteljau_rowCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau-rowcombo--03c6ea3cc9b5a2c176d35130.md) | 48 | `result-track:03c6ea3cc9b5a2c176d3513003cfe683d497b4bed669ecd952902319049cd6d9` |
| 8 | `lemma` | [step_eq_rowCombo_self_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/step-eq-rowcombo-self-step--f53a7c7c05c0d68f7e73f0ba.md) | 58 | `result-track:f53a7c7c05c0d68f7e73f0babaa5beb4c999651fbfc402131e0578934ce4fc47` |
| 9 | `def` | [splitLeftRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitleftrow--8fecb7953576c8445a864e57.md) | 65 | `declaration-track:8fecb7953576c8445a864e578e8e7750810cb91fcfcb9f475126cc7635313d06` |
| 10 | `lemma` | [step_splitLeftRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/step-splitleftrow--2858eb6f37a1e59ab401f587.md) | 68 | `result-track:2858eb6f37a1e59ab401f58748435eecd6c06e2542f484249108b48a7cc54563` |
| 11 | `lemma` | [deCasteljau_splitLeftRow_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau-splitleftrow-mul--400fad0eb8e072817ad400ca.md) | 77 | `result-track:400fad0eb8e072817ad400cac41f08ba413ebcf276564e310a02f095aaeda46d` |
| 12 | `theorem` | [deCasteljau_splitLeftRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau-splitleftrow--283f98b4d4fb81b065273cd9.md) | 87 | `result-track:283f98b4d4fb81b065273cd9cfc8b9e3fb92eaaf5ecd2e00fb660b6fd132dc13` |
| 13 | `lemma` | [deCasteljau_congr_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau-congr-prefix--dca092155b577b01c1b6fb11.md) | 93 | `result-track:dca092155b577b01c1b6fb11fa1487e17b3264917c90846d109ff92f36763613` |
| 14 | `def` | [splitRightRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitrightrow--3bdcab39bde3bef10b361bba.md) | 106 | `declaration-track:3bdcab39bde3bef10b361bba3171a3f12e7260bd216c8c70204b2e0119df92c3` |
| 15 | `lemma` | [step_splitRightRow_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/step-splitrightrow-prefix--75a3dcaf9d94338624cb4b65.md) | 109 | `result-track:75a3dcaf9d94338624cb4b65dddff161193627b7236718558080ddbe493b9a52` |
| 16 | `theorem` | [deCasteljau_splitRightRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau-splitrightrow--778d315a3d84be56ccf84011.md) | 128 | `result-track:778d315a3d84be56ccf84011177382da3ce8fb78b5367c47d37a5fe1f9f67a3d` |
| 17 | `structure` | [Segment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/segment--82a0a0a68cd0675d93f6e27a.md) | 153 | `declaration-track:82a0a0a68cd0675d93f6e27a1a3b55499d4f631fdb3e8f0614023aff29165c04` |
| 18 | `def` | [homogeneousControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/homogeneouscontrol--86e588e845c30d90de7d059c.md) | 164 | `declaration-track:86e588e845c30d90de7d059c837b32445f7d58d982a8f90234af1215c68ffc9d` |
| 19 | `def` | [homogeneousRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/homogeneousrow--120683233f180d5cccde9d8d.md) | 169 | `declaration-track:120683233f180d5cccde9d8d224d953a38343efe740a09b6de3928006976ce30` |
| 20 | `lemma` | [homogeneousRow_apply_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/homogeneousrow-apply-of-le--330cb6e620add67487c0bc82.md) | 172 | `result-track:330cb6e620add67487c0bc82eeeb06a5f0a5fe263485c3d9ae55fa7750273b79` |
| 21 | `def` | [dehomogenize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/dehomogenize--681838377882f62189f4e58f.md) | 178 | `declaration-track:681838377882f62189f4e58f2bf7b68f1c9ead23117e203430aaac01723a1732` |
| 22 | `def` | [numerator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/numerator--dd3583a455e2bb3c3a2cd98e.md) | 182 | `declaration-track:dd3583a455e2bb3c3a2cd98eaf2bc690be15e7d1d8606eea9beae9737c5bc081` |
| 23 | `def` | [denominator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/denominator--fef2abe66a597e94ee035d73.md) | 186 | `declaration-track:fef2abe66a597e94ee035d73158189b6572688707ae5cf26579bc84d95daf127` |
| 24 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/eval--9cfb5d85bcd077fd4abaf3eb.md) | 190 | `declaration-track:9cfb5d85bcd077fd4abaf3ebc13bf04d1d15ae88b6c7dd97c221eb84f2aba4ba` |
| 25 | `lemma` | [deCasteljau_snd_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/decasteljau-snd-pos--57d70b55d22a20c2f095c7a3.md) | 193 | `result-track:57d70b55d22a20c2f095c7a343406cea36dee8f0e1dee52bf2c007da09375fd6` |
| 26 | `lemma` | [homogeneousEval_weight_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/homogeneouseval-weight-pos--4b7a435ba1bec987bc67c4d5.md) | 212 | `result-track:4b7a435ba1bec987bc67c4d54e45bccf41cce8a6174ad86bba68d3f550f94b02` |
| 27 | `theorem` | [denominator_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/denominator-pos--82bbd0650d5c7437509e09e5.md) | 220 | `result-track:82bbd0650d5c7437509e09e58fde605a11481109dacffd8dcda10d83c4d28293` |
| 28 | `def` | [ofHomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/ofhomogeneous--4bfabded04015562f03462f5.md) | 225 | `declaration-track:4bfabded04015562f03462f59b96d24f260eb4fb0832e0dc5befd47efc602e6f` |
| 29 | `lemma` | [ofHomogeneous_homogeneousControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/ofhomogeneous-homogeneouscontrol--be65c331d6c4c2fb971004d7.md) | 233 | `result-track:be65c331d6c4c2fb971004d7d7b0a5f11f85ebc6c2fa13a9c6a735857877e8eb` |
| 30 | `def` | [leftHomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/lefthomogeneous--b8889fe02cd0b6f622f49622.md) | 243 | `declaration-track:b8889fe02cd0b6f622f496222d5596f7a97aedbc607bd7cccb22f7b3ba3ecabf` |
| 31 | `lemma` | [leftHomogeneous_weight_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/lefthomogeneous-weight-pos--6cd07889fb0d730b8fdd1c55.md) | 247 | `result-track:6cd07889fb0d730b8fdd1c5563772b8179ec6904da98f0cae64448f9063297f4` |
| 32 | `def` | [rightHomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/righthomogeneous--0c382642cb8e8daed84bc85b.md) | 258 | `declaration-track:0c382642cb8e8daed84bc85b0a900416222ee20052d09a8653204dad89381dd2` |
| 33 | `lemma` | [rightHomogeneous_weight_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/righthomogeneous-weight-pos--f1b951c81ee78d842ff4f1bc.md) | 262 | `result-track:f1b951c81ee78d842ff4f1bc7da00c8aae93e5d8a2f9cd508896bee01e17ea08` |
| 34 | `def` | [splitLeftSegment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitleftsegment--9a632a3f3b4e45625edff10a.md) | 273 | `declaration-track:9a632a3f3b4e45625edff10aa51a395bda30c57a441efed3fc763f0ddcd1656a` |
| 35 | `def` | [splitRightSegment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitrightsegment--7aa48ceab4f0b7bcb282ac27.md) | 277 | `declaration-track:7aa48ceab4f0b7bcb282ac275a092135f1c88f97e2142ea0f66a97b70e73ed99` |
| 36 | `def` | [splitAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitat--e50827fb929131a2a5a703a7.md) | 282 | `declaration-track:e50827fb929131a2a5a703a7f1d4efa341c7f980cfb473b9287ad521b0d8ca45` |
| 37 | `lemma` | [splitLeftSegment_row_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitleftsegment-row-eq--c3a2fc2a591cc13163711eae.md) | 286 | `result-track:c3a2fc2a591cc13163711eaefa7dd0d120d77bc655943a29d1018e435f7e9e6c` |
| 38 | `lemma` | [splitRightSegment_row_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/splitrightsegment-row-eq--ce24ca355e080e6d7af0f125.md) | 298 | `result-track:ce24ca355e080e6d7af0f125ee38ac4cfae040f99bc3b800d19b698b296de241` |
| 39 | `def` | [leftParameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/leftparameter--6b27dc8ba73c2bdb0a531a94.md) | 311 | `declaration-track:6b27dc8ba73c2bdb0a531a94dd49f7f997d58cdb0510ae4db17f369b431b54e2` |
| 40 | `def` | [rightParameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/rightparameter--b1ed43cc2854f808e45af885.md) | 317 | `declaration-track:b1ed43cc2854f808e45af885a7f9fb5ae428fbb07d2ee2f3343cb4486d2d14ff` |
| 41 | `theorem` | [eval_split_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/eval-split-left--dae59d7aa0d0d7f674cb58b7.md) | 322 | `result-track:dae59d7aa0d0d7f674cb58b76c9291dff32188bce0324cff331308b565b34cc8` |
| 42 | `theorem` | [eval_split_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/declarations/eval-split-right--7599870d4c601756a38daece.md) | 339 | `result-track:7599870d4c601756a38daece978324266405fff800106ad558b146f1a96a708a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
