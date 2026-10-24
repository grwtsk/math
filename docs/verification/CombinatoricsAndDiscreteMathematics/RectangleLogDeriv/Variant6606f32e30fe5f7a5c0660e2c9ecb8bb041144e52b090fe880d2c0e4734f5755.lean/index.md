# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RectangleLogDeriv.Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db30df619c414827f45a20b95fd173edd3600ee1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db30df619c414827f45a20b95fd173edd3600ee1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ResidueCalcOnRectangles` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [residueTheorem_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/declarations/residuetheorem-finset--11606f3a3507867c213ca6b6.md) | 31 | `result-track:11606f3a3507867c213ca6b60610748b284917248f83607718f4285de28ab9f1` |
| 2 | `theorem` | [finite_zeros_rectangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/declarations/finite-zeros-rectangle--88f5144daa3f41803e24bbc2.md) | 143 | `result-track:88f5144daa3f41803e24bbc2707cc9842033ba43a01bb392dd2ce803faa8b295` |
| 3 | `theorem` | [rectangleIntegral'_mul_logDeriv_of_poles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/declarations/rectangleintegral-mul-logderiv-of-poles--c8f87fe4f3a76393d9e42165.md) | 168 | `result-track:c8f87fe4f3a76393d9e42165ed4b58782c3a8eda554a40022ca4c7d58ba637b5` |
| 4 | `theorem` | [rectangleIntegral'_mul_logDeriv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/declarations/rectangleintegral-mul-logderiv--7625ef0fc8412afee8d7cc55.md) | 352 | `result-track:7625ef0fc8412afee8d7cc5566f639d8e1eb1dedd8ee0c6eda938bab4734ec00` |
| 5 | `theorem` | [rectangleIntegral'_mul_logDeriv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variant6606f32e30fe5f7a5c0660e2c9ecb8bb041144e52b090fe880d2c0e4734f5755.lean/declarations/rectangleintegral-mul-logderiv--2d5a1ea94ea2791c105f4fbf.md) | 365 | `result-track:2d5a1ea94ea2791c105f4fbfd084de3992f0fa38f4be9ebe576bba7d226d275d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
