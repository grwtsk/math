# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FiniteDimensional.Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "545e86fcfe58f039dcdfdb1048b3ad87f7697592",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `545e86fcfe58f039dcdfdb1048b3ad87f7697592`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Torsion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isTorsion_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean/declarations/istorsion-of-aeval-eq-zero--fd63d3ed5ca2fe3babb9b87e.md) | 37 | `result-track:fd63d3ed5ca2fe3babb9b87e6269a28e26af8332494874b31fc68c28e37243db` |
| 2 | `theorem` | [isTorsion_of_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean/declarations/istorsion-of-finitedimensional--4bf55d463fbd881c1d2cb6ca.md) | 46 | `result-track:4bf55d463fbd881c1d2cb6cacfe9e4488ff04a9944a64b46aac2ef597c7fdf96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
