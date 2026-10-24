# Verification target: GRWTSK.NumberTheory.WeightedSourcePickup.Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab73c625f9e1dea26e4dec58cb10cc0614d0758",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab73c625f9e1dea26e4dec58cb10cc0614d0758`.

Source path: `GRWTSK/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomPickup](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/atompickup--e6fcf6f80195dbf0f1cef743.md) | 21 | `declaration-track:e6fcf6f80195dbf0f1cef743468c789c5664440cf8c32de6fd505722cb82fecd` |
| 2 | `def` | [pickupWeight](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/pickupweight--473e0ec2d8b2d1c2e73feda0.md) | 25 | `declaration-track:473e0ec2d8b2d1c2e73feda05bb07756153c458dd43d22c1f6ab3b45ee06670b` |
| 3 | `theorem` | [inverse_sqrt_eq_negative_half](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/inverse-sqrt-eq-negative-half--628a3122a16c4c53838827ec.md) | 30 | `result-track:628a3122a16c4c53838827ec7ba968545cd4230f94f0104873b226255b323cbd` |
| 4 | `theorem` | [exp_reset](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/exp-reset--a9b2ad7f53c2d2e442abcb5c.md) | 34 | `result-track:a9b2ad7f53c2d2e442abcb5cd424dea7bc72141734c22c77186d7aec02c27215` |
| 5 | `theorem` | [exp_negative_reset](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/exp-negative-reset--e470eec575cd126dcd25864f.md) | 39 | `result-track:e470eec575cd126dcd25864f76cce50d1beb57d357d7f6f7fe5e14f7bbb6e509` |
| 6 | `theorem` | [exp_half](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/exp-half--bfb5732420cd0f5b3c8931b1.md) | 44 | `result-track:bfb5732420cd0f5b3c8931b1f6ae4d15102edf2b804a42bb6ad0f5e7e5ffae3e` |
| 7 | `theorem` | [exp_negative_half](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/exp-negative-half--6fb3fe9e449e099662cc960b.md) | 51 | `result-track:6fb3fe9e449e099662cc960b0f81224112c2066e3a6671bf6657242b0aba10e6` |
| 8 | `theorem` | [cutoff_order](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/cutoff-order--d96b644607163fd4d65e952f.md) | 55 | `result-track:d96b644607163fd4d65e952f95f8e55ac449d215e79028c252111061f2cba50c` |
| 9 | `theorem` | [weight_low](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-low--d8ba6de38483cfcadda0f5ea.md) | 60 | `result-track:d8ba6de38483cfcadda0f5ea3ede2a671d5685655c2ba335623528eba8b8b526` |
| 10 | `theorem` | [weight_middle](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-middle--02ee07230571e375ba798d73.md) | 67 | `result-track:02ee07230571e375ba798d73c95379ddd11b045e141f07100c3f277610e84dd2` |
| 11 | `theorem` | [weight_above](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-above--3f88f5c46c2cc1a871040a24.md) | 72 | `result-track:3f88f5c46c2cc1a871040a24e44e442a113320cbeeba94e47641174868cfa6dc` |
| 12 | `theorem` | [weight_reset](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-reset--eb40320266f9480a276efc97.md) | 78 | `result-track:eb40320266f9480a276efc9718e6d2a16cfc7eb7ecf77d19ddcd9fe7d6ba371c` |
| 13 | `theorem` | [weight_upper_touch](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-upper-touch--18403721faefe5364f42c3fc.md) | 83 | `result-track:18403721faefe5364f42c3fc484e6d4c8c49ab1bd26830697fb7463054feab6e` |
| 14 | `theorem` | [weight_lower_touch](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-lower-touch--b36c0f0f232a1ffb4fabb493.md) | 95 | `result-track:b36c0f0f232a1ffb4fabb49303a5f8aefbc0462a0d801ba04564e478b833a04e` |
| 15 | `theorem` | [weight_nonneg](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-nonneg--bc322dfba3a8ddd068f8e835.md) | 100 | `result-track:bc322dfba3a8ddd068f8e8355177847016795dc8cfb8f416afb721d1908871fa` |
| 16 | `theorem` | [weight_le_inverse_sqrt](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-le-inverse-sqrt--55e366e629f03f44faaafc4d.md) | 121 | `result-track:55e366e629f03f44faaafc4dfa71cfbdc72777015b02d96f8a91961b44697194` |
| 17 | `def` | [integerInventory](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/integerinventory--820fce21a51d4c845c003d40.md) | 138 | `declaration-track:820fce21a51d4c845c003d401c57282a447f71e66cfacc9e1c5497f9f07cf937` |
| 18 | `def` | [weightedRecording](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weightedrecording--daedf9b1ba28dbe08f33369d.md) | 140 | `declaration-track:daedf9b1ba28dbe08f33369d4cb4f90a07b4b24ff8cbb937d540869a5e23060c` |
| 19 | `def` | [diagonalEnergy](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/diagonalenergy--3f222d22d6144d1f39c23bd2.md) | 143 | `declaration-track:3f222d22d6144d1f39c23bd29c27ecf370475a4e5d7c3e4cde5b665c9910872c` |
| 20 | `theorem` | [moebius_square_le_one](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/moebius-square-le-one--dbab1aca2a887a676ae403a6.md) | 147 | `result-track:dbab1aca2a887a676ae403a6b732c55e2f1cb004f05587363e2a81d2cab8965c` |
| 21 | `theorem` | [weight_square_le](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/weight-square-le--c27c9a903a9bf1346e4bcf11.md) | 153 | `result-track:c27c9a903a9bf1346e4bcf11efb7e867a7329ddf2d75c400eee7577166f6e1b8` |
| 22 | `theorem` | [diagonal_paid](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/declarations/diagonal-paid--c6c8f0f5b56270ba6b94f1a2.md) | 166 | `result-track:c6c8f0f5b56270ba6b94f1a25602d7ad68703b3aab78daa729d179e1ad7219f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
