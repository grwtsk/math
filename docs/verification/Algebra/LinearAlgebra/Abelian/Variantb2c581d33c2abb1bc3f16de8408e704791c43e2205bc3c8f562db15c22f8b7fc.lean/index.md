# Verification target: GRWTSK.Algebra.LinearAlgebra.Abelian.Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b23ad70d5988b9f83cb337506ff508a4b226b0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b23ad70d5988b9f83cb337506ff508a4b226b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalMono](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/normalmono--daa044f8ab8970ac44a731ef.md) | 31 | `declaration-track:daa044f8ab8970ac44a731ef5ce15abd331f04885a686cc96a9fcdd0da6c5b20` |
| 2 | `def` | [normalEpi](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/normalepi--22cd16d5193ca0e3dd7abe0f.md) | 52 | `declaration-track:22cd16d5193ca0e3dd7abe0f4eec5351513eb87b7599aa3fcd8284db2f458310` |
| 3 | `instance` | [abelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/abelian--87b5b96d3136b2cb4b8d082d.md) | 72 | `declaration-track:87b5b96d3136b2cb4b8d082dd3dc587ae78bcb4b88d1903a3bc4cebfed7eb609` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/instance--89ed0021626985199df542e4.md) | 80 | `declaration-track:89ed0021626985199df542e41ccbea2f86c02cd4d5efc844325d8037e998095a` |
| 5 | `instance` | [forget_reflectsLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/forget-reflectslimitsofsize--3e4c1e166c78cdb7ca7c3916.md) | 85 | `declaration-track:3e4c1e166c78cdb7ca7c39165b55e1b7442662395c803013775b9854baeaeb5b` |
| 6 | `instance` | [forget₂_reflectsLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/forget-reflectslimitsofsize--5222091f6e9f9706955f5dfa.md) | 89 | `declaration-track:5222091f6e9f9706955f5dfa6f1c8e88cde8c514e1274e273cd2f020283d5dcd` |
| 7 | `instance` | [forget_reflectsLimits](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/forget-reflectslimits--75020103c2b1839d603805db.md) | 93 | `declaration-track:75020103c2b1839d603805dbfe395999b3c84f3915f98dba511238221c20f8a8` |
| 8 | `instance` | [forget₂_reflectsLimits](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc.lean/declarations/forget-reflectslimits--bec7e73d11b588c4bc7e93ac.md) | 96 | `declaration-track:bec7e73d11b588c4bc7e93aceb3a8d15bc87205a15ae078a0b19a5fa0314eee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
