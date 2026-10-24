# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.UnionLift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/map-continuousat--8bdb3b68d9105d5e72c5a45d.md) | 36 | `result-track:8bdb3b68d9105d5e72c5a45dde1547ed371d1b55142006883e3318d51511f6c9` |
| 2 | `theorem` | [map_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/map-continuouswithinat--3616da10e09768c9a44be9df.md) | 39 | `result-track:3616da10e09768c9a44be9dfeff532bbf19cb43c863b7fa2fcb8da107a6a7566` |
| 3 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/continuousat--fd7ced8ea96fccbf886d470f.md) | 55 | `result-track:fd7ced8ea96fccbf886d470f7a36366053502d155268b059ce203cfe0742a284` |
| 4 | `theorem` | [map_specializes](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/map-specializes--5578ef9e161510e54200a1c6.md) | 58 | `result-track:5578ef9e161510e54200a1c65772ba92bb099abae4df882a05bc25418dd45cd3` |
| 5 | `def` | [equivFnOfDiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/equivfnofdiscrete--6b1293468d460a6458171f7b.md) | 68 | `declaration-track:6b1293468d460a6458171f7bc1d0bca79933ad3a58e97383ffddcf334f7ec03a` |
| 6 | `lemma` | [coe_equivFnOfDiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-equivfnofdiscrete--0461a0a44bfa69fa9deff9ac.md) | 74 | `result-track:0461a0a44bfa69fa9deff9ac70f6720fc3b7253c18efbd1dd70b321fd2a15540` |
| 7 | `lemma` | [equivFnOfDiscrete_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/equivfnofdiscrete-symm-apply--b44bc14d0138e5c3368b6697.md) | 76 | `result-track:b44bc14d0138e5c3368b66977edec94fd143185aad8e2eb58e7a79b5f485834b` |
| 8 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/id--e38ebe3fec39d6400b322802.md) | 83 | `declaration-track:e38ebe3fec39d6400b322802038eb5d1dab9c535e98caa5d940227821ece1e94` |
| 9 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-id--a534cb2a54ff373ee291f1f1.md) | 87 | `result-track:a534cb2a54ff373ee291f1f1e1eb721aae575c6f9f1843d7c7b43772231f6bb5` |
| 10 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/const--882be2b4e834ecbebfa9d4df.md) | 91 | `declaration-track:882be2b4e834ecbebfa9d4df2fc4a83b26d4903592dc0bbce277be3f78a29a0f` |
| 11 | `theorem` | [coe_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-const--ac533d973595b94402a695dd.md) | 95 | `result-track:ac533d973595b94402a695dde6c03aec2009ae5bdb63c2844126c657d9e6cff1` |
| 12 | `def` | [constPi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/constpi--8369e09cab3b41bd1ce3db35.md) | 100 | `declaration-track:8369e09cab3b41bd1ce3db35291ca73b624b2ddcc70d27043051d479c14f2cff` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/instance--51ad332ac2bb5de4e9102a39.md) | 103 | `declaration-track:51ad332ac2bb5de4e9102a39859ce5fdafc4f2867f538c9f437bca4f731904df` |
| 14 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/id-apply--d3c1ddc045a520999c7ba02c.md) | 109 | `result-track:d3c1ddc045a520999c7ba02cd6bb1f4b20b00f13c8f847b7b71249411315e390` |
| 15 | `theorem` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/const-apply--625b8ae99324450ad174a16a.md) | 113 | `result-track:625b8ae99324450ad174a16a2ba677940d0d73004137215a9977cee8aa8b725b` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/comp--df7e53765ccd1fec7f6abaff.md) | 117 | `declaration-track:df7e53765ccd1fec7f6abafff78c5798f78aa5f09d739d9ca810b6d1bbb0173e` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-comp--6b816d53956ff7d8272c18ee.md) | 121 | `result-track:6b816d53956ff7d8272c18eeb5592e3aa9f1b2bf8313ff7b026bb4a6af28eab7` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/comp-apply--3384a4c56f35b0cf6679426e.md) | 125 | `result-track:3384a4c56f35b0cf6679426ea8155af57b5f248801c6944202dfc53849b6f028` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/comp-assoc--2f3c4977b4269ecdfa704ac5.md) | 129 | `result-track:2f3c4977b4269ecdfa704ac58dacf3d62b72431c0f5a89c2da918e5955db15e6` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/id-comp--3701fb7de60fb8ec70a90d9b.md) | 134 | `result-track:3701fb7de60fb8ec70a90d9b6e0f62c8ec930e78ef9b254d074600da9ec6cbf7` |
| 21 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/comp-id--a3d7fdc36fbdf3b636541360.md) | 138 | `result-track:a3d7fdc36fbdf3b636541360ad817e3a3a469d12de6586cd9f62c60f0362314e` |
| 22 | `theorem` | [const_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/const-comp--35674cd45a3423b180813af4.md) | 142 | `result-track:35674cd45a3423b180813af4926268e0f9caabb6b1c8daa980a39d2ce7f386e9` |
| 23 | `theorem` | [comp_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/comp-const--39636071071529defeafcdb1.md) | 146 | `result-track:39636071071529defeafcdb11625197e3b4733657001925e5b8ecde6f5e0a30e` |
| 24 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/cancel-right--c6b7c33506fc03ca6c60b6a4.md) | 150 | `result-track:c6b7c33506fc03ca6c60b6a4b09e0f692f6757a290d8c1766390f66dd5211de5` |
| 25 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/cancel-left--64fb6f3f5070b1ac5b814111.md) | 155 | `result-track:64fb6f3f5070b1ac5b8141118df75c306a20821f58294a5230e6311ea4a40b45` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/instance--987605ac46bda7fa629e37ce.md) | 159 | `declaration-track:987605ac46bda7fa629e37ce76374f1c493e987184bf6c778ddab1005d4623ed` |
| 27 | `def` | [fst](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/fst--a1a197938c2a5784a755a28b.md) | 170 | `declaration-track:a1a197938c2a5784a755a28b4265675a385cfec76189f3197916ed6640e56e66` |
| 28 | `def` | [snd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/snd--a110503691bda61fb805722c.md) | 175 | `declaration-track:a110503691bda61fb805722c63d05abdc670e9f8de20f58f85979ab0f1ce4a37` |
| 29 | `def` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/prodmk--a6e773c4e6a9dcc5765d6f86.md) | 179 | `declaration-track:a6e773c4e6a9dcc5765d6f860a76aadd5e8fda6dda3d787654da5fb39773d9de` |
| 30 | `def` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/prodmap--9bf6a37278ae7342df674ff5.md) | 184 | `declaration-track:9bf6a37278ae7342df674ff5d141e920d4ee87f9b3e039d1d6dfe6c39c5ec174` |
| 31 | `theorem` | [prod_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/prod-eval--48dc33dbc09065cc4b82efa7.md) | 188 | `result-track:48dc33dbc09065cc4b82efa79a65f6b38b3450f99eca3bc7bdc50bc1689506e8` |
| 32 | `def` | [prodSwap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/prodswap--206ae997a25d5bdd09d34e43.md) | 193 | `declaration-track:206ae997a25d5bdd09d34e4317be89c3246c814ffe364cfee88434be5495be1e` |
| 33 | `def` | [sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/sigmamk--9cbfff9224a06e9eb4e09b15.md) | 203 | `declaration-track:9cbfff9224a06e9eb4e09b150a61a3d3c0fd1aef507eadee911a960d46628b72` |
| 34 | `def` | [sigma](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/sigma--55f072c1308e5d8577337345.md) | 211 | `declaration-track:55f072c1308e5d857733734503139786f777d559a9c9f8fbd04151a765ba288c` |
| 35 | `def` | [sigmaEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/sigmaequiv--2e27b88ff3d7b148e644dd66.md) | 220 | `declaration-track:2e27b88ff3d7b148e644dd66df38a199892cb715b6c177f642b925fee0068bee` |
| 36 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/pi--65fbbfb975f72aa6ef986e9a.md) | 234 | `declaration-track:65fbbfb975f72aa6ef986e9a5376b34e68cc470c5bce95b0da9fbd466937ea83` |
| 37 | `theorem` | [pi_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/pi-eval--37ce6205ac48d514c92a1549.md) | 238 | `result-track:37ce6205ac48d514c92a1549889f286e2ef1543c59ba39c308b43bc5535f534d` |
| 38 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/eval--564d1b69826cf03e321b5e72.md) | 243 | `declaration-track:564d1b69826cf03e321b5e720cb09ef6dfb32d23b90c93910006f3987604540b` |
| 39 | `def` | [piEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/piequiv--c940c958fe81c834316296be.md) | 252 | `declaration-track:c940c958fe81c834316296bef875110620c72d46849a0bc88f473bf7530f3462` |
| 40 | `def` | [piMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/pimap--5ddbc25b3e8706cfa0df7aaa.md) | 261 | `declaration-track:5ddbc25b3e8706cfa0df7aaad11118e124be1d55db30b77469a553e7d070ffa8` |
| 41 | `def` | [precomp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/precomp--4b16db5c6d189c674ba299cd.md) | 265 | `declaration-track:4b16db5c6d189c674ba299cd2f68c2feb89d2f2fc7d0ad01fdb98b0aae112f19` |
| 42 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/restrict--8e7b810bf8bb87e2bd9e4042.md) | 275 | `declaration-track:8e7b810bf8bb87e2bd9e40422950e3f223ddb64b4b2579bc9ddc1c6ae671491b` |
| 43 | `theorem` | [coe_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-restrict--52eb8dca0fa19b2f142c5766.md) | 279 | `result-track:52eb8dca0fa19b2f142c5766b57c1fd00f4371b9d35cdc59d8c36da782b06045` |
| 44 | `theorem` | [restrict_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/restrict-apply--9c6c8287829d6579cbfff071.md) | 283 | `result-track:9c6c8287829d6579cbfff071017c027c8bf702be2201b79db3990c0cd0f1aa34` |
| 45 | `theorem` | [restrict_apply_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/restrict-apply-mk--ca8d70ac4a3195bc6ed3ec8c.md) | 287 | `result-track:ca8d70ac4a3195bc6ed3ec8cc2225cbd9fd5c34796bef6eca1ff9e2efb3b95ce` |
| 46 | `theorem` | [injective_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/injective-restrict--6dd2e84b76a211e0648db0f7.md) | 291 | `result-track:6dd2e84b76a211e0648db0f755c1a1e9ea6b52990f2f44dee2711835786deef2` |
| 47 | `def` | [restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/restrictpreimage--0fbf718413e9f2e1b3556d77.md) | 298 | `declaration-track:0fbf718413e9f2e1b3556d7700e6536803bbc00d0ba3ad871b8afc2045146d21` |
| 48 | `def` | [liftCover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftcover--adc8da03d638575cdc194969.md) | 313 | `declaration-track:adc8da03d638575cdc19496951210892c3f97dfc448ce59e4e22ced0b1ea3588` |
| 49 | `theorem` | [liftCover_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftcover-coe--cd9c92d4623627e8c7c7d10e.md) | 324 | `result-track:cd9c92d4623627e8c7c7d10e373a7aae054cc174fee04fda225636afeb395e5a` |
| 50 | `theorem` | [liftCover_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftcover-restrict--aa22f0fa7395cdd0dbafca21.md) | 328 | `result-track:aa22f0fa7395cdd0dbafca21ac32825edbe93ec504a77bc078d1ab7dd84fb75e` |
| 51 | `def` | [liftCover'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftcover--35f4e36e14abb45cea8dda21.md) | 340 | `declaration-track:35f4e36e14abb45cea8dda21a20e1d198d9fb4c21e6f412ecdea78d824752a8d` |
| 52 | `theorem` | [liftCover_coe'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftcover-coe--7134ee37365fafa448cc2f6f.md) | 351 | `result-track:7134ee37365fafa448cc2f6fab45f196036751b51be92fedb0d5846f34c1a52a` |
| 53 | `theorem` | [liftCover_restrict'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftcover-restrict--6ce6545f7314f8f66e404b62.md) | 356 | `result-track:6ce6545f7314f8f66e404b621a15ad53ce01b872b754b0ba219df6a705ab0b5d` |
| 54 | `def` | [inclusion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/inclusion--0547301f3d0958439ba65db3.md) | 362 | `declaration-track:0547301f3d0958439ba65db368c5936e3ff43b3a62c928f7cc6e41860c040480` |
| 55 | `def` | [Function.RightInverse.homeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/function-rightinverse-homeomorph--e930bbfa60058711c1d4bff5.md) | 375 | `declaration-track:e930bbfa60058711c1d4bff571403d2453c2bf4b7cf24b383fff6c429c3d8918` |
| 56 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/homeomorph--d0b3dd4a7d09457ca4843580.md) | 388 | `declaration-track:d0b3dd4a7d09457ca48435805bf58e0db157507b79cfe4325ea5a239f25033bb` |
| 57 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/lift--b12d24742236a8f878b7806a.md) | 403 | `declaration-track:b12d24742236a8f878b7806a8f6187cc5ae459033cd9fffe0ec8f7a3250fdaf1` |
| 58 | `theorem` | [lift_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/lift-comp--af426b88d5465d883bd0cd47.md) | 420 | `result-track:af426b88d5465d883bd0cd47be37f14df27e8de627251fda11f150bdaa599d8d` |
| 59 | `def` | [liftEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/liftequiv--53f70ec4f5c1216fe33bc3a6.md) | 426 | `declaration-track:53f70ec4f5c1216fe33bc3a61900f7f427a1751b5cb266320d7b5754fe897ac0` |
| 60 | `instance` | [instContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/instcontinuousmapclass--89f9981de6361562c9f63ee5.md) | 443 | `declaration-track:89f9981de6361562c9f63ee537332dea2527094529fd4355a0ba0dc9ded06820` |
| 61 | `theorem` | [coe_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-refl--de729f8e98d9e79b8159bb7e.md) | 447 | `result-track:de729f8e98d9e79b8159bb7e40e67ffc451f69bb8bc0e95bc4fd1aae577bcc5c` |
| 62 | `theorem` | [coe_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/coe-trans--1546f23af7307a35a84ea834.md) | 451 | `result-track:1546f23af7307a35a84ea834113f218c8bbf8b763abe3e39126a40df0704f849` |
| 63 | `theorem` | [symm_comp_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/symm-comp-tocontinuousmap--dd8843e4d049c8d8f8b4f54a.md) | 456 | `result-track:dd8843e4d049c8d8f8b4f54abb93d1d507962de7823d633957795e693827e279` |
| 64 | `theorem` | [toContinuousMap_comp_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/declarations/tocontinuousmap-comp-symm--ee3ca74e2adb30a43dbd4b68.md) | 462 | `result-track:ee3ca74e2adb30a43dbd4b68785362385b3e9453d392a78d159f817a0f401c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
