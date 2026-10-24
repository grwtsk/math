# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteField.Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eb7cb30ad79fc3afdfc0aac4847e58394a7c588",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eb7cb30ad79fc3afdfc0aac4847e58394a7c588`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.CharP` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FiniteField.Matrix.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/declarations/finitefield-matrix-charpoly-pow-card--53f2643d0fd96aa8735b666e.md) | 34 | `result-track:53f2643d0fd96aa8735b666e405642c564b36cf2fa31ce0317ae85453c61cfbb` |
| 2 | `theorem` | [ZMod.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/declarations/zmod-charpoly-pow-card--f9d9225aaa4addafa33b9f93.md) | 55 | `result-track:f9d9225aaa4addafa33b9f93c61a4e564a1ac1fd997a76a601ba261d9716bd62` |
| 3 | `theorem` | [FiniteField.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/declarations/finitefield-trace-pow-card--9aa83d24f2d1402ebdba6557.md) | 61 | `result-track:9aa83d24f2d1402ebdba65576c831c0fe4f4be5d1c18cc5f74995d4a7e88610d` |
| 4 | `theorem` | [ZMod.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/declarations/zmod-trace-pow-card--313162a771f1b76cf8db4c79.md) | 69 | `result-track:313162a771f1b76cf8db4c792d2d9cf855ef80febb3530c4abbdf114b36fc594` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
