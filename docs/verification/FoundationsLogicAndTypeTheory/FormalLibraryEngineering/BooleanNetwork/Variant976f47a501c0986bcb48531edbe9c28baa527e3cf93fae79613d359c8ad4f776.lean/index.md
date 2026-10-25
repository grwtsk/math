# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BooleanNetwork.Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ef38a590d74fbdef8906af5af6d0b06b253ef35",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ef38a590d74fbdef8906af5af6d0b06b253ef35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.Hypercube` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.Network](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/declarations/booleannetwork-network--ad80a31efabcb6bb48aca6fa.md) | 14 | `declaration-track:ad80a31efabcb6bb48aca6fab101e55267f07e438eb2328afa2d66a10b52a6da` |
| 2 | `def` | [BooleanNetwork.iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/declarations/booleannetwork-iterate--8ba374cd1d2425fcd1d6514f.md) | 18 | `declaration-track:8ba374cd1d2425fcd1d6514f17b42aabfabdbf6a9053596b55e7bdac912c813e` |
| 3 | `def` | [BooleanNetwork.transitionMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/declarations/booleannetwork-transitionmatrix--6a32bc165e92878bf2a937b8.md) | 29 | `declaration-track:6a32bc165e92878bf2a937b885e4fe344f0b62df298958b9886a54536773a9c6` |
| 4 | `def` | [BooleanNetwork.dependsOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/declarations/booleannetwork-dependson--d53b8c505b72e52a8ec76770.md) | 42 | `declaration-track:d53b8c505b72e52a8ec76770852343a14decfa516ef2573d3f302678a561f6f8` |
| 5 | `def` | [BooleanNetwork.dependencyMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant976f47a501c0986bcb48531edbe9c28baa527e3cf93fae79613d359c8ad4f776.lean/declarations/booleannetwork-dependencymatrix--0ffb44aa0fbe73d102f9f174.md) | 59 | `declaration-track:0ffb44aa0fbe73d102f9f1741e3c870998cd4ece5beb0b25d27a3c5475c3e186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
