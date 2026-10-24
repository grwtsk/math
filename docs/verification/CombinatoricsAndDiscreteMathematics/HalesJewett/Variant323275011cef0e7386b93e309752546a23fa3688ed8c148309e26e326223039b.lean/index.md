# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HalesJewett.Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d71755adb57d0bd2d1df3674183a3cb0211021c5",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d71755adb57d0bd2d1df3674183a3cb0211021c5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Shrink` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subspace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/subspace--93d1571f97b77dd36412e0db.md) | 95 | `declaration-track:93d1571f97b77dd36412e0db7da6bdbcc0b1b731b5e30f2aae7dfbd0c6e0b9bf` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/instance--29ec997ed201cf9b9bdc2b8e.md) | 107 | `declaration-track:29ec997ed201cf9b9bdc2b8e990869971be8b84e9f3208a13bd342d6530e2941` |
| 3 | `def` | [toFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tofun--49ae545eb56803734adc30c1.md) | 110 | `declaration-track:49ae545eb56803734adc30c1df1de52e46f70f09d776c4c9cf81bae44b7497e4` |
| 4 | `instance` | [instCoeFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/instcoefun--25ba091b5035bde1b0f2f1c3.md) | 112 | `declaration-track:25ba091b5035bde1b0f2f1c3ece41e7464112bee04b682f411a38e23b5787548` |
| 5 | `lemma` | [coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/coe-apply--9a3454dfed48e1b0be49ddf8.md) | 114 | `result-track:9a3454dfed48e1b0be49ddf82b7cf3c49464be84462aa88f72857805fca7b848` |
| 6 | `lemma` | [coe_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/coe-injective--517e6a0cb498f78daf200ad2.md) | 117 | `result-track:517e6a0cb498f78daf200ad2e4a3a3862864487458bd7fc9f1182337e1230d87` |
| 7 | `lemma` | [apply_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/apply-def--22eb38181adec42e1127fdf4.md) | 137 | `result-track:22eb38181adec42e1127fdf49a7cd85544b2e7d1bd3054da88eacd1f4740f226` |
| 8 | `lemma` | [apply_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/apply-inl--d2cd272e0c8178fcf26bb41d.md) | 138 | `result-track:d2cd272e0c8178fcf26bb41d826b37fc79090c1fcb8de557b263e9e3deb72604` |
| 9 | `lemma` | [apply_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/apply-inr--91f5a95f298270b1a56ac6a8.md) | 139 | `result-track:91f5a95f298270b1a56ac6a8cee897a5af597dd8c606fa8bb41af7c2b1849044` |
| 10 | `def` | [IsMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/ismono--80cb239b784735d00a12bb39.md) | 143 | `declaration-track:80cb239b784735d00a12bb39c6695331ac9cd9bb777438c7f0a0b97202933c34` |
| 11 | `def` | [reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/reindex--2e35700f4f9d0303ff660af5.md) | 148 | `declaration-track:2e35700f4f9d0303ff660af522463c2d7dc908642e9655d632665b8ff67af6bb` |
| 12 | `lemma` | [reindex_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/reindex-apply--121e86ffd2c89f9d3ce28c9b.md) | 153 | `result-track:121e86ffd2c89f9d3ce28c9ba886489c1a9c8fe62627c6ad9cedf34978349c44` |
| 13 | `lemma` | [reindex_isMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/reindex-ismono--89b60df9aaa096e6e8c5ba32.md) | 157 | `result-track:89b60df9aaa096e6e8c5ba32c6a8652ddc388e738b6a3c11d4dc11d2d2204e63` |
| 14 | `lemma` | [IsMono.reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/ismono-reindex--1ea10e1eeefcf3cd81d6c655.md) | 162 | `result-track:1ea10e1eeefcf3cd81d6c655298209ca71bd14a838907d0ba055deea932e4826` |
| 15 | `structure` | [Line](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/line--1ac8b03bf6ac92f9ec29a9e7.md) | 179 | `declaration-track:1ac8b03bf6ac92f9ec29a9e7f9ca5a6ad7267a460bb76a7c845e09fc0f959b69` |
| 16 | `def` | [toFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tofun--c9c4705c7ea4df51351c962a.md) | 191 | `declaration-track:c9c4705c7ea4df51351c962a2a322d9a58626f75db69f1e4e4e5271ed724ab5b` |
| 17 | `instance` | [instCoeFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/instcoefun--cb61456bce8acde3f1c211ee.md) | 194 | `declaration-track:cb61456bce8acde3f1c211ee68845e48fa571c5a6f99106348751df5b2dcc96f` |
| 18 | `lemma` | [coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/coe-apply--dac0ad8485fae58d30a1ccb0.md) | 196 | `result-track:dac0ad8485fae58d30a1ccb0bbffb57da1b3f2552524b59934a442f8041a2ed7` |
| 19 | `lemma` | [coe_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/coe-injective--f97b70ccd15e3fad50f2faa3.md) | 199 | `result-track:f97b70ccd15e3fad50f2faa380385fcd88e178cbef503c3628f3bd5c7bf1baff` |
| 20 | `def` | [IsMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/ismono--ff4bb88f8f3738373ec6c2a5.md) | 209 | `declaration-track:ff4bb88f8f3738373ec6c2a569c36e6dbace0693d0fa57ac31ce91fa5780de73` |
| 21 | `def` | [toSubspaceUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tosubspaceunit--85acf8e88f1b56410b5cf8f9.md) | 213 | `declaration-track:85acf8e88f1b56410b5cf8f9137e694a7e2f7dc19a93ec6d7d85eb9a75c144c4` |
| 22 | `lemma` | [toSubspaceUnit_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tosubspaceunit-apply--f5fe490f5dad8d5b798c5cf1.md) | 217 | `result-track:f5fe490f5dad8d5b798c5cf12f026c46f74c598c21f277db62573eb2e3f6ed55` |
| 23 | `lemma` | [toSubspaceUnit_isMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tosubspaceunit-ismono--82e61a538c64d9fc97d6e5ad.md) | 220 | `result-track:82e61a538c64d9fc97d6e5ad204f4d5940464b15a9a75b1c264cf0cba4200a76` |
| 24 | `def` | [toSubspace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tosubspace--4e51329c013b7017a8b8aa41.md) | 227 | `declaration-track:4e51329c013b7017a8b8aa4161a80b10d18d0b4f1fa7abb84605b4af1dc30fd0` |
| 25 | `lemma` | [toSubspace_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tosubspace-apply--5a8b76ef7fd3045b577ca377.md) | 231 | `result-track:5a8b76ef7fd3045b577ca377ed82a913dda62173d044d602358f3b22955a52dd` |
| 26 | `lemma` | [toSubspace_isMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/tosubspace-ismono--539662130fea2c3d33069cb8.md) | 235 | `result-track:539662130fea2c3d33069cb825ec6056a89f1767ff8af2269c086c48965d2002` |
| 27 | `def` | [diagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/diagonal--ffc395e8216dd8f24e783032.md) | 242 | `declaration-track:ffc395e8216dd8f24e7830325a5728a441fca75d7174c0faba5800c92cd625b0` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/instance--c753c20a4686b8e037fc7680.md) | 246 | `declaration-track:c753c20a4686b8e037fc768005f8d0e81588e112fca02b9e30f825cd61564495` |
| 29 | `structure` | [AlmostMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/almostmono--3ad035145120d12c819dc67c.md) | 250 | `declaration-track:3ad035145120d12c819dc67cd23ad260052283b7e0ce7a517e3dd480fa0c5678` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/instance--faa9975c6aebaba1ae6ecd23.md) | 260 | `declaration-track:faa9975c6aebaba1ae6ecd232ebfe31a220bc179ffa7cb895a5222a33816ffd6` |
| 31 | `structure` | [ColorFocused](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/colorfocused--089f9a2a83d4525776e14a20.md) | 271 | `declaration-track:089f9a2a83d4525776e14a2064d0b5f532a6e14a92760ef9aee09632e1fb0a95` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/instance--72ccfbbbd6a29e33a419cc47.md) | 281 | `declaration-track:72ccfbbbd6a29e33a419cc4784042dd77ef67b2886cfefcf326752baa071448d` |
| 33 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/map--fb32401a09792f5c91beb308.md) | 287 | `declaration-track:fb32401a09792f5c91beb3087271cddb3aa6c9f72a1ad41a98caf3b52949fb2e` |
| 34 | `def` | [vertical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/vertical--cb8c33a332cc069431b98aa9.md) | 292 | `declaration-track:cb8c33a332cc069431b98aa99a69b50ca50f740787f5f3c5cb56cf537c1087b3` |
| 35 | `def` | [horizontal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/horizontal--6417538714042820499ada7c.md) | 297 | `declaration-track:6417538714042820499ada7cc2cebc34b5306aa11613565f0e4075c3e3f382d6` |
| 36 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/prod--775011baa80230dbb4114118.md) | 302 | `declaration-track:775011baa80230dbb411411800050ab6c86d65120e5061cdc00d4b96d56fd184` |
| 37 | `theorem` | [apply_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/apply-def--48585593db6af787b8a5458e.md) | 306 | `result-track:48585593db6af787b8a5458e3e092b379524a2548226af3bfb5f1dee7c595dd7` |
| 38 | `theorem` | [apply_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/apply-none--126bd1a934ecd64f382d23f3.md) | 308 | `result-track:126bd1a934ecd64f382d23f3cab9ab018c2746be7849e5a656ac92562feb0932` |
| 39 | `lemma` | [apply_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/apply-some--04d3ad1e1728b69df242585c.md) | 311 | `result-track:04d3ad1e1728b69df242585ccafc94db1d52ee3002732912b699ec07415ee2c3` |
| 40 | `theorem` | [map_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/map-apply--fd73b31ea47bbe3281a49d2d.md) | 314 | `result-track:fd73b31ea47bbe3281a49d2dfc04188d3852b0b86e9c08f504c8bef9d0e8cb59` |
| 41 | `theorem` | [vertical_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/vertical-apply--283b1b3a841213688033e486.md) | 318 | `result-track:283b1b3a841213688033e48645b11fa482f836175eae416175a67f96f1243624` |
| 42 | `theorem` | [horizontal_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/horizontal-apply--4643fd8c677ca1368f437fd6.md) | 324 | `result-track:4643fd8c677ca1368f437fd6a5659a9c0c75ffa8258313d317e5b09930485cdf` |
| 43 | `theorem` | [prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/prod-apply--90205be07a819cd97bef012e.md) | 330 | `result-track:90205be07a819cd97bef012e155700a7786635c423a59d5b633e8eaa847d35df` |
| 44 | `theorem` | [diagonal_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/diagonal-apply--e936e7445a69f78864d215cd.md) | 336 | `result-track:e936e7445a69f78864d215cd3bee59677d0e9b79906ada1f040e731357148836` |
| 45 | `theorem` | [exists_mono_in_high_dimension'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/exists-mono-in-high-dimension--6f9825b50a7938961c5e6920.md) | 342 | `result-track:6f9825b50a7938961c5e6920ed29edf41a3c5a90299302a6bb5394869552a6e2` |
| 46 | `theorem` | [exists_mono_in_high_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/exists-mono-in-high-dimension--40bbfa01cac1dae38d2f282a.md) | 451 | `result-track:40bbfa01cac1dae38d2f282a89eb4e26ebab69b241b84fe86cca842366271800` |
| 47 | `theorem` | [exists_mono_homothetic_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/exists-mono-homothetic-copy--6d931affa4ce68cc70fe688d.md) | 462 | `result-track:6d931affa4ce68cc70fe688d56901dedc03af07d1b626dc0982b2b08a66b73d3` |
| 48 | `theorem` | [exists_mono_in_high_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/exists-mono-in-high-dimension--b3d67f9a8f0d8cfe295b4709.md) | 495 | `result-track:b3d67f9a8f0d8cfe295b4709487288282d63e7b0f5c6cd9ce11fcf50b5baaf58` |
| 49 | `theorem` | [exists_mono_in_high_dimension_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/declarations/exists-mono-in-high-dimension-fin--a4b1359f9b79cf7b0f35edc8.md) | 507 | `result-track:a4b1359f9b79cf7b0f35edc8d6e9ebe10301e6fce0fd20003fe89665f591d6f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
