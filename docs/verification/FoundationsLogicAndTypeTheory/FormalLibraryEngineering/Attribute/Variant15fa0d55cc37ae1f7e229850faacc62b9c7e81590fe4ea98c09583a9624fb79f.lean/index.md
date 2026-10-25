# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9376b03d4bd077e67a5c9bb26367f9150b2587d7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9376b03d4bd077e67a5c9bb26367f9150b2587d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ExtraModUses` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CombinatorAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/declarations/combinatorattribute--fe7bfd96308d9f20d88600e7.md) | 25 | `declaration-track:fe7bfd96308d9f20d88600e78e4d90eeb312c8c8a918c5b65076a538ca990829` |
| 2 | `def` | [registerCombinatorAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/declarations/registercombinatorattribute--baf4c72d964acfe8bd3d731a.md) | 31 | `declaration-track:baf4c72d964acfe8bd3d731a845b299fb4d7273d2873c6afdbefdc1a46051306` |
| 3 | `def` | [getDeclFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/declarations/getdeclfor--8afbc53d2cd186bec27285d7.md) | 53 | `declaration-track:8afbc53d2cd186bec27285d7977a20f2e38c864e69851ea5873cc6ac905f821a` |
| 4 | `def` | [setDeclFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/declarations/setdeclfor--77009a733308297eb747db11.md) | 56 | `declaration-track:77009a733308297eb747db11cc2ceb2f255d4d42a053709f757e81045a8a6281` |
| 5 | `def` | [runDeclFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant15fa0d55cc37ae1f7e229850faacc62b9c7e81590fe4ea98c09583a9624fb79f.lean/declarations/rundeclfor--0a01252331b678bbc2b14008.md) | 59 | `declaration-track:0a01252331b678bbc2b14008e5dbdca0e617dba68a9569a0d8fcc2ea89198f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
