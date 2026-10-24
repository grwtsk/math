# Verification target: GRWTSK.Algebra.CommutativeAlgebra.DenomsClearable.Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a4593cbcf7d20e9e0b11eaec373c18273cb18e0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a4593cbcf7d20e9e0b11eaec373c18273cb18e0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DenomsClearable](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/denomsclearable--140b94c1e71ebf126a988f2e.md) | 37 | `declaration-track:140b94c1e71ebf126a988f2e6991b120849845eaf9b3450255f1bd6bdc542e66` |
| 2 | `theorem` | [denomsClearable_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/denomsclearable-zero--238c6a4e5cc5482ef54fb618.md) | 40 | `result-track:238c6a4e5cc5482ef54fb618c7647c38ab489ad59a6d0af4296a7de9da8a70fe` |
| 3 | `theorem` | [denomsClearable_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/denomsclearable-c-mul-x-pow--2f7a007c7a59727e3587670f.md) | 44 | `result-track:2f7a007c7a59727e3587670f3cbf393ae198682f536c4d98fb3f4d013e24941f` |
| 4 | `theorem` | [DenomsClearable.add](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/denomsclearable-add--87fc3cf30d0aa043b10e749e.md) | 53 | `result-track:87fc3cf30d0aa043b10e749eb2bac6ee9435e807e6142e907b88ad99ac88ad3e` |
| 5 | `theorem` | [denomsClearable_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/denomsclearable-of-natdegree-le--140472a3cb8f726062a04057.md) | 61 | `result-track:140472a3cb8f726062a04057d6541c70f7140bc9f95647d9cebc2c8b1d3415e1` |
| 6 | `theorem` | [denomsClearable_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/denomsclearable-natdegree--449f1a4a170066432edb1db1.md) | 69 | `result-track:449f1a4a170066432edb1db172ddc2004c2eb6a15720c33ecb8beaf28fc6ac86` |
| 7 | `theorem` | [one_le_pow_mul_abs_eval_div](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant0b737aa45a4f6fe1d03c3035db83ab1a11ecc20b2be51c9d77ed1e163a28513a.lean/declarations/one-le-pow-mul-abs-eval-div--ea485f0dd723c40de32268f6.md) | 82 | `result-track:ea485f0dd723c40de32268f6e67be5636d31e86fda6f8432be7acee602b5c385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
