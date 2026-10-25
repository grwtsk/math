# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormSimp.Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b04b38e1773eb51b55c53f219ed3fcbaa14d749b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b04b38e1773eb51b55c53f219ed3fcbaa14d749b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean.json)

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
| 1 | `def` | [getSimpEntriesFromPropConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/declarations/getsimpentriesfrompropconst--eb2777e54277684d5ec018a7.md) | 17 | `declaration-track:eb2777e54277684d5ec018a76b55fd577e9521ee55d95db68d7762839f75a089` |
| 2 | `def` | [getSimpEntriesForConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/declarations/getsimpentriesforconst--c1631ad2909d92197019b853.md) | 22 | `declaration-track:c1631ad2909d92197019b853e1fc4887636d63c991bccd36e275817f0bdcf6f8` |
| 3 | `def` | [PhaseSpec.getSimpPrio](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/declarations/phasespec-getsimpprio--3eb6881225fb145ac2bc80da.md) | 31 | `declaration-track:3eb6881225fb145ac2bc80da1e62be6699d3bbaaed7621d7b1fda9a8d46393de` |
| 4 | `def` | [simpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/declarations/simpcore--7894f292ee365aac2fe9ece2.md) | 41 | `declaration-track:7894f292ee365aac2fe9ece2ea0a020256edcdcb70327a9ffeae1aa61f80ca9b` |
| 5 | `def` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/declarations/simp--a9b78dbd879ebc89dd1dbf36.md) | 50 | `declaration-track:a9b78dbd879ebc89dd1dbf36eebec251dd17640b6eb744e8f2746d5b65d6ab22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
