# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bc7fdeaa445e5c7334268f718554ca40814d41",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bc7fdeaa445e5c7334268f718554ca40814d41`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/semigroup--53696de5be0b1dfa2b52fea2.md) | 55 | `declaration-track:53696de5be0b1dfa2b52fea2376cb09e6c065facc559e32fd2b655046ed2abbd` |
| 2 | `abbrev` | [commMagma](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commmagma--080ce0acc7d149bfa2209f7a.md) | 64 | `declaration-track:080ce0acc7d149bfa2209f7a90960dfebc21144656854db8a1f2f2a875cf26e1` |
| 3 | `abbrev` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commsemigroup--1deaa77f9a6520297b3f64fd.md) | 73 | `declaration-track:1deaa77f9a6520297b3f64fd1863b961c70bfeaf587da096d0428e90d64ecb0f` |
| 4 | `abbrev` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/leftcancelsemigroup--5865dc179056159f8330e384.md) | 82 | `declaration-track:5865dc179056159f8330e384b3846110b952b690833df9ae80c278e0ba6e1106` |
| 5 | `abbrev` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/rightcancelsemigroup--59e932a54f0bf301d6b0c9a9.md) | 92 | `declaration-track:59e932a54f0bf301d6b0c9a9cc55b2e771b7c1827db1209d5a78b5a02213cab6` |
| 6 | `abbrev` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/muloneclass--71d3a9d2c3e72976fde79aef.md) | 104 | `declaration-track:71d3a9d2c3e72976fde79aef4bae0e4f7e42c0fda4f99c10e9312305449cedb6` |
| 7 | `abbrev` | [monoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/monoid--5db691ba8d0269a5f69c34c7.md) | 118 | `declaration-track:5db691ba8d0269a5f69c34c787689a23d8348b02a3134611b289410302f36260` |
| 8 | `abbrev` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addmonoidwithone--a6fd800eec50c4484edf128c.md) | 128 | `declaration-track:a6fd800eec50c4484edf128ca9b5881670790017faf24509141ef6be5b43918d` |
| 9 | `abbrev` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/leftcancelmonoid--29165d38804f396461432518.md) | 142 | `declaration-track:29165d38804f396461432518a0729cde1eb5e6aafb0385b392817240a7c8c35a` |
| 10 | `abbrev` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/rightcancelmonoid--037a611a3e2d9ff8df1a25bb.md) | 152 | `declaration-track:037a611a3e2d9ff8df1a25bbee47ba3c3c05e7b416ae688c550876b3ed0a2eae` |
| 11 | `abbrev` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/cancelmonoid--9973755f7f554bc42a04cdf9.md) | 162 | `declaration-track:9973755f7f554bc42a04cdf9666b1fc0a50264d21e5a15bdba5bfe0a56d4aba5` |
| 12 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commmonoid--4e82dfa7170f668e83113f6c.md) | 172 | `declaration-track:4e82dfa7170f668e83113f6c1d7919ff5ca65a8b3273a09a8a8ce46d8a3f6826` |
| 13 | `abbrev` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addcommmonoidwithone--de281164c5ff789bf8736269.md) | 180 | `declaration-track:de281164c5ff789bf8736269318ad07a216cdb2e5b21a392694e409d66214209` |
| 14 | `abbrev` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/cancelcommmonoid--8303ab9cadd8bf5c146a62af.md) | 192 | `declaration-track:8303ab9cadd8bf5c146a62af181adf3e698cbc069359e24d145a68354c51ffca` |
| 15 | `abbrev` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/involutiveinv--67042f92284f2b41faa72e34.md) | 202 | `declaration-track:67042f92284f2b41faa72e347a15d54f7400745af6d58974d0e5904ef7ca492b` |
| 16 | `abbrev` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/invoneclass--0136e7ab558d6f4bf771bf42.md) | 214 | `declaration-track:0136e7ab558d6f4bf771bf4283aa53a3a429acbafbd4745bc60d0593bcfa8d46` |
| 17 | `abbrev` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/divinvmonoid--578c765078de9e192d5c5a76.md) | 228 | `declaration-track:578c765078de9e192d5c5a7666de949f60bf116dd325191f87ac414a3f2fec7c` |
| 18 | `abbrev` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/divinvonemonoid--ddc3258ceb82a392293535f7.md) | 247 | `declaration-track:ddc3258ceb82a392293535f78665e4ae6eb18a91f51a5b89ec498a88909d15fa` |
| 19 | `abbrev` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/divisionmonoid--9a2d67b006f6615dfc604809.md) | 260 | `declaration-track:9a2d67b006f6615dfc6048090168ae8c00978159d76c93f218eb9171db3e2119` |
| 20 | `abbrev` | [divisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/divisioncommmonoid--4f28ccd2ac00dd35635ceb04.md) | 277 | `declaration-track:4f28ccd2ac00dd35635ceb04887caf86b0d3d77e7991fb69376c0700e33856f0` |
| 21 | `abbrev` | [group](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/group--ec48767641fca68405a0af2a.md) | 288 | `declaration-track:ec48767641fca68405a0af2ad2d1d03302a26bab24ec5966a27379c329fb273e` |
| 22 | `abbrev` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addgroupwithone--958fea865509bcbd5a3f0f66.md) | 298 | `declaration-track:958fea865509bcbd5a3f0f664690341c4bbf120d6c0d305f2701be6de395b69c` |
| 23 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commgroup--a1cee02bdd1b5128fe4a6850.md) | 315 | `declaration-track:a1cee02bdd1b5128fe4a68501b2e7506de3007aba8b1757c30bcd6e805fbc66e` |
| 24 | `abbrev` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addcommgroupwithone--c5a5e873544fc22c0e0c396b.md) | 324 | `declaration-track:c5a5e873544fc22c0e0c396b3708045a239d5ed117651832010440f651725ae8` |
| 25 | `abbrev` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/semigroup--1e6ff914cd3154536f5f2aa4.md) | 349 | `declaration-track:1e6ff914cd3154536f5f2aa46fd8f92d17f9b2ba933cee049e84c28f9bae998c` |
| 26 | `abbrev` | [commMagma](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commmagma--4cc65464d8eb7ffd64f30f4a.md) | 358 | `declaration-track:4cc65464d8eb7ffd64f30f4a39193b4e77a6aa1a2caa241be9ac4789e97c8bd9` |
| 27 | `abbrev` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commsemigroup--43e45037fbcfeafcd798d774.md) | 367 | `declaration-track:43e45037fbcfeafcd798d7748ab8faadcf3fcae7673e94354d4c588072fceec5` |
| 28 | `abbrev` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/muloneclass--4e6fb3873903cf05814b8f19.md) | 379 | `declaration-track:4e6fb3873903cf05814b8f19dcd1b173b413c8b320159b806aa6b6db8129e6fc` |
| 29 | `abbrev` | [monoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/monoid--c6390729411e89035d428316.md) | 393 | `declaration-track:c6390729411e89035d428316558278411ebed311ae40b0dabeefa255e9afde83` |
| 30 | `abbrev` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addmonoidwithone--6809c21037b8bd476f1f57f5.md) | 404 | `declaration-track:6809c21037b8bd476f1f57f5639032eac6314920f176a6cf231f8631bbb8b994` |
| 31 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commmonoid--0ec9374c2c1ff380816f4947.md) | 419 | `declaration-track:0ec9374c2c1ff380816f4947ceecc6208deeeff21d42d71bf906ea5d2b8c7c16` |
| 32 | `abbrev` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addcommmonoidwithone--30ed4c8d6d2a4eb05f95d958.md) | 427 | `declaration-track:30ed4c8d6d2a4eb05f95d958603bb99c9f534f09f372a0b34e01d97b83029375` |
| 33 | `abbrev` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/involutiveinv--778c40e5ee3a5fe388b2dd24.md) | 439 | `declaration-track:778c40e5ee3a5fe388b2dd24b64806ae8ca99ff4a8aa2bd1b1bb100ff88b22b7` |
| 34 | `abbrev` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/divinvmonoid--297779d82a51856f98024b5b.md) | 452 | `declaration-track:297779d82a51856f98024b5b4698ccae9e3727b2a1071e143645cd5164fb00b4` |
| 35 | `abbrev` | [group](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/group--fca5d39fef85db4be40c3d46.md) | 470 | `declaration-track:fca5d39fef85db4be40c3d460f1b9344997f87f866cc21dff7d45621e570b2ae` |
| 36 | `abbrev` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addgroupwithone--baff7320ababbacd38f783f4.md) | 480 | `declaration-track:baff7320ababbacd38f783f4eefe13778129bef8bdc934e16bc732cd09507a0b` |
| 37 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/commgroup--53afe76f32bd8d3cd8fcb746.md) | 499 | `declaration-track:53afe76f32bd8d3cd8fcb7468918e796cc8cac430c1f0706e98755c7294e4939` |
| 38 | `abbrev` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/declarations/addcommgroupwithone--dd04284ff1afecc5d6b4c81c.md) | 508 | `declaration-track:dd04284ff1afecc5d6b4c81c51cd2cd853dc61e32a6a2f31deee00258b90b128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
