# Verification target: GRWTSK.Algebra.FiniteStability.Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2381d76c2c06d4fc4946f5ada6a786fc3e463426",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2381d76c2c06d4fc4946f5ada6a786fc3e463426`.

Source path: `GRWTSK/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [baseChangeAux_surj](../../../../mathematics/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/declarations/basechangeaux-surj--911c3bc50e3519590ed95cd3.md) | 39 | `result-track:911c3bc50e3519590ed95cd38492a058a0fe2e6adf9f7d40a7dbd7c03c254f90` |
| 2 | `instance` | [baseChange](../../../../mathematics/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/declarations/basechange--8d2e8bd12008d055b6e9dbf1.md) | 46 | `declaration-track:8d2e8bd12008d055b6e9dbf178954768d11f8749e418f32186743fcd03d5a5c0` |
| 3 | `instance` | [baseChange](../../../../mathematics/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/declarations/basechange--6736eb819d3a4e0edb8e6e46.md) | 59 | `declaration-track:6736eb819d3a4e0edb8e6e462751ab88f9e68ec8b6e86983586894c42a6e5ee9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
