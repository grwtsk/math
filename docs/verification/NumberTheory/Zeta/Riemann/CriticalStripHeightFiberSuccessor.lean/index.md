# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberSuccessor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b40ca6e528ddc4effd3c6ad3777481e36f66f51",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b40ca6e528ddc4effd3c6ad3777481e36f66f51`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [successorBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/successorbox--20ebc90f6a407f33ecb788d4.md) | 25 | `declaration-track:20ebc90f6a407f33ecb788d4e4f08e2c1e8f0fab7a907ede17b1abccd88a1e71` |
| 2 | `lemma` | [successorBox_mirror_stable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/successorbox-mirror-stable--84d86554ae8c7f9d1c24c2e3.md) | 27 | `result-track:84d86554ae8c7f9d1c24c2e38d4b38e88519b7db42edba14f89c6c6b8fce72c1` |
| 3 | `lemma` | [successorBox_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/successorbox-nonempty--046bc7488f902bb600131862.md) | 30 | `result-track:046bc7488f902bb600131862e09b9b3d47ab323a57bfb4cdb104bfc9ac52d6c2` |
| 4 | `lemma` | [mem_successorBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/mem-successorbox--a907e421af71ee2e81457d14.md) | 33 | `result-track:a907e421af71ee2e81457d14b249e6083f925cbd176e35fc014805f72e6d8366` |
| 5 | `lemma` | [upper_target_in_successorBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/upper-target-in-successorbox--6ed60911af77a456f2ad708e.md) | 37 | `result-track:6ed60911af77a456f2ad708e2a3b91fdebe86da3970311de11a665e39c4cb9f3` |
| 6 | `theorem` | [shell_of_successorBox_fibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/shell-of-successorbox-fibers--5b3961b2b372e1be21c13139.md) | 45 | `result-track:5b3961b2b372e1be21c131395c2610e31109d076dade0b63072ffe216de3809e` |
| 7 | `theorem` | [successorBox_fibers_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/successorbox-fibers-of-shell--6b746a0aee6a4a8e0b57ae6e.md) | 53 | `result-track:6b746a0aee6a4a8e0b57ae6e11a30821926e1cec643cb5e4d2c614810b846b94` |
| 8 | `theorem` | [shell_iff_successorBox_fibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/shell-iff-successorbox-fibers--406dae579c4a736ffce2bf26.md) | 67 | `result-track:406dae579c4a736ffce2bf2681b2aaca4b391b590dde4699eb0979d5d72949a0` |
| 9 | `theorem` | [window_successor_of_fibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/window-successor-of-fibers--e103f8db8ae430078c09dd53.md) | 71 | `result-track:e103f8db8ae430078c09dd537c61814c9de22a351aa37a2b7c02712d0881550f` |
| 10 | `theorem` | [window_successor_of_fiber_derivatives](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/window-successor-of-fiber-derivatives--32bf7bdecc9eaf4e8caa7c6d.md) | 77 | `result-track:32bf7bdecc9eaf4e8caa7c6dc12bbe008ca788a9e0cd3472e1212e465a6fad29` |
| 11 | `theorem` | [seventeen_window_fibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/seventeen-window-fibers--7805c60f0e3ef49752f0e695.md) | 83 | `result-track:7805c60f0e3ef49752f0e6950c1ffab2042e075d306314ea71f8fcf68e38ea8b` |
| 12 | `theorem` | [seventeen_mixed_box_fibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/seventeen-mixed-box-fibers--1ed519cb39cca4416294cbd0.md) | 86 | `result-track:1ed519cb39cca4416294cbd0d25a73de5cb7c9bb19017c9c239481e5358ba133` |
| 13 | `def` | [fifteenDerivativeFibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/fifteenderivativefibers--900931d243d5ef010055719a.md) | 90 | `declaration-track:900931d243d5ef010055719a3a605a86dc298a5f900c3e03cf822dcca741acc4` |
| 14 | `theorem` | [fifteen_derivative_fibers_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/fifteen-derivative-fibers-capacity--745001f3ab80895c61106ca4.md) | 94 | `result-track:745001f3ab80895c61106ca47c7817edd87ad695a81b3d094b06966b217b8599` |
| 15 | `theorem` | [seventeen_shell_iff_fiber_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/seventeen-shell-iff-fiber-capacity--924c9a39691df7684dbadefb.md) | 98 | `result-track:924c9a39691df7684dbadefbd58569d48c62017327395b7ceebd615bae8ba096` |
| 16 | `theorem` | [window_eighteen_of_fiber_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/window-eighteen-of-fiber-capacity--48617461f66efebd5a261d56.md) | 102 | `result-track:48617461f66efebd5a261d56898afb4c66ea0c4704cb24480b253206a9f5f89c` |
| 17 | `theorem` | [rh_of_seventeen_and_fiber_steps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/declarations/rh-of-seventeen-and-fiber-steps--8e0db4ce191825c74a6fcd96.md) | 107 | `result-track:8e0db4ce191825c74a6fcd967f0e88a50c8344f5dc3aa0da9d565cfb286be620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
