# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d7912fc8dab4abffd0d9bf645a60e8f89af64b6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d7912fc8dab4abffd0d9bf645a60e8f89af64b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Erase` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Find` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 25; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_range'_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mem-range-1--030f361495e9e9dd74a316eb.md) | 48 | `result-track:030f361495e9e9dd74a316eb4244f0d0b0b78ff90799191b141f205c50e20681` |
| 2 | `theorem` | [getLast?_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/getlast-range--871fb8bb101e0f0897fa79ee.md) | 54 | `result-track:871fb8bb101e0f0897fa79ee27e8e2d772d0823704cd4ea427eb98227a75c393` |
| 3 | `theorem` | [getLast_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/getlast-range--6aeda85815e612b9fd374705.md) | 65 | `result-track:6aeda85815e612b9fd374705f5bf7b7b4e598220b56a40179c9f1758db7d4e62` |
| 4 | `theorem` | [pairwise_lt_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/pairwise-lt-range--d3ddf21047547d2a9a0241ca.md) | 70 | `result-track:d3ddf21047547d2a9a0241ca4d6add00d11d9e046adfe60efc1c9e15edbc66b4` |
| 5 | `theorem` | [pairwise_le_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/pairwise-le-range--a6b1c298bc9ad2864974c53a.md) | 82 | `result-track:a6b1c298bc9ad2864974c53a53269426b9ce73bd4ab11051d159f82e85a0cfb2` |
| 6 | `theorem` | [nodup_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/nodup-range--7a212ca5636c792688beff12.md) | 94 | `result-track:7a212ca5636c792688beff124882bc8ae78af0d93ea80162c4fcef900deeed00` |
| 7 | `theorem` | [map_sub_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/map-sub-range--f220a679d3680b61bc59539c.md) | 97 | `result-track:f220a679d3680b61bc59539c4fedf00099777f13256f237d3d1cd86381d95380` |
| 8 | `theorem` | [range'_eq_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/range-eq-singleton-iff--245831742a48088723726a2b.md) | 103 | `result-track:245831742a48088723726a2b72f92ec109f08945952f81354d8a2d899dc551a2` |
| 9 | `theorem` | [range'_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/range-eq-append-iff--87c4845650c845ab0b44198b.md) | 109 | `result-track:87c4845650c845ab0b44198b4e3c63fd146c06352b6f7b34b4b7eb8d5a9ef619` |
| 10 | `theorem` | [find?_range'_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/find-range-eq-some--879e8c70635cc7a8034f5819.md) | 131 | `result-track:879e8c70635cc7a8034f58199733667645c76c0e5c89f9cca6cb25b9dac8268b` |
| 11 | `theorem` | [find?_range'_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/find-range-eq-none--1965d915e6d31ac2a29703fd.md) | 150 | `result-track:1965d915e6d31ac2a29703fdc901718bbc1729715dddeb62e48520ad4e057150` |
| 12 | `theorem` | [erase_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/erase-range--84acfee2615fa6831e614f50.md) | 154 | `result-track:84acfee2615fa6831e614f509d94d5c8645bce4a819f13b966aaae47602f3c7c` |
| 13 | `theorem` | [count_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/count-range--b90e884461ac559546d3756b.md) | 177 | `result-track:b90e884461ac559546d3756b50455abcfb8e8115cff5afc2a0d7639888928d87` |
| 14 | `theorem` | [count_range_1'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/count-range-1--ff9e7a6d5496f2db3cf9c4f0.md) | 183 | `result-track:ff9e7a6d5496f2db3cf9c4f01c6809a1f340e0706154bee42ff87a45373e4f0d` |
| 15 | `theorem` | [sum_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/sum-range--5131325af4b18a0c9c5d0c43.md) | 197 | `result-track:5131325af4b18a0c9c5d0c43d256cbb7c59a270133cfebe1dbfd926852927b55` |
| 16 | `theorem` | [drop_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/drop-range--077019d36124a7f36e0d1b44.md) | 219 | `result-track:077019d36124a7f36e0d1b448e5793ab8a12729136735e67d09e8157dfd9a02c` |
| 17 | `theorem` | [take_range'_of_length_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/take-range-of-length-le--9a995b35efe6c898166fb127.md) | 231 | `result-track:9a995b35efe6c898166fb12701d2ffc002b297aadaff1fa25965634d05ffb0f5` |
| 18 | `theorem` | [take_range'_of_length_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/take-range-of-length-ge--0c5c006abb558ae14580b448.md) | 237 | `result-track:0c5c006abb558ae14580b448e130c575b5bf681ec288f3eb53b372e181a7a700` |
| 19 | `theorem` | [reverse_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/reverse-range--279cbf2b983ec384df0b9cf2.md) | 244 | `result-track:279cbf2b983ec384df0b9cf28ae63414abc84fe0aa52bebe0e81f1d534a5052d` |
| 20 | `theorem` | [mem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mem-range--98d23566594d39c161190c22.md) | 252 | `result-track:98d23566594d39c161190c22e465ccf3c0ad6dc364e0cbb730c93f4f39f0239c` |
| 21 | `theorem` | [not_mem_range_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/not-mem-range-self--867d868521407a4b4565ac3b.md) | 255 | `result-track:867d868521407a4b4565ac3b2f1a264dd703081dd548d0d1c0dc7b365b122f74` |
| 22 | `theorem` | [self_mem_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/self-mem-range-succ--8f5d5a88d8074baf9730ba83.md) | 257 | `result-track:8f5d5a88d8074baf9730ba833dcbe0dc9cce0901341578bc8c5a0bcbf566f674` |
| 23 | `theorem` | [pairwise_lt_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/pairwise-lt-range--9c2fe73d60680cd5727207d4.md) | 259 | `result-track:9c2fe73d60680cd5727207d4fa11c1607ebc9dcb4395c65549464213730128bf` |
| 24 | `theorem` | [pairwise_le_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/pairwise-le-range--866c97f85bf0b3eef7025de7.md) | 262 | `result-track:866c97f85bf0b3eef7025de7555719ebbcc0bc2ba844dfc07b2707665c1c8deb` |
| 25 | `theorem` | [take_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/take-range--be47685d695ef9d5457460e1.md) | 265 | `result-track:be47685d695ef9d5457460e17168d1739e2e4fbb9731dc1f1273d1ec4d66e4a1` |
| 26 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/nodup-range--4d60c0a7c2c1de284aebd27b.md) | 270 | `result-track:4d60c0a7c2c1de284aebd27b60538479fee9818cd82b233582ecddcdf2c48a46` |
| 27 | `theorem` | [find?_range_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/find-range-eq-some--a2a2b716a4c1f999d9875db1.md) | 273 | `result-track:a2a2b716a4c1f999d9875db1f6b584eb46849895c56a17bf2bb8ba083bfe96b0` |
| 28 | `theorem` | [find?_range_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/find-range-eq-none--68cfc66c0dc621b73d30e496.md) | 277 | `result-track:68cfc66c0dc621b73d30e49646b8434dea0f85bf27fcb3a4ebd478c1afdebf05` |
| 29 | `theorem` | [erase_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/erase-range--6835126d8161594c085398d1.md) | 281 | `result-track:6835126d8161594c085398d172b079058b7498f7d2e15ac32bf6b68d9ddcc761` |
| 30 | `theorem` | [count_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/count-range--b598de32dcbe5c288df2ecf9.md) | 285 | `result-track:b598de32dcbe5c288df2ecf924e93b7cd89b732f6077b4972a9c27fd581871a5` |
| 31 | `theorem` | [zipIdx_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/zipidx-singleton--bf662666288d5f222af6b80e.md) | 293 | `result-track:bf662666288d5f222af6b80e38d06875ec724e2b2bbee915e79910d71b30476c` |
| 32 | `theorem` | [head?_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/head-zipidx--667fd15794d64d1755034c55.md) | 296 | `result-track:667fd15794d64d1755034c559ffc0804749e5f1143e8d1584a082fb01876d135` |
| 33 | `theorem` | [getLast?_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/getlast-zipidx--014cba5ce99f87816356af85.md) | 300 | `result-track:014cba5ce99f87816356af857ec7094b623bda4fc769d37e83a4e105b4e8c40d` |
| 34 | `theorem` | [mk_add_mem_zipIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mk-add-mem-zipidx-iff-getelem--cc7fb16707b84bfc9b236d4a.md) | 305 | `result-track:cc7fb16707b84bfc9b236d4a1ca4232071fde577a0f5ff213265e81262caac5a` |
| 35 | `theorem` | [mk_mem_zipIdx_iff_le_and_getElem?_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mk-mem-zipidx-iff-le-and-getelem-sub--192afc52ddcf1cd28db181f4.md) | 309 | `result-track:192afc52ddcf1cd28db181f4318988e4183506d0cf58750df157f7c845551400` |
| 36 | `theorem` | [mk_mem_zipIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mk-mem-zipidx-iff-getelem--a4ecf19a205317b4842c0728.md) | 320 | `result-track:a4ecf19a205317b4842c07284b3adbc5a765dfc274f5c77f2d0fe412cb1cb142` |
| 37 | `theorem` | [mem_zipIdx_iff_le_and_getElem?_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mem-zipidx-iff-le-and-getelem-sub--aca6dd29df394aec84743a75.md) | 324 | `result-track:aca6dd29df394aec84743a75d020b983192345be542a5c0473c66fb996594768` |
| 38 | `theorem` | [mem_zipIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mem-zipidx-iff-getelem--45cb0967d75a2aab772de6a2.md) | 331 | `result-track:45cb0967d75a2aab772de6a215f0b354b9f2ddfd9443776ccf9a0787af3445b0` |
| 39 | `theorem` | [le_snd_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/le-snd-of-mem-zipidx--41e05ff503c180af2b8eb281.md) | 335 | `result-track:41e05ff503c180af2b8eb28175eb6714c2c0df6535fdd206137c75d08a55372f` |
| 40 | `theorem` | [snd_lt_add_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/snd-lt-add-of-mem-zipidx--2c9d78872a7ba6ec58553c33.md) | 339 | `result-track:2c9d78872a7ba6ec58553c332873cb0df785a730d48f97a9bea08e6ebad3db28` |
| 41 | `theorem` | [snd_lt_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/snd-lt-of-mem-zipidx--6c2f67ec93945a93b18aa67a.md) | 344 | `result-track:6c2f67ec93945a93b18aa67a0d8f785f8371cbd1f66f325b02870523fbf52690` |
| 42 | `theorem` | [map_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/map-zipidx--2c5dd1bac262901be6a8e55d.md) | 347 | `result-track:2c5dd1bac262901be6a8e55daa5bd27d04ef8e5687eb2fafba962ec4806050d9` |
| 43 | `theorem` | [fst_mem_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/fst-mem-of-mem-zipidx--fea2290132f45abad8073a8d.md) | 351 | `result-track:fea2290132f45abad8073a8d9186875e5152cbb8efa2860c65b03726ea2cc5a8` |
| 44 | `theorem` | [fst_eq_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/fst-eq-of-mem-zipidx--8de18af9f22dcf332ef1b79a.md) | 354 | `result-track:8de18af9f22dcf332ef1b79adced34acb6e4bf25773d1d749c0180492b06c587` |
| 45 | `theorem` | [mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mem-zipidx--b4db117c0f55cb718809d33f.md) | 368 | `result-track:b4db117c0f55cb718809d33f2418033ca069b5a53164dbbf9c34957d86381a54` |
| 46 | `theorem` | [mem_zipIdx'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/mem-zipidx--ef0606d2c18b5f28c9db5855.md) | 374 | `result-track:ef0606d2c18b5f28c9db5855d99bd0ba939aa37ecde49e54d99edbbd5702052a` |
| 47 | `theorem` | [zipIdx_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/zipidx-map--0190469a110af85fdc9fa637.md) | 378 | `result-track:0190469a110af85fdc9fa63769396e32b667b7bf097005b583a40999070d41e5` |
| 48 | `theorem` | [zipIdx_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/zipidx-append--0ecc19cff212f26e3ca99767.md) | 387 | `result-track:0ecc19cff212f26e3ca99767f3df6f860a2a2b53595e13c40b6118267557c2ce` |
| 49 | `theorem` | [zipIdx_eq_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/zipidx-eq-cons-iff--9384c2fe75214526a99fed80.md) | 395 | `result-track:9384c2fe75214526a99fed807403cb5f0d97fb23ad0d1159ccea8cbca009b9f6` |
| 50 | `theorem` | [zipIdx_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/declarations/zipidx-eq-append-iff--7ed5d8a0f9f024296154e073.md) | 407 | `result-track:7ed5d8a0f9f024296154e0736133c4471451cd222baeef6883c870a2df58757a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
