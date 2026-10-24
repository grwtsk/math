# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a548734988d2526e46148d30d501d3e7cc577cd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a548734988d2526e46148d30d501d3e7cc577cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Perm` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm--7ead6d25f1987915cd79b93d.md) | 31 | `declaration-track:7ead6d25f1987915cd79b93df0a006e9d7d0f1928abbfd312ea17e2d85dc9484` |
| 2 | `theorem` | [perm_iff_toArray_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-iff-toarray-perm--b9e10fb6ed7496f70b97b95b.md) | 37 | `result-track:b9e10fb6ed7496f70b97b95bb61707df5bb400d9b1a9dcf2d9a87b4e34247c55` |
| 3 | `theorem` | [perm_iff_toList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-iff-tolist-perm--19459eacf3beedb2209aab14.md) | 40 | `result-track:19459eacf3beedb2209aab14025737957d2b6ea155cabd7f886fd23d7616d616` |
| 4 | `theorem` | [Perm.of_toList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-of-tolist-perm--3e7ba539a0037b74431613e0.md) | 43 | `result-track:3e7ba539a0037b74431613e01eb37e4ca499418392646cfcdf76a976b9e35031` |
| 5 | `theorem` | [Perm.toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-tolist--3599400b2e3c6accebc50283.md) | 46 | `result-track:3599400b2e3c6accebc5028321f6be279747cd7b8571609ad5d45df431338a3e` |
| 6 | `theorem` | [perm_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-mk--66960683528a05062756dc5a.md) | 49 | `result-track:66960683528a05062756dc5a29f525eb51c2316b88be6d1f06f354ec2fce6be1` |
| 7 | `theorem` | [toArray_perm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/toarray-perm-iff--ddf19d5d93f25e7ea2eba304.md) | 53 | `result-track:ddf19d5d93f25e7ea2eba304ba4933504d7bd1beb9b38cd728be851685ecea02` |
| 8 | `theorem` | [perm_toArray_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-toarray-iff--d0a76fba48c00b349665a29a.md) | 60 | `result-track:d0a76fba48c00b349665a29a5eef496a45d5522b436ee91988629beb84cdcc31` |
| 9 | `theorem` | [Perm.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-refl--5ca77a8e5ce7657e7270ed66.md) | 67 | `result-track:5ca77a8e5ce7657e7270ed66f81a9c280bcfb990f902de777e3e3ad62b7d947e` |
| 10 | `theorem` | [Perm.rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-rfl--0bd6ecd32c3b2ace0e57bf86.md) | 71 | `result-track:0bd6ecd32c3b2ace0e57bf8616150ebecea69df6323eb517c293b896ddeda660` |
| 11 | `theorem` | [Perm.of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-of-eq--ce8a2e4ba486cd978a009957.md) | 73 | `result-track:ce8a2e4ba486cd978a009957284a19e51adb364a5b709917e4ddddbf121e83ba` |
| 12 | `theorem` | [Perm.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-symm--2ecb668e82d6012dc07f0a9d.md) | 76 | `result-track:2ecb668e82d6012dc07f0a9d16d313ca76f366991cf2a84af1bcafd02fc3cda6` |
| 13 | `theorem` | [Perm.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-trans--9c69e3310280faaf18b90b6d.md) | 81 | `result-track:9c69e3310280faaf18b90b6d7a0def628fc640bd074dd9934fdfa35453ad2163` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/instance--2172717621c0579e9913a390.md) | 86 | `declaration-track:2172717621c0579e9913a390446c0b8182533b11d87db94f7d1f3940b8127d4c` |
| 15 | `theorem` | [perm_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-comm--29ea59c28283ac6d344ba8d0.md) | 89 | `result-track:29ea59c28283ac6d344ba8d04526ada9b532880b3cbe4b2506c21dc1133422ef` |
| 16 | `theorem` | [Perm.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-mem-iff--f07c04f81ba3c2568ee25ae4.md) | 91 | `result-track:f07c04f81ba3c2568ee25ae41fbf6899e15aea4fa2d262ea413df3abcb4e6a27` |
| 17 | `theorem` | [Perm.append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-append--b95eb249f97c40c412797b0e.md) | 97 | `result-track:b95eb249f97c40c412797b0e0b1db388963d00830bdc35e12cbfea30f9704855` |
| 18 | `theorem` | [Perm.push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-push--eedb553ca9a713471d81a707.md) | 103 | `result-track:eedb553ca9a713471d81a707894ca9c1bdf433081634a56b9385f791f058042d` |
| 19 | `theorem` | [Perm.push_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/perm-push-comm--ad57395663f27a2dcf4efbb9.md) | 109 | `result-track:ad57395663f27a2dcf4efbb99986b1afe056f8dc5f97d7bf1c6d25b0c0208cca` |
| 20 | `theorem` | [swap_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/swap-perm--7959d67062fa83b1aab4bac6.md) | 116 | `result-track:7959d67062fa83b1aab4bac65aa9689817893d0af7e5b7cd050915e6fae164ba` |
| 21 | `theorem` | [extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant8e77ce20a08cb008f719dec1b9059da858d12c7a8ddf106a3b95ccc513136558.lean/declarations/extract--1af3c4fc15e234dc9266131c.md) | 125 | `result-track:1af3c4fc15e234dc9266131c465a9b2dab586ff0fb9b573dfd083bbce1500420` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
