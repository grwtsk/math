# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.JordanHolder.Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2701be4fea9d98894655c9f52274acf331eab6e3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2701be4fea9d98894655c9f52274acf331eab6e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelSeries` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [JordanHolderLattice](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/jordanholderlattice--9a27b93f888c83888b142392.md) | 84 | `declaration-track:9a27b93f888c83888b142392760939a5c99b0e4f53f4fd50f403a6666e6aa6b9` |
| 2 | `theorem` | [isMaximal_inf_right_of_isMaximal_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/ismaximal-inf-right-of-ismaximal-sup--6aa40d2b74cbaf3781e51159.md) | 99 | `result-track:6aa40d2b74cbaf3781e511595a38b3f531d55291bc1dd70549f424ffb95325b7` |
| 3 | `theorem` | [isMaximal_of_eq_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/ismaximal-of-eq-inf--be0071a6ebb817083ea175de.md) | 105 | `result-track:be0071a6ebb817083ea175deb7eedacb28a562c3b9147da58e736a1da22e8b09` |
| 4 | `theorem` | [second_iso_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/second-iso-of-eq--49a1ed1757f67b96992dd791.md) | 111 | `result-track:49a1ed1757f67b96992dd7918af18ddea5fb06314ac24b6d5489e53b2a88f66f` |
| 5 | `theorem` | [IsMaximal.iso_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/ismaximal-iso-refl--7ed58685e5f4408c495f5326.md) | 114 | `result-track:7ed58685e5f4408c495f53261c804beda7134032f90757c4ffe320ef0af06404` |
| 6 | `abbrev` | [CompositionSeries](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/compositionseries--981b85bcb73f4cab2525a1a1.md) | 133 | `declaration-track:981b85bcb73f4cab2525a1a1b921b5741ab999b77bad9acb8ca6f21250a57c4e` |
| 7 | `theorem` | [lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/lt-succ--d048ff646f04826aa5182333.md) | 140 | `result-track:d048ff646f04826aa51823332b7f072121c2316146ae82c48d3661ad7732da48` |
| 8 | `theorem` | [strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/strictmono--85bdfcbc20740718ca852634.md) | 144 | `result-track:85bdfcbc20740718ca8526349b46123b82c8fec746e1ac11ae1e2ec0687e4055` |
| 9 | `theorem` | [injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/injective--134fb5aa714881d46b654764.md) | 147 | `result-track:134fb5aa714881d46b6547645ccee4fb2c976d7d724199391b5046db8560afda` |
| 10 | `theorem` | [inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/inj--566a55f4015713301c8da0f2.md) | 151 | `result-track:566a55f4015713301c8da0f24ac5c502e5c30a1c727af067a118f79872823349` |
| 11 | `theorem` | [total](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/total--4ef8b2b16a14347871151910.md) | 154 | `result-track:4ef8b2b16a143478711519101f87579e07652110909f50510ef72073dd9d98e8` |
| 12 | `theorem` | [toList_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/tolist-sorted--d1ddc09a91da586628a6d0f5.md) | 160 | `result-track:d1ddc09a91da586628a6d0f59d62d05011e68dbeb3ae456d2ae82b21f9ecd31c` |
| 13 | `theorem` | [toList_nodup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/tolist-nodup--8c4027b88621c34f1f1d4c66.md) | 166 | `result-track:8c4027b88621c34f1f1d4c66a54a7eeed4fe304c2247613add5cb2f4fd805882` |
| 14 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/ext--51c2f158bff58885522ee426.md) | 171 | `result-track:51c2f158bff58885522ee426cc14cd84692e0522550f765650f06ddfaedd63e8` |
| 15 | `theorem` | [le_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/le-last--216022e71b9717119b115a5d.md) | 181 | `result-track:216022e71b9717119b115a5db4bef2a3b680c27f2265ac3feccd42aea385a510` |
| 16 | `theorem` | [le_last_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/le-last-of-mem--708a75f9d4b011208a47e445.md) | 184 | `result-track:708a75f9d4b011208a47e445b584fa4ecdfd10bd35eb573f6a0e3ac17bcb34cc` |
| 17 | `theorem` | [head_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/head-le--3e47ee82d1172e0e7b4437bd.md) | 189 | `result-track:3e47ee82d1172e0e7b4437bd30698fd2c01ea0373b816c2355138a5b78bc0010` |
| 18 | `theorem` | [head_le_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/head-le-of-mem--ae4e2f9a1112aca887dd55fc.md) | 192 | `result-track:ae4e2f9a1112aca887dd55fc85940720953c34fb2b9b6738dd7328f5d789d642` |
| 19 | `theorem` | [last_eraseLast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/last-eraselast-le--7efffd30be0452e167881288.md) | 196 | `result-track:7efffd30be0452e16788128853a3cd617624c76127ff10d33463c7cda6ffcde6` |
| 20 | `theorem` | [mem_eraseLast_of_ne_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/mem-eraselast-of-ne-of-mem--0e05b5c076630d96ea6be773.md) | 199 | `result-track:0e05b5c076630d96ea6be773b074d36cb27d58d60f8c4c9daa56b22552cf7ab4` |
| 21 | `theorem` | [mem_eraseLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/mem-eraselast--42e232a9885a63e6e6ca1cb8.md) | 209 | `result-track:42e232a9885a63e6e6ca1cb8109d0d2e33752421d1f981bf1fcba884b329e27a` |
| 22 | `theorem` | [lt_last_of_mem_eraseLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/lt-last-of-mem-eraselast--62700182f6ae70af8b3d4883.md) | 221 | `result-track:62700182f6ae70af8b3d48832eab96923e3528a21d78f6e96c2daf6a697c03e2` |
| 23 | `theorem` | [isMaximal_eraseLast_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/ismaximal-eraselast-last--612d00a6c5c4994cf251f4a4.md) | 225 | `result-track:612d00a6c5c4994cf251f4a4bff986f5d6a7ace0d86b94bd42ee0d8b0ce35fd7` |
| 24 | `theorem` | [eq_snoc_eraseLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/eq-snoc-eraselast--af21e2081a7d0e5b41f2ff81.md) | 232 | `result-track:af21e2081a7d0e5b41f2ff81ab538046aa0fbfcac565f93c766b074183fc2f91` |
| 25 | `theorem` | [snoc_eraseLast_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/snoc-eraselast-last--9447514889d893ea385ed298.md) | 239 | `result-track:9447514889d893ea385ed298948ce46e6d8c1487c1728d685a8306ba51ac5798` |
| 26 | `def` | [Equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/equivalent--694ba1c377e0c067de590ebd.md) | 248 | `declaration-track:694ba1c377e0c067de590ebd3881ad93b3a7deed4aa5bb0f3dc837ac2bb31933` |
| 27 | `theorem` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/refl--b9b300a8c78ce4115f20cd97.md) | 256 | `result-track:b9b300a8c78ce4115f20cd97fd92c8ddc68331e4dbdffc8eaadbe25c7492fa82` |
| 28 | `theorem` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/symm--f10023c36ecb58470a8c268c.md) | 260 | `result-track:f10023c36ecb58470a8c268ce073a631e67d9ed39f0a0a40918248a025788e99` |
| 29 | `theorem` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/trans--f2142bb0be6cd5e8a4dc5823.md) | 264 | `result-track:f2142bb0be6cd5e8a4dc5823884a08a20ffc2b2ad856e95c36a9da666d57b9d6` |
| 30 | `theorem` | [smash](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/smash--e2e2b122fb6a5b139d8c0fb5.md) | 269 | `result-track:e2e2b122fb6a5b139d8c0fb59ba5d2beb2ce2fdbaf300892c2f7488ffbae63eb` |
| 31 | `theorem` | [snoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/snoc--2f3b7f0cb0e35a83d74fb2e7.md) | 286 | `result-track:2f3b7f0cb0e35a83d74fb2e7c0a4a375fabaa3e71f25f91ab7164c98fbdb0b6c` |
| 32 | `theorem` | [length_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/length-eq--1c7828efbb88ecb2f272edf8.md) | 300 | `result-track:1c7828efbb88ecb2f272edf8650bd7a53fbd4c1597b1bc0feca55f264a739ede` |
| 33 | `theorem` | [snoc_snoc_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/snoc-snoc-swap--5d6e25b8423295eee171031c.md) | 303 | `result-track:5d6e25b8423295eee171031c857cb1f0ac11eef94b7114521b1be14ab0cca58b` |
| 34 | `theorem` | [length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/length-eq-zero-of-head-eq-head-of-last-eq-last-of-length-eq-zero--d70763c54bef3d58d51528b2.md) | 334 | `result-track:d70763c54bef3d58d51528b2889df45222a7473b202347c8dab25aeb7b39d336` |
| 35 | `theorem` | [length_pos_of_head_eq_head_of_last_eq_last_of_length_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/length-pos-of-head-eq-head-of-last-eq-last-of-length-pos--e858ce885e8af3687c62fa92.md) | 341 | `result-track:e858ce885e8af3687c62fa92ce1b59d2db5086f50ee3d10872df179e173d8d9f` |
| 36 | `theorem` | [eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/eq-of-head-eq-head-of-last-eq-last-of-length-eq-zero--e40ddc43d4dc8c3a38406d70.md) | 348 | `result-track:e40ddc43d4dc8c3a38406d70bea9ee645939ca355358ccdafa1efe6c7c726cdc` |
| 37 | `theorem` | [exists_last_eq_snoc_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/exists-last-eq-snoc-equivalent--3d2fe80818b715c8a1458a7e.md) | 365 | `result-track:3d2fe80818b715c8a1458a7e10452d96a08d4a808f1f0fb5e794221548398fd0` |
| 38 | `theorem` | [jordan_holder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/declarations/jordan-holder--6a947c415401cb2114831c07.md) | 403 | `result-track:6a947c415401cb2114831c070e31d5b538f2f0cc40fcc2b22e3bd34e7401404d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
