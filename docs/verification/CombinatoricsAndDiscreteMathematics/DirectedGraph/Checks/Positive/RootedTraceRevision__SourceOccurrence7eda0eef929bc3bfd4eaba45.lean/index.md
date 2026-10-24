# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.RootedTraceRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01540fb01d6e59c3165384d39809624684daa84d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01540fb01d6e59c3165384d39809624684daa84d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RootedTraceRevision`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/loopvertexdecidableeq--97d1ac007a645b6597061e61.md) | 15 | `declaration-track:97d1ac007a645b6597061e619d488fcabdb77778c301cd319b4baa41008a9fbe` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/looptagdecidableeq--4409a6f2a1eb8abbae340aed.md) | 18 | `declaration-track:4409a6f2a1eb8abbae340aedbdc88e75c9990d7fedc7832ec8f8c414f3551c32` |
| 3 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/falsetag--3f20745de71059da67fe788a.md) | 21 | `declaration-track:3f20745de71059da67fe788ac7399086753ff638badcdd102bcc12d77d88aeb0` |
| 4 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/truetag--22f4ebd39585f2a2a9b6f1be.md) | 24 | `declaration-track:22f4ebd39585f2a2a9b6f1be056d4d06fb0f6c4287c0050d1d2b6f11b9cbb768` |
| 5 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/tags-distinct--7cddfcb428915873756a1584.md) | 27 | `result-track:7cddfcb428915873756a1584f610b1a09f825a5698449fc07b4f551163367882` |
| 6 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/falseoccurrence--1d623ee665db3194906216f3.md) | 33 | `declaration-track:1d623ee665db3194906216f3dacf198fc782d1119939823079ebf5a014e39dc0` |
| 7 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/trueoccurrence--83a27fc44c3d8cd6e8e23b1a.md) | 36 | `declaration-track:83a27fc44c3d8cd6e8e23b1a39e69ce60a687b32d11c494625e78df171d126d0` |
| 8 | `def` | [oldRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/oldrows--5e0397c0a75e6145e330a1d6.md) | 39 | `declaration-track:5e0397c0a75e6145e330a1d6972a08f2aa4fe838e14b9bf27133cbf6ac4b3e13` |
| 9 | `def` | [appendedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/appendedrows--b945557613afad89df1bc2b3.md) | 42 | `declaration-track:b945557613afad89df1bc2b301ad8e5f7dcaa6aa4e23845d9fc91055f00f1071` |
| 10 | `def` | [repeatedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/repeatedrows--7992925a2305e7c5c3de377c.md) | 45 | `declaration-track:7992925a2305e7c5c3de377c41690c4dec8526843cb74ea6f1e783a92d84b0a4` |
| 11 | `theorem` | [old_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/old-inventory--937dfad5079977d61372cb85.md) | 48 | `result-track:937dfad5079977d61372cb85da63df38bb732f05c077126f639cbc1091c118ab` |
| 12 | `theorem` | [appended_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/appended-inventory--8e8bd414b4c49375f4be7537.md) | 52 | `result-track:8e8bd414b4c49375f4be7537369547f644b4ef04ff3abba15be9d6fd4b6dc3a2` |
| 13 | `theorem` | [repeated_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/repeated-inventory--de2ab866065f4ae1a527b6bc.md) | 58 | `result-track:de2ab866065f4ae1a527b6bc5c14e106e7b60add37c18b8ec54973971f43cdad` |
| 14 | `theorem` | [old_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/old-references--6f2658369f4feca5d867bb1d.md) | 63 | `result-track:6f2658369f4feca5d867bb1d8bf6f3df36b255a6bb98cc18379f5cb93ff12410` |
| 15 | `theorem` | [stale_lookup_changed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/stale-lookup-changed--991afa28d4bffc62b7057426.md) | 69 | `result-track:991afa28d4bffc62b70574264d06921bf5c66f8f32c19d05198612e098be068c` |
| 16 | `theorem` | [stale_references_in_bounds](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/stale-references-in-bounds--1de31c6106b10d68369d2947.md) | 76 | `result-track:1de31c6106b10d68369d2947643b00216c67e0009aac192a8458ba9b51a27c4b` |
| 17 | `theorem` | [stale_not_agreement](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/stale-not-agreement--f7f1a6708c4931d113321e51.md) | 80 | `result-track:f7f1a6708c4931d113321e514842c021f190b5e3023eec42ea4b6e81b900228d` |
| 18 | `theorem` | [ranks_root_and_bounds_insufficient](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/ranks-root-and-bounds-insufficient--fce8207b4417c3a562e6018a.md) | 88 | `result-track:fce8207b4417c3a562e6018ab2e3ee8765d2cdfb19d0e1f03415dcca31e00e39` |
| 19 | `def` | [falseCertificate](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/falsecertificate--6ef3b34646000fbada29fa2c.md) | 97 | `declaration-track:6ef3b34646000fbada29fa2c3774362b875b33e31f4e4bb6c3266842bb0d450b` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/example--09aa85670658e2a7a7f249cd.md) | 103 | `declaration-track:09aa85670658e2a7a7f249cd06ba53c653e4c54a57f079d8a0635cb0f77e2f43` |
| 21 | `theorem` | [stale_actual_unpack](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/stale-actual-unpack--b8a6cb02d9fe1fdc8e15b6c7.md) | 108 | `result-track:b8a6cb02d9fe1fdc8e15b6c71e21cfbd235cf79541491ee6a76097107428d644` |
| 22 | `theorem` | [stale_predicate_rejected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/stale-predicate-rejected--70506652a5850ece190647ab.md) | 115 | `result-track:70506652a5850ece190647ab72c4aa9b2e694794c6157c092b161ca49c0b8d27` |
| 23 | `theorem` | [stale_actual_revision](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/stale-actual-revision--0b49431474947a12d436b1fd.md) | 126 | `result-track:0b49431474947a12d436b1fd9e6b6484f562f91246473708177690a6bb7a10f4` |
| 24 | `theorem` | [repeated_agreement](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/repeated-agreement--716892fd375cb32e3769deb3.md) | 133 | `result-track:716892fd375cb32e3769deb30c9a2c17a9d2f753ebc470a7d09cefb39423b8c2` |
| 25 | `theorem` | [repeated_certified_revision](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/repeated-certified-revision--489c63f73160d4e1e7f9fa0d.md) | 140 | `result-track:489c63f73160d4e1e7f9fa0da6ea00984bd39366ad6d7ff878986bfbacf18954` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/example--8c2bf346b78e07e1663d1b0d.md) | 147 | `declaration-track:8c2bf346b78e07e1663d1b0df7f2734bc60fb428877bfe8b20ac58d7cee69bc0` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/example--4564e3c5509a1bc7b45fe6f7.md) | 151 | `declaration-track:4564e3c5509a1bc7b45fe6f777bce2db3547a98f3fd979288fdcb4e54b1a6237` |
| 28 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/boolquiver--ee245383bb3808582e730806.md) | 160 | `declaration-track:ee245383bb3808582e7308063bf543502e3f6811711f5550a37f80ddd81faf09` |
| 29 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/booltagdecidableeq--28cd84b9e557b8ed612a4eb2.md) | 162 | `declaration-track:28cd84b9e557b8ed612a4eb249940d1786f158b409e08a642439160c964ab8d5` |
| 30 | `def` | [emptyBefore](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/emptybefore--579d8025a0933f1e3edc9126.md) | 165 | `declaration-track:579d8025a0933f1e3edc9126c90db14392a61f85c325880b11b5333182424647` |
| 31 | `def` | [emptyAfter](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/emptyafter--96505443db66fe96078e69cb.md) | 168 | `declaration-track:96505443db66fe96078e69cb76a53f0d4fd305ec33cf9be2576d03e0622b969e` |
| 32 | `theorem` | [empty_raw_context_equal](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/empty-raw-context-equal--22289f83983c2085d7bcc6ea.md) | 171 | `result-track:22289f83983c2085d7bcc6eaa08d1b3e917211211cdff9a4d05a7855d89c8178` |
| 33 | `theorem` | [empty_root_context_lost](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/empty-root-context-lost--a2a40ac0e00892795f502560.md) | 175 | `result-track:a2a40ac0e00892795f50256092949ad84ac8f3faea89b09b506a7e4dbcbc7603` |
| 34 | `theorem` | [empty_rooted_output_equal](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/empty-rooted-output-equal--2efed9a031b4caf5b11c0684.md) | 177 | `result-track:2efed9a031b4caf5b11c06842b56a7a2047939726499965e106e96ca24a5abdd` |
| 35 | `theorem` | [empty_roots_still_required](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean/declarations/empty-roots-still-required--d5e0d4906edbc8395bdb7093.md) | 181 | `result-track:d5e0d4906edbc8395bdb7093fe02bf60fd90ff5f04f0369569d8be8fa951bf9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
