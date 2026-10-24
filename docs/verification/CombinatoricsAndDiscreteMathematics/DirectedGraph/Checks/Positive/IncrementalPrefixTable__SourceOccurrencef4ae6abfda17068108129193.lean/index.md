# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2501c0de1b061609284b15b7afea36476cde288",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2501c0de1b061609284b15b7afea36476cde288`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/loopvertexdecidableeq--8d810a51befc9fa5a3cdceb0.md) | 16 | `declaration-track:8d810a51befc9fa5a3cdceb03189af096f3451bb9565e8bf3f1d3b2f29893e1d` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/looptagdecidableeq--584817a2f9757a4251b5b499.md) | 19 | `declaration-track:584817a2f9757a4251b5b499afc3ab0d6c4be11d04beafb0450de1b6f6371b6f` |
| 3 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/falsetag--15eb3892483ea6452c0aecef.md) | 22 | `declaration-track:15eb3892483ea6452c0aecef4507e3eaeee163c3e72f8436a47b3b01528924a6` |
| 4 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/truetag--243d7042cba8b279ea073055.md) | 25 | `declaration-track:243d7042cba8b279ea0730556cfa3d576e9c8fa88dd2303fb996a1b24fba72f7` |
| 5 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/tags-distinct--6d825887aa35d6593d91386b.md) | 28 | `result-track:6d825887aa35d6593d91386bfc4bb524d2ed8aa23a14d742a56bd8af08f78ec0` |
| 6 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/falseoccurrence--0c8d15c5a5921b202b68eba4.md) | 34 | `declaration-track:0c8d15c5a5921b202b68eba494f9d8f65088ea028788d25dbc3f0e61bcff822d` |
| 7 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/trueoccurrence--f503612fac5f87b3a539d0d3.md) | 37 | `declaration-track:f503612fac5f87b3a539d0d3ab05d7e5238acd37be6927102282e31c5a3b9048` |
| 8 | `def` | [joinedOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/joinedoccurrence--6fe64a36bfc1a5e43b245c3e.md) | 40 | `declaration-track:6fe64a36bfc1a5e43b245c3e824ea9158aeca5f08260bcc62f502ebd8ffee24a` |
| 9 | `def` | [oldRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/oldrows--1e7cd66789d569fff8f3501c.md) | 43 | `declaration-track:1e7cd66789d569fff8f3501cb8fedd13725327894ccab1ad72dddbb35947b036` |
| 10 | `def` | [newRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/newrows--a8966f01d7b7643e8595b5b2.md) | 46 | `declaration-track:a8966f01d7b7643e8595b5b2418f5eb313f0f120f876b1bc6147cfb5f39de5e5` |
| 11 | `theorem` | [old_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/old-inventory--971d0c186d22fcbedd7aad18.md) | 49 | `result-track:971d0c186d22fcbedd7aad18c4ada970c49a3fa00fc771f3534e3e9db8846ef4` |
| 12 | `theorem` | [new_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/new-inventory--d9afe33685f20caa50ec00a5.md) | 53 | `result-track:d9afe33685f20caa50ec00a5bae3c47b182fcf145f178610d756b3f11189ad99` |
| 13 | `theorem` | [stable_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/stable-dictionary--2509d67d4ecf55352900014e.md) | 58 | `result-track:2509d67d4ecf55352900014e7950220c45e1409c6ca17c3816d2deecd7a07dc2` |
| 14 | `theorem` | [canonical_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/canonical-dictionary--20f438d1938279088cfe960f.md) | 63 | `result-track:20f438d1938279088cfe960f82515730e60d6ac494a268f056a97fc30e9c8647` |
| 15 | `theorem` | [old_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/old-nodes--6e3780b3b646c64494c2152a.md) | 68 | `result-track:6e3780b3b646c64494c2152a2ad6decc47c0487ddb20babb8b555e6e22a1efad` |
| 16 | `theorem` | [stable_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/stable-nodes--79ba139660f56464f871b04f.md) | 71 | `result-track:79ba139660f56464f871b04ffe04ec73338a5376b8be8d6f47ef5dbace205485` |
| 17 | `theorem` | [old_slot_preserved_canonical_slot_changed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/old-slot-preserved-canonical-slot-changed--d4c9933b39799c3b6c55af7b.md) | 77 | `result-track:d4c9933b39799c3b6c55af7b30a3aac0da95a52453be2c1c3c88303138404172` |
| 18 | `theorem` | [complete_old_parent_cell_preserved](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/complete-old-parent-cell-preserved--4b5d352fb5aae4214557ae7d.md) | 83 | `result-track:4b5d352fb5aae4214557ae7dfaef0cff56c9be706f9022cad78e05089b9e8f13` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--1eca01ae93524475a3978114.md) | 89 | `declaration-track:1eca01ae93524475a3978114dfa228f4fb71e23e6a4d0464ddfb8fca3c4d429c` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--46fb2418c1eec61a53223aba.md) | 91 | `declaration-track:46fb2418c1eec61a53223abae679a0c621911c95dcfe2fc261430d497a29d73a` |
| 21 | `theorem` | [actual_real_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/actual-real-decode--9100ddeedd92a375cdce66d3.md) | 94 | `result-track:9100ddeedd92a375cdce66d3ec01d13fe06ba13662f818b2529ae06e2cbd4865` |
| 22 | `theorem` | [no_new_rows_omitted](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/no-new-rows-omitted--ec04e1aa506de7467f48ebfa.md) | 97 | `result-track:ec04e1aa506de7467f48ebfa9947dd144d71a3b0290f840e98c0e83dac3c90c0` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--9bd567d9f6d9f5f090d0c521.md) | 105 | `declaration-track:9bd567d9f6d9f5f090d0c521613e7ae4ef6ab074d62bcff85cc20dce085ec881` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--45a06706c0ba5973cb63910c.md) | 108 | `declaration-track:45a06706c0ba5973cb63910ca0c8f5bba38cf76bf1507d69cb883a804843dbd1` |
| 25 | `def` | [oldCertificate](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/oldcertificate--f4d491a935626afadefab5bc.md) | 113 | `declaration-track:f4d491a935626afadefab5bca9354677b8d39323a8f82f960418da9d47b63785` |
| 26 | `theorem` | [old_certificate_reused](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/old-certificate-reused--1f36e80f65df0316dfc18902.md) | 118 | `result-track:1f36e80f65df0316dfc189029f1326cb56c6bf24a211ee78187262d551a97f98` |
| 27 | `theorem` | [full_new_predicate_not_inherited](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/full-new-predicate-not-inherited--560b053faca9b4db70403da4.md) | 126 | `result-track:560b053faca9b4db70403da44c173fc66f69c4aa3a6ed84d820a7fbcc5ea4193` |
| 28 | `def` | [sharedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/sharedrows--2b6b7c8c356f8f2a3b0b8aa2.md) | 140 | `declaration-track:2b6b7c8c356f8f2a3b0b8aa2ea0bce1f7df5f577f975269f771f253e679fb89d` |
| 29 | `theorem` | [shared_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/shared-inventory--1f911d091b4c934b13908e6f.md) | 143 | `result-track:1f911d091b4c934b13908e6f513fba6e4aa2acd9659df94c35159c2247619756` |
| 30 | `theorem` | [shared_prefix_only_one_new_cell](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/shared-prefix-only-one-new-cell--06347cb0be35038a0d869341.md) | 148 | `result-track:06347cb0be35038a0d869341f537e7bb3db900f5e09f5cd658e60752a9829fd0` |
| 31 | `def` | [repeatedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/repeatedrows--14a7e03a9c3550e638779666.md) | 153 | `declaration-track:14a7e03a9c3550e638779666952c28a26930717c98f9d4c00003af22ef0dfd60` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--4ec6684f0877c5bc1f26779a.md) | 156 | `declaration-track:4ec6684f0877c5bc1f26779a5d0a75a90f59f96354bdccd1ae8a4c24a0aa3735` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--7ec7d74cd12a3c9cefbfae3b.md) | 160 | `declaration-track:7ec7d74cd12a3c9cefbfae3b3c66e4f83f133efdd6283419a4eb1fc79d820d2b` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--a821cdb29d19038ac34caa4e.md) | 163 | `declaration-track:a821cdb29d19038ac34caa4e6150cc875da12c303a2b27f51792b43c6cd535cd` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--243590b45cccd52647efb5c2.md) | 167 | `declaration-track:243590b45cccd52647efb5c2401954c58b969154aa41fab8ada34966bbacb627` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--97681373cccc99848ab73ad3.md) | 170 | `declaration-track:97681373cccc99848ab73ad3d3e468eb69a766106e45cf117e3aa8a48872162b` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/example--575143620c1b03fad6ed3ea7.md) | 173 | `declaration-track:575143620c1b03fad6ed3ea757d2f55ff9e64887a2cf7d3f76e16d4118190652` |
| 38 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/boolquiver--4817f050216cea8287815ac4.md) | 176 | `declaration-track:4817f050216cea8287815ac4df20b9e59bcd639b0c9a85cf05aca2b832f77250` |
| 39 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/booltagdecidableeq--aaa0ea31839c7ddac3c00491.md) | 178 | `declaration-track:aaa0ea31839c7ddac3c004916f575496d2640d426a5083d1d3bc10790d977056` |
| 40 | `def` | [emptyFalse](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/emptyfalse--54c62f2143b10cc4f4575f67.md) | 181 | `declaration-track:54c62f2143b10cc4f4575f67008ba7f92a8dffa71fc6518f57fd9e4c907fcd09` |
| 41 | `def` | [emptyTrue](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/emptytrue--6c08167af45463f412a1478a.md) | 184 | `declaration-track:6c08167af45463f412a1478ae069c4bbe692b05175f22d520ad3f92fb6ce6a24` |
| 42 | `theorem` | [empty_table_root_retained](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable__SourceOccurrencef4ae6abfda17068108129193.lean/declarations/empty-table-root-retained--705eca5cdeb2c8d21dbe8665.md) | 187 | `result-track:705eca5cdeb2c8d21dbe866528759d06273b0f0546cbb60619a7ab4df04e5d21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
