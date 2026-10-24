# Verification target: GRWTSK.Algebra.LinearAlgebra.Opposite.Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e54b6e8c3a70ba1906ca14b69987919ccbab8f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e54b6e8c3a70ba1906ca14b69987919ccbab8f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearMap.ext_ring_op](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/linearmap-ext-ring-op--1e1a6e08e167bdb5a170a9fd.md) | 29 | `result-track:1e1a6e08e167bdb5a170a9fd973375b94006cae7a59e9ed89b3951815557a904` |
| 2 | `def` | [opLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/oplinearequiv--52bc67d17821181961c79658.md) | 44 | `declaration-track:52bc67d17821181961c7965853fb25eb91798f9299bf995fe293f4b1b2f80a3d` |
| 3 | `theorem` | [coe_opLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/coe-oplinearequiv--42b8be44f68dcd4ddc9f7f72.md) | 48 | `result-track:42b8be44f68dcd4ddc9f7f727211e6908c2b0ba2f055184214d3f0e524396287` |
| 4 | `theorem` | [coe_opLinearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/coe-oplinearequiv-symm--a732a3475980ab6bbf81aa26.md) | 52 | `result-track:a732a3475980ab6bbf81aa26d84788501090fa8be8a15eb3dfca9edb06417c4a` |
| 5 | `theorem` | [coe_opLinearEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/coe-oplinearequiv-tolinearmap--5d5d079c6d814e872d515535.md) | 56 | `result-track:5d5d079c6d814e872d515535fa24565544d8d7f9dbc646b37a24b8e79022ba85` |
| 6 | `theorem` | [coe_opLinearEquiv_symm_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/coe-oplinearequiv-symm-tolinearmap--4ebce72e7701bc3b36c92a2d.md) | 60 | `result-track:4ebce72e7701bc3b36c92a2db9e97e7d2d989301f3684642e747f3cbcd6b970e` |
| 7 | `theorem` | [opLinearEquiv_toAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/oplinearequiv-toaddequiv--6b04c15aa26d4b46cca5ebb1.md) | 64 | `result-track:6b04c15aa26d4b46cca5ebb187517ff381b261611e39efd88dd7ffacaab4983f` |
| 8 | `theorem` | [coe_opLinearEquiv_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/coe-oplinearequiv-addequiv--f65e27ef98d2cfc81204a13d.md) | 68 | `result-track:f65e27ef98d2cfc81204a13def8c2e439aec5fe035d263659dd3ccadffc256eb` |
| 9 | `theorem` | [opLinearEquiv_symm_toAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/oplinearequiv-symm-toaddequiv--fb344c04ba5e193dce9456ba.md) | 71 | `result-track:fb344c04ba5e193dce9456ba46196eecc155e610c89b5c1c8bb92590fcfcb895` |
| 10 | `theorem` | [coe_opLinearEquiv_symm_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variantee7403a8dc951f26bac466dddc03f24be1e44b4aa36defc602a9c0ed9810a065.lean/declarations/coe-oplinearequiv-symm-addequiv--886397776cd5e9ea6abbb6c5.md) | 76 | `result-track:886397776cd5e9ea6abbb6c54dfb7d16462e134658372911a85701f1e73bb1ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
