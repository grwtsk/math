# Verification target: GRWTSK.Analysis.Distribution.Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "426f6f9e8a3f7ac7238b5125976d16ce05bd53eb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/index.md) · [Full source](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `426f6f9e8a3f7ac7238b5125976d16ce05bd53eb`.

Source path: `GRWTSK/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Distribution](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/distribution--35545cea8285522b03d7402e.md) | 173 | `declaration-track:35545cea8285522b03d7402e41b893aee40bfba36a8bdebb01d4c5b0b65a5fcb` |
| 2 | `def` | [mapCLM](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/mapclm--536bba6700e9c0280ae474cb.md) | 196 | `declaration-track:536bba6700e9c0280ae474cbbdba9d588400ac69b77c6f3d517355810485de69` |
| 3 | `lemma` | [mapCLM_apply](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/mapclm-apply--d1526c05c748591e664d6193.md) | 200 | `result-track:d1526c05c748591e664d6193d4c2b0494da6b84941dbf5edb211866701e3193f` |
| 4 | `def` | [delta](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/delta--eabd1b73b2023037a8cda8f1.md) | 209 | `declaration-track:eabd1b73b2023037a8cda8f1855c09d1a90480a8440b946eb5b08e55cf3d22d2` |
| 5 | `theorem` | [delta_apply](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/delta-apply--4713e0dbfafd53ade08f5a3e.md) | 216 | `result-track:4713e0dbfafd53ade08f5a3e25e8aaa4aa8eae5ef37ecb75ea59e7fd778d9cd0` |
| 6 | `theorem` | [delta_eq_zero_of_notMem](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/delta-eq-zero-of-notmem--194253a0a2c7107b50b3dda3.md) | 220 | `result-track:194253a0a2c7107b50b3dda34ae5c285f8bd17eda3d657dd48e00385e2557592` |
| 7 | `def` | [lineDerivCLM](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivclm--076b62ab95ca9057d17d15e3.md) | 242 | `declaration-track:076b62ab95ca9057d17d15e374017dce0167928c01fc7db0460b5270296978f0` |
| 8 | `lemma` | [lineDerivCLM_apply](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivclm-apply--1572474af4f1717b95d2997e.md) | 246 | `result-track:1572474af4f1717b95d2997e957920a678e376498de6353d07ea35cccd98a816` |
| 9 | `lemma` | [lineDerivCLM_add](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivclm-add--5866050f6e77e904e62b4c5c.md) | 250 | `result-track:5866050f6e77e904e62b4c5c26762713b294908fc3de84e1cbdfe301a4024dbd` |
| 10 | `lemma` | [lineDerivCLM_smul](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivclm-smul--3346a927cde95a5a6d5bb26a.md) | 256 | `result-track:3346a927cde95a5a6d5bb26a0282af429a7048648d826f9522a4a82274511b49` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/instance--7b2ce42659b8bfed8af00e7f.md) | 267 | `declaration-track:7b2ce42659b8bfed8af00e7fd86611d1ee98e183ebc54f240934598f9d095ef1` |
| 12 | `lemma` | [lineDerivOp_eq_lineDerivCLM](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivop-eq-linederivclm--a7695c61486f315c436a5de6.md) | 271 | `result-track:a7695c61486f315c436a5de640c66ae478f860abc1f3459e907991fc78297cc9` |
| 13 | `theorem` | [lineDerivOp_apply_apply](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivop-apply-apply--2c2ea781dad2facaccde3394.md) | 276 | `result-track:2c2ea781dad2facaccde3394ee29e0402224b43e5aed01bbc5bb276ec205b219` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/instance--c55f9efba0952fa169c5d4a4.md) | 280 | `declaration-track:c55f9efba0952fa169c5d4a4c036264331dc991203808033297b6399f9bff0e7` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/instance--0b91e493e2ce9455d6c56372.md) | 284 | `declaration-track:0b91e493e2ce9455d6c56372467f7202c868a522c619e0a88b66e5fa2142f36f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/instance--7c41983a701e723688580abb.md) | 287 | `declaration-track:7c41983a701e723688580abbc631e7fe54643c9e69b45b0dcde099a7f52daf4e` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/instance--fa7d38c42be5e9d36c86e332.md) | 290 | `declaration-track:fa7d38c42be5e9d36c86e332e7f66d867070cf984bb101c0492bdc1106323c6e` |
| 18 | `lemma` | [lineDerivOpCLM_eq_lineDerivCLM](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/linederivopclm-eq-linederivclm--c9b152ef93530fff1562720c.md) | 293 | `result-track:c9b152ef93530fff1562720cc5d12762531ce07463f9306052194fb5a8d5edbe` |
| 19 | `def` | [ofFun](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun--187a6ca83c63b95810dd8f93.md) | 310 | `declaration-track:187a6ca83c63b95810dd8f93919049f40d69b36c4937a8ce4f56d517972cbb1a` |
| 20 | `theorem` | [ofFun_apply](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-apply--bbc9b56b5e586447d892ad42.md) | 314 | `result-track:bbc9b56b5e586447d892ad428dd1287fff16c30538493f34f3567e8993eddbfa` |
| 21 | `theorem` | [ofFun_eq_zero](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-eq-zero--8edea3097158e400bdffd1b7.md) | 319 | `result-track:8edea3097158e400bdffd1b774a5f103d00ac1ceca94464e25af05d22a67dc48` |
| 22 | `theorem` | [ofFun_apply_eq_ite](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-apply-eq-ite--20ef1b9ebd2b081a2c3fb7ed.md) | 325 | `result-track:20ef1b9ebd2b081a2c3fb7ed7afd13ef698f149899a8368f4986d127e1a3d679` |
| 23 | `theorem` | [ofFun_zero](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-zero--85989907aca96ed8f52b57ce.md) | 330 | `result-track:85989907aca96ed8f52b57cead00b5defa65c82fd60201cc964fba0bcba8ae17` |
| 24 | `theorem` | [ofFun_congr_ae](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-congr-ae--b3d8d6fd46db826c6c224668.md) | 334 | `result-track:b3d8d6fd46db826c6c2246683c456ec40de155e1c646a4b2f0ec4ff7e837820e` |
| 25 | `theorem` | [ofFun_add](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-add--ba47661d1bee6713228b83bd.md) | 348 | `result-track:ba47661d1bee6713228b83bdc3401417a7e21d6a4b1c1a42695071507e257bd4` |
| 26 | `theorem` | [ofFun_neg](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-neg--926a131664b8857fd8b013f5.md) | 358 | `result-track:926a131664b8857fd8b013f5e54dee7bb5239cc67c67ef2a6339b3476cae8f14` |
| 27 | `theorem` | [ofFun_smul](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-smul--fa11e9b27f2a561bb0b5a39f.md) | 365 | `result-track:fa11e9b27f2a561bb0b5a39fde0979afac9fa88c21974997ae5c4e148677244f` |
| 28 | `theorem` | [ofFun_injective](../../../../mathematics/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/declarations/offun-injective--98080a25205b4fdada35ad4e.md) | 376 | `result-track:98080a25205b4fdada35ad4e8482c42992fc198f1349e7457c2b00760fb85c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
