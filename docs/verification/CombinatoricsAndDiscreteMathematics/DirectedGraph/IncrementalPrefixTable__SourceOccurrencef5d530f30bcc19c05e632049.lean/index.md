# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe8c0cca68875e6bc04b84026459a5e6a672e6d5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe8c0cca68875e6bc04b84026459a5e6a672e6d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RootedTraceRevision`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalDictionary__SourceOccurrence90de7751a16a898282e6ead1.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixEntries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/prefixentries--d286dc50956936ddebf1b526.md) | 38 | `declaration-track:d286dc50956936ddebf1b52621d23b229ed05a0e188acb4e78e82516933606ee` |
| 2 | `def` | [dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/dictionary--e4a5135b8d82db9e4326efe6.md) | 43 | `declaration-track:e4a5135b8d82db9e4326efe6682638e6ae22e9807fff02b70c75c6c4d9964712` |
| 3 | `theorem` | [mem_dictionary_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/mem-dictionary-iff--e9d67acad8f670b089c0c412.md) | 47 | `result-track:e9d67acad8f670b089c0c412a1119b450ebce0865cac0510876a2830649cd8b6` |
| 4 | `theorem` | [dictionary_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/dictionary-prefix--b8905fe192ef88635d49cece.md) | 56 | `result-track:b8905fe192ef88635d49cece9370eb78e97a4c05274493a2257180fd7461e52e` |
| 5 | `theorem` | [dictionary_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/dictionary-nodup--9ae8ae99d02fe3166d83e8f2.md) | 60 | `result-track:9ae8ae99d02fe3166d83e8f2d1b9d7f7f93fb4f43891bedd71559bb9c994bd71` |
| 6 | `theorem` | [dictionary_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/dictionary-closed--cd7e40f328a30493a8985291.md) | 64 | `result-track:cd7e40f328a30493a8985291cad6a07d560bb7f8e5cc98f8fbbb6b611c4d98f0` |
| 7 | `theorem` | [dictionary_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/dictionary-valid--9944e2c98998a89ffb2ffd19.md) | 74 | `result-track:9944e2c98998a89ffb2ffd19fee8b6c05b360013246f06543109fd8b73dc297a` |
| 8 | `def` | [cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/cell--5d7c18d98cf61c7e946cafed.md) | 82 | `declaration-track:5d7c18d98cf61c7e946cafed8d9409809c9924f1ae8dccdf1aa2f7bfd1e1fbf9` |
| 9 | `def` | [nodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/nodes--4dc6a46462c8470ac8d35315.md) | 88 | `declaration-track:4dc6a46462c8470ac8d35315517cb86ac8c8fe22df4be54029253bbb3eaccba6` |
| 10 | `theorem` | [nodes_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/nodes-prefix--5ac6e5fde4e15f22bb18c661.md) | 93 | `result-track:5ac6e5fde4e15f22bb18c661ea73792c0bb968fa4fdc724418bc370e85bbd2fb` |
| 11 | `theorem` | [old_cell_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/old-cell-eq--7b339da99bfc4f0a8c1497a1.md) | 97 | `result-track:7b339da99bfc4f0a8c1497a137c51cb166e5ddf5e37893b333d7685899337d47` |
| 12 | `theorem` | [nodes_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/nodes-eq-map--bb32c59d0560489238864af8.md) | 112 | `result-track:bb32c59d0560489238864af8383bdfee8c7f6a70119ba9a1fe6f044398e642b1` |
| 13 | `theorem` | [old_dictionary_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/old-dictionary-lookup--06eaa676ecd97dbcdd346dc0.md) | 123 | `result-track:06eaa676ecd97dbcdd346dc0878511188a2547d0849f86fbb34a011d26508b2c` |
| 14 | `theorem` | [old_node_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/old-node-lookup--b37089c78b4a15c5fc2f6d89.md) | 128 | `result-track:b37089c78b4a15c5fc2f6d894276e4ccd30ee745fc97041e50e35781af5f145c` |
| 15 | `theorem` | [old_parent_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/old-parent-lookup--6146db18c43b09bdba09586f.md) | 134 | `result-track:6146db18c43b09bdba09586f7020495014387ba859b932165456b561dec239b3` |
| 16 | `theorem` | [node_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/node-lookup--b15add3043183dea8d2903b1.md) | 147 | `result-track:b15add3043183dea8d2903b1f68ed3da130bcad6ebecb38eaa885c12c450f540` |
| 17 | `theorem` | [parent_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/parent-lookup--920c84004f415de1d5d36f33.md) | 154 | `result-track:920c84004f415de1d5d36f33b840462ba90a502fd50fc7015a02b0443599552e` |
| 18 | `theorem` | [nodes_validRanks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/nodes-validranks--0087460a3f700d3c5665c572.md) | 161 | `result-track:0087460a3f700d3c5665c5727413d465afc656009d1bb95f0b56f5052d594b16` |
| 19 | `theorem` | [expand_nodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/expand-nodes--b88e315071893e83fa60a9eb.md) | 176 | `result-track:b88e315071893e83fa60a9eb3303b935c6a7ee9bc9f3084209b55c7745b0cb76` |
| 20 | `theorem` | [decodeSlot_nodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/decodeslot-nodes--8028213c04604c848a8de7da.md) | 202 | `result-track:8028213c04604c848a8de7da2deed09dc04952fcba26a179c0ad4976666e6e23` |
| 21 | `theorem` | [expandDictionary_nodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/expanddictionary-nodes--f5b535fd580d2442eacff3c3.md) | 210 | `result-track:f5b535fd580d2442eacff3c3b1593a2fc8ec7878ba4174d64db1403e29b602ff` |
| 22 | `def` | [oldPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/oldpacked--ca6d767a35d07a911ef685d5.md) | 238 | `declaration-track:ca6d767a35d07a911ef685d5c5e1dc08d5cebc81dc0f8fbf687245aabea254f9` |
| 23 | `theorem` | [unpack_oldPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/unpack-oldpacked--d11b4cc1b14b5e166fe017f3.md) | 242 | `result-track:d11b4cc1b14b5e166fe017f38c99596c657170c55893c93f4f7affc08e1abbc8` |
| 24 | `theorem` | [oldPacked_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/oldpacked-valid--ce6288cabcff3ab0650a4208.md) | 252 | `result-track:ce6288cabcff3ab0650a420877d31c48523e2db429f082a57cd53e1b3c050232` |
| 25 | `def` | [realPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/realpacked--4f8fb8cb395de3148b97095e.md) | 259 | `declaration-track:4f8fb8cb395de3148b97095ec0c30e67c4e990910cef30a652af9e813362e06b` |
| 26 | `theorem` | [new_trace_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/new-trace-mem--6ab5df25b029313b5998ac88.md) | 263 | `result-track:6ab5df25b029313b5998ac887c0e1950bc4259f31eabf88f2a83a0b70dea6e72` |
| 27 | `theorem` | [realPacked_dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/realpacked-dictionary--6bf9af00e431a5b6696fa8be.md) | 270 | `result-track:6bf9af00e431a5b6696fa8be1603faa32df02ced64cb1b4b9184012c711a8524` |
| 28 | `def` | [representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/representation--60a333e70b5b413bc052d642.md) | 283 | `declaration-track:60a333e70b5b413bc052d642087c45735af91a99f57b9bc0a01a0047b45fa6be` |
| 29 | `theorem` | [expandedPacked_representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/expandedpacked-representation--62bccfba54ba2a49c25f351e.md) | 286 | `result-track:62bccfba54ba2a49c25f351eff64f37434fe6d23699a6f1821ae5981fc4f32d6` |
| 30 | `theorem` | [unpack_realPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/unpack-realpacked--0ef8bb9e70e98c19006e31ce.md) | 291 | `result-track:0ef8bb9e70e98c19006e31ce144d9e7c1ac3cc07fa64f461c042bb7392bbe1e5` |
| 31 | `theorem` | [decode_representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/decode-representation--d9f5eb34bfb2f59e0adfb220.md) | 297 | `result-track:d9f5eb34bfb2f59e0adfb2203b73363c1abe93733abdb4cd75f312a318110f51` |
| 32 | `theorem` | [real_reference_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/real-reference-count--532dc5cc90d8c01c0ff2ab29.md) | 302 | `result-track:532dc5cc90d8c01c0ff2ab29f6b9e62799adaad5e934be659f7a6d112a68303a` |
| 33 | `theorem` | [output_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/output-valid--20f653aa2d8892f96670369d.md) | 308 | `result-track:20f653aa2d8892f96670369d1761abbb5de5c61ad26cd8a3b8def5bf4f467acc` |
| 34 | `theorem` | [output_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/output-recovers--86d9143bf025d94bef5503e7.md) | 317 | `result-track:86d9143bf025d94bef5503e7266ea5890e4a5813c86946303745f4a8b22a9318` |
| 35 | `theorem` | [expand_old_revision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/expand-old-revision--068b72a582b228222a3dff8a.md) | 327 | `result-track:068b72a582b228222a3dff8a62136d2af2ebacafeee09ff32265ddcf14b64b79` |
| 36 | `theorem` | [certified_old_references](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/declarations/certified-old-references--fc1b64f6c5cdfff2f5227706.md) | 337 | `result-track:fc1b64f6c5cdfff2f522770660c86a923a6a3b098accdbe3acfe5fd7a69627a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
