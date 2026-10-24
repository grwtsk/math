# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GeometricResidual.Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e0700b0bfab0ed745518b7ba3730f9fed5bc68d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e0700b0bfab0ed745518b7ba3730f9fed5bc68d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeometricResidualSpecification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification--ee82b2792e5874dcbda70d89.md) | 38 | `declaration-track:ee82b2792e5874dcbda70d897d36cfa04def3dae164bbc886b238a314f5b6a68` |
| 2 | `def` | [GeometricResidualSpecification.geometricKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-geometrickernel--1d334303281962ef32e20bc9.md) | 61 | `declaration-track:1d334303281962ef32e20bc929ea5d70aea6c90ca20873e6158d45aa78dda2d4` |
| 3 | `def` | [GeometricResidualSpecification.residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-residual--9b535ee3cc3058146e23d794.md) | 71 | `declaration-track:9b535ee3cc3058146e23d794f1716ed9e1fb6364661710a984e311d1044f5bbd` |
| 4 | `def` | [GeometricResidualSpecification.residualIncrement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-residualincrement--dc8e1adde53f401eb919d5b1.md) | 82 | `declaration-track:dc8e1adde53f401eb919d5b1780aa33af7ccc1be2ce8d29cf3895e5f2b30acf2` |
| 5 | `theorem` | [GeometricResidualSpecification.geometricKernel_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-geometrickernel-succ--e063ea936c48ed3be8a5650f.md) | 91 | `result-track:e063ea936c48ed3be8a5650f853118e5334bdaaed6cb513a869433e9afff5607` |
| 6 | `theorem` | [GeometricResidualSpecification.residual_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-residual-zero--63c6908c84fe5a1ab4fd7c48.md) | 105 | `result-track:63c6908c84fe5a1ab4fd7c4838134b1dfb3579d274385a3291f53b7a3484e0eb` |
| 7 | `theorem` | [GeometricResidualSpecification.residual_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-residual-succ--d2c4d948555e694d0bdb088b.md) | 118 | `result-track:d2c4d948555e694d0bdb088ba7f9a52d7b92804f503957087bc64c6b7154f5ab` |
| 8 | `def` | [GeometricResidualSpecification.toPrefixCompatibleResidual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant3b981d6e89632a63ad608e679126be25bd488b8af074b8d66a6e5e56f6ae14a5.lean/declarations/geometricresidualspecification-toprefixcompatibleresidual--ccc26b224265fb0989cd2f55.md) | 134 | `declaration-track:ccc26b224265fb0989cd2f5563970551b3e0235553a0b20ef938859864bd5b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
