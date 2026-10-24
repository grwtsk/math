# Verification target: GRWTSK.Geometry.AlgebraicGeometry.MorphismProperty.Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03b8f4445ddc4cb96f5321e2e3b08f90f4a4563a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03b8f4445ddc4cb96f5321e2e3b08f90f4a4563a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.MorphismProperty` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/pretopology--8752156261433894181d242f.md) | 48 | `declaration-track:8752156261433894181d242f5d788e1cf3a8508df60f8c7f3a413337fb6431c1` |
| 2 | `abbrev` | [grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/grothendiecktopology--59dd709d8ae727e2e183ed53.md) | 63 | `declaration-track:59dd709d8ae727e2e183ed5331192c506b389546a3e78861e706c0cd7f351d8f` |
| 3 | `def` | [surjectiveFamiliesPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/surjectivefamiliespretopology--b9f72407d674efa789f75817.md) | 70 | `declaration-track:b9f72407d674efa789f7581732fe5a3ea3cfc3c8a3daceb49b1f2e85dfdbb7b3` |
| 4 | `lemma` | [pretopology_le_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/pretopology-le-inf--b7eec9ce4c7363cc0e299be3.md) | 88 | `result-track:b7eec9ce4c7363cc0e299be3ef137237ded7dd143a2c4b7e17536264fbe9f182` |
| 5 | `lemma` | [grothendieckTopology_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/grothendiecktopology-eq-inf--c83f863376a8e4bd0f2554b1.md) | 104 | `result-track:c83f863376a8e4bd0f2554b106791cdd68b9d417b339ae480a691b32781bd2e9` |
| 6 | `lemma` | [pretopology_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/pretopology-cover--5ea5a60ff6f7d54908ca22dc.md) | 125 | `result-track:5ea5a60ff6f7d54908ca22dc9ddaf1dd68be8faa5624c82c6811fe58c7f81b63` |
| 7 | `lemma` | [grothendieckTopology_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/grothendiecktopology-cover--7707c917f3614f451b811d9a.md) | 129 | `result-track:7707c917f3614f451b811d9a1b327bfc82c4e9fd11f92717757684abf4f13697` |
| 8 | `lemma` | [pretopology_le_pretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/pretopology-le-pretopology--3280d8ee44ebcee0b546c26a.md) | 148 | `result-track:3280d8ee44ebcee0b546c26a8f9b7a7c14794b6d3d5017187056947214e9a865` |
| 9 | `lemma` | [grothendieckTopology_le_grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/declarations/grothendiecktopology-le-grothendiecktopology--646e62878561ac46c5729200.md) | 154 | `result-track:646e62878561ac46c57292008d61de265d0c1a276ba98f00d2b8904e40826be1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
