# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb805314b089ae9ce7ec0d495934bfcc536ed723",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb805314b089ae9ce7ec0d495934bfcc536ed723`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OneMemClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/onememclass--7391afec88582f045c282c72.md) | 71 | `declaration-track:7391afec88582f045c282c72081f13e681fcba34da55da2b235b4b9e2a4678d4` |
| 2 | `class` | [ZeroMemClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/zeromemclass--bc1e75f35d459ffe095fc4af.md) | 79 | `declaration-track:bc1e75f35d459ffe095fc4affd40a35f835de2b5a7468deaad19a53044e1c9da` |
| 3 | `structure` | [Submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/submonoid--b25b1813752454e125b97d4b.md) | 91 | `declaration-track:b25b1813752454e125b97d4bb468a122dad1dc04b3aa4f9925ad5d208f39c354` |
| 4 | `class` | [SubmonoidClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/submonoidclass--b43266b0abdde3118390064c.md) | 104 | `declaration-track:b43266b0abdde3118390064cd1b9cc85f005833ce08a34575bf16f9c2e7eae3e` |
| 5 | `structure` | [AddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/addsubmonoid--90f5cc93400b9fc3e96694f1.md) | 112 | `declaration-track:90f5cc93400b9fc3e96694f12f07b3560fc7af083f2ce3932ae5555c58451f21` |
| 6 | `class` | [AddSubmonoidClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/addsubmonoidclass--36f1916561e0f5a43131bb12.md) | 126 | `declaration-track:36f1916561e0f5a43131bb128a406897967525f2b9ca34dc8d36f93d88cf0730` |
| 7 | `theorem` | [pow_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/pow-mem--e7950511b209271cf15fe065.md) | 133 | `result-track:e7950511b209271cf15fe065eb363b29218600f14f3b35e0abfde89a97fa8a9c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--4982113b38c06c43180c0ca8.md) | 147 | `declaration-track:4982113b38c06c43180c0ca88403b280514d269c5320e2d0aa2037b0e0b6b450` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--9c228d52ada2ce4a3f4db3b9.md) | 152 | `declaration-track:9c228d52ada2ce4a3f4db3b9d9d6ef14820d112b5bd32929d66b22dc9e680fc5` |
| 10 | `theorem` | [mem_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-tosubsemigroup--4651a19fa9b5af06d77783f3.md) | 161 | `result-track:4651a19fa9b5af06d77783f3ee063ee6149e80e00ba4625cd9dbd324bbe376dd` |
| 11 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-carrier--c1bddefe2be357a8b679d7a2.md) | 169 | `result-track:c1bddefe2be357a8b679d7a23d1589a885ab29ee8ae842fe8786229604532bf3` |
| 12 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-mk--5b8754ad0be5b39bb2934503.md) | 175 | `result-track:5b8754ad0be5b39bb29345033fadec6b50d41a49568f0af65c6bd6319ea5aa89` |
| 13 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-set-mk--fe40038031727ddca91f3961.md) | 181 | `result-track:fe40038031727ddca91f39618f8dd52e6decfe849506fa1acb889ad8d258fe81` |
| 14 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mk-le-mk--41d384f26580a88a430ad8c3.md) | 187 | `result-track:41d384f26580a88a430ad8c316c6039c6389c2ab23880f20e010d319461070f7` |
| 15 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/ext--9904298b53ff8e3ec7f7ce23.md) | 194 | `result-track:9904298b53ff8e3ec7f7ce23d581b35c448960ec5c95f09e1fb2023eb04c5a6e` |
| 16 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/copy--810d5da56982d114321e233c.md) | 201 | `declaration-track:810d5da56982d114321e233cb310e26ba775b348bccf20fd5377736ab90c8c86` |
| 17 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-copy--99fa172445b159d1fb8017ee.md) | 211 | `result-track:99fa172445b159d1fb8017ee419197ba6e73939dce87b9d43ae7680943bfcfde` |
| 18 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/copy-eq--f620052ef3357aa49015679c.md) | 217 | `result-track:f620052ef3357aa49015679c881c2dfdc70e2cc8ba38fc64ede29dc6c1e223ab` |
| 19 | `theorem` | [one_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/one-mem--b51343cd4279c3821249269d.md) | 226 | `result-track:b51343cd4279c3821249269dbb487079fb19530580ecaf07b7159a43530ad447` |
| 20 | `theorem` | [mul_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mul-mem--5bc2a7f397551ee1137762e0.md) | 233 | `result-track:5bc2a7f397551ee1137762e078c384c9c70461bd8197072a49b3ca91f5888b24` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--36e89dda8c97deb570ffbabb.md) | 240 | `declaration-track:36e89dda8c97deb570ffbabbde10877445670149370de8be122295c96db08c11` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--53e3e2e6ae0f9672c21e02c7.md) | 247 | `declaration-track:53e3e2e6ae0f9672c21e02c728f7ab570a5fc1c14ef722729f6b6f9325edb038` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--9bdf21d60dbd9d7fdc961a6a.md) | 255 | `declaration-track:9bdf21d60dbd9d7fdc961a6a4501ec0b8ff94d5d57a3482108efffb9a4b7b849` |
| 24 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-bot--9b8f2f71628822dca45caf03.md) | 259 | `result-track:9b8f2f71628822dca45caf03e4ab776597615afa7bf3a12d868729e483c63b69` |
| 25 | `theorem` | [mem_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-top--4cfe4d5c5f682e5f5fbb3fdd.md) | 265 | `result-track:4cfe4d5c5f682e5f5fbb3fdd31860000956d9bb5a49793fd26e75300d6e0d053` |
| 26 | `theorem` | [coe_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-top--d4ffed1d269cc232498d40a9.md) | 271 | `result-track:d4ffed1d269cc232498d40a92983a3e9b397b2c93a1866e6569003ef6b492264` |
| 27 | `theorem` | [coe_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-bot--dbe892169c5f1487c183cb78.md) | 277 | `result-track:dbe892169c5f1487c183cb7820db04abd4225c2cde9d5f271faa1d635c71434c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--9e17647c6352349d3a182ec7.md) | 284 | `declaration-track:9e17647c6352349d3a182ec7b351f2d8c1137835f5bc92a0585af5a7f560afe4` |
| 29 | `theorem` | [coe_inf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-inf--1dd6437c6ba1f72fbf4295a3.md) | 291 | `result-track:1dd6437c6ba1f72fbf4295a3d558af57f12412eef538b694adb85aa7365dd688` |
| 30 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-inf--76e03b34e11ed5aaeaef1007.md) | 297 | `result-track:76e03b34e11ed5aaeaef10071462c2759f5ff167bdd99f565dec8edcd6de41f8` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--977aa592d65b82749b9e0a62.md) | 303 | `declaration-track:977aa592d65b82749b9e0a623267d312c8c116f9d20f69f3fd5093dc9cfe3231` |
| 32 | `theorem` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-sinf--e43c9e1313ff056190a5005b.md) | 312 | `result-track:e43c9e1313ff056190a5005b37bd3f72312e666e000f3aa8adcac595017ea1a8` |
| 33 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-sinf--4eb966b58762f070a6f86f35.md) | 318 | `result-track:4eb966b58762f070a6f86f35503c0faa16cb15a0bd5c58ad676a9a6185f56900` |
| 34 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-iinf--415c7ec60a6389518b311e4e.md) | 324 | `result-track:415c7ec60a6389518b311e4e4fb9a2719c60dc72bd22aca1dc9ec729a6dcb930` |
| 35 | `theorem` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-iinf--6deb601e88a152cac8c76c16.md) | 330 | `result-track:6deb601e88a152cac8c76c16004a0229401229172c73bdd90990567b2bfcd4a4` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--b09e92a9b88909ef4492fb90.md) | 337 | `declaration-track:b09e92a9b88909ef4492fb90dd603d5f686bf72a0bebfbc41a3ee92cad66629c` |
| 37 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/subsingleton-iff--5b771ecde06a830de5a0ca87.md) | 355 | `result-track:5b771ecde06a830de5a0ca871f718b7413301c805c8da047ebb73e5b1be9fd18` |
| 38 | `theorem` | [nontrivial_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/nontrivial-iff--9e6f020b3b0e06e3ba3b8366.md) | 367 | `result-track:9e6f020b3b0e06e3ba3b8366ebb7eec10f81e8ef447384a60faf816dea13870a` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--6aea12f7de44512810b49557.md) | 375 | `declaration-track:6aea12f7de44512810b4955785fd962045fb5740df540b48431ae65c438f4f2a` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/instance--061ef2135e46d84c0fe3d5b9.md) | 379 | `declaration-track:061ef2135e46d84c0fe3d5b9416e90ce965efc0e0aff1d589a8a2761e036125f` |
| 41 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure--c9531dcbf38d8eb89e08e49b.md) | 384 | `declaration-track:c9531dcbf38d8eb89e08e49b4ba139a076d6c0d5f83aa5bef1037271ac0deacd` |
| 42 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-closure--afb87bdf87f18f58bd42ec63.md) | 390 | `result-track:afb87bdf87f18f58bd42ec63204bbc076cd8827ee8b8b0c70d2ff9858566a793` |
| 43 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/subset-closure--d6f45302248b03edcf6c8d00.md) | 397 | `result-track:d6f45302248b03edcf6c8d005f95333bbb618e8e5188c2f384b6494238a45c01` |
| 44 | `theorem` | [not_mem_of_not_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/not-mem-of-not-mem-closure--533a983503f8aaff53cfda9c.md) | 402 | `result-track:533a983503f8aaff53cfda9c5ce565190b47e96c4258b56fb790af0ea1f277e4` |
| 45 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-le--6615580aab5fde0ac995fb8e.md) | 414 | `result-track:6615580aab5fde0ac995fb8ec83a42f94084fcef728dc352106b9d862b8bb3ef` |
| 46 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-mono--63ddf89db83499e754ee909f.md) | 424 | `result-track:63ddf89db83499e754ee909ff5c70374781adacc93cabb9a8b918b59b2a0a63b` |
| 47 | `theorem` | [closure_eq_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-eq-of-le--272cb32b34e4ff03f67e7a75.md) | 430 | `result-track:272cb32b34e4ff03f67e7a7573d5e3edb5b375cc39f0d3d11f073b62d95b6958` |
| 48 | `theorem` | [closure_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-induction--88c7c1ad5da373caf69181d4.md) | 443 | `result-track:88c7c1ad5da373caf69181d4f77c2b26ee0b94f71666621ff2da731a694411d1` |
| 49 | `theorem` | [closure_induction'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-induction--0155fedd82196102fd8b21bf.md) | 451 | `result-track:0155fedd82196102fd8b21bf946fd0d35dec1dda32854e556ef09d9c5fd1b000` |
| 50 | `theorem` | [closure_induction₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-induction--871292af5d1694a21f318269.md) | 465 | `result-track:871292af5d1694a21f3182690dee646f97740930748a933a356d2f94bd3ce101` |
| 51 | `theorem` | [dense_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/dense-induction--52e62d37a44c3bd9da073c60.md) | 483 | `result-track:52e62d37a44c3bd9da073c60d4eeb7ce9c9ec6560c9968936f73a4356c34eacd` |
| 52 | `def` | [gi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/gi--97686de51af15dd51e9e40fd.md) | 494 | `declaration-track:97686de51af15dd51e9e40fd4bf66f2b59315a86c3a05e6e9a607edd7348e1dc` |
| 53 | `theorem` | [closure_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-eq--9033698cb75190d01088d844.md) | 506 | `result-track:9033698cb75190d01088d844a1598c943c2b1bbea0dc7842c3a216e02cf4be50` |
| 54 | `theorem` | [closure_empty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-empty--629a062b33f0c99d371b38ce.md) | 512 | `result-track:629a062b33f0c99d371b38cee3900624ad41bd347e797ef5f6ab7f0f5703413e` |
| 55 | `theorem` | [closure_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-univ--5116225948b936bef1a369ba.md) | 518 | `result-track:5116225948b936bef1a369ba6ab87c595091041d5ec08e75dcce43016ab82b04` |
| 56 | `theorem` | [closure_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-union--6ef5eac704c6398049e5c405.md) | 524 | `result-track:6ef5eac704c6398049e5c4050a0a3e31e2ebc4a75b3028b937e1a91547d3e0ed` |
| 57 | `theorem` | [closure_iUnion](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-iunion--405283fb106812959293e1ac.md) | 530 | `result-track:405283fb106812959293e1ac12bfd8fbe00397f94b0c6fcea56be756d3c37978` |
| 58 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/closure-singleton-le-iff-mem--390c6e9b5e6885a6f8c6a825.md) | 537 | `result-track:390c6e9b5e6885a6f8c6a825ae52681d48443f8eafb8220492cc343235dd4f95` |
| 59 | `theorem` | [mem_iSup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/mem-isup--69b21ac79e90018ae81a96f7.md) | 543 | `result-track:69b21ac79e90018ae81a96f7b969d6593b1c3cfc540497c17b08c861ad13a2b4` |
| 60 | `theorem` | [iSup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/isup-eq-closure--b4bc9e8d5eb92e1e549a701f.md) | 551 | `result-track:b4bc9e8d5eb92e1e549a701f21ce07214886d2d78f1f2f7ec65457d215c9bfc6` |
| 61 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/disjoint-def--5a8f910cabdfcf6ce23c55b4.md) | 558 | `result-track:5a8f910cabdfcf6ce23c55b49493684640f91543d9dc795c3456e15fd0323463` |
| 62 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/disjoint-def--e27f2e6420fefa46423d6500.md) | 564 | `result-track:e27f2e6420fefa46423d6500c995a52fd74d084cc9fbe7fc3fdc9626b6279bc5` |
| 63 | `def` | [eqLocusM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/eqlocusm--9a69cba730d00ce83eeae93d.md) | 580 | `declaration-track:9a69cba730d00ce83eeae93df591ae31cea0769d59a6654366e5c858a9897114` |
| 64 | `theorem` | [eqLocusM_same](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/eqlocusm-same--e4b0aa6fe2d767bf98475fdb.md) | 588 | `result-track:e4b0aa6fe2d767bf98475fdbd794e55d8938e9a5d3eef6dbeddb888e1dfa5f26` |
| 65 | `theorem` | [eqOn_closureM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/eqon-closurem--2f8ab9088b6c0b0e890630b6.md) | 597 | `result-track:2f8ab9088b6c0b0e890630b68b90d9d6b7babe6314f80a1c6915471fe74ece36` |
| 66 | `theorem` | [eq_of_eqOn_topM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/eq-of-eqon-topm--56516fa7bbf8c1279abc56a0.md) | 603 | `result-track:56516fa7bbf8c1279abc56a0aa5794396ffe6227f96b5adf815a4249f590bcd8` |
| 67 | `theorem` | [eq_of_eqOn_denseM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/eq-of-eqon-densem--1645360ea4636c37ae8ec4c3.md) | 609 | `result-track:1645360ea4636c37ae8ec4c3fc60a58fee0f55fdbb3a34bfda5fcd8243ed85a0` |
| 68 | `def` | [IsUnit.submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/isunit-submonoid--7f6016bb7e83b8eac006a8a3.md) | 627 | `declaration-track:7f6016bb7e83b8eac006a8a3c635c3ea50673c555607def39ae1f4841e9310fe` |
| 69 | `theorem` | [IsUnit.mem_submonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/isunit-mem-submonoid-iff--bc942ff9f265ea1b1db88499.md) | 638 | `result-track:bc942ff9f265ea1b1db884991f5d401d535bcf40cacc4b0975bf37f3b612cdda` |
| 70 | `def` | [ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/ofclosuremeqtopleft--1f131671b24a7a9de2bc9f53.md) | 658 | `declaration-track:1f131671b24a7a9de2bc9f53af8bc260c1adac8334b66b70af19a1ebb389a6d1` |
| 71 | `theorem` | [coe_ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-ofclosuremeqtopleft--7b8f8c733ac501fd59715d31.md) | 670 | `result-track:7b8f8c733ac501fd59715d31c17b1782ba6a8deedec5e4dadf5cad46f3d5442e` |
| 72 | `def` | [ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/ofclosuremeqtopright--30889a48f34c360e6ea836a0.md) | 683 | `declaration-track:30889a48f34c360e6ea836a073ed9eab945502bdb5ad90445a091884e84a9c3d` |
| 73 | `theorem` | [coe_ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfaba35514011cdd0195dcb78d1a9c55d3c0fa6683a0ae41b64370f2235dcc871.lean/declarations/coe-ofclosuremeqtopright--f0586b48de2f8e221d3ca5db.md) | 696 | `result-track:f0586b48de2f8e221d3ca5db3cd28ab829829bbfe7212dd3a320e15837873700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
