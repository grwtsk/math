# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c.InversionPermutation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ec3ddeea6e57a56722edfb5540ae96623b6c004",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean/index.md) · [Full source](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ec3ddeea6e57a56722edfb5540ae96623b6c004`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inversionPermutation](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean/declarations/inversionpermutation--b00e0ba918966faefb5b7162.md) | 65 | `declaration-track:b00e0ba918966faefb5b7162389cbf5fff62f46867b6332016a27cd4b330928c` |
| 2 | `theorem` | [inversionPermutation_apply](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean/declarations/inversionpermutation-apply--85bdaa4c0907c874a266901e.md) | 72 | `result-track:85bdaa4c0907c874a266901e09481092beaeaa3d2f4ed5b2966b3ea9e8b3ec8d` |
| 3 | `theorem` | [inversionPermutation_zero](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean/declarations/inversionpermutation-zero--347b2d7561354a98518d3c20.md) | 77 | `result-track:347b2d7561354a98518d3c20785c6ea41316cff1d0bc62dfe56727b4e41cf970` |
| 4 | `theorem` | [inversionPermutation_involutive](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/InversionPermutation.lean/declarations/inversionpermutation-involutive--a05b86c16418a835698d21e8.md) | 82 | `result-track:a05b86c16418a835698d21e80f0cc76d1ec8c7d13c0d47e49992e5d32046ce70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
