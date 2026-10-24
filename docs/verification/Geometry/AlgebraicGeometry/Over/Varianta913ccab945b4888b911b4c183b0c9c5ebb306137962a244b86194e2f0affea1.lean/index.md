# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Over.Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9f1d1ddbd0030d8435ee74c685c75a065e71473",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9f1d1ddbd0030d8435ee74c685c75a065e71473`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Scheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.OverClass` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Over](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/declarations/over--f7b087f109c4a731a6564963.md) | 40 | `declaration-track:f7b087f109c4a731a6564963324edf5a403a7e6604bbf6b073b296282dfd9553` |
| 2 | `abbrev` | [CanonicallyOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/declarations/canonicallyover--4a56470f815672581ec6abae.md) | 46 | `declaration-track:4a56470f815672581ec6abae5958b0895e85a8672f742fcd831043d4595f34e2` |
| 3 | `abbrev` | [Hom.IsOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/declarations/hom-isover--52a9acf0cc3db886eedd49a9.md) | 50 | `declaration-track:52a9acf0cc3db886eedd49a9f55ce12aa3ad1f172236f01c28cfaba2f86f9c7c` |
| 4 | `lemma` | [Hom.isOver_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/declarations/hom-isover-iff--16cf7db0c12333b195b6b60f.md) | 53 | `result-track:16cf7db0c12333b195b6b60f917ea3b78fd0ac6cc48a0b915d8d3db2b8ca8e2b` |
| 5 | `abbrev` | [asOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/declarations/asover--016fa4ff6ba3c5c5f1b823d1.md) | 59 | `declaration-track:016fa4ff6ba3c5c5f1b823d17730ca9d1223fc1ec0e0144c7749b1a81f019455` |
| 6 | `abbrev` | [Hom.asOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/declarations/hom-asover--ddf0bdb591d65263bdf7abf1.md) | 62 | `declaration-track:ddf0bdb591d65263bdf7abf1c323fbb87566120fe4f4ba7282ef828830d046ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
