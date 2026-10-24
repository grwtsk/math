# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d1cdc7dc4e5afc7bc33508ba32a424671b0cda",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d1cdc7dc4e5afc7bc33508ba32a424671b0cda`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--e0800b252fab960252481de8.md) | 25 | `declaration-track:e0800b252fab960252481de8592343aa2a65a858ec88f6160cdaede666a67a65` |
| 2 | `theorem` | [fst_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/fst-star--daff56d66aa33de233089309.md) | 28 | `result-track:daff56d66aa33de233089309328bcc6f5fa5ad7c14b84fe83e3196f277184f4f` |
| 3 | `theorem` | [snd_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/snd-star--5d19aae5a9c4597629e0a63d.md) | 33 | `result-track:5d19aae5a9c4597629e0a63d79f414740e8156dfd852a18c0986a1022a47f5e2` |
| 4 | `theorem` | [star_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/star-def--4acfa8483c9b41ab66808210.md) | 37 | `result-track:4acfa8483c9b41ab66808210e2bea836551cd9865b9d4f3fb95bf96fbdf83f6b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--3107cfb5f19befd1ea8ce833.md) | 41 | `declaration-track:3107cfb5f19befd1ea8ce83351f704472e75d1e0d972c15a8df44d74f1079ef0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--7b10e1d5756fac6ae12dd317.md) | 44 | `declaration-track:7b10e1d5756fac6ae12dd317d6701054e1aaa6df2bce271c8e518476507c92fd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--d9248189b9c77079165fbb0e.md) | 47 | `declaration-track:d9248189b9c77079165fbb0eb0eb9f29b718326d00eeecf683a4576a2a33b524` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--5c6ec7545f5dcb4007357756.md) | 50 | `declaration-track:5c6ec7545f5dcb4007357756d7ca54e7744cbeb2c412dd39e0784b1d2ed4b50f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--333adb61aa6576693a271bf8.md) | 53 | `declaration-track:333adb61aa6576693a271bf8a85076ec0282799a8953486b053a813f8f607560` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/instance--1d23fdc07ce3136ba3a791a3.md) | 58 | `declaration-track:1d23fdc07ce3136ba3a791a35c24b7663fcd7ea51e0137d402144ff5e60671fd` |
| 11 | `theorem` | [Units.embed_product_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd.lean/declarations/units-embed-product-star--b5eb3ef2adb443067a41ad36.md) | 65 | `result-track:b5eb3ef2adb443067a41ad368c6eb276761a8a66e6f1dc1c577529f477ce9150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
