# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "242555ab14b88c1022ba17b076fbc5d3d30cebf6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `242555ab14b88c1022ba17b076fbc5d3d30cebf6`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isaddhom--3e4441cffff4840fc973b166.md) | 49 | `declaration-track:3e4441cffff4840fc973b1664e0673bf29228550ddd78d425d2e4ca0b545b63c` |
| 2 | `structure` | [IsMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/ismulhom--3c253c74e102420d0ae2c91f.md) | 56 | `declaration-track:3c253c74e102420d0ae2c91f3cfe91e540c83471a00a528a53ecf074debdaa71` |
| 3 | `theorem` | [id](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/id--d580008c8524b74a11b69b58.md) | 67 | `result-track:d580008c8524b74a11b69b58f69115a4a00f6c3642c512646e1536abef80192f` |
| 4 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/comp--61c5455f3a276e8e906fcf78.md) | 74 | `result-track:61c5455f3a276e8e906fcf78c171f88c15658355525439cf43360402fc30ca7c` |
| 5 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/mul--39dcc339594c884c3d3b373f.md) | 84 | `result-track:39dcc339594c884c3d3b373fac1a03643b5eabeb1f535ae9956479728f83fa51` |
| 6 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/inv--8fd4e7e8aa0113c3bd9b4290.md) | 96 | `result-track:8fd4e7e8aa0113c3bd9b4290ea226ea618d4386279fa737d813612ff04395d3a` |
| 7 | `structure` | [IsAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isaddmonoidhom--388988f598a27a121048b6ce.md) | 105 | `declaration-track:388988f598a27a121048b6cee04b681316c5955dfe558d5f9181023c3966cb48` |
| 8 | `structure` | [IsMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/ismonoidhom--958b5dc7602c50e244cdb1b8.md) | 113 | `declaration-track:958b5dc7602c50e244cdb1b8e71c5b2f99fdc4021bfa7476f58f91fd918461e8` |
| 9 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/of--eb869d7cd233660a5d649602.md) | 124 | `declaration-track:eb869d7cd233660a5d6496021cc82bc63a57dc825c3fba9737a79a602134195b` |
| 10 | `theorem` | [coe_of](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/coe-of--5cc198e40f69d4d1cd52951e.md) | 133 | `result-track:5cc198e40f69d4d1cd52951ef6f862dbf0af17a8461be69076bdc29034c516a5` |
| 11 | `theorem` | [isMonoidHom_coe](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/ismonoidhom-coe--bf97057b4f7a700add753fda.md) | 139 | `result-track:bf97057b4f7a700add753fdaeabfe69e5d5625d40689e6d219d0d32a3a5352f8` |
| 12 | `theorem` | [isMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/ismulhom--63ee9fa7e3b240e8c90d6f63.md) | 153 | `result-track:63ee9fa7e3b240e8c90d6f630041c9117d49463bfc9506d4b63cc54aeecc79ce` |
| 13 | `theorem` | [isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/ismonoidhom--fbea1fb8467139c9663d30a1.md) | 163 | `result-track:fbea1fb8467139c9663d30a1397b0441b2aeee0aa3ff2286e05031b8fcda206d` |
| 14 | `theorem` | [map_mul'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map-mul--662ce8cfce6b29e507f54c55.md) | 177 | `result-track:662ce8cfce6b29e507f54c5549968245f6fb749af6cded62b1a23bb5f1396212` |
| 15 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/inv--28ccf134c879bc83de0fb5c4.md) | 187 | `result-track:28ccf134c879bc83de0fb5c41d1c1214652f421796ffcb6126159f9258e17006` |
| 16 | `theorem` | [IsMulHom.to_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/ismulhom-to-ismonoidhom--569af58c916f36b24b56bf8e.md) | 199 | `result-track:569af58c916f36b24b56bf8e1387e398700c3d5b860465d4eeea3506159fa3ad` |
| 17 | `theorem` | [id](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/id--baf9413bf44c5dd11a0a471a.md) | 212 | `result-track:baf9413bf44c5dd11a0a471a20f2bbad94bce8504df8e13b043c90a81ce34a07` |
| 18 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/comp--2ab3341ba143c00c3d096b7e.md) | 222 | `result-track:2ab3341ba143c00c3d096b7e2e200d8078a16e459015adc2edbc66f758202551` |
| 19 | `theorem` | [isAddMonoidHom_mul_left](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isaddmonoidhom-mul-left--990f4cbad679e7790130fff9.md) | 234 | `result-track:990f4cbad679e7790130fff96463a4aea2b55401432d26f34f8fafcf96a2b66b` |
| 20 | `theorem` | [isAddMonoidHom_mul_right](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isaddmonoidhom-mul-right--798645970cf0bba8c43c42db.md) | 241 | `result-track:798645970cf0bba8c43c42db4cb0537eaf5a3da8e3c80d2cc76aed8eee859aa5` |
| 21 | `structure` | [IsAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isaddgrouphom--9d75c783a68a0bdcd10d5f98.md) | 250 | `declaration-track:9d75c783a68a0bdcd10d5f98f3215f8a8cc5e5d43999b73f2ebd0208cf75cbad` |
| 22 | `structure` | [IsGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isgrouphom--2e5188dbec720fdcb3d3ce5d.md) | 255 | `declaration-track:2e5188dbec720fdcb3d3ce5d7022f0c8038f432c97565ee4bd5f75af2eb7ae55` |
| 23 | `theorem` | [MonoidHom.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/monoidhom-isgrouphom--4ac82b346ceb076523f33422.md) | 259 | `result-track:4ac82b346ceb076523f334221a3bd1344408a946bf2100cd1ea43d6d74500337` |
| 24 | `theorem` | [MulEquiv.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/mulequiv-isgrouphom--dc2d70b7ca14def076cfda53.md) | 266 | `result-track:dc2d70b7ca14def076cfda537e7190695ef88a45e37608d0cbf17fac1898b3e4` |
| 25 | `theorem` | [IsGroupHom.mk'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isgrouphom-mk--a5ee3c43dc3115872495fac5.md) | 274 | `result-track:a5ee3c43dc3115872495fac506c0e38450b5c9aa46adf974acd74f9ece6db6fc` |
| 26 | `theorem` | [map_mul'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map-mul--1ac42fb33fef826a338250c5.md) | 286 | `result-track:1ac42fb33fef826a338250c5a2be9db73827b5e8aa9a9c648ac5fd7a986af9ac` |
| 27 | `theorem` | [to_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/to-ismonoidhom--2ca4c5d726bcdbdcabe6358d.md) | 292 | `result-track:2ca4c5d726bcdbdcabe6358d351d1e52d729bf670a9ae1080b2d6b6c4750402e` |
| 28 | `theorem` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map-one--a07ba60e65048d33b03d5401.md) | 299 | `result-track:a07ba60e65048d33b03d54019dc299af4de165eb2419aa8ba22750d2fa4c24f9` |
| 29 | `theorem` | [map_inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map-inv--82e72747615c7a93b26a830a.md) | 306 | `result-track:82e72747615c7a93b26a830a383cc665c62c69af7ad13ae6f4cc7dbf53eb2f8b` |
| 30 | `theorem` | [map_div](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map-div--e312f4e73c864329d9ec6493.md) | 312 | `result-track:e312f4e73c864329d9ec6493b2c31ebf34f47d14ec96c496a63939736aba89e2` |
| 31 | `theorem` | [id](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/id--34fd17472b24e090dc8fc3a9.md) | 319 | `result-track:34fd17472b24e090dc8fc3a9d2ece4043cbaa0b1a7b7d231638ed5c03e1c52e1` |
| 32 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/comp--0bcd3c2ac2a34d500b11c51d.md) | 328 | `result-track:0bcd3c2ac2a34d500b11c51d519df7f573b2984f8f3a533af110690ba6df9916` |
| 33 | `theorem` | [injective_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/injective-iff--4efb606effbec0c70810e637.md) | 336 | `result-track:4efb606effbec0c70810e63744e31e24127a2cdeb9b111a6cd85c4d9e743ad30` |
| 34 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/mul--ee6bfd384211819ec1061237.md) | 347 | `result-track:ee6bfd384211819ec1061237faf4c9b72410e8d066229f7db56b47c2c8229698` |
| 35 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/inv--dc7b9e0fd8672fe5b70c1bdb.md) | 357 | `result-track:dc7b9e0fd8672fe5b70c1bdb98aef0d09ca967bec04f330fa4b85ce07e54ec3f` |
| 36 | `theorem` | [to_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/to-ismonoidhom--a2da8df8ecb24605b4aa19b5.md) | 379 | `result-track:a2da8df8ecb24605b4aa19b5997bf490b9aded8b265e891234b4f1ca48ed1a09` |
| 37 | `theorem` | [to_isAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/to-isaddmonoidhom--08530bd5f54795acb4ab1f7b.md) | 384 | `result-track:08530bd5f54795acb4ab1f7b80c52f1facec9dbce00131f9bba4dffb7b46f58a` |
| 38 | `theorem` | [to_isAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/to-isaddgrouphom--b0ce84b5d026034c956a2124.md) | 395 | `result-track:b0ce84b5d026034c956a2124b8a91ae1856ed91c52c4ee328dbd069429dc2cee` |
| 39 | `theorem` | [Inv.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/inv-isgrouphom--565b770b7f1059d63e70b7fa.md) | 406 | `result-track:565b770b7f1059d63e70b7faa4e861840cf5281def47250308cad0c78eb3472f` |
| 40 | `theorem` | [IsAddGroupHom.sub](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/isaddgrouphom-sub--45976bb52254793f754106e6.md) | 413 | `result-track:45976bb52254793f754106e69874a955c188fc65a56fe14efe4b3207f24e9d0f` |
| 41 | `def` | [map'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map--19c92a8cffc67270ba4a11e3.md) | 424 | `declaration-track:19c92a8cffc67270ba4a11e32b98f6c3336af73351a56298dbe47b4858f68b11` |
| 42 | `theorem` | [coe_map'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/coe-map--0d0906cc53f288d463b6df94.md) | 429 | `result-track:0d0906cc53f288d463b6df946f584843dbb67d54e085a3d33ba464cd6fcc6969` |
| 43 | `theorem` | [coe_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/coe-ismonoidhom--e995fad35ca7b5cddb7cd859.md) | 433 | `result-track:e995fad35ca7b5cddb7cd8592131b589b0ab9ede03376b684eb3aa4e6eb506a2` |
| 44 | `theorem` | [map'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/map--21b86cad5e4880de62a68308.md) | 443 | `result-track:21b86cad5e4880de62a68308fc7194a82032666d79a0b560d2909d29ee4730b9` |
| 45 | `theorem` | [Additive.isAddHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/additive-isaddhom--0803489fbad6aa808594fa8d.md) | 449 | `result-track:0803489fbad6aa808594fa8d00208e784d6147c0078dc8a65a323c6f3559bd18` |
| 46 | `theorem` | [Multiplicative.isMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/multiplicative-ismulhom--538be22c39977c3be6f0968a.md) | 454 | `result-track:538be22c39977c3be6f0968a94e398d74fb996656affa10c851d88f7b5f8bbb7` |
| 47 | `theorem` | [Additive.isAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/additive-isaddmonoidhom--e7c96ad75e4b64aa5173e76b.md) | 460 | `result-track:e7c96ad75e4b64aa5173e76b9e17957ddbd3d6f354d714ba1dfa9ec8fe2ccc6b` |
| 48 | `theorem` | [Multiplicative.isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/multiplicative-ismonoidhom--3e860fbe0a6a2a543535d636.md) | 465 | `result-track:3e860fbe0a6a2a543535d636f009730cb4995d0e4dcaa91d8eb4014b7e32c89e` |
| 49 | `theorem` | [Additive.isAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/additive-isaddgrouphom--3c7ec0c50f2c1119c30d8385.md) | 470 | `result-track:3c7ec0c50f2c1119c30d8385a914a2bdd47ad353081ed1321ac47220cb66fbce` |
| 50 | `theorem` | [Multiplicative.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/declarations/multiplicative-isgrouphom--586c5ee1375f87092bea004d.md) | 475 | `result-track:586c5ee1375f87092bea004d41f779415e3b89382ed3baa10f95029113ed337e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
