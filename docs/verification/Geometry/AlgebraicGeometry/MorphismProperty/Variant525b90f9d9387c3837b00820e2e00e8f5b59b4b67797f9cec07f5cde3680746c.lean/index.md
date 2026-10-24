# Verification target: GRWTSK.Geometry.AlgebraicGeometry.MorphismProperty.Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d50d0d2a13ded4369f6f03fdac5e3385a35b0e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d50d0d2a13ded4369f6f03fdac5e3385a35b0e`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.MorphismProperty` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/pretopology--1f4e2f33595ff2efd198bf12.md) | 40 | `declaration-track:1f4e2f33595ff2efd198bf12e2a9cc96e0f64b09ea2c86e0ae1a7e6229045399` |
| 2 | `abbrev` | [grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/grothendiecktopology--2fb31aeba74659d6974f582c.md) | 55 | `declaration-track:2fb31aeba74659d6974f582c7e858bd6e4bb81176457a0dc6037648b57fc422b` |
| 3 | `def` | [surjectiveFamiliesPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/surjectivefamiliespretopology--6730e1b775cf122ae2df9dc6.md) | 62 | `declaration-track:6730e1b775cf122ae2df9dc692139a8ddaae1f1086d5883566d9494ebbd866d6` |
| 4 | `lemma` | [pretopology_le_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/pretopology-le-inf--7ba04e5754069d19c7c0d2f2.md) | 80 | `result-track:7ba04e5754069d19c7c0d2f21c40513f396da155ca8654143c1c5d00fbef9022` |
| 5 | `lemma` | [grothendieckTopology_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/grothendiecktopology-eq-inf--7672d3b2b23a7ba38874f4aa.md) | 96 | `result-track:7672d3b2b23a7ba38874f4aaa68ef75720f715d9a0aa2076aec06488e9c6c3f8` |
| 6 | `lemma` | [pretopology_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/pretopology-cover--61c3a53c35df39167d2c8ae9.md) | 117 | `result-track:61c3a53c35df39167d2c8ae918bb7388a9e032e893917d64d5d634f9bddc50bf` |
| 7 | `lemma` | [grothendieckTopology_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/grothendiecktopology-cover--c8553f7050bb9af9ccfa59f1.md) | 121 | `result-track:c8553f7050bb9af9ccfa59f181b2d217fbed71d579a222b01e8f58a98d3c834c` |
| 8 | `lemma` | [pretopology_le_pretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/pretopology-le-pretopology--9c6269a9caebd022bb207b26.md) | 140 | `result-track:9c6269a9caebd022bb207b26722aba6487f8f8c38b19cd6a43e1bd5675db8617` |
| 9 | `lemma` | [grothendieckTopology_le_grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/declarations/grothendiecktopology-le-grothendiecktopology--64449adbdda5686521576288.md) | 146 | `result-track:64449adbdda568652157628889c3b323e671db82bf40b962764fb336a118126c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
