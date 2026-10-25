# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0b60a1cc06220489e1dcdb80dbe6d75df7a7308",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0b60a1cc06220489e1dcdb80dbe6d75df7a7308`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.ExtHashSet.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.ExtTreeSet.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.toHashSet_eq_fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean/declarations/iterm-tohashset-eq-fold--485fdd12b5bc538ccb272dba.md) | 21 | `result-track:485fdd12b5bc538ccb272dba3f7d38b6bce6c51aa87a90b9eaf542452ca9ad4a` |
| 2 | `theorem` | [IterM.toExtHashSet_eq_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean/declarations/iterm-toexthashset-eq-oflist--92e68a4241bf10c2cbfa8119.md) | 26 | `result-track:92e68a4241bf10c2cbfa811963cbf7cd706efef5b97f58701d52fe97b335690d` |
| 3 | `theorem` | [IterM.toTreeSet_eq_fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean/declarations/iterm-totreeset-eq-fold--7a4632cfe226b0d04e530a3e.md) | 32 | `result-track:7a4632cfe226b0d04e530a3e75f77e029d0d8b554d10e05d31faa00c628ba511` |
| 4 | `theorem` | [IterM.toExtTreeSet_eq_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e.lean/declarations/iterm-toexttreeset-eq-oflist--64d3a1bbe9dcb80a3826c520.md) | 37 | `result-track:64d3a1bbe9dcb80a3826c52073728d9d79a66aec1167370e5e2276f1320cf84c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
