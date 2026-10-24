# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteField.Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "247292c276e1d4e8e63ff4102ebd68e43ffd5be1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `247292c276e1d4e8e63ff4102ebd68e43ffd5be1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.CharP` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FiniteField.Matrix.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/declarations/finitefield-matrix-charpoly-pow-card--542666d259e2c770fd7e45ee.md) | 26 | `result-track:542666d259e2c770fd7e45eeabc783900c60bfc0c42a5f14a00cbf20b24161d4` |
| 2 | `theorem` | [ZMod.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/declarations/zmod-charpoly-pow-card--e3b02f520fbfe38eb6409b62.md) | 47 | `result-track:e3b02f520fbfe38eb6409b6273e433b093184657f39758dcf8a49c7ce7dd69ef` |
| 3 | `theorem` | [FiniteField.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/declarations/finitefield-trace-pow-card--e2af6ec4756716d307bfb571.md) | 53 | `result-track:e2af6ec4756716d307bfb5716022982751b943dd495df7ec43578ebbefe2bddf` |
| 4 | `theorem` | [ZMod.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/declarations/zmod-trace-pow-card--b9c7304604b9cd14e09327b7.md) | 61 | `result-track:b9c7304604b9cd14e09327b714ff29aa9674279db5b61faebb13595081a998bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
