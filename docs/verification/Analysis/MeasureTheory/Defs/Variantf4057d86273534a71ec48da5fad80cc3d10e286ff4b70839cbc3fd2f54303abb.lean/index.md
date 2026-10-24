# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "758b689189cff7816b8ed08e542f89ea7743cf24",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `758b689189cff7816b8ed08e542f89ea7743cf24`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/declarations/outermeasure--ba3bf7f52c087bc6e2dc370b.md) | 47 | `declaration-track:ba3bf7f52c087bc6e2dc370b338598045a305ea0a34a29a16cd47c9a19d17fa9` |
| 2 | `class` | [OuterMeasureClass](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/declarations/outermeasureclass--cbe2d9ac6d1dc354f1fa7b2b.md) | 58 | `declaration-track:cbe2d9ac6d1dc354f1fa7b2b7e544aeda734be2136e275e4fa07a81ebcd2a53b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/declarations/instance--0530d66067735d3b49063410.md) | 66 | `declaration-track:0530d66067735d3b490634107bdf9eddc117822247a6f0b166094ae6d2b65878` |
| 4 | `theorem` | [measureOf_eq_coe](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/declarations/measureof-eq-coe--3f14765ba092ef6d64198747.md) | 70 | `result-track:3f14765ba092ef6d641987477d068575a8f4438bf072030b1e6c21df7cd09181` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantf4057d86273534a71ec48da5fad80cc3d10e286ff4b70839cbc3fd2f54303abb.lean/declarations/instance--36caee51f7656568fe6cb5b0.md) | 72 | `declaration-track:36caee51f7656568fe6cb5b0f251bc80ed82e68b1d72f194b80ff378a5627ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
