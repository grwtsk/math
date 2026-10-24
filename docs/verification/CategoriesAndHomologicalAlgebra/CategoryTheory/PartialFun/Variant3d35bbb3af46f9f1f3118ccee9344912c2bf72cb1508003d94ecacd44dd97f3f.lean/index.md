# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PartialFun.Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5d65f076306ab3bdf4f784d61d53f7f0df65522",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5d65f076306ab3bdf4f784d61d53f7f0df65522`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Pointed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartialFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/partialfun--019b296274fb63ddf981b6b6.md) | 34 | `declaration-track:019b296274fb63ddf981b6b6efac55789578deb77d11d05d994019a6ac518f14` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/instance--7a4ffc03ed98851a6adeed45.md) | 39 | `declaration-track:7a4ffc03ed98851a6adeed4536abc42dcd1e17952e9e8aad9e0750640136bff3` |
| 3 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/of--7bf96f5e5b685f639f3ad6f4.md) | 43 | `declaration-track:7bf96f5e5b685f639f3ad6f4ad4821f00c151cddf1e1f3ce03440e1595fc2000` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/instance--c64d98f2caa49120c719b054.md) | 46 | `declaration-track:c64d98f2caa49120c719b054e223f63697c840b544c3b03f9206e5a2e98c70fb` |
| 5 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/largecategory--39617e9e05f5cf589e75d502.md) | 49 | `declaration-track:39617e9e05f5cf589e75d5026772172864b995d4c58fa87cf6e549dda0ebe30d` |
| 6 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/iso-mk--f5d9fc706e4ca82953431f07.md) | 59 | `declaration-track:f5d9fc706e4ca82953431f07eb0252e66161e667004ec9010d04edc610e22c94` |
| 7 | `def` | [typeToPartialFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/typetopartialfun--a8d8151fe6d404a71777a32b.md) | 72 | `declaration-track:a8d8151fe6d404a71777a32b55803923a74761f370fc422527ef02a2e25f3609` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/instance--da4442a54aefefd2472bded5.md) | 77 | `declaration-track:da4442a54aefefd2472bded52ceddf5fa9eecf83fd3d94de05880c976d50e6f3` |
| 9 | `def` | [pointedToPartialFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/pointedtopartialfun--4a1807b7cb4a51d485317f8f.md) | 84 | `declaration-track:4a1807b7cb4a51d485317f8fc98af37007521c5c158fbdbb856b3787ed9fe944` |
| 10 | `def` | [partialFunToPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/partialfuntopointed--705eef15c192c1fa8de5e7f9.md) | 104 | `declaration-track:705eef15c192c1fa8de5e7f9aee6261f4de7e7eb9ff3c46ea1e6247ece0ce77e` |
| 11 | `def` | [partialFunEquivPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/partialfunequivpointed--c6ee6eff109a5eafb32c6350.md) | 119 | `declaration-track:c6ee6eff109a5eafb32c63500c1aa8159b588d6f38494e9ab2df9741a3a92cef` |
| 12 | `def` | [typeToPartialFunIsoPartialFunToPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/declarations/typetopartialfunisopartialfuntopointed--d411569da78b4f5b1e29fa0f.md) | 163 | `declaration-track:d411569da78b4f5b1e29fa0f7ad99526544cf9358d8ad5d7bff432767626523b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
