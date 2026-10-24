# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Resolution.Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2af822be49b02225a8970272739e51413d24b11e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2af822be49b02225a8970272739e51413d24b11e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.SingleHomology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/projectiveresolution--89f0410cd4efcd5619f5e989.md) | 44 | `declaration-track:89f0410cd4efcd5619f5e989a578fe2489b6e0e83ecb4f29303e223464622d42` |
| 2 | `class` | [HasProjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/hasprojectiveresolution--3d61a1c84c43985cc9737ebe.md) | 61 | `declaration-track:3d61a1c84c43985cc9737ebe11c7c6d545c9fa2e8dc6b95ed0f676a11efad6c6` |
| 3 | `class` | [HasProjectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/hasprojectiveresolutions--4fae45cb04161ec2ca274bca.md) | 70 | `declaration-track:4fae45cb04161ec2ca274bca25a09ff0856cee15722f861717ee55e229869a47` |
| 4 | `lemma` | [complex_exactAt_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/complex-exactat-succ--848aa2027d3f59989b7e6297.md) | 80 | `result-track:848aa2027d3f59989b7e629740d356f244989d7b9b2f88cbf5b9c005762bbbf5` |
| 5 | `lemma` | [exact_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/exact-succ--67e7be504a839be7e959c203.md) | 85 | `result-track:67e7be504a839be7e959c203061365c46da117ae28c285a0b55f5821096b9cc8` |
| 6 | `theorem` | [π_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/f-succ--5d7dc0af50aa0126f81599d7.md) | 91 | `result-track:5d7dc0af50aa0126f81599d7b435ff33735458219999ee63e0b170124d9669ac` |
| 7 | `theorem` | [complex_d_comp_π_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/complex-d-comp-f-zero--fb63465f10498fccfc6f8e09.md) | 95 | `result-track:fb63465f10498fccfc6f8e09e875386cd680862822e2407f4cf6ec427f6b5530` |
| 8 | `theorem` | [complex_d_succ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/complex-d-succ-comp--7daabf882720eba8cb478776.md) | 99 | `result-track:7daabf882720eba8cb4787762f721c1621f053370d83da125564e074f194af2d` |
| 9 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/cokernelcofork--c059b3682710e61f470546a2.md) | 106 | `declaration-track:c059b3682710e61f470546a2a982d3e859946500c04e3a704925ddacd368b782` |
| 10 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/iscolimitcokernelcofork--1e559141e666486b75953481.md) | 110 | `declaration-track:1e559141e666486b75953481165fb5480739ba1fa9519075e027647b414abfcf` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/instance--b7bc0840315834e9a2b7c748.md) | 121 | `declaration-track:b7bc0840315834e9a2b7c7488e0e4aafadcb4727e19636eadc16394dfc26a435` |
| 12 | `def` | [self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variantd0949d5a60be7232d6edba87b931b10305e9bb9b35bab5e5ed2caf1ee295b927.lean/declarations/self--c32b894fad24456e07b9531b.md) | 130 | `declaration-track:c32b894fad24456e07b9531b3a6b71d3c74d805739799b55a2d5ea2bc899a69e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
