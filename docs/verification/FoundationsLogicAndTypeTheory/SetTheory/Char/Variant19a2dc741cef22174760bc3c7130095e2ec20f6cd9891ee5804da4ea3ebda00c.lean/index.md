# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Char.Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f617f5130662a2e81be1549fa8f40a1c213db267",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f617f5130662a2e81be1549fa8f40a1c213db267`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Map` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Order` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--2fdadb326f0a71390de5b813.md) | 28 | `declaration-track:2fdadb326f0a71390de5b8130bb2f85881df8a36452b6d99fccb521e914059b7` |
| 2 | `theorem` | [pRangeSucc?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/prangesucc-eq--b6b1c70af5c25d26453b042e.md) | 33 | `result-track:b6b1c70af5c25d26453b042efe1071da1ad50f453e99cba00b5e3641050f1363` |
| 3 | `theorem` | [pRangeSuccMany?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/prangesuccmany-eq--a61b14018039126f15248fab.md) | 36 | `result-track:a61b14018039126f15248fabfa945d4818e2b7d4730b85033c3d376541a2a0fe` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--8aea8979e3358d55341639b5.md) | 38 | `declaration-track:8aea8979e3358d55341639b5b36625713cf1e93a1d57e64abee9a0ce1323ff39` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--5ec4d1c37029bec05f48aabd.md) | 41 | `declaration-track:5ec4d1c37029bec05f48aabd30dae71cd557edc8f57acc1a407f7bd5a7b36063` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--a8947677113eb4cfc1357a16.md) | 44 | `declaration-track:a8947677113eb4cfc1357a16f77a1d47f423ea5b9c6e69758a4ecaa6d047b173` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--5dcd19f34145fb97b9dbbfb6.md) | 47 | `declaration-track:5dcd19f34145fb97b9dbbfb682fc5ab0ff1b1f2d692b051b5820b9e1592f7619` |
| 8 | `theorem` | [least?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/least-eq--f7d2a6d2ce3eceddecb5873f.md) | 51 | `result-track:f7d2a6d2ce3eceddecb5873f205b5bd4a29278afd4ef82cd33b6c300e51ae1a4` |
| 9 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/map--e32ee2100a0b6a7cc7bd2e23.md) | 53 | `declaration-track:e32ee2100a0b6a7cc7bd2e238f41c5f1479ea5a501c47fb66913069887e7b05b` |
| 10 | `theorem` | [toFun_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/tofun-map--594cdf58e089dfc758fde580.md) | 60 | `result-track:594cdf58e089dfc758fde5803790aa0ee3b7f3fb6e79d88dc7c323e5dd3675eb` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--5215e4ef4c0984857b3de548.md) | 62 | `declaration-track:5215e4ef4c0984857b3de5487a23abb7483d14b91afaf34ba54ed19b325af02e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--2ca1d2032e03f2303b829ec9.md) | 65 | `declaration-track:2ca1d2032e03f2303b829ec975b5bd0de3d3309983645f7711b4de6f6477eeee` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--679cc1b686291c2037d87ef1.md) | 68 | `declaration-track:679cc1b686291c2037d87ef12ee09cb1504507936f1f72bfcba3a543ad5819cf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--87b0553bfda26fb3eddc3efb.md) | 71 | `declaration-track:87b0553bfda26fb3eddc3efb3212bfb885dc687eb1f296e1e01d360d36ede887` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--76ac9e00b47edcd80b3944b3.md) | 74 | `declaration-track:76ac9e00b47edcd80b3944b3abf75f5c5a1f9475460a6aa003084edbf5af6bf8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--e124c8605eafcd4e4e8372b4.md) | 77 | `declaration-track:e124c8605eafcd4e4e8372b48679e506d98d4e107133065f256239e090ec9788` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--2c9004d1574311f98b252bb6.md) | 78 | `declaration-track:2c9004d1574311f98b252bb64c8249fe469916a2f9408235c476f7191d4d5c8a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--55fef5b6e1c3f1af1dd0898e.md) | 79 | `declaration-track:55fef5b6e1c3f1af1dd0898e303ef2593b76a80d756511252f5f23cfa9c69112` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--a621b6c12b8a2e8462d80942.md) | 80 | `declaration-track:a621b6c12b8a2e8462d80942924d2977003fac920744589ad514d0ff9636eac4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--a8fa628b4bfad266a13bda1b.md) | 81 | `declaration-track:a8fa628b4bfad266a13bda1bf32c60fd5f90a33cc3e8fe1849c49b7c8ddcd397` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--17a1f7009f26d1a866c4c1cf.md) | 82 | `declaration-track:17a1f7009f26d1a866c4c1cf7184666d927c60e06f940bac1f4521287a5f9854` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--c735c382a03892223be59ffe.md) | 83 | `declaration-track:c735c382a03892223be59ffe8ea38e12bbe9c4c2640a948e547c76f220af5ab3` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--c4a0b129ff862fffaf615678.md) | 84 | `declaration-track:c4a0b129ff862fffaf6156786f3e0e53e0346100e6f87e69ad23c52b1bdf0076` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--991b04f7a890005f8d03090f.md) | 85 | `declaration-track:991b04f7a890005f8d03090f158f073b6b4ec6111c27996753f29fc9d6148b5c` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant19a2dc741cef22174760bc3c7130095e2ec20f6cd9891ee5804da4ea3ebda00c.lean/declarations/instance--38106f641d9bf8b65b5d0599.md) | 86 | `declaration-track:38106f641d9bf8b65b5d05999b52468b2784c04c5b5aacb99321005e5ef5d141` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
