# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hash.Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cee4fc481cadd7f4133935a014b875900ffcd9dc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cee4fc481cadd7f4133935a014b875900ffcd9dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean.json)

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
| 1 | `abbrev` | [Hash256](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/declarations/hash256--9b51c152f4a19d02d7be1090.md) | 25 | `declaration-track:9b51c152f4a19d02d7be1090edb42940afb4aa5c7ff73a05c324909233faa59e` |
| 2 | `abbrev` | [lowerHexAlphabet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/declarations/lowerhexalphabet--2e2d8cf55a8d97a5e5cc3611.md) | 26 | `declaration-track:2e2d8cf55a8d97a5e5cc3611bd7ea200f0fe5c7174359afeffccba9656bbb007` |
| 3 | `abbrev` | [IsLowerHexDigit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/declarations/islowerhexdigit--09e9703ba2bdcac2d5c6a259.md) | 27 | `declaration-track:09e9703ba2bdcac2d5c6a25990c89ba60d0b9b680e167f3e8bce0cd73299a7f5` |
| 4 | `abbrev` | [Hash256.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/declarations/hash256-valid--1417ba0473ab75c50d137932.md) | 28 | `declaration-track:1417ba0473ab75c50d137932c8415773da7d7eabef5fea8311ac503a942c8fbc` |
| 5 | `abbrev` | [verifyHash256](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/declarations/verifyhash256--295820b76c87f19ae68d495a.md) | 30 | `declaration-track:295820b76c87f19ae68d495a44f93317667c081bc0492b4898b4f5cbfbe1215b` |
| 6 | `theorem` | [verifyHash256_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantd0aef0603537e5b2c59d7ef8cc451e65731b05c1fcfb82bc00443e7ec0970564.lean/declarations/verifyhash256-sound--8d5ce9c32d95c5c99e5e07f8.md) | 33 | `result-track:8d5ce9c32d95c5c99e5e07f886ee93cfda445c17dcef3c97f18459dc388b0c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
