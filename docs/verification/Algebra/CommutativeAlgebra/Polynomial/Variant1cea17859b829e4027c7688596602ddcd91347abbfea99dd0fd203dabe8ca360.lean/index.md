# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dadaca210e674d9af3deca6636f3aebcc4607f57",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dadaca210e674d9af3deca6636f3aebcc4607f57`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [jacobson_bot_polynomial_le_sInf_map_maximal](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean/declarations/jacobson-bot-polynomial-le-sinf-map-maximal--cb4bbfd4674045aa00d07ecc.md) | 29 | `result-track:cb4bbfd4674045aa00d07ecc505552cbd1710c3b440778feadd19d7941f6be77` |
| 2 | `theorem` | [jacobson_bot_polynomial_of_jacobson_bot](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360.lean/declarations/jacobson-bot-polynomial-of-jacobson-bot--eb80f323b96d2444735c2848.md) | 43 | `result-track:eb80f323b96d2444735c2848a177ced5cd311ec61039f123713efc52608f765d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
