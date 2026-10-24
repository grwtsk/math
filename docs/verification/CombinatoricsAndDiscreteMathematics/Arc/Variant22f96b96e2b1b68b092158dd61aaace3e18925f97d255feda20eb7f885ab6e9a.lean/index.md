# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Arc.Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e436d8b60183bef96a62d034c14058d1d749313",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e436d8b60183bef96a62d034c14058d1d749313`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.GraphCut` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArcDirection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/arcdirection--837992a3b5b794d843b07e45.md) | 23 | `declaration-track:837992a3b5b794d843b07e458e6770d05b87cd589c46040ae49472164b45258d` |
| 2 | `def` | [ArcDirection.code](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/arcdirection-code--ee163dcef7fabadaee6a8858.md) | 28 | `declaration-track:ee163dcef7fabadaee6a8858be299cc0cc6163219f50cff28054f25e7e3ad5db` |
| 3 | `theorem` | [ArcDirection.code_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/arcdirection-code-injective--b60f290903e5ee74f3d3756d.md) | 32 | `result-track:b60f290903e5ee74f3d3756d292ac191f3361e1d92d0e80926aca3625f9e7d3e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/instance--2e3175295b2e6b244f8c0cb2.md) | 38 | `declaration-track:2e3175295b2e6b244f8c0cb29578614b3e3109e420b920d3a00f76ca9c021405` |
| 5 | `structure` | [Arc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/arc--bc001a6b1d699d40af41fa09.md) | 43 | `declaration-track:bc001a6b1d699d40af41fa09609d5d755353436a86be440513dc76d5a278a6dd` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/instance--f1daaa12ba9064682a066d92.md) | 48 | `declaration-track:f1daaa12ba9064682a066d925bba44dfe14d52f8ca5780e3166ca0991d4adfee` |
| 7 | `def` | [directionCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/directioncode--2b1fbccc2bfc0ee8bd2c4181.md) | 67 | `declaration-track:2b1fbccc2bfc0ee8bd2c4181ecc4602435902616880850f48321dc315b702a03` |
| 8 | `def` | [tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/tail--17f7c64df337ca2f8089494e.md) | 70 | `declaration-track:17f7c64df337ca2f8089494e4c1a41620620b86aad6919f0fd786144c49609b7` |
| 9 | `def` | [head](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/head--fe0eaf202d5e2904ac5bdd86.md) | 77 | `declaration-track:fe0eaf202d5e2904ac5bdd86da966b72a0ca581deff00d14d75fe2ef08ae36fb` |
| 10 | `def` | [reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/reverse--f710d8d909eaf50c60bdab1a.md) | 84 | `declaration-track:f710d8d909eaf50c60bdab1a87d19f0280fc3227f1dba0a832a53d995898ed22` |
| 11 | `theorem` | [reverse_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/reverse-reverse--ce8337828b7527d1c8b96b13.md) | 94 | `result-track:ce8337828b7527d1c8b96b1325d7579a66c855a891aaccf047fb4b3fd4b65c23` |
| 12 | `theorem` | [reverse_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/reverse-involutive--6f026e7e4863fb9f249a8c05.md) | 102 | `result-track:6f026e7e4863fb9f249a8c0582b28a166a8b5fee481c89d614a06b750c0bd6da` |
| 13 | `theorem` | [tail_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/tail-reverse--24dccb4f1d040a22efbd2da1.md) | 108 | `result-track:24dccb4f1d040a22efbd2da156610ebed16d6ff9e4efa5a2c6396b50451c155f` |
| 14 | `theorem` | [reverse_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/reverse-tail--3b4a95903ddcd342fd95f7de.md) | 116 | `result-track:3b4a95903ddcd342fd95f7de50b3fe7375956228dcf4adbd44667a7d2aabd79d` |
| 15 | `theorem` | [head_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/head-reverse--9e850f87e9e740447e05759a.md) | 123 | `result-track:9e850f87e9e740447e05759aa8d238a852d04cc6a30bff06d76945b605b325f8` |
| 16 | `theorem` | [reverse_head](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/reverse-head--fa5c34a19df20c3eb8863d66.md) | 131 | `result-track:fa5c34a19df20c3eb8863d66632e78e85047d51eda4c145242a3c14900a51bc7` |
| 17 | `def` | [canonicalKey](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/canonicalkey--83ec4cf9f441c949ac053eaa.md) | 137 | `declaration-track:83ec4cf9f441c949ac053eaaff9eae58e5dfe7510de5d58d1a309bd69e6df3f6` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/instance--0e37ee0a84e4212780aa2fb8.md) | 142 | `declaration-track:0e37ee0a84e4212780aa2fb8342d15ebe7ad146df8b47dda31dffd6ee8237f27` |
| 19 | `theorem` | [canonicalKey_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/canonicalkey-injective--11f0bcc2dc3d5a8a4d2f451e.md) | 146 | `result-track:11f0bcc2dc3d5a8a4d2f451edcae691a64304d31ad21f07665e0e622ab6c81d9` |
| 20 | `def` | [canonicalLexKey](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/canonicallexkey--29fefefc9dec03cd40f5297c.md) | 166 | `declaration-track:29fefefc9dec03cd40f5297cff5ee657351ef1304bc4b043a04514afd90ebdcd` |
| 21 | `theorem` | [canonicalLexKey_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/canonicallexkey-injective--1de0f00c4bd6be71d1e4b6aa.md) | 172 | `result-track:1de0f00c4bd6be71d1e4b6aae1dc4cb834ad8f22e68ff402eb7e5300499a4039` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/instance--0bd359ec2643779aa87ef4bc.md) | 179 | `declaration-track:0bd359ec2643779aa87ef4bcf9085f1c1a81c36ca893a294f30c8ed551e45383` |
| 23 | `theorem` | [forward_ne_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Arc/Variant22f96b96e2b1b68b092158dd61aaace3e18925f97d255feda20eb7f885ab6e9a.lean/declarations/forward-ne-reverse--aa43a4e814605af63c077c06.md) | 183 | `result-track:aa43a4e814605af63c077c06a49596d30a8414b05a3b0b2fe0c4dd2f07b3a5fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
