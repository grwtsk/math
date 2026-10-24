# Verification target: GRWTSK.Algebra.MatrixReducerIR.Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504ac3570ce6ccc1370c96ff7fa2bf073c023225",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/index.md) · [Full source](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504ac3570ce6ccc1370c96ff7fa2bf073c023225`.

Source path: `GRWTSK/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.ReducerIR` — import line 6; external provider; requires a separately pinned dependency.
- `FilesystemCodec.FieldRows` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rep](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/rep--29eebb9e08d6cbe2e446df40.md) | 37 | `declaration-track:29eebb9e08d6cbe2e446df4037be072675e408371b54c2551cc54100b63d4a26` |
| 2 | `def` | [Rep.ofRuntime](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/rep-ofruntime--2b8744bdb577844228446533.md) | 49 | `declaration-track:2b8744bdb5778442284465334b05cee3aca31f7fc1d6be636868062aa52e3cab` |
| 3 | `def` | [Rep.Denote](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/rep-denote--f272ab797336d773ced790d7.md) | 55 | `declaration-track:f272ab797336d773ced790d7dafaa4ede6d0a447ccbcc2b80be9f93244ecc084` |
| 4 | `inductive` | [ReducerIR](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/reducerir--f69b45d24d0864da67cc86f2.md) | 67 | `declaration-track:f69b45d24d0864da67cc86f22cbd30408e1141053861149381f5a4d4009f74a0` |
| 5 | `def` | [xorFamily](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/xorfamily--a3f92ae140962412dfd4823d.md) | 101 | `declaration-track:a3f92ae140962412dfd4823db544e439f9449c98d2b25dfe2c2c199b8a25b498` |
| 6 | `def` | [eval](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/eval--1316e84eed22027a65dbaa9a.md) | 105 | `declaration-track:1316e84eed22027a65dbaa9a55e12d849ce683aa351d831f85d6fe9e2f99f8b3` |
| 7 | `theorem` | [eval_identity](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/eval-identity--c345a32c1edcac7048b8d33c.md) | 136 | `result-track:c345a32c1edcac7048b8d33c7da684f8ea60764cdaff9a296cbe3ad6c834c1f2` |
| 8 | `theorem` | [eval_compose](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/eval-compose--8b5abca65e6070869a1f7bb8.md) | 141 | `result-track:8b5abca65e6070869a1f7bb806ccbbe93e85c0536849bb5d1e7cab9940c1a484` |
| 9 | `def` | [describe](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/describe--5217033578d2c903f144a06d.md) | 149 | `declaration-track:5217033578d2c903f144a06d7d99a4c8ad1ccb17079548e3f646a6997fb67640` |
| 10 | `def` | [ofRuntime](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/ofruntime--c5746123fb9d1913cf277c6d.md) | 176 | `declaration-track:c5746123fb9d1913cf277c6dd91ffc51c899676478b310d49c5708f7193569e8` |
| 11 | `structure` | [CertifiedReducerIR](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/certifiedreducerir--ff2edbcc7d83fd3f8cd1ed40.md) | 202 | `declaration-track:ff2edbcc7d83fd3f8cd1ed404288ead254a35d0752b079a17dad2bc511248999` |
| 12 | `def` | [toObserverReducer](../../../../mathematics/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/declarations/toobserverreducer--b692f112438086f491b5980e.md) | 221 | `declaration-track:b692f112438086f491b5980e7d6b3d539404c76f6f911e0cbfa379eef335864c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
