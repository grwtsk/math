# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semaphore.Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e075691a3c0064d8cc5ad33c3e1a4da01c26adf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e075691a3c0064d8cc5ad33c3e1a4da01c26adf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean.json)

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
| 1 | `structure` | [SemaphoreState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphorestate--e060b5a71bfa965955c9a80b.md) | 25 | `declaration-track:e060b5a71bfa965955c9a80ba34ab69f8cfadf136797a06c23f323c9729d7568` |
| 2 | `structure` | [Semaphore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphore--4e7f06583c6bc268366f4e51.md) | 37 | `declaration-track:4e7f06583c6bc268366f4e51d3a73996c07d85e4f29d6a8448e7495c69bec928` |
| 3 | `def` | [mkResolvedPromise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/mkresolvedpromise--41fb36a58e4f3fdd6c278f22.md) | 43 | `declaration-track:41fb36a58e4f3fdd6c278f22ed2c7fe4942755edba9d59dc0ac3031c2b3c0cdf` |
| 4 | `def` | [Semaphore.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphore-new--4bb206e6a935a87b432cfa70.md) | 51 | `declaration-track:4bb206e6a935a87b432cfa7012009023f474d9db70707a0e30c73f9baf009c73` |
| 5 | `def` | [Semaphore.acquire](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphore-acquire--c23d44a666e5ba8ce037302d.md) | 58 | `declaration-track:c23d44a666e5ba8ce037302d62335e82280fbe67f53e92e9f2273f886eacb20c` |
| 6 | `def` | [Semaphore.tryAcquire](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphore-tryacquire--e877eaac917b047731fbafe5.md) | 72 | `declaration-track:e877eaac917b047731fbafe5c5cbd181c5511507e44e25e88cd81caa8adabd83` |
| 7 | `def` | [Semaphore.release](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphore-release--39ff4043a0592cac7abab265.md) | 84 | `declaration-track:39ff4043a0592cac7abab2654b8dc410596f599c1bc71b8e972659bc1fe419e4` |
| 8 | `def` | [Semaphore.availablePermits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant7b1d4c026bfffbe31338d92d4d5064d7d966c3afb67b29364a654e14b69eae45.lean/declarations/semaphore-availablepermits--eb8e547f1f5f1125fc0ce069.md) | 100 | `declaration-track:eb8e547f1f5f1125fc0ce06947210fda7887531c0e32cb01e7e1a3da1bddc897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
