# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectMVars.Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c4024ca36b513f653cc3406e45278b5bd1a7500",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c4024ca36b513f653cc3406e45278b5bd1a7500`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [collectMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/collectmvars--1a99f79afef4b4990f7392ab.md) | 25 | `declaration-track:1a99f79afef4b4990f7392ab565cc871e3c0bfbeac407d2100e0d1c071e5c0a5` |
| 2 | `def` | [getMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/getmvars--adec7ef586ba25a518270da3.md) | 37 | `declaration-track:adec7ef586ba25a518270da39985c10f386d8711aa4dfb92bc3bcc439ec3b43e` |
| 3 | `def` | [getMVarsNoDelayed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/getmvarsnodelayed--8d0e306ce345e85cf3712b44.md) | 42 | `declaration-track:8d0e306ce345e85cf3712b447fb52fa8a755302e3ab446877b93e9902c653c15` |
| 4 | `def` | [collectMVarsAtDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/collectmvarsatdecl--3896d2aa83c2862588e3631b.md) | 46 | `declaration-track:3896d2aa83c2862588e3631b02f1e67bf229a1d774debe7a6318c5b388f6e377` |
| 5 | `def` | [getMVarsAtDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/getmvarsatdecl--40c76b8bbf8b552c8341496f.md) | 49 | `declaration-track:40c76b8bbf8b552c8341496f3671bde39af02a54d2fe42fd5c86ba361eb7fad2` |
| 6 | `def` | [addMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/addmvars--910ce4682c783fc155f9ec0d.md) | 60 | `declaration-track:910ce4682c783fc155f9ec0dd81948c7dcf7a813c3076f944e441c90d54c6d9d` |
| 7 | `def` | [go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/go--f90892df9291c74696aac746.md) | 71 | `declaration-track:f90892df9291c74696aac746aae27b4b02a74882b8d301968bf387eac3d26002` |
| 8 | `def` | [Lean.MVarId.getMVarDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/lean-mvarid-getmvardependencies--0c94bcf3651ef1ccd448e199.md) | 92 | `declaration-track:0c94bcf3651ef1ccd448e1999f87759b7c798ccc270609cf238803c0e5e11807` |
| 9 | `def` | [Lean.Expr.getMVarDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectMVars/Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e.lean/declarations/lean-expr-getmvardependencies--b87ad83d1c78eb58a260850d.md) | 98 | `declaration-track:b87ad83d1c78eb58a260850dfca192deec6df461e0a2873014c7fb0c39913e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
