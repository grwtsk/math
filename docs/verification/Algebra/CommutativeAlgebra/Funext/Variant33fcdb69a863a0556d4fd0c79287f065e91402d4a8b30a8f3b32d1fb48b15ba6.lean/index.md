# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Funext.Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3347eb8a34b7da3b464b80f1b4f8359bdaa1dd22",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3347eb8a34b7da3b464b80f1b4f8359bdaa1dd22`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.RingDivision` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [funext_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/declarations/funext-fin--4ed1c4be486b0fd756530cc5.md) | 37 | `result-track:4ed1c4be486b0fd756530cc535aa393472e81b7c4dcfe97ab316ec11b424bf75` |
| 2 | `theorem` | [funext](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/declarations/funext--aa8b10a4a86ce3e63fbc8b9f.md) | 55 | `result-track:aa8b10a4a86ce3e63fbc8b9fea0f646a743b4e1bc00241526d4eccedab9361fc` |
| 3 | `theorem` | [funext_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/declarations/funext-iff--b157f3206f1a584eda679237.md) | 70 | `result-track:b157f3206f1a584eda6792373ba6d24b8a040fac3f7e29d3cb57e5bbd9d642b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
