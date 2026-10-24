# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "233d4d95593ffa28df7cfee8539ae936eed3092d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `233d4d95593ffa28df7cfee8539ae936eed3092d`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/instance--dfd79b60e2f9699368b6e32f.md) | 74 | `declaration-track:dfd79b60e2f9699368b6e32f1dab6b91ab7855c9389ab6cbc5f505ce0334d46b` |
| 2 | `theorem` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/coe-sinf--a38c07c8901742aebd8ba803.md) | 83 | `result-track:a38c07c8901742aebd8ba8032e7c28179491cd3303d1d37aeb590c254d4bfcbf` |
| 3 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/mem-sinf--d99ca27ef4e863ff7088e5a8.md) | 87 | `result-track:d99ca27ef4e863ff7088e5a86efd6cab790c8fbc646fcf69ec9feef659449978` |
| 4 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/mem-iinf--ca4a69ea3f30237ddb297ca5.md) | 91 | `result-track:ca4a69ea3f30237ddb297ca58ea9996a0686f123cc94f8527a4e4de10d97dfb7` |
| 5 | `theorem` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/coe-iinf--c06d701fa6a24be1b8a048b0.md) | 95 | `result-track:c06d701fa6a24be1b8a048b022a2e68237d316133581aa7fc22962b2d8bfa4a9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/instance--b6ee65e97f9989723245459e.md) | 100 | `declaration-track:b6ee65e97f9989723245459ea0a3a7ec8e8e7ff99f55be149a1d89894265cb46` |
| 7 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure--febef65d4c5f5cac661aeaa5.md) | 119 | `declaration-track:febef65d4c5f5cac661aeaa59d3035f073a033388894d9cf9e906a75b9e84efd` |
| 8 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/mem-closure--a9f9f6ac2b4bfe1c2aa1504a.md) | 123 | `result-track:a9f9f6ac2b4bfe1c2aa1504a2533a8ab1581272c96ab9ab41396eeeea6625e19` |
| 9 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/subset-closure--d5cd2b4689b1508f60331fef.md) | 129 | `result-track:d5cd2b4689b1508f60331fef98565a34eae0c9ed8a6c30ca075acdc078952e9a` |
| 10 | `theorem` | [notMem_of_notMem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/notmem-of-notmem-closure--4de72011536ab71121ca4184.md) | 132 | `result-track:4de72011536ab71121ca418410c226e5244070974fd0ddda6259eebce24fadc8` |
| 11 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-le--712c68dea92461879ab07751.md) | 148 | `result-track:712c68dea92461879ab077517bdfb6ff35a365a711f5688e9788831e2e67e04f` |
| 12 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-mono--70f68c25717a3d53763576fc.md) | 156 | `result-track:70f68c25717a3d53763576fca1b7991eb11b0596042b7ac8efd227a20024fc09` |
| 13 | `theorem` | [closure_eq_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-eq-of-le--42edc9de11c1e1b2b6b2e215.md) | 160 | `result-track:42edc9de11c1e1b2b6b2e2151025214ce28706d2a0d35c4e168e9264ce071e93` |
| 14 | `theorem` | [closure_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-induction--49f6a06b4087711bb60a6888.md) | 171 | `result-track:49f6a06b4087711bb60a688881a2de27980975ebd1921d44ff8648d1a9b147ea` |
| 15 | `theorem` | [closure_induction₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-induction--346e434d5b37aa08ed464a69.md) | 184 | `result-track:346e434d5b37aa08ed464a6920d5f12b9a422cac3e52c735ed930033ba5805b1` |
| 16 | `theorem` | [dense_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/dense-induction--4bea7f906e619223cea46493.md) | 207 | `result-track:4bea7f906e619223cea464930b4d06720d4991cb3eec58786abf83124f7dff73` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/example--bc4519f365e0d990888b3bf3.md) | 219 | `declaration-track:bc4519f365e0d990888b3bf313191b4ca7adacf43ae95b35ce2f33aab3c137af` |
| 18 | `lemma` | [closure_eq_one_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-eq-one-union--992b0ac821dfefa81352ffd0.md) | 228 | `result-track:992b0ac821dfefa81352ffd0fba546c9a99fc724288880d86029e6f18af2b7f4` |
| 19 | `def` | [gi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/gi--8cfd55f648d1f76b2d1d603e.md) | 248 | `declaration-track:8cfd55f648d1f76b2d1d603e912da979dadbaa09a91932720e1cb77e7cfb829f` |
| 20 | `theorem` | [closure_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-eq--045189c9b883af82612cbf62.md) | 258 | `result-track:045189c9b883af82612cbf6283d4c3c7ec489a5cb2520a3cb0413df1d6a4402a` |
| 21 | `theorem` | [closure_empty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-empty--940c46c2d32ee83727fa42cb.md) | 262 | `result-track:940c46c2d32ee83727fa42cb7e62a9cfe8c16a4bfd863e8256c09ff82c08876c` |
| 22 | `theorem` | [closure_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-univ--0f9b85645e962287898c2b03.md) | 266 | `result-track:0f9b85645e962287898c2b030809a8702ba59b77db1ca470bddf0fb03b2853c1` |
| 23 | `theorem` | [closure_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-union--e0a38e0e0d9d970cc1eee457.md) | 270 | `result-track:e0a38e0e0d9d970cc1eee4579fa71e033e161d1829357d373f81e99b3947fe15` |
| 24 | `theorem` | [sup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/sup-eq-closure--ba4e3ef1d7ba22dda14303c3.md) | 274 | `result-track:ba4e3ef1d7ba22dda14303c341acb9943b72355a5b52449c3b3364c3d222ea0a` |
| 25 | `theorem` | [closure_iUnion](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-iunion--e3a5ead58ed5837008abc6c9.md) | 278 | `result-track:e3a5ead58ed5837008abc6c90009ea701ca17daa8a07989116a4582aa891c841` |
| 26 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-singleton-le-iff-mem--f3b9cd459c858fe33963f94e.md) | 282 | `result-track:f3b9cd459c858fe33963f94edcbdf65918af454295ba4c6c4ce9d9361e878f49` |
| 27 | `theorem` | [closure_insert_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-insert-one--f5a22ef8570693426733ea72.md) | 286 | `result-track:f5a22ef8570693426733ea72b2467775a7a4d7fa54f2ca827698f5a3d96381bc` |
| 28 | `theorem` | [mem_iSup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/mem-isup--2782f485d77e9ded38b32609.md) | 291 | `result-track:2782f485d77e9ded38b32609d4a72c4424d256f7d9356922eb2ab980405d19f3` |
| 29 | `theorem` | [iSup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/isup-eq-closure--b65d4d9f3d56b74182f8a522.md) | 297 | `result-track:b65d4d9f3d56b74182f8a522d4044918aa5f4ea16721174f6f875fee71ca6618` |
| 30 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/disjoint-def--6104cb51a4a7d18f318da0ed.md) | 302 | `result-track:6104cb51a4a7d18f318da0ed5743f1c5cb6ad0b7e78f0e5f1f443d5fe00fd619` |
| 31 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/disjoint-def--b7f95e573e3003ac2289abff.md) | 307 | `result-track:b7f95e573e3003ac2289abffed9acf8d953792f1c46c60e702a0eecb2b7a9725` |
| 32 | `lemma` | [closure_sdiff_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-sdiff-eq-closure--6733c5441f4837c4a958ce81.md) | 314 | `result-track:6733c5441f4837c4a958ce810c9d9c7ffd9db00ee7964c74ec105490d402e043` |
| 33 | `lemma` | [closure_sdiff_singleton_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/closure-sdiff-singleton-one--5e549c04e9a8a10ada171301.md) | 322 | `result-track:5e549c04e9a8a10ada171301929f0571111ff0fa1168f3168510c16f45d68d0a` |
| 34 | `theorem` | [eqOn_closureM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/eqon-closurem--efea68e2b68535ec4d01101b.md) | 337 | `result-track:efea68e2b68535ec4d01101b0dd17f34be15857a65eea65eb74ef79103a12eb5` |
| 35 | `theorem` | [eq_of_eqOn_denseM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/eq-of-eqon-densem--b9f631f0d014b11e05fdcc67.md) | 341 | `result-track:b9f631f0d014b11e05fdcc67fb1f0c53522ad5b247ba8039f87f5828f01f63b0` |
| 36 | `def` | [IsUnit.submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/isunit-submonoid--bed98418fbdad1a40489c298.md) | 357 | `declaration-track:bed98418fbdad1a40489c298347b2eebc586302fc9f4a91556d46b240d5b75d6` |
| 37 | `theorem` | [IsUnit.mem_submonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/isunit-mem-submonoid-iff--4ff061a14ea40c2b588093d2.md) | 366 | `result-track:4ff061a14ea40c2b588093d2a611f0f32488355a90812b43d239709b7ebc70a0` |
| 38 | `def` | [ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/ofclosuremeqtopleft--b262883f2c04faab3c6da91a.md) | 384 | `declaration-track:b262883f2c04faab3c6da91aaa510d765d80b605eff07c964acde8aa33cfe6ce` |
| 39 | `theorem` | [coe_ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/coe-ofclosuremeqtopleft--59930ca9249b5e7fc69d49c6.md) | 394 | `result-track:59930ca9249b5e7fc69d49c65f34b98a9cc9055c930a144dc16e7ef59ba27c7f` |
| 40 | `def` | [ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/ofclosuremeqtopright--b113df2907ce9946f1ffc22f.md) | 405 | `declaration-track:b113df2907ce9946f1ffc22f8b476e564e356ed8b14e8d59949a2a81955fb40e` |
| 41 | `theorem` | [coe_ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/declarations/coe-ofclosuremeqtopright--ae6550dc07aa488d2652eef7.md) | 416 | `result-track:ae6550dc07aa488d2652eef7f296d9083b9d05920133ed287bd474112a4d4d17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
