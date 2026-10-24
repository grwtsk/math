# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BallotProblem.Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `191f8eb2e7a15edeb01132ced3fb80dc448d2187`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.CondCount` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/stayspositive--d8f0c91a3df8c983b95a875d.md) | 40 | `declaration-track:d8f0c91a3df8c983b95a875d2e7612e6a867928e525b35f2cf116b73e464eea3` |
| 2 | `theorem` | [staysPositive_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/stayspositive-nil--0363cfcc620237d7c065ec59.md) | 45 | `result-track:0363cfcc620237d7c065ec59da4bc2a75059128d520c2a90b6bcd7138363b4f8` |
| 3 | `theorem` | [staysPositive_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/stayspositive-cons-pos--8be97cdecefc0a16fdad791d.md) | 49 | `result-track:8be97cdecefc0a16fdad791d9188a4f5d8b639be381ad1115b24f9cead7ae8d5` |
| 4 | `def` | [countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/countedsequence--23a872e55fa6781eb361d82f.md) | 71 | `declaration-track:23a872e55fa6781eb361d82f765a81c9dd6ca7455db615fef201287dae3c0b7b` |
| 5 | `theorem` | [mem_countedSequence_iff_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/mem-countedsequence-iff-perm--af5e0b2c4c89cdbcafe60ed9.md) | 76 | `result-track:af5e0b2c4c89cdbcafe60ed9d11ef871189490c92f333cc9ea3fe903cb8a5fbf` |
| 6 | `theorem` | [counted_right_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/counted-right-zero--fd881bade8f9510747a98fef.md) | 85 | `result-track:fd881bade8f9510747a98fef7449820c5d60cafd7af9770a7e3ec256ab887264` |
| 7 | `theorem` | [counted_left_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/counted-left-zero--ef000ec98ee67c7c3d3afa4d.md) | 90 | `result-track:ef000ec98ee67c7c3d3afa4d33d67f219f69ebcd8f717c5d4dd7fb54036ffe67` |
| 8 | `theorem` | [mem_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/mem-of-mem-countedsequence--529b9995a005b1835b9959b5.md) | 94 | `result-track:529b9995a005b1835b9959b57e6b380547bd4a95a7a9c4d9c998a4be714d1952` |
| 9 | `theorem` | [length_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/length-of-mem-countedsequence--9f02ac45ff6ae531574c9b92.md) | 99 | `result-track:9f02ac45ff6ae531574c9b9251ae0792454e684c8b158dd63fd56992d60429b1` |
| 10 | `theorem` | [counted_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/counted-eq-nil-iff--07f07e517e26ed8c87da5d65.md) | 103 | `result-track:07f07e517e26ed8c87da5d65a28212be62b0ec5b5db96ebc69adec3bc8eb713b` |
| 11 | `theorem` | [counted_ne_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/counted-ne-nil-left--d668896cdab20a966f38dd22.md) | 108 | `result-track:d668896cdab20a966f38dd22114135a6532327ff4db7597007b1661fc5fa4b02` |
| 12 | `theorem` | [counted_ne_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/counted-ne-nil-right--fd9105b9b7b109a54db1da1a.md) | 112 | `result-track:fd9105b9b7b109a54db1da1a51dd81b3e4735a105f4970fd2f461bd930279181` |
| 13 | `theorem` | [get0_eq_head!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/get0-eq-head--abac2dab314a330653362c23.md) | 117 | `result-track:abac2dab314a330653362c230c36e4b1f80bce0ea3d1d018e00458401fe0f3ff` |
| 14 | `theorem` | [counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/counted-succ-succ--330b9a13d1adeb04cfb6dcd5.md) | 123 | `result-track:330b9a13d1adeb04cfb6dcd5c02aa657206e2f3d575319a14ddbf7dfb9337500` |
| 15 | `theorem` | [countedSequence_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/countedsequence-finite--dc0b3dbbdd982c1ff6b5bbec.md) | 162 | `result-track:dc0b3dbbdd982c1ff6b5bbec215df0eefbe96dcff2b117b71cf25413d4a20154` |
| 16 | `theorem` | [countedSequence_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/countedsequence-nonempty--47256efff0c17c11e7aa841c.md) | 172 | `result-track:47256efff0c17c11e7aa841ce71d41958d86d3ec783970a84c7fa4a75b1fb907` |
| 17 | `theorem` | [sum_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/sum-of-mem-countedsequence--f6832869d6b82a1913d08c74.md) | 180 | `result-track:f6832869d6b82a1913d08c74646c8c8c83ea3a12ac1c4cf05e98f78a4df145e8` |
| 18 | `theorem` | [disjoint_bits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/disjoint-bits--811c510db97af286f9bc227e.md) | 184 | `result-track:811c510db97af286f9bc227e73c8a9b741a23a6012a61954676e198600a9be57` |
| 19 | `def` | [measureableSpace_list_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/measureablespace-list-int--f475b5157c8cf557737d2098.md) | 193 | `declaration-track:f475b5157c8cf557737d2098b7da4627710fc32ff1ffa014d2ff214bd03added` |
| 20 | `theorem` | [measurableSingletonClass_list_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/measurablesingletonclass-list-int--aeef82da3bd32c8cdd36c4a8.md) | 197 | `result-track:aeef82da3bd32c8cdd36c4a87eba5dd6e5ba387dde837b319b59e43b60394999` |
| 21 | `theorem` | [list_int_measurableSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/list-int-measurableset--fe90156cedc05e074340c671.md) | 202 | `result-track:fe90156cedc05e074340c671a9ba7fb983e3ee33ebd7bf7235112728115a9e1e` |
| 22 | `theorem` | [count_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/count-countedsequence--26c5d1a3cbf477fb1664e7a1.md) | 204 | `result-track:26c5d1a3cbf477fb1664e7a1f89eb6f668ff709397803618849a049d4c5b55d4` |
| 23 | `theorem` | [first_vote_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/first-vote-pos--32e370bef5734162c09be5f5.md) | 216 | `result-track:32e370bef5734162c09be5f5d8c3fd583ee7c76b67c035f54ccfb24a4104ff2a` |
| 24 | `theorem` | [headI_mem_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/headi-mem-of-nonempty--6ae28fe268f708d6e033129f.md) | 255 | `result-track:6ae28fe268f708d6e033129f4d503f765e4e9f4e1989ec62e3dbf0bcc6f6d0e8` |
| 25 | `theorem` | [first_vote_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/first-vote-neg--53cb5c18094bc243436fa7cf.md) | 260 | `result-track:53cb5c18094bc243436fa7cf560fe874d1ca4994aff007c003da4f5a8d23a35b` |
| 26 | `theorem` | [ballot_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/ballot-same--85a48442b7f023d9918eb26a.md) | 274 | `result-track:85a48442b7f023d9918eb26afc52a9131765e2c5a7d3f2bf32d2eb38501f3cae` |
| 27 | `theorem` | [ballot_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/ballot-edge--534681384778dd0da196c521.md) | 284 | `result-track:534681384778dd0da196c5218affd58104c9ef24aa1f5caa7d31f56432ab9f4f` |
| 28 | `theorem` | [countedSequence_int_pos_counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/countedsequence-int-pos-counted-succ-succ--0c54ded8828a5149b1322a12.md) | 295 | `result-track:0c54ded8828a5149b1322a1268e30424ffbb317143b0e85aa41d3ea426be8a5e` |
| 29 | `theorem` | [ballot_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/ballot-pos--1a9f1b38d641fe5aead164b1.md) | 307 | `result-track:1a9f1b38d641fe5aead164b17141ff88aa8d6044da49b768da3907b63f65f9f1` |
| 30 | `theorem` | [countedSequence_int_neg_counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/countedsequence-int-neg-counted-succ-succ--f889d1f931534709fdb18533.md) | 335 | `result-track:f889d1f931534709fdb1853315eb83927f3541d16bca67971c24dd1bd3075253` |
| 31 | `theorem` | [ballot_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/ballot-neg--8a3f4b55d62c80c034e04533.md) | 348 | `result-track:8a3f4b55d62c80c034e04533310b01edca6d6c0edee3d73d0b66a1695390e7b9` |
| 32 | `theorem` | [ballot_problem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/ballot-problem--6b03f7ba6a2e927e1fd8c00d.md) | 376 | `result-track:6b03f7ba6a2e927e1fd8c00d35878db47f5cbf4c276b4b2b7e3d83ef8ebbbe8f` |
| 33 | `theorem` | [ballot_problem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/declarations/ballot-problem--9c57910eabf67ffcf2e7d1b5.md) | 419 | `result-track:9c57910eabf67ffcf2e7d1b50eb20fc7273bed9d33bb7ae89f61636ad9a73274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
