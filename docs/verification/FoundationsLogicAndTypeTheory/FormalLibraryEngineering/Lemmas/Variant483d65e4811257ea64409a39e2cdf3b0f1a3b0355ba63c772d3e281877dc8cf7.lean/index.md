# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f1d55b822c85473fd675c4a7315f6c183cde26",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f1d55b822c85473fd675c4a7315f6c183cde26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.BinomialHeap.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Heap.findMin_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean/declarations/heap-findmin-val--e9c276edbcf8ff49707f9f0b.md) | 11 | `result-track:e9c276edbcf8ff49707f9f0bf096c73526653c4cfca37449736af1daeabcd9ce` |
| 2 | `theorem` | [Heap.deleteMin_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean/declarations/heap-deletemin-fst--c5b3e5d62305ef35872f6532.md) | 16 | `result-track:c5b3e5d62305ef35872f6532cd31d442250a32bfe8f8c702bf2834fc2709d897` |
| 3 | `theorem` | [HeapNode.WF.realSize_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean/declarations/heapnode-wf-realsize-eq--41daf9c946447eb3034e1494.md) | 21 | `result-track:41daf9c946447eb3034e14942854c74661cbb79957a2a8727b44203a74c0049c` |
| 4 | `theorem` | [Heap.WF.size_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7.lean/declarations/heap-wf-size-eq--763fac386e59f1378b69170f.md) | 28 | `result-track:763fac386e59f1378b69170f7d8cc7121e75ec92b11c33845eec279aaa580e04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
