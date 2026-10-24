# Verification target: GRWTSK.Algebra.LinearAlgebra.PrimeSpokes.Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "141839729528779496e4b704141f2d454ebf7efb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `141839729528779496e4b704141f2d454ebf7efb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeSpoke](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/declarations/finiteprimespoke--354681fd908204b8ad6a8202.md) | 24 | `declaration-track:354681fd908204b8ad6a8202c9c2d7f48e98ca9b0a410fa405a053df0880493d` |
| 2 | `def` | [FinitePrimeSpoke.characterValue](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/declarations/finiteprimespoke-charactervalue--c4deb7455cc4287d5cb0ebb1.md) | 32 | `declaration-track:c4deb7455cc4287d5cb0ebb137dbfef4c0bfa0a0be3c99ed4c11c0acea018869` |
| 3 | `def` | [finitePrimeSpokeBlock](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/declarations/finiteprimespokeblock--7ae52578c936cc1bc2703c6c.md) | 38 | `declaration-track:7ae52578c936cc1bc2703c6c17b4c711e0c95cee89d282fa3206361658ccf34a` |
| 4 | `theorem` | [finitePrimeSpokeBlock_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/declarations/finiteprimespokeblock-selfadjoint--23a611e31cf896002302937f.md) | 44 | `result-track:23a611e31cf896002302937f8df2573699f9c778db8d4f343d2eeb09fe3f82c1` |
| 5 | `def` | [finitePrimeSpokeOperator](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/declarations/finiteprimespokeoperator--16fecb711719c4c7a5fd50a3.md) | 55 | `declaration-track:16fecb711719c4c7a5fd50a3c39fae5116394388b7914a4545cfcd2e6fa069b6` |
| 6 | `theorem` | [finitePrimeSpokeOperator_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/declarations/finiteprimespokeoperator-selfadjoint--d64e9325894fc73ca6922ae1.md) | 62 | `result-track:d64e9325894fc73ca6922ae1d7acdea7a4df734b617b4f7332111c97cb0f034a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
