# Verification target: GRWTSK.Algebra.LinearAlgebra.FunctionalSymmetry.Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae412bff0d253f651128e6d2fd747b85f3b8e8ea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae412bff0d253f651128e6d2fd747b85f3b8e8ea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.SelfAdjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctionalSymmetry](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/declarations/functionalsymmetry--1644aa2bb3b3d31ac1beed91.md) | 22 | `declaration-track:1644aa2bb3b3d31ac1beed913a2977246f6f8da475f4c15a0d5c8cfe9902d286` |
| 2 | `def` | [IsEigenpair](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/declarations/iseigenpair--d19b6a598e2a6e55c47aa2b0.md) | 35 | `declaration-track:d19b6a598e2a6e55c47aa2b08621a01a9a12d5963c3c03dfc122e4dc6f5d9476` |
| 3 | `theorem` | [functional_symmetry_reflects_eigenpair](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/declarations/functional-symmetry-reflects-eigenpair--19660e2fd19d9b64f0e79ace.md) | 43 | `result-track:19660e2fd19d9b64f0e79acea3b90ab31698d8f413f485717eac075c11aba50f` |
| 4 | `structure` | [ArithmeticPurityObligation](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Varianta6934abfcc9dc0dba4f835e9554ac9832d71b73dc4bd72ce7cc2da49134f20d5.lean/declarations/arithmeticpurityobligation--7fed62b76f087ef5c9305cf5.md) | 65 | `declaration-track:7fed62b76f087ef5c9305cf5f06b36f35ef43bc0a16dc6b0fc3b810c35dbc711` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
