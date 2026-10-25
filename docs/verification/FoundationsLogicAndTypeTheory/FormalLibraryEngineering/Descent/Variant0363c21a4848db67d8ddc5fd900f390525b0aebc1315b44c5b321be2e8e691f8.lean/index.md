# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Descent.Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8e388452c38d148f1d5ddbf41fee72e979ba52c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8e388452c38d148f1d5ddbf41fee72e979ba52c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Stack.Site` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Morphism.Descent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StackGluingWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean/declarations/stackgluingwitness--7e37aed798440cbc4d726655.md) | 27 | `declaration-track:7e37aed798440cbc4d726655d606de6c82765df82c9f8ed3faedd753eae9d171` |
| 2 | `theorem` | [stack_gluing_witness_glued](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean/declarations/stack-gluing-witness-glued--ed5bc840adf063706340236e.md) | 32 | `result-track:ed5bc840adf063706340236e5e406258d29298181e69d3f9fff8406436a74a20` |
| 3 | `structure` | [CompositeStackDescentWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean/declarations/compositestackdescentwitness--5b14c0131dd30eb3882bffae.md) | 37 | `declaration-track:5b14c0131dd30eb3882bffae9177562fa687da6391dac729e89a69fcfa0db917` |
| 4 | `theorem` | [composite_stack_descent_glues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descent/Variant0363c21a4848db67d8ddc5fd900f390525b0aebc1315b44c5b321be2e8e691f8.lean/declarations/composite-stack-descent-glues--15c4252fe53e7a9f4c7ee61a.md) | 43 | `result-track:15c4252fe53e7a9f4c7ee61ac6fa43ddb1949a86dade4b64a0d207a51c516c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
