# Verification target: GRWTSK.Algebra.GroupAction.Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "753e16c7185bf7e11cf3fb4f439e289cee3e6653",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md) · [Full source](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `753e16c7185bf7e11cf3fb4f439e289cee3e6653`.

Source path: `GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/mulactionhom--b401d2303be1c49025cdb461.md) | 70 | `declaration-track:b401d2303be1c49025cdb4613ea72f5ecf43c616b6406fac6ee6dd2d46fdf258` |
| 2 | `class` | [SMulHomClass](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/smulhomclass--44e75c530da737932a92dd14.md) | 86 | `declaration-track:44e75c530da737932a92dd14d165667695c7825f600cdc62fd43603caa846243` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--41f1c7fecc0b2fb76b563411.md) | 102 | `declaration-track:41f1c7fecc0b2fb76b563411c53f7e980028e6fdf70cd15ddce65c6cc2991466` |
| 4 | `def` | [_root_.GRWTSK.Algebra.MulActionHom.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.SMulHomClass.toMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/root-grwtsk-algebra-mulactionhom-variant22262afef858460353a9cef569912936--02b6063a10702c81b1d491ac.md) | 118 | `declaration-track:02b6063a10702c81b1d491ac062280a0de829a9ff23ba4b72c0da38eee7cf843` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--e2043543c6a6d3e4f972105c.md) | 125 | `declaration-track:e2043543c6a6d3e4f972105cb2f57caf203977743e0a678090047f9d7fd4805e` |
| 6 | `theorem` | [map_smul](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-smul--418f5629709ae23d235f6539.md) | 128 | `result-track:418f5629709ae23d235f653913f75bf8ddef32eb5b64c751187e0f67026b72e9` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext--4fe88845f70187ecad14565c.md) | 133 | `result-track:4fe88845f70187ecad14565c84e28389424cad8967f86fd8ec3e09d47dfa2b9d` |
| 8 | `theorem` | [ext_iff](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext-iff--ea73a4a7b0466ae772fddee0.md) | 137 | `result-track:ea73a4a7b0466ae772fddee0fc5dfbb47008187a28a53677c82a436ac0e99405` |
| 9 | `theorem` | [congr_fun](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/congr-fun--2262ba87a1ab00e445417205.md) | 141 | `result-track:2262ba87a1ab00e4454172054249ef254f3d9bdc5dcf0e7c4be975db559d962c` |
| 10 | `def` | [id](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id--5c30b32cb47403df5bc238c6.md) | 148 | `declaration-track:5c30b32cb47403df5bc238c68721d2501680dfc0706ed43f8544d17b0c4c800e` |
| 11 | `theorem` | [id_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id-apply--a4d90a14c7fa8bcb59389bf0.md) | 153 | `result-track:a4d90a14c7fa8bcb59389bf06cf06622b7d42448fb6541281dcd1d6fd2d7c9e3` |
| 12 | `def` | [comp](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp--5bfaaef28acfd732734a739d.md) | 160 | `declaration-track:5bfaaef28acfd732734a739d24bff9a3691c5dc1e4470fc41cacf0f0b46f9864` |
| 13 | `theorem` | [comp_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp-apply--04728442696757853f6c6f36.md) | 168 | `result-track:04728442696757853f6c6f36ba5c2db069dc04dc07d0d03187172ffee536f6f8` |
| 14 | `theorem` | [id_comp](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id-comp--da7da96560426c719de8edcb.md) | 173 | `result-track:da7da96560426c719de8edcb28656743a52e32edc4f9c0fe1c29f2e528d56190` |
| 15 | `theorem` | [comp_id](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp-id--fa5fb641d899136ea8f56a59.md) | 178 | `result-track:fa5fb641d899136ea8f56a59537a2d8687bb83db5519b7dc2cf3cce0905cedab` |
| 16 | `def` | [inverse](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/inverse--8d3aa42b9bb8ccde8d8448e8.md) | 186 | `declaration-track:8d3aa42b9bb8ccde8d8448e82155af6629770de71672e702af352e02ce3729bf` |
| 17 | `def` | [SMulCommClass.toMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/smulcommclass-tomulactionhom--1f4b5cd968c497f923b0dbf2.md) | 202 | `declaration-track:1f4b5cd968c497f923b0dbf29a65ba3a6abef21c1609e3febf03071b88d65bb9` |
| 18 | `structure` | [DistribMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/distribmulactionhom--0f0f5d0bbf78a0b86d9d4cae.md) | 208 | `declaration-track:0f0f5d0bbf78a0b86d9d4caeb09c5b623a0b839776692495661f2520844d241d` |
| 19 | `class` | [DistribMulActionHomClass](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/distribmulactionhomclass--95b3c814062f840bb37cfb33.md) | 229 | `declaration-track:95b3c814062f840bb37cfb33fe38618e7e47117199abacd2adb8680ac39adfb8` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--b86bece4b5f5926cc4fdbe71.md) | 255 | `declaration-track:b86bece4b5f5926cc4fdbe7121a6255aa309a5d4f2bf7a1ceb6f24136ede9c3b` |
| 21 | `def` | [_root_.GRWTSK.Algebra.MulActionHom.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.DistribMulActionHomClass.toDistribMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/root-grwtsk-algebra-mulactionhom-variant22262afef858460353a9cef569912936--892b7bcacdc1f17d6fddbb2e.md) | 272 | `declaration-track:892b7bcacdc1f17d6fddbb2e6d71c933c73d7b50054a52af02a55e07cf255e99` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--bad5a34c803bb7cf0547ce5e.md) | 278 | `declaration-track:bad5a34c803bb7cf0547ce5e9842d384853f889abf504ea9e11d572415a36b2c` |
| 23 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/tofun-eq-coe--31896fe1bf557d13c32d1723.md) | 282 | `result-track:31896fe1bf557d13c32d172304b33ba390460492ef81641f436c59441c1748c2` |
| 24 | `theorem` | [coe_fn_coe](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/coe-fn-coe--a39d08bdc49fb0ee47916dc1.md) | 286 | `result-track:a39d08bdc49fb0ee47916dc1adf7ad91e917bb22ceeea93cddd6e46181eaf278` |
| 25 | `theorem` | [coe_fn_coe'](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/coe-fn-coe--4b13ac1b3029374f0a2c1772.md) | 291 | `result-track:4b13ac1b3029374f0a2c17723df7b9dd3abfbf0fbd1530a99e045359537b5cba` |
| 26 | `theorem` | [ext](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext--1223dacae91cae6c33e88050.md) | 296 | `result-track:1223dacae91cae6c33e880502f2ccc092688bc7b0d3cbb12b91d7a85a0148b2c` |
| 27 | `theorem` | [ext_iff](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext-iff--26b120e5175402978b321c73.md) | 300 | `result-track:26b120e5175402978b321c73a15e92a240b9e0d6099d8e3ae59b61d3c9b080fb` |
| 28 | `theorem` | [congr_fun](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/congr-fun--c1423e584592eb7487d01a04.md) | 304 | `result-track:c1423e584592eb7487d01a04c698ef114bc2d2725c2db7df866ab726b31ee2ac` |
| 29 | `theorem` | [toMulActionHom_injective](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/tomulactionhom-injective--726544087bd5cb11a5b122af.md) | 308 | `result-track:726544087bd5cb11a5b122af65c02b74c45597aca7cc26863d3e0dad221650e4` |
| 30 | `theorem` | [toAddMonoidHom_injective](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/toaddmonoidhom-injective--bb81d6960320ad772e969546.md) | 314 | `result-track:bb81d6960320ad772e969546ad66c156108f5046ebe9e48baac695b400f5b57a` |
| 31 | `theorem` | [map_zero](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-zero--828cfaaef319e9cd8a76f3f4.md) | 319 | `result-track:828cfaaef319e9cd8a76f3f4f5dc172c7d98daffe664c82bd948559f830c0afd` |
| 32 | `theorem` | [map_add](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-add--edc85f28a0cc639bb1d4095a.md) | 323 | `result-track:edc85f28a0cc639bb1d4095a879a564933f2cdfb0c4669066d985dcc5977bd5f` |
| 33 | `theorem` | [map_neg](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-neg--bb5376d3b3d0b885fb9bc776.md) | 327 | `result-track:bb5376d3b3d0b885fb9bc7769335419556db093ed0b1c929c9f56a4da3709bb9` |
| 34 | `theorem` | [map_sub](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-sub--952ae7dfcce0de1f7c036b28.md) | 331 | `result-track:952ae7dfcce0de1f7c036b2828601a359ad0a1fa3e53db7f26da278a67055fc5` |
| 35 | `theorem` | [map_smul](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-smul--f665299f388f6ed95441b3b2.md) | 335 | `result-track:f665299f388f6ed95441b3b2e8dfa53e9cf3903f7d2a16a04fd2d2740f264ff3` |
| 36 | `def` | [id](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id--f1f4d246529f7a92e9361029.md) | 341 | `declaration-track:f1f4d246529f7a92e93610295c3f0f376963c3064b0e6f745c6b4711ef886124` |
| 37 | `theorem` | [id_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id-apply--3c6c380e2dd32b3227b2b028.md) | 346 | `result-track:3c6c380e2dd32b3227b2b0286267580024fbbf9a4723f6d27eced9bc7782bd82` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--6594511425056687c7a5d067.md) | 353 | `declaration-track:6594511425056687c7a5d0671507474ad09b3e99c1030a83bb902f96d9105920` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--49d11e03bb9f588852a32064.md) | 356 | `declaration-track:49d11e03bb9f588852a32064b3ae8185e691100074ad14f21a2dfb1fa52f24e1` |
| 40 | `theorem` | [coe_zero](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/coe-zero--059fd36fc978075a1405a021.md) | 360 | `result-track:059fd36fc978075a1405a021d5ca88ade4ddb222d580214c29e6daee5052a7c0` |
| 41 | `theorem` | [coe_one](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/coe-one--13e848387157d0f8157192b7.md) | 365 | `result-track:13e848387157d0f8157192b709f861fb090f5d4d5609bb831732fae6dbe360e7` |
| 42 | `theorem` | [zero_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/zero-apply--d666acd833a248f977f79e34.md) | 369 | `result-track:d666acd833a248f977f79e34241008182bd8f513b203a875fe85294aec98b85d` |
| 43 | `theorem` | [one_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/one-apply--48bc0f6bba4109548fb23cd2.md) | 373 | `result-track:48bc0f6bba4109548fb23cd2d63aae0bb34e86e40f7064f08c075fced58b016f` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--aa02010d7a78e06a8b4c62c8.md) | 377 | `declaration-track:aa02010d7a78e06a8b4c62c834233b5cbd5e724461ba2bf2b95fd39a296dfd3e` |
| 45 | `def` | [comp](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp--5618584e1d094f8dac8748aa.md) | 381 | `declaration-track:5618584e1d094f8dac8748aa23c6c8fb02fc8d3c632f4f3a5b5a00c03710c301` |
| 46 | `theorem` | [comp_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp-apply--461626cb6d0bc2cdf5c9cb60.md) | 387 | `result-track:461626cb6d0bc2cdf5c9cb60aeca453c5855cf9010de7eaa813156a22495df34` |
| 47 | `theorem` | [id_comp](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id-comp--8030e7029004b7410173587a.md) | 392 | `result-track:8030e7029004b7410173587a5fbe6585d927ef739cf09d426f7d7e87eb232ce9` |
| 48 | `theorem` | [comp_id](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp-id--16e8fc81c507628cbffd6c74.md) | 397 | `result-track:16e8fc81c507628cbffd6c747c40cf08d98642d2054a2b51472358fa7bf7d148` |
| 49 | `def` | [inverse](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/inverse--19379f7ba9dab0e28c4bba2d.md) | 403 | `declaration-track:19379f7ba9dab0e28c4bba2d9026b4b3d3cd696ad000e36f066c779e649ebf70` |
| 50 | `theorem` | [ext_ring](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext-ring--2080764932d215db9244f0cb.md) | 414 | `result-track:2080764932d215db9244f0cbb7d8e0ba2ff0db4943ac1ff2e4d92e282d7cdf78` |
| 51 | `theorem` | [ext_ring_iff](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext-ring-iff--0160f04481630904590b82e5.md) | 419 | `result-track:0160f04481630904590b82e5a8343279c86436110854e19473b03c69028cc69e` |
| 52 | `def` | [SMulCommClass.toDistribMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/smulcommclass-todistribmulactionhom--dd843dd8be9e91b9c5beb76a.md) | 430 | `declaration-track:dd843dd8be9e91b9c5beb76ae5fb45dd39a1f923df9760dfdc26d9c688d10316` |
| 53 | `structure` | [MulSemiringActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/mulsemiringactionhom--9bfa8ea7ce71df796a2d5913.md) | 438 | `declaration-track:9bfa8ea7ce71df796a2d5913e13499dcbf67e1288e7a9d84edb89c41824e3e42` |
| 54 | `class` | [MulSemiringActionHomClass](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/mulsemiringactionhomclass--bae360f7956e384967feb970.md) | 459 | `declaration-track:bae360f7956e384967feb970e4eeb0a6b34d55469eb943cda8793706374bc7c9` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--c3117904cc867630dfe48df9.md) | 487 | `declaration-track:c3117904cc867630dfe48df93ab644dbd85a4528b09ef659c88641d7c24414e8` |
| 56 | `def` | [_root_.GRWTSK.Algebra.MulActionHom.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.MulSemiringActionHomClass.toMulSemiringActionHom](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/root-grwtsk-algebra-mulactionhom-variant22262afef858460353a9cef569912936--9e510568978ce3798b015ba8.md) | 508 | `declaration-track:9e510568978ce3798b015ba81ebbc16f416d95055f3817dbaf19ef056012adae` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/instance--83364056a6be97c2d8564bef.md) | 514 | `declaration-track:83364056a6be97c2d8564bef45e9738be170356cd267be410da2b1b42cf0c6d5` |
| 58 | `theorem` | [coe_fn_coe](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/coe-fn-coe--71f5c3621d7e627eeffd5f51.md) | 518 | `result-track:71f5c3621d7e627eeffd5f51eaa4c9179679cab5d8e82ceb56134412f8a637aa` |
| 59 | `theorem` | [coe_fn_coe'](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/coe-fn-coe--a59eb8bca1c3cad2fe663415.md) | 523 | `result-track:a59eb8bca1c3cad2fe663415a78d3e43dd07689a9090d381712645cfcc69ba8a` |
| 60 | `theorem` | [ext](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext--8c4ae459df9ee385cd5b3d22.md) | 528 | `result-track:8c4ae459df9ee385cd5b3d22e25a831278810909354ca7289582b4d120b44acc` |
| 61 | `theorem` | [ext_iff](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/ext-iff--1ebb138fdec462e5976580cf.md) | 532 | `result-track:1ebb138fdec462e5976580cf2c5dbfd25d6cf2f014367ce1c8a0278d0c457ff4` |
| 62 | `theorem` | [map_zero](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-zero--49f8523d2fa324e41b6ab56b.md) | 536 | `result-track:49f8523d2fa324e41b6ab56b834d3c1b0c6dcfe3efdbdb5b5969c528d839b3b7` |
| 63 | `theorem` | [map_add](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-add--b34e24cac8233e7f9ab9079e.md) | 540 | `result-track:b34e24cac8233e7f9ab9079e4a8386f0c6598f75963344846ca57b2f640b12f5` |
| 64 | `theorem` | [map_neg](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-neg--9fb06f5e09efb6e68ddfb702.md) | 544 | `result-track:9fb06f5e09efb6e68ddfb7025c10f756db9e291f59c0e816c7da26fad2f90b9f` |
| 65 | `theorem` | [map_sub](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-sub--d6c1e51efd3f08f653a0fe12.md) | 548 | `result-track:d6c1e51efd3f08f653a0fe12916040a4e416c8bb1db5539e3cafac5e051cf275` |
| 66 | `theorem` | [map_one](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-one--0b8f39c9217722e8ce5520d2.md) | 552 | `result-track:0b8f39c9217722e8ce5520d2001d61af40dfac314ab48f2a317e48c85646dde4` |
| 67 | `theorem` | [map_mul](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-mul--370e7e4cee46880de0515f34.md) | 556 | `result-track:370e7e4cee46880de0515f34ea43e6525be389ab9f4f6ed385c78470265de175` |
| 68 | `theorem` | [map_smul](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/map-smul--4a12322733ba87140706eb1f.md) | 560 | `result-track:4a12322733ba87140706eb1f0bd49d2abf60445dabe693f1e5cf301b46c52096` |
| 69 | `def` | [id](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id--cfe1ecfa93b29ea44b56c135.md) | 567 | `declaration-track:cfe1ecfa93b29ea44b56c135a076edd5a0d8d7b44d289d3518cac4c2ee0b945e` |
| 70 | `theorem` | [id_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id-apply--cdbe2c1b40715d10db4807c6.md) | 572 | `result-track:cdbe2c1b40715d10db4807c6ed4d273e5c1cf6941089ab797fabe833fc349c78` |
| 71 | `def` | [comp](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp--0d6ec18aaeac54b0bee2d8f2.md) | 579 | `declaration-track:0d6ec18aaeac54b0bee2d8f27c14227a2d4a08b8a4a75fb91b2b53f2d14e7f85` |
| 72 | `theorem` | [comp_apply](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp-apply--9e1d80d89547365e3d68646d.md) | 585 | `result-track:9e1d80d89547365e3d68646dda827c4e4d9fd2b078ca4c0f5fd93b098fc5d39b` |
| 73 | `theorem` | [id_comp](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/id-comp--5ad90548c753b58a37e7a2e4.md) | 590 | `result-track:5ad90548c753b58a37e7a2e4caffd5ae807e884d3c13c54f9ea87a7ed885ee2b` |
| 74 | `theorem` | [comp_id](../../../../mathematics/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/declarations/comp-id--a188230a12bab04eeeafcb3b.md) | 595 | `result-track:a188230a12bab04eeeafcb3bce40c05f0ac1cd14615c3f639b1d8cb1e5c745ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
