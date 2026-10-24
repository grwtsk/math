# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Impl.Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6711d2c542cb76987c91ce0b69f9f6bc838fc3fb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6711d2c542cb76987c91ce0b69f9f6bc838fc3fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mergeTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergetr--522e1b80fecf9c0a7d92f068.md) | 59 | `declaration-track:522e1b80fecf9c0a7d92f06806ab3bd48bcda48079163b191793bcde4013bc24` |
| 2 | `theorem` | [mergeTR_go_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergetr-go-eq--e82f4d399d7f680a0eaff6ce.md) | 70 | `result-track:e82f4d399d7f680a0eaff6ce91e2fb2cc422618143eb7d6867533e5b54c9e78c` |
| 3 | `theorem` | [merge_eq_mergeTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/merge-eq-mergetr--7be223fc885b7cffffbaec58.md) | 80 | `result-track:7be223fc885b7cffffbaec581f22233b16da145265894b0a855634876830a7fd` |
| 4 | `def` | [splitRevAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevat--6acee0c3ba1f17e1a1e24a4e.md) | 91 | `declaration-track:6acee0c3ba1f17e1a1e24a4ebb72faa7887527bc7a9abcb7645d82a1673a6cf4` |
| 5 | `theorem` | [splitRevAt_go](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevat-go--8f7d262f0dd0b1093aa9f5dc.md) | 97 | `result-track:8f7d262f0dd0b1093aa9f5dc8ade7b0dd06b4ee6a8a6597843b204b6e9561191` |
| 6 | `theorem` | [splitRevAt_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevat-eq--7b1eced8b00ef6ca1b07477f.md) | 108 | `result-track:7b1eced8b00ef6ca1b07477faa00fd6397bf7dd3afcc893d1a0f00b49fc9a7e7` |
| 7 | `def` | [mergeSortTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesorttr--66ce95ec3f8768c1b6b0e589.md) | 118 | `declaration-track:66ce95ec3f8768c1b6b0e589279f8cee89f16660a9c7b402e6282fa2cde2e79c` |
| 8 | `def` | [splitRevInTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevintwo--9e326204513cec41642268b8.md) | 131 | `declaration-track:9e326204513cec41642268b8a681b015544e3856d1177483e9b98253b0001f53` |
| 9 | `def` | [splitRevInTwo'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevintwo--e92c9070b6bf4ba70eda3ca0.md) | 140 | `declaration-track:e92c9070b6bf4ba70eda3ca084175016e4343feeec23f0141db9334bccb0266d` |
| 10 | `def` | [mergeSortTR₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesorttr--ec4dae73795d31f4042a0d05.md) | 151 | `declaration-track:ec4dae73795d31f4042a0d054a19e5f4b44103b49c709e46619d1bf53766130e` |
| 11 | `theorem` | [splitRevInTwo'_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevintwo-fst--cbc83c92f94855d7f84054fb.md) | 167 | `result-track:cbc83c92f94855d7f84054fbbd9d57edbef10a20967e3721c3136314e5318ed3` |
| 12 | `theorem` | [splitRevInTwo'_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevintwo-snd--0ad417a59a3d28bd4f81c9e8.md) | 172 | `result-track:0ad417a59a3d28bd4f81c9e87e7e1e61d5ebf766d8087238e979dde48a5b82e7` |
| 13 | `theorem` | [splitRevInTwo_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevintwo-fst--e532446a5c2983abf5184aff.md) | 178 | `result-track:e532446a5c2983abf5184aff06db00bb42ffa946dd91ed8cc2323a70fc98adb1` |
| 14 | `theorem` | [splitRevInTwo_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/splitrevintwo-snd--39905245e49b5d5f763ea0f0.md) | 181 | `result-track:39905245e49b5d5f763ea0f0bf1bf2806d1ba6090007c770a68a5927dc2b6335` |
| 15 | `theorem` | [mergeSortTR_run_eq_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesorttr-run-eq-mergesort--57d6d55c9b3f765b04f9081e.md) | 185 | `result-track:57d6d55c9b3f765b04f9081e01513eee6bfa9aeb788515308239c0e88e8cad6f` |
| 16 | `theorem` | [mergeSort_eq_mergeSortTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesort-eq-mergesorttr--3c4fc407138bd2dd660598e7.md) | 195 | `result-track:3c4fc407138bd2dd660598e72862fedf26a6b4cb24aeb30bc0077b8dcb0df9f1` |
| 17 | `theorem` | [mergeSortTR₂_run_eq_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesorttr-run-eq-mergesort--8a28d9dbd4f9335456eb6cb3.md) | 201 | `result-track:8a28d9dbd4f9335456eb6cb34d17e164656f02e9ba4741107eb65f9115fb6bac` |
| 18 | `theorem` | [mergeSortTR₂_run'_eq_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesorttr-run-eq-mergesort--d925e2be23ea57ce13116c51.md) | 213 | `result-track:d925e2be23ea57ce13116c51a230bccbaf9bb46068b9f6e5e1160461c9108487` |
| 19 | `theorem` | [mergeSort_eq_mergeSortTR₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/declarations/mergesort-eq-mergesorttr--d809d11bd3a869662a32b366.md) | 248 | `result-track:d809d11bd3a869662a32b36669a8351ebd4fbe63b64bb7e82a2aed659826cfe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
