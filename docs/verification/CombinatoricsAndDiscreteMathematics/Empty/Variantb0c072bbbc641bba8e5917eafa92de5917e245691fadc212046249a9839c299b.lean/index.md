# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Empty.Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7b2249406b8dba0c84fdc1363c920317931ea5b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7b2249406b8dba0c84fdc1363c920317931ea5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.ZeroCons` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty--0119b5924803dbf5fddd3e1d.md) | 42 | `declaration-track:0119b5924803dbf5fddd3e1d5d47eee407f0f1988036c5be9d77a827b1be7479` |
| 2 | `instance` | [decidableNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/decidablenonempty--5e4371fed11dec263178ab05.md) | 44 | `declaration-track:5e4371fed11dec263178ab059ce62cab5f4363086be97ab0df842eca5cedec3e` |
| 3 | `theorem` | [coe_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/coe-nonempty--262a9123a6ebf7be2befed12.md) | 48 | `result-track:262a9123a6ebf7be2befed12a6bac98e8ef3a0260a42d3a285230badffd66d9d` |
| 4 | `theorem` | [nonempty_coe_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-coe-sort--1c803d0ddcd7effe17e3ab0b.md) | 52 | `result-track:1c803d0ddcd7effe17e3ab0b60ed29efcaca751c031754e1a6de214223449d9b` |
| 5 | `theorem` | [Nonempty.exists_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-exists-mem--8176de00e6088d7907e8be69.md) | 59 | `result-track:8176de00e6088d7907e8be69e6f43873097e52509fd606e59c525a15030c10ba` |
| 6 | `theorem` | [Nonempty.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-mono--61fca2458c3e8a42909cd449.md) | 62 | `result-track:61fca2458c3e8a42909cd449b25ce5ffe2c241c5f7a1a11dc00148fff3b0c4a0` |
| 7 | `theorem` | [Nonempty.forall_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-forall-const--f938a8acc07dc40613dd4534.md) | 65 | `result-track:f938a8acc07dc40613dd4534b8672ae4d2677c0a8506ff63e808caefbe82556c` |
| 8 | `theorem` | [Nonempty.to_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-to-subtype--04d2f164a87da3cf5fc81460.md) | 69 | `result-track:04d2f164a87da3cf5fc814609eb36416f682279034b8992bdd389905a1bbbfd8` |
| 9 | `theorem` | [Nonempty.to_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-to-type--90e3ea9134dd996ca4020b1c.md) | 72 | `result-track:90e3ea9134dd996ca4020b1c0427d33e56b02cffc3814053ac25ef0a98c1ff2e` |
| 10 | `def` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/empty--35e73c0cf15256141d90999c.md) | 82 | `declaration-track:35e73c0cf15256141d90999c25735c029ca9048b0ff71b4e4a1f3d13e0ee3ada` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/instance--7267b04ac768bc0edbd33bda.md) | 85 | `declaration-track:7267b04ac768bc0edbd33bda1a720e01f25782741a5c9d022ce429ef63d964cd` |
| 12 | `instance` | [inhabitedFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/inhabitedfinset--390459ab6e78d659ffca15ed.md) | 88 | `declaration-track:390459ab6e78d659ffca15ed101a601d0dbcc6fb0b82e099e580c5f1d8708fe9` |
| 13 | `theorem` | [empty_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/empty-val--c6b34d5d6905e5e0480efc26.md) | 92 | `result-track:c6b34d5d6905e5e0480efc268855a8403e6f441d2e1a805c739899d6457d2421` |
| 14 | `theorem` | [notMem_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/notmem-empty--285cca8cdf3a4d8964fc37da.md) | 96 | `result-track:285cca8cdf3a4d8964fc37dad9f85011dc6844605803ccf8cf411ce9a7af589f` |
| 15 | `theorem` | [not_nonempty_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/not-nonempty-empty--b6bf80ec3709c75cc3a5d042.md) | 102 | `result-track:b6bf80ec3709c75cc3a5d042317ddc3fa6b1920fe2f6c2420b54ca6bafc78ae5` |
| 16 | `theorem` | [mk_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/mk-zero--e530b2c0c59dd8f8ad63fc5d.md) | 105 | `result-track:e530b2c0c59dd8f8ad63fc5d22dbb462b1874b829daf0382e7bf2e201b7c2032` |
| 17 | `theorem` | [ne_empty_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/ne-empty-of-mem--6af2d0a5c778e49cccf7c929.md) | 108 | `result-track:6af2d0a5c778e49cccf7c929b1ab72df877bdf149c0d3dfffa87a5ac79682256` |
| 18 | `theorem` | [Nonempty.ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-ne-empty--1ce9f6810d3c70548c587012.md) | 111 | `result-track:1ce9f6810d3c70548c587012e3b1ce35bf6bf7d007022ba51a8cd48f14dbe3f4` |
| 19 | `theorem` | [empty_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/empty-subset--cea10f39f0c2fa33c8ae9f96.md) | 115 | `result-track:cea10f39f0c2fa33c8ae9f96c3d94f34fe54b5d1f4f54ff6695c53188acec6be` |
| 20 | `theorem` | [eq_empty_of_forall_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/eq-empty-of-forall-notmem--879921a950978ada0565eabb.md) | 118 | `result-track:879921a950978ada0565eabbfc01bca83c2565da1964024f20b5a7d734d39b02` |
| 21 | `theorem` | [eq_empty_iff_forall_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/eq-empty-iff-forall-notmem--bfc95c3fbfd78fd46ac5a918.md) | 123 | `result-track:bfc95c3fbfd78fd46ac5a918267d42adf980f834d697fb060cbc3e478071a994` |
| 22 | `theorem` | [val_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/val-eq-zero--9a9eac42605b078b118b805c.md) | 130 | `result-track:9a9eac42605b078b118b805c885f62d148fb1c81035a46a53481663bf90ea67a` |
| 23 | `lemma` | [subset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/subset-empty--aa51776c966e8313ae5ee7ab.md) | 133 | `result-track:aa51776c966e8313ae5ee7ab5198b3c56424d00c47d700de0509bb223739cf96` |
| 24 | `theorem` | [not_ssubset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/not-ssubset-empty--d4cfaaae4f94ddee34f80389.md) | 136 | `result-track:d4cfaaae4f94ddee34f80389279f5de685a37283f742772eef301567c6316838` |
| 25 | `theorem` | [nonempty_of_ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-of-ne-empty--c8e53ebe5477486aca97ec87.md) | 140 | `result-track:c8e53ebe5477486aca97ec87f1008567c60e3f6167f2f4bb67aa27334d9cc11b` |
| 26 | `theorem` | [nonempty_iff_ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/nonempty-iff-ne-empty--7bbfe5eae40814604b7d6209.md) | 143 | `result-track:7bbfe5eae40814604b7d62097d6fc569a526d8cdf6daf77b13e783432beaac3f` |
| 27 | `theorem` | [not_nonempty_iff_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/not-nonempty-iff-eq-empty--31fc48f2729299af97f6494d.md) | 147 | `result-track:31fc48f2729299af97f6494d4efe08001a5bb5c4f6a167094c83d8bf25ffd635` |
| 28 | `theorem` | [eq_empty_or_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/eq-empty-or-nonempty--46243e68ff08969cd1a1f453.md) | 150 | `result-track:46243e68ff08969cd1a1f45337f252cf0e8b90ea4cdd03e22a6b5d755e772e60` |
| 29 | `theorem` | [coe_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/coe-empty--eba775a9f160d16c07e9c42b.md) | 154 | `result-track:eba775a9f160d16c07e9c42be729f1d175f49fa3c64b12657a4ab174cac690d9` |
| 30 | `theorem` | [coe_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/coe-eq-empty--456f14cb6047c0e27b53f502.md) | 158 | `result-track:456f14cb6047c0e27b53f502b4558ae661fddc494ad329d2f69b3e66ae1ae138` |
| 31 | `theorem` | [isEmpty_coe_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/isempty-coe-sort--5ef3841e7cf2c2c7a42a738b.md) | 161 | `result-track:5ef3841e7cf2c2c7a42a738b429cd2cf83ff20ad8d9c69e4ec466a8762c63648` |
| 32 | `instance` | [instIsEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/instisempty--392dc0c7334dfc0845848007.md) | 164 | `declaration-track:392dc0c7334dfc084584800751b8dfe0fe7c3201e358cf72158a6b2a3ac339ce` |
| 33 | `theorem` | [eq_empty_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/eq-empty-of-isempty--0452bfafdc475eadbc45c2b9.md) | 168 | `result-track:0452bfafdc475eadbc45c2b93a9f2239e5d2fa5b4c3991d9d9912ba3da1af5d9` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/instance--0bbdb2b137dbe48ff935749c.md) | 171 | `declaration-track:0bbdb2b137dbe48ff935749c7048529efc7a97dc86f6532a73727ea56af42ccb` |
| 35 | `theorem` | [bot_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/bot-eq-empty--78ce48646fa8bf236be292fb.md) | 176 | `result-track:78ce48646fa8bf236be292fbacfa174a17e7d1955f93573659df4d416f218d3d` |
| 36 | `theorem` | [empty_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/empty-ssubset--606c8587dd689cd4b1b4d318.md) | 180 | `result-track:606c8587dd689cd4b1b4d31885d848c11211d0aaccbec138679428ac5bab2c35` |
| 37 | `theorem` | [exists_mem_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/exists-mem-empty-iff--4fc6acc381345b643587ea6b.md) | 186 | `result-track:4fc6acc381345b643587ea6babf0592ae11ac3714628d4c78335f084c7c1ebe6` |
| 38 | `theorem` | [forall_mem_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/forall-mem-empty-iff--a3f49e1ff85f7e382d2b823c.md) | 189 | `result-track:a3f49e1ff85f7e382d2b823cad2e9f572b0ed4f28f2d01f6032ec8f59ded8cfe` |
| 39 | `def` | [proveFinsetNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantb0c072bbbc641bba8e5917eafa92de5917e245691fadc212046249a9839c299b.lean/declarations/provefinsetnonempty--50d6e651cc9d90c493e85780.md) | 207 | `declaration-track:50d6e651cc9d90c493e8578051773491904b1a99c649edc12f085a23b6e57e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
