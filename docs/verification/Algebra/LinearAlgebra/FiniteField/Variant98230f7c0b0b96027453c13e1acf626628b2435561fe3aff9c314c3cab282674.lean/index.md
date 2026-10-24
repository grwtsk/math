# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteField.Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2985f93854753abf53c761e14cd0e0ff2f65364",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2985f93854753abf53c761e14cd0e0ff2f65364`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean.json)

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
| 1 | `theorem` | [FiniteField.Matrix.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean/declarations/finitefield-matrix-charpoly-pow-card--51a8f43c884c6f7104eedc39.md) | 24 | `result-track:51a8f43c884c6f7104eedc391e5ca26cf3039f45839f294819196a9197a3c571` |
| 2 | `theorem` | [ZMod.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean/declarations/zmod-charpoly-pow-card--fc874d31c879fdd1bfa48289.md) | 44 | `result-track:fc874d31c879fdd1bfa482890371fbfeb886a55205f6f983b4c15d6dc3ea7cbc` |
| 3 | `theorem` | [FiniteField.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean/declarations/finitefield-trace-pow-card--72ef2d006b7e975528fb4785.md) | 49 | `result-track:72ef2d006b7e975528fb4785b0f4b807b7ff2cebc06061a246380c4d9c12ac4d` |
| 4 | `theorem` | [ZMod.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674.lean/declarations/zmod-trace-pow-card--56b29750d1999eac237729bc.md) | 56 | `result-track:56b29750d1999eac237729bc1b6a090f3cedfdf56c06f3c282da40cb838f8652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
