# Verification target: GRWTSK.Algebra.GroupTheory.Freiman.Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ac8c6151897609e54bd1d8b26504305af69a263",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ac8c6151897609e54bd1d8b26504305af69a263`.

Source path: `GRWTSK/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/addfreimanhom--84a1cca210e447e7e2a780e8.md) | 66 | `declaration-track:84a1cca210e447e7e2a780e877b654d91801e93542b2ccf0f09c429a74d54442` |
| 2 | `structure` | [FreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhom--09a1db3aae1896cb01dd697e.md) | 77 | `declaration-track:09a1db3aae1896cb01dd697eab319361de81f90f457b9f281390c9aad322ffb7` |
| 3 | `class` | [AddFreimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/addfreimanhomclass--266df1776e48353376664f87.md) | 98 | `declaration-track:266df1776e48353376664f87545fff59745f7339297cc055fc92d59f890082dd` |
| 4 | `class` | [FreimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhomclass--9951a403f9ee7c0a555a87e6.md) | 112 | `declaration-track:9951a403f9ee7c0a555a87e63153397b9f1601751459698d944321478d0ac489` |
| 5 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.AddFreimanHom.Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.FreimanHomClass.toFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/root-grwtsk-algebra-grouptheory-addfreimanhom-variantce26be2a90e3fa04e54--f341470a724acc8fb5f6bb58.md) | 135 | `declaration-track:f341470a724acc8fb5f6bb588e49c7046c96be867e8474ecf511fcecb1cea46d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/instance--b18fe9f2246ffcc74e3851e0.md) | 141 | `declaration-track:b18fe9f2246ffcc74e3851e0b582e3efb4bc31b2c27e35284b2d8d2db6849c71` |
| 7 | `theorem` | [map_prod_eq_map_prod](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/map-prod-eq-map-prod--72f052e5992d0130dc2572a9.md) | 146 | `result-track:72f052e5992d0130dc2572a95c4783c098419557b78076906f691db496e2de5e` |
| 8 | `theorem` | [map_mul_map_eq_map_mul_map](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/map-mul-map-eq-map-mul-map--5d57d78a8c4a6191038ddb41.md) | 155 | `result-track:5d57d78a8c4a6191038ddb41c3279e94c4af352fa3395733751159c7650c7810` |
| 9 | `instance` | [funLike](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/funlike--bb4a2924c55aa5d89488eeb2.md) | 165 | `declaration-track:bb4a2924c55aa5d89488eeb2e87420dfcb5428a09d58096005e4e5e6bbd47ca0` |
| 10 | `instance` | [freimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhomclass--5a9375addeb055d23f190701.md) | 172 | `declaration-track:5a9375addeb055d23f1907019999972e129946f48346f4a86025f64dc8d7af32` |
| 11 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/tofun-eq-coe--c125210895af19833d7fa5e0.md) | 190 | `result-track:c125210895af19833d7fa5e0adfc59ea894b4ad52212a874ee684b7cfb1917d0` |
| 12 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/ext--c686a004f05e0625e8b49746.md) | 196 | `result-track:c686a004f05e0625e8b49746583ff3e49e67b48144f444951379d57cae6f2226` |
| 13 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/coe-mk--6872d1953a5a6fea7750ddd6.md) | 202 | `result-track:6872d1953a5a6fea7750ddd6f5aaaa645400d4a493d16d0910655ddd444a80cf` |
| 14 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/mk-coe--5b1a065dfe1c355a575efb35.md) | 215 | `result-track:5b1a065dfe1c355a575efb35395e98c8bdb2d0cf8f6a0098fdb37b71a736f9b4` |
| 15 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/id--b8d6de371b60b0a1f4d789d9.md) | 222 | `declaration-track:b8d6de371b60b0a1f4d789d950693b6c78395d18059edfe8d3898ce5ee50a057` |
| 16 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/comp--99c3f78c1f10e81cca542b0c.md) | 231 | `declaration-track:99c3f78c1f10e81cca542b0c3b3411e87448b699d5f5f1f224b58642c0214f76` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/coe-comp--734a8c72d3d5fed73e624e9b.md) | 244 | `result-track:734a8c72d3d5fed73e624e9b0fb0244b4cc0fc7f73c5ecf2e994640b75cd13e5` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/comp-apply--0aea927ffd33943bcefeb726.md) | 250 | `result-track:0aea927ffd33943bcefeb726be09468c120e68a85cea7d2de986ad9f9ef784ad` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/comp-assoc--6a3a379b61537cdba789bf4d.md) | 256 | `result-track:6a3a379b61537cdba789bf4db6c77b75154eef40baece336333fb4cdc770fd50` |
| 20 | `theorem` | [cancel_right](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/cancel-right--7551f465503f451689c4075c.md) | 263 | `result-track:7551f465503f451689c4075cfa6f219340a95cdbee62a3feeb00eb0e489236fb` |
| 21 | `theorem` | [cancel_right_on](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/cancel-right-on--b59e1ac3c4666d2675cf359e.md) | 270 | `result-track:b59e1ac3c4666d2675cf359e88b823e541a8ffb8244aa7c8f5f02021f3666b8c` |
| 22 | `theorem` | [cancel_left_on](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/cancel-left-on--bbb69113d0a393607f58c532.md) | 277 | `result-track:bbb69113d0a393607f58c53255dcb17f07a9f5c8eac574ce0d2cc6f367c61882` |
| 23 | `theorem` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/comp-id--cb843ffec8ce522b69eeab12.md) | 284 | `result-track:cb843ffec8ce522b69eeab129d65be9a00d92786b509027a3bdfa8a946cb0079` |
| 24 | `theorem` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/id-comp--621e0c4016e4f8ab23ec5f3b.md) | 290 | `result-track:621e0c4016e4f8ab23ec5f3b28cad0b78a18ab23f75e2ef22d0533f36ded2ede` |
| 25 | `def` | [const](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/const--93ad5214c585e91f02e274dc.md) | 297 | `declaration-track:93ad5214c585e91f02e274dcb56a518f4e5aeae4be4670e6d6e322cd114d5dce` |
| 26 | `theorem` | [const_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/const-apply--e5990734f28f9d1600312781.md) | 305 | `result-track:e5990734f28f9d16003127818f5b3327f518477585fe161b82ec7469c965efd6` |
| 27 | `theorem` | [const_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/const-comp--378240dc12de9782d096ea87.md) | 311 | `result-track:378240dc12de9782d096ea87c37af70476bd07953756546ea8b076dbb7b2da09` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/instance--297c045b7b85bafc4da7f384.md) | 318 | `declaration-track:297c045b7b85bafc4da7f384f22b067ea33cc906be1e7b6c11caa44e531b385c` |
| 29 | `theorem` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/one-apply--c839c0f4091ab5f9e482760e.md) | 322 | `result-track:c839c0f4091ab5f9e482760ee27cf553715c56c286aa9c8c115ac00d67a681a6` |
| 30 | `theorem` | [one_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/one-comp--9e4677aa72c2aecb5d6704ab.md) | 328 | `result-track:9e4677aa72c2aecb5d6704ab5a2ab1ebe87155280900cf764af2d3957d7a9e05` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/instance--1f93c2b05cdc21e00602625c.md) | 334 | `declaration-track:1f93c2b05cdc21e00602625cd545b978c23ae0232f6663ac7c3c850e9dd37bdd` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/instance--a5da5e874787921555c31e74.md) | 339 | `declaration-track:a5da5e874787921555c31e741907f44130614929be7402eb5af91b516b871ab1` |
| 33 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/mul-apply--dfabef85754a45bb68ede62f.md) | 348 | `result-track:dfabef85754a45bb68ede62fa5cb723a280e66b27c3caba9c0206f72b3ef202b` |
| 34 | `theorem` | [mul_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/mul-comp--fbf75196bab07fc5a3e036b8.md) | 354 | `result-track:fbf75196bab07fc5a3e036b8e00abb94565bdc1fcd765bfdf5d05ddca128e8e5` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/instance--7bb1b7f599d8f655a6215a64.md) | 365 | `declaration-track:7bb1b7f599d8f655a6215a64258a03940c26404614fa5e54c6c337acd6252495` |
| 36 | `theorem` | [inv_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/inv-apply--458610af48496ccfe2553399.md) | 372 | `result-track:458610af48496ccfe25533998ddc9c266e9c931687b4ccb194b94025b6d0920c` |
| 37 | `theorem` | [inv_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/inv-comp--8f1e9108f2de6d86810bcbc3.md) | 378 | `result-track:8f1e9108f2de6d86810bcbc3d00b9c6ebbac2126b1203c7cf31ae08fa78c017a` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/instance--281df806e8d5b3232552b813.md) | 388 | `declaration-track:281df806e8d5b3232552b813e43c52c4a29e98ada6fa1dc444f7aee060f380e7` |
| 39 | `theorem` | [div_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/div-apply--eab3a04a9a6082cfa8f19358.md) | 396 | `result-track:eab3a04a9a6082cfa8f193584410dc9262a4b04541c90e1f8aa7c11f9c647677` |
| 40 | `theorem` | [div_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/div-comp--99e78cbb2bce9180c6baea6e.md) | 402 | `result-track:99e78cbb2bce9180c6baea6e22466e4d8e0faaad3e4f4900cc0e99def478a938` |
| 41 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/commmonoid--0963eebf209c29f7a6c68261.md) | 413 | `declaration-track:0963eebf209c29f7a6c68261fc22abd1a7d35a0ef6ede009c318d034699e81e4` |
| 42 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/commgroup--6ca20efb63adf6a37cabe192.md) | 433 | `declaration-track:6ca20efb63adf6a37cabe19252dfd7deb69682cebc94c95d498c95c20141d4e9` |
| 43 | `instance` | [MonoidHom.freimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/monoidhom-freimanhomclass--d01aafa07b69cd5ba9b31faa.md) | 463 | `declaration-track:d01aafa07b69cd5ba9b31faa1cea2ee760c74cf2d7b1413cff7fb0f69fa7d74f` |
| 44 | `def` | [MonoidHom.toFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/monoidhom-tofreimanhom--56e342efbffd9f6337b7340e.md) | 472 | `declaration-track:56e342efbffd9f6337b7340eb85b7d73caafcd9923f330fc524935fc5d0b1182` |
| 45 | `theorem` | [MonoidHom.toFreimanHom_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/monoidhom-tofreimanhom-coe--bfabd73c41b2a52379187891.md) | 480 | `result-track:bfabd73c41b2a52379187891de428557d7628bb61eb186e69a7dda3e5a512e88` |
| 46 | `theorem` | [MonoidHom.toFreimanHom_injective](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/monoidhom-tofreimanhom-injective--a4b818c157ea37b82d7b0e57.md) | 486 | `result-track:a4b818c157ea37b82d7b0e5779d829a4d053ce876d1790f0cfc3136e3d246ef0` |
| 47 | `theorem` | [map_prod_eq_map_prod_of_le](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/map-prod-eq-map-prod-of-le--7c70175b8a0a6d304b5d607f.md) | 499 | `result-track:7c70175b8a0a6d304b5d607f4746cfc4577f3ecf9101bff1466661a56707fabb` |
| 48 | `def` | [FreimanHom.toFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhom-tofreimanhom--1c00c891b5e7425d3ea6dcdc.md) | 536 | `declaration-track:1c00c891b5e7425d3ea6dcdc8817f3099ca629b8142c2a7fa9e2d9edf8f9858b` |
| 49 | `theorem` | [FreimanHom.FreimanHomClass_of_le](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhom-freimanhomclass-of-le--08ebcbc0ddda44a4f28694ea.md) | 546 | `result-track:08ebcbc0ddda44a4f28694eaedd1adc8c02b938d38b3a5e6bc07952e6e1fb082` |
| 50 | `theorem` | [FreimanHom.toFreimanHom_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhom-tofreimanhom-coe--e06d98630dfa8b06744f8caa.md) | 554 | `result-track:e06d98630dfa8b06744f8caab824097c48892dda028f39bb452a6a23a42c0448` |
| 51 | `theorem` | [FreimanHom.toFreimanHom_injective](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/declarations/freimanhom-tofreimanhom-injective--6943597b4c94af016efaec2f.md) | 561 | `result-track:6943597b4c94af016efaec2fdb13ef9c0e169ce983036d370bdc6c3a39374c93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
