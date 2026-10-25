# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cast.Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f932863a6f4a567acc32de5513783cd2a6efff0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f932863a6f4a567acc32de5513783cd2a6efff0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean.json)

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
| 1 | `class` | [NatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/declarations/natcast--3949de404353e281b84d211c.md) | 71 | `declaration-track:3949de404353e281b84d211c6dda047dc68594c9060161d5ac08084215fbb6ca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/declarations/instance--29325578985e959b62b61f61.md) | 75 | `declaration-track:29325578985e959b62b61f61bea386a8f077e8899abe19224405e0f14fdfe59b` |
| 3 | `def` | [Nat.cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/declarations/nat-cast--1e7c3643abb1a56dd8df1cc7.md) | 78 | `declaration-track:1e7c3643abb1a56dd8df1cc7a46a5d19bcbd80b17404d7ee2f695b633b58a238` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/declarations/instance--b3e0f7a21b4b3147bb50a729.md) | 82 | `declaration-track:b3e0f7a21b4b3147bb50a729acd5c830022ebdfc230bd48ea510d9dfdade139f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant3c57ae15fc6241dd8695cfc0699320d87bb9ef84e89092daa695ac2cc5e652b3.lean/declarations/instance--d9b3f6465a81967750ac5886.md) | 85 | `declaration-track:d9b3f6465a81967750ac58864a66a26326aefc4de943734330b9197899fe67eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
