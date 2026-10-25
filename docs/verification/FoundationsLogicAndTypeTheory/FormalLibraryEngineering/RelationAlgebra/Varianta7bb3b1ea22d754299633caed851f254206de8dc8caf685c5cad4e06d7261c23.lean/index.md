# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelationAlgebra.Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51227a30022b640507e9bb7a3b8824b1fb525f07",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51227a30022b640507e9bb7a3b8824b1fb525f07`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.IdiomConceptNetwork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AlgebraStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/declarations/algebrastatus--8fd2ced85ce77c7af1fea921.md) | 7 | `declaration-track:8fd2ced85ce77c7af1fea92171cea0b3f4301895bd2f075603cd4e937ce19033` |
| 2 | `structure` | [RelationAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/declarations/relationalgebra--678b012ff36cd06525274717.md) | 14 | `declaration-track:678b012ff36cd06525274717c12088ae500d1e19eb55bab936e841cc5d9ce17b` |
| 3 | `def` | [semanticRelationAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/declarations/semanticrelationalgebra--17a3314a4712cce90d8a9591.md) | 20 | `declaration-track:17a3314a4712cce90d8a9591aca3b535721210a65be7349fdc8fbe91ece312d6` |
| 4 | `theorem` | [near_synonym_is_not_transitive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/declarations/near-synonym-is-not-transitive--def6bdeddb42fe2219f8da32.md) | 33 | `result-track:def6bdeddb42fe2219f8da3258aa04febd4c7f4f175878363398131ae5a3a48a` |
| 5 | `structure` | [TransportedSemanticEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/declarations/transportedsemanticedge--82ab30086e0e585aeb268db3.md) | 38 | `declaration-track:82ab30086e0e585aeb268db35b1805e92ebbc8379fc4ab47db1cf32e58373007` |
| 6 | `theorem` | [context_relation_requires_transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean/declarations/context-relation-requires-transport--1aec40bb952a543781805064.md) | 45 | `result-track:1aec40bb952a5437818050642dd5454ea5997053f7d46a15c63b8fcd0aaf6b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
