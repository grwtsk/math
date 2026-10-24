# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Funext.Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e6474ecdd4b3782a5e9f2bc3daa4fc38622e39f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e6474ecdd4b3782a5e9f2bc3daa4fc38622e39f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.RingDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [funext_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean/declarations/funext-fin--03e7dbcb840c4fa4621b6547.md) | 29 | `result-track:03e7dbcb840c4fa4621b654724bf8da40ec5c4219365fa5a5395c092f1479a54` |
| 2 | `theorem` | [funext](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean/declarations/funext--e58791ccc63c1d4eccc78573.md) | 47 | `result-track:e58791ccc63c1d4eccc78573c0ca4b3e192ff3e5f5b7685aa33581ce4d1244b0` |
| 3 | `theorem` | [funext_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variante0c21a4980f975a8ecc171abf0f06c1d3e72d50edc21ca685a3c2ec52561d537.lean/declarations/funext-iff--ee8e477be27e2db2d52abb0f.md) | 62 | `result-track:ee8e477be27e2db2d52abb0f5891e398c4f2daa25e48807cb3c3a42ada658c77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
