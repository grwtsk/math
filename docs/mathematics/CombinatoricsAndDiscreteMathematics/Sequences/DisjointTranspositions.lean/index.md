# GRWTSK.Combinatorics.Sequences.DisjointTranspositions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81deca9ed7b0dadc7f4f0e9ac610df537fee3071`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PositionSwap](declarations/positionswap--574e9f20ad603d53573edb73.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [permutation](declarations/permutation--36f25c6eba705c3b6729203f.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [support](declarations/support--245c716035c8566a8146fbad.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Bounded](declarations/bounded--af12dca9b119a5ce13ee63b4.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--a70c3b3ae6fec9635c11fb59.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fixes](declarations/fixes--6d68e51e01091f4b183f1da9.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [displacement](declarations/displacement--6da19fb1f469e26751f02ec3.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [commute](declarations/commute--dccffc0fa926438fa98ae6b0.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [SwapTrace](declarations/swaptrace--341c31208a5b42cfc9086152.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [traceSupport](declarations/tracesupport--7a8751c6522a3e4968aa3fad.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SupportsDisjoint](declarations/supportsdisjoint--cf2a88156e9efe3f76fc41a5.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [TraceBounded](declarations/tracebounded--5348d6a03771576a3a81bb60.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--40df447c234c05a768641bba.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--2b3a2fa5a6fe3aa92300bfe2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [replayPermutation](declarations/replaypermutation--4ed1f577e1601511407b9223.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [replayPermutation_nil](declarations/replaypermutation-nil--d3d830d9cc1ac2b08a47d3f7.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [replayPermutation_cons](declarations/replaypermutation-cons--e7348e2024f18d947fc8afb7.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [replayPermutation_append](declarations/replaypermutation-append--ae45ebd39059ee9f38518e2d.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [replayPermutation_fixes](declarations/replaypermutation-fixes--02a2f62faef063f5d1a4972f.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [replayPermutation_mem_support](declarations/replaypermutation-mem-support--14a6f126f69c2947fb7b53d6.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [replayPermutation_displacement](declarations/replaypermutation-displacement--f8458021196635d51b90b827.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [replayPermutation_order_independent](declarations/replaypermutation-order-independent--165cb876990743040edfcbb7.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [permuteList](declarations/permutelist--c32194ec7851874b6eef744c.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [permuteList_perm](declarations/permutelist-perm--f2212bfc609abc978edfac32.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [permuteList_length](declarations/permutelist-length--3a65be3062aa619cceee2e50.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [replayList](declarations/replaylist--ca7b27dda8cf2c6ff32d7b0c.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [replayList_perm](declarations/replaylist-perm--bbb471ac69196b2c3e8f63b8.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [transposition_preserves_multiset](declarations/transposition-preserves-multiset--83033bdd4b1b2f6002310eb4.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [replayList_sum](declarations/replaylist-sum--c9ebe03d8f00f7cb89eaf9ea.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [intersecting_supports_do_not_commute](declarations/intersecting-supports-do-not-commute--9412db4ef11a1aeabe49dee5.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [excessive_displacement_rejected](declarations/excessive-displacement-rejected--29c594f5cec4a3f16dee5d1d.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
