# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Disjoint.Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7644b298b6ddb6b08b3acc086f0b156456b3596d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7644b298b6ddb6b08b3acc086f0b156456b3596d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-left--a29b296355c99c699268262e.md) | 45 | `result-track:a29b296355c99c699268262ebe36f96c1300a436e51794c6062de77fb66d3cf4` |
| 2 | `theorem` | [disjoint_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-right--59a5120e3b36e3c124a7912c.md) | 55 | `result-track:59a5120e3b36e3c124a7912c74bbba63dc89133f09cbcd3add6eafb8c9d4dfb2` |
| 3 | `theorem` | [disjoint_iff_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-iff-ne--b9bf18691e983c3d94b2d1cd.md) | 63 | `result-track:b9bf18691e983c3d94b2d1cd131d992e35a14190fc6d3a5eb5eb27ccd2341708` |
| 4 | `theorem` | [disjoint_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-val--612f85ca24898d94be8c61df.md) | 67 | `result-track:612f85ca24898d94be8c61df7ad7f858a2af31437ddac22196eeee5ea8097ae7` |
| 5 | `theorem` | [_root_.Disjoint.forall_ne_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/root-disjoint-forall-ne-finset--b884051ec57ec1c4dd781170.md) | 70 | `result-track:b884051ec57ec1c4dd781170062d89351010d80aae4f6aeb497a43941775a3c9` |
| 6 | `theorem` | [not_disjoint_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/not-disjoint-iff--d09c1d08a3b3040f58bf55aa.md) | 73 | `result-track:d09c1d08a3b3040f58bf55aaec64c08c8bdc8b2aceee2716e21ca2b44ffc8e56` |
| 7 | `theorem` | [disjoint_of_subset_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-of-subset-left--1a1c45168b6329b7c65408e2.md) | 77 | `result-track:1a1c45168b6329b7c65408e21354a3a68408ee665e20dd77f13d7a0268108682` |
| 8 | `theorem` | [disjoint_of_subset_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-of-subset-right--bc1237417d4b117801573b87.md) | 80 | `result-track:bc1237417d4b117801573b87e36df07264580baa140ef5ac0e032a4aaa30b6fd` |
| 9 | `theorem` | [disjoint_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-empty-left--7dd49cf15b542efc6c1dfa01.md) | 84 | `result-track:7dd49cf15b542efc6c1dfa012e68dfaa022e685a195e96cd2dbe844dbdcf9917` |
| 10 | `theorem` | [disjoint_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-empty-right--a31a8b9076981a703fc9b957.md) | 88 | `result-track:a31a8b9076981a703fc9b95794472a2d165286c5bff0ee707d87ae8aa95c249c` |
| 11 | `theorem` | [disjoint_singleton_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-singleton-left--606fbac53cc1e3d3334f2413.md) | 92 | `result-track:606fbac53cc1e3d3334f2413f469e744686791d541851ecbe304e1933094886d` |
| 12 | `theorem` | [disjoint_singleton_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-singleton-right--6e328a4bb76dd24c6deed3e2.md) | 96 | `result-track:6e328a4bb76dd24c6deed3e218044635521180646c716762de4d9a36c3761623` |
| 13 | `theorem` | [disjoint_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-singleton--006dcc8a46bfaba349383913.md) | 100 | `result-track:006dcc8a46bfaba349383913b04267f538d91074301896796aed7e080145e67a` |
| 14 | `theorem` | [disjoint_self_iff_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-self-iff-empty--e036da95b03e8f46aab7ba65.md) | 103 | `result-track:e036da95b03e8f46aab7ba654948c8535fb56cd68ed475a5090680af330ed5ef` |
| 15 | `theorem` | [disjoint_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-coe--c26b7c48429eaa9fcf0bf3a2.md) | 107 | `result-track:c26b7c48429eaa9fcf0bf3a249b41ea8337de882f2de4eff2a02a966819660c1` |
| 16 | `theorem` | [pairwiseDisjoint_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/pairwisedisjoint-coe--9441d0f5b7dd153f44a3b329.md) | 111 | `result-track:9441d0f5b7dd153f44a3b3290c72965cd2edda67e35b9cf33c81a4de1aca8510` |
| 17 | `instance` | [decidableDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/decidabledisjoint--42dff8bf54f2aea252448b02.md) | 117 | `declaration-track:42dff8bf54f2aea252448b023e5f77d122f4c1bc51d5583433cc876854dd1945` |
| 18 | `def` | [disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjunion--e7cf00a41fab4b22442e8297.md) | 128 | `declaration-track:e7cf00a41fab4b22442e829793cac5973dabf260bc07dbff4c722434ac80af95` |
| 19 | `theorem` | [mem_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/mem-disjunion--d4e370cea99c959e78aece5e.md) | 132 | `result-track:d4e370cea99c959e78aece5ee5ca712d5e7d066e168f13db65a3fb32aa4d7212` |
| 20 | `theorem` | [coe_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/coe-disjunion--ddfeab3b628ae4bae4bb7c22.md) | 136 | `result-track:ddfeab3b628ae4bae4bb7c228772e0c23f16021e5b7e89a3a29cbd47e37b0fe1` |
| 21 | `theorem` | [disjUnion_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjunion-comm--666dc5640e7800ef9eb27762.md) | 140 | `result-track:666dc5640e7800ef9eb27762af07177b15604570edff62980cee50fc18ed366b` |
| 22 | `theorem` | [empty_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/empty-disjunion--3d00614cffad67eeaa3587d3.md) | 145 | `result-track:3d00614cffad67eeaa3587d372f234e1c2e238ad3f3f0e06cf0e8005c114779f` |
| 23 | `theorem` | [disjUnion_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjunion-empty--8b9bcd2dcb0e3ca98242940e.md) | 150 | `result-track:8b9bcd2dcb0e3ca98242940e0e00f81e5144aa5fe711a5680b4250d33970558a` |
| 24 | `theorem` | [singleton_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/singleton-disjunion--0ff061c8d45020aa7cee6ed6.md) | 154 | `result-track:0ff061c8d45020aa7cee6ed616d14cf641b5343c46248514267053f77a23370a` |
| 25 | `theorem` | [disjUnion_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjunion-singleton--746254d94d469ea4ae370f90.md) | 158 | `result-track:746254d94d469ea4ae370f904f930fb8bc8881a7a05eceebc389d13306304d31` |
| 26 | `theorem` | [disjoint_insert_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-insert-left--92bc4ef23209a9c25f4df3c7.md) | 169 | `result-track:92bc4ef23209a9c25f4df3c7ffc20efb13d0310e4f42a1ea9ded8b296e3f7054` |
| 27 | `theorem` | [disjoint_insert_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-insert-right--633a47f6d04066b4e6121c65.md) | 173 | `result-track:633a47f6d04066b4e6121c65d5cb81b9b513d839ba4b923a799b86e60f60b2bb` |
| 28 | `theorem` | [disjoint_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-tofinset--e01228b0164d9559f86f4f0f.md) | 185 | `result-track:e01228b0164d9559f86f4f0fe557ae77951ba24dcd903f3858a7fa59f996480f` |
| 29 | `theorem` | [disjoint_toFinset_iff_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjoint/Variant8a871ec3fe6a0d4191089a002598949ed4a71f7784287a78c8be8692efcc775f.lean/declarations/disjoint-tofinset-iff-disjoint--58db2cce01c70014d6cc0ce8.md) | 196 | `result-track:58db2cce01c70014d6cc0ce8d1046d88e0694cacd233ab8db7027fb7dba9292b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
