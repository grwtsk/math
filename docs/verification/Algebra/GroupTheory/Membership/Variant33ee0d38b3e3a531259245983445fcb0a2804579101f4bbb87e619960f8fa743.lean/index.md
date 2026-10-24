# Verification target: GRWTSK.Algebra.GroupTheory.Membership.Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a60db16bed45e40b287fc976f2334b3efaa9ea2",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a60db16bed45e40b287fc976f2334b3efaa9ea2`.

Source path: `GRWTSK/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Idempotent` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Hom` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-isup-of-directed--088eb0be815a024d4a20817e.md) | 64 | `result-track:088eb0be815a024d4a20817e69143eae8ff30b2452d7032c0736870e3f7f6d95` |
| 2 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/coe-isup-of-directed--a6f2a7c28704882ab8ec09c5.md) | 76 | `result-track:a6f2a7c28704882ab8ec09c528f581b8b5a375ed4a25a01892b8c537a2c31a3c` |
| 3 | `theorem` | [mem_sSup_of_directedOn](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-ssup-of-directedon--d45f3cf8841ac9d025de0e8a.md) | 81 | `result-track:d45f3cf8841ac9d025de0e8af731433fb6369fe34ecd2fd772803db9d56e8b0b` |
| 4 | `theorem` | [coe_sSup_of_directedOn](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/coe-ssup-of-directedon--6d834930aee9032574baca01.md) | 87 | `result-track:6d834930aee9032574baca0167c85405325c6f3953f2bb3acc5b653d0c5231b6` |
| 5 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-sup-left--b4a0728ea42e45e056220a5d.md) | 92 | `result-track:b4a0728ea42e45e056220a5d458854f35900dfb451baf3ec15e7c3e1206c3919` |
| 6 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-sup-right--a7f12b37cae2e18cd6ea36e0.md) | 97 | `result-track:a7f12b37cae2e18cd6ea36e0fb0849438e00a05aab1b2837bdc5fb73a81458b8` |
| 7 | `theorem` | [mul_mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mul-mem-sup--2d20a9b3df3552d8c16eeb1e.md) | 102 | `result-track:2d20a9b3df3552d8c16eeb1ebfcdc2321a778b4166ce31f5f8e56a7543db636e` |
| 8 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-isup-of-mem--74e8c9e7a8159ae4edc2a514.md) | 106 | `result-track:74e8c9e7a8159ae4edc2a514a9f0e0bbc384fded85fe4b7ffc580d123ffed297` |
| 9 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-ssup-of-mem--1a8e6c117d0d011b851b3ee5.md) | 112 | `result-track:1a8e6c117d0d011b851b3ee59f801aadd8d702a89b44ee30e61f1e40bf5cd798` |
| 10 | `theorem` | [iSup_induction](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/isup-induction--76c540fa95a493efc603b263.md) | 124 | `result-track:76c540fa95a493efc603b263eb8c02f7e08a6ed969dc5aa2a59bd326e123e70d` |
| 11 | `theorem` | [iSup_induction'](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/isup-induction--c4adb57df062d815e7d3732e.md) | 134 | `result-track:c4adb57df062d815e7d3732e1d0e560f0bee13d4ce0c466ce3e4660b804c5b71` |
| 12 | `theorem` | [closure_range_of](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-range-of--55595a5c6fb0ea44ffff608c.md) | 158 | `result-track:55595a5c6fb0ea44ffff608c7e83fcc56bd4d8612e12b6907a0d900ab60779d7` |
| 13 | `theorem` | [closure_singleton_eq](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-singleton-eq--ac06af67d045a00ec117e75d.md) | 170 | `result-track:ac06af67d045a00ec117e75dbe2649663378ed6fa87cfc8d38eda42bc8171d4d` |
| 14 | `theorem` | [mem_closure_singleton](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-closure-singleton--bdf3be654f1033a744753c9d.md) | 176 | `result-track:bdf3be654f1033a744753c9da2a2c05840d294fe97d593f4c6600ac709add056` |
| 15 | `theorem` | [mem_closure_singleton_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-closure-singleton-self--fc45165da5107edb852e487a.md) | 179 | `result-track:fc45165da5107edb852e487a317507aaf752f7aa984069ea342d04c1187d7412` |
| 16 | `theorem` | [closure_singleton_one](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-singleton-one--7ba1f474deecec2c5f4c032e.md) | 182 | `result-track:7ba1f474deecec2c5f4c032eea7925598efb20e3639ba1d197c69768fedbc746` |
| 17 | `theorem` | [card_bot](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/card-bot--07a6d9d788b331ac252f7845.md) | 192 | `result-track:07a6d9d788b331ac252f7845ad64816ce3eef9ce0ba994f19feea45ac6e63ffb` |
| 18 | `theorem` | [eq_bot_of_card_le](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/eq-bot-of-card-le--a7e1a59c169ebf5879cfba66.md) | 197 | `result-track:a7e1a59c169ebf5879cfba66ca613b10eb3381ac1cd10f9efecf5621657f4bda` |
| 19 | `theorem` | [eq_bot_of_card_eq](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/eq-bot-of-card-eq--7b4596d3d9c69c78618576bb.md) | 202 | `result-track:7b4596d3d9c69c78618576bb0f29c82f0773e4de892b33bb16f95493fad816cb` |
| 20 | `theorem` | [card_le_one_iff_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/card-le-one-iff-eq-bot--b2da506e9f865e70e613d366.md) | 206 | `result-track:b2da506e9f865e70e613d3668c36633d3546a6092ae443456190de3b98928d1f` |
| 21 | `lemma` | [eq_bot_iff_card](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/eq-bot-iff-card--16414a3a799fef143be2a11a.md) | 213 | `result-track:16414a3a799fef143be2a11a8afe9d5a4219c1316c7d3281d9ef7129dd22e29c` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.MemISupOfDirected.Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.FreeMonoid.mrange_lift](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/root-grwtsk-algebra-grouptheory-memisupofdirected-variantf66c91b8c607893--f567aecaf2de05a62ecd21f0.md) | 219 | `result-track:f567aecaf2de05a62ecd21f0f762d07dcb38235afcb459346852b0393c300c1e` |
| 23 | `theorem` | [closure_eq_mrange](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-eq-mrange--0e5fc741bf0d5ab4257b9888.md) | 225 | `result-track:0e5fc741bf0d5ab4257b988874db7d5a35e5e649d807fabc92cffacadbd75dce` |
| 24 | `theorem` | [closure_eq_image_prod](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-eq-image-prod--49215c0353b975f60c3e28f2.md) | 229 | `result-track:49215c0353b975f60c3e28f2f7aeea81c87fb9890920b1bbd99c9d3e3ed93af7` |
| 25 | `theorem` | [exists_list_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/exists-list-of-mem-closure--20794eec6f7ccf47e7d167c8.md) | 235 | `result-track:20794eec6f7ccf47e7d167c820b2c29c2619040cf4c1c324e9c5362b78f9e929` |
| 26 | `theorem` | [exists_multiset_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/exists-multiset-of-mem-closure--1123fa38485345ec46eee1ba.md) | 240 | `result-track:1123fa38485345ec46eee1ba4d165a53bcfe2a7f7a7912304b11d5ca930a36ba` |
| 27 | `theorem` | [closure_induction_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-induction-left--ca8834084d533440ace41dc7.md) | 246 | `result-track:ca8834084d533440ace41dc78e77dc9c0336e08f58a47b9045cdb29d2ecb679d` |
| 28 | `theorem` | [induction_of_closure_eq_top_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/induction-of-closure-eq-top-left--8086a0f5e2603036ab429907.md) | 261 | `result-track:8086a0f5e2603036ab429907b3c9e7951894e13a812bc6ce969e047735fe8ea5` |
| 29 | `theorem` | [closure_induction_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-induction-right--046777cd034ce0fdbb05d245.md) | 269 | `result-track:046777cd034ce0fdbb05d24551e30a118f7d65532aec6eab0a6f7e9706619997` |
| 30 | `theorem` | [induction_of_closure_eq_top_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/induction-of-closure-eq-top-right--4246755c56c933b945ac23b5.md) | 280 | `result-track:4246755c56c933b945ac23b565c21260c3f210c20961e6af2d7ab8809f8122e7` |
| 31 | `def` | [powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/powers--7a9ea85e3f4f3bd7c9349f27.md) | 288 | `declaration-track:7a9ea85e3f4f3bd7c9349f27a301175a60a07f9ed4d6bb20526935710b7edc49` |
| 32 | `theorem` | [mem_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-powers--3bb1090767b9e078ebff5ee8.md) | 292 | `result-track:3bb1090767b9e078ebff5ee88fd82797fe5a669ec01e961355659eb84a6268ef` |
| 33 | `theorem` | [coe_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/coe-powers--f44ba98eaff8574e393fd22a.md) | 295 | `result-track:f44ba98eaff8574e393fd22a93f836f88c5519db5b2c88e81ce9259d636cc125` |
| 34 | `theorem` | [mem_powers_iff](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-powers-iff--9aa10931b4818ba4fef6e74d.md) | 298 | `result-track:9aa10931b4818ba4fef6e74d8684aa52c5a03cf8d2cd57581551e54c0f11ff09` |
| 35 | `instance` | [decidableMemPowers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/decidablemempowers--9378a5a540bfa574217698bb.md) | 301 | `declaration-track:9378a5a540bfa574217698bba1604fb0283bd40a29f4383e9419c873b01e62ab` |
| 36 | `instance` | [fintypePowers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/fintypepowers--6db969e364c7247d3c4842fd.md) | 306 | `declaration-track:6db969e364c7247d3c4842fd75ae4b41712f079253bb79f8c1c4ea0f6b041fc0` |
| 37 | `theorem` | [powers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/powers-eq-closure--cb0a6a31c6ea9cb1a9b51e08.md) | 309 | `result-track:cb0a6a31c6ea9cb1a9b51e089912b4c2c2211cf60f5763128e06feba1c003a3c` |
| 38 | `lemma` | [powers_le](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/powers-le--981396e2079ddba6ad2ec5ab.md) | 313 | `result-track:981396e2079ddba6ad2ec5abaae6931ad6a536347f0afe989c1d1f7206ce07e0` |
| 39 | `lemma` | [powers_one](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/powers-one--46a08dae435f610f51dd00fc.md) | 315 | `result-track:46a08dae435f610f51dd00fce6a87f68c946481a1f2fe61a17b441d14a396db1` |
| 40 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.MemISupOfDirected.Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.IsIdempotentElem.coe_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/root-grwtsk-algebra-grouptheory-memisupofdirected-variantf66c91b8c607893--4179cfef9eadee2b6e841f37.md) | 317 | `result-track:4179cfef9eadee2b6e841f376f9d27087bdf472938405d8bc28e3cb489694aa6` |
| 41 | `abbrev` | [groupPowers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/grouppowers--98a5843ffd0e0520bbd8a1a4.md) | 333 | `declaration-track:98a5843ffd0e0520bbd8a1a4e8f44354bbfc898cbb4a8c4d8a902b0d8d4aabde` |
| 42 | `def` | [pow](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/pow--f0543095446d3ff8cf017d76.md) | 359 | `declaration-track:f0543095446d3ff8cf017d76d104d650b8f480e8a5d49fdcf8933fca5be5b8bb` |
| 43 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/pow-apply--d1129666f823cc1c7a10d592.md) | 362 | `result-track:d1129666f823cc1c7a10d592060176d436bea5ddb376269ad849c869039d4f70` |
| 44 | `def` | [log](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/log--88f4cdfb24f0b1a493d1d18d.md) | 366 | `declaration-track:88f4cdfb24f0b1a493d1d18d67a7197d018deb0d67e5f43e50bdf5641aa30ef2` |
| 45 | `theorem` | [pow_log_eq_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/pow-log-eq-self--e3d85c7266ba6a36f4f8ad82.md) | 370 | `result-track:e3d85c7266ba6a36f4f8ad829e72a91337b3da4a2f814d3ab76990341c05f854` |
| 46 | `theorem` | [pow_right_injective_iff_pow_injective](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/pow-right-injective-iff-pow-injective--b55b016c33943c03faa1b8e7.md) | 373 | `result-track:b55b016c33943c03faa1b8e7c7ebd340fa50e58d59c963bcb3fd2ed71497c6a4` |
| 47 | `theorem` | [log_pow_eq_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/log-pow-eq-self--05648ba3c684e4ecad2fea41.md) | 378 | `result-track:05648ba3c684e4ecad2fea41a2edee5c2e6456fe142756a1c61a2b1d7d5edadd` |
| 48 | `def` | [powLogEquiv](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/powlogequiv--846b36fb027338c286bb6a26.md) | 385 | `declaration-track:846b36fb027338c286bb6a26b2ff726ccb32c80f6732c452faccf79e09c40bd3` |
| 49 | `theorem` | [log_mul](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/log-mul--aea1b5d08d1f6b987b2ed420.md) | 393 | `result-track:aea1b5d08d1f6b987b2ed420a892bcb4f74e0edc0ba81128968daae973a15c27` |
| 50 | `theorem` | [log_pow_int_eq_self](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/log-pow-int-eq-self--c9439063d511d00544dd7f98.md) | 397 | `result-track:c9439063d511d00544dd7f9834f4b3351606b292ae75c12736a931a84d5c8220` |
| 51 | `theorem` | [map_powers](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/map-powers--11e79ace6fbf2de53db83868.md) | 401 | `result-track:11e79ace6fbf2de53db83868744f05485acb4c8a826cf8fb8be0a6ca6bbdef85` |
| 52 | `theorem` | [IsScalarTower.of_mclosure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/isscalartower-of-mclosure-eq-top--3d78445a525bb158e4a81d3e.md) | 409 | `result-track:3d78445a525bb158e4a81d3e970282d6dc415a3adeb9c549be91c7c7bb45fea7` |
| 53 | `theorem` | [SMulCommClass.of_mclosure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/smulcommclass-of-mclosure-eq-top--e27fa995182d2ea2f0c1a5ae.md) | 420 | `result-track:e27fa995182d2ea2f0c1a5aed6c464c0077dfff626952a5e8daf66d6dcb9b55d` |
| 54 | `theorem` | [sup_eq_range](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/sup-eq-range--1760932b3f5a09d55eeb9034.md) | 437 | `result-track:1760932b3f5a09d55eeb903402787d606231a5ec7e392744b86e20a3b96736f3` |
| 55 | `theorem` | [mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-sup--0c601222e9237e0c9df43412.md) | 442 | `result-track:0c601222e9237e0c9df43412e2f8de4b32f6a0c18c0e23f5a2d7140b7014c46c` |
| 56 | `theorem` | [closure_singleton_eq](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-singleton-eq--e1d3589aa852f3346fc09d2b.md) | 454 | `result-track:e1d3589aa852f3346fc09d2bdafddc24c5c47aab340a9bc33aca7c26903cc65a` |
| 57 | `theorem` | [mem_closure_singleton](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-closure-singleton--a5cd11de5e8cd999e68f5d03.md) | 461 | `result-track:a5cd11de5e8cd999e68f5d034a04d567161381d2c2b53b82b9fdcfe24e3f0b7b` |
| 58 | `theorem` | [closure_singleton_zero](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/closure-singleton-zero--c4a2e202d9d040a81a9c5708.md) | 464 | `result-track:c4a2e202d9d040a81a9c57088869323a36ee178d24e3fa109eadc2309f5cb088` |
| 59 | `def` | [multiples](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/multiples--88f70b315f2e39a074be97c2.md) | 468 | `declaration-track:88f70b315f2e39a074be97c24203da579d9c36d2b64ab192030cf3e89cdaa933` |
| 60 | `theorem` | [mem_closure_pair](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/mem-closure-pair--edc77a2607667f1dd64ede4f.md) | 502 | `result-track:edc77a2607667f1dd64ede4ff9c8866bc6beeb0394bc015e1a4a0bbda84dde73` |
| 61 | `theorem` | [ofMul_image_powers_eq_multiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/ofmul-image-powers-eq-multiples-ofmul--fbd4dc6edc88dcc47a6f8040.md) | 511 | `result-track:fbd4dc6edc88dcc47a6f80406d30ced04087e66ff7a9e11ff7cef3ab64838986` |
| 62 | `theorem` | [ofAdd_image_multiples_eq_powers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant33ee0d38b3e3a531259245983445fcb0a2804579101f4bbb87e619960f8fa743.lean/declarations/ofadd-image-multiples-eq-powers-ofadd--dd7ce1df21e68f10da94677e.md) | 522 | `result-track:dd7ce1df21e68f10da94677ec049676f0f256f5001635969cfb0332b8ea1430f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
