# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplexes.FiniteCharacterAndArithmeticInterfaces.Variantebff71f9e9a609ab.WholeUnitaryGaugeTwistAndSquareZero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5731a1ec8252f784a2baf0ea31a01ddd5a975c82",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/index.md) · [Full source](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5731a1ec8252f784a2baf0ea31a01ddd5a975c82`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.CharacterProjector` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.DifferentialComplex` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterTwist](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/charactertwist--772462e9259e9a9a9fa8ebc9.md) | 46 | `declaration-track:772462e9259e9a9a9fa8ebc9fba91a66c16741ae0b681cf4f4ebfc755e2ebc0d` |
| 2 | `def` | [twistedDifferential](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/twisteddifferential--32f89ea2ebc0c99cd24b9ae4.md) | 60 | `declaration-track:32f89ea2ebc0c99cd24b9ae401a02ffa13c0f4ebff6c564970123cf9c7cd0c8f` |
| 3 | `theorem` | [twistedDifferential_sq_zero](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/twisteddifferential-sq-zero--10819b40b9e400a8913dd9f8.md) | 65 | `result-track:10819b40b9e400a8913dd9f8f2669822f589c9c4acc32279bb986160427b40a7` |
| 4 | `def` | [twistedComplex](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/twistedcomplex--cc2af1c52c0b73cf2213dc59.md) | 84 | `declaration-track:cc2af1c52c0b73cf2213dc594a61ed257240602d024ab4b4561a2c48dee52035` |
| 5 | `def` | [identity](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/identity--3225c14dfc7083a3130fdd0a.md) | 91 | `declaration-track:3225c14dfc7083a3130fdd0a1b8973264e3e40b11e4205213a7fa3dbe0632a57` |
| 6 | `theorem` | [identity_twistedDifferential](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/identity-twisteddifferential--e9f0ddbb57c76237adace2fa.md) | 100 | `result-track:e9f0ddbb57c76237adace2faf69f4d6b9ba8fb0ee7a552a120307bcd0ebe64d7` |
| 7 | `theorem` | [characterTwist_flat](../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/declarations/charactertwist-flat--0b1454a2e72e30c7ea17861a.md) | 107 | `result-track:0b1454a2e72e30c7ea17861aebfdc156e083731ff59fdcb80832a1906b0bd944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
