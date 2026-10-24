# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c2e02ff9a8a030469d0fe613b9ecbd2cf99a3f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c2e02ff9a8a030469d0fe613b9ecbd2cf99a3f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/isidempotentcomplete--5bacbbbdc10418591e20ca4c.md) | 50 | `declaration-track:5bacbbbdc10418591e20ca4cbd265a09d6d3eb8bfbbd1d6f70ac0cda6a285d4c` |
| 2 | `theorem` | [isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/isidempotentcomplete-iff-hasequalizer-of-id-and-idempotent--f13ce652ddc627dc3ac872f8.md) | 60 | `result-track:f13ce652ddc627dc3ac872f88ef3cce6b4875e045476632169f16cff770aab6b` |
| 3 | `theorem` | [idem_of_id_sub_idem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/idem-of-id-sub-idem--81692d33bd3ac55a1b41e604.md) | 94 | `result-track:81692d33bd3ac55a1b41e60402098a9703ce009b623b16a9cb0c87289c6489a1` |
| 4 | `theorem` | [isIdempotentComplete_iff_idempotents_have_kernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/isidempotentcomplete-iff-idempotents-have-kernels--ab530bfb856cb4d9da36c84c.md) | 99 | `result-track:ab530bfb856cb4d9da36c84c8fea7050ba7eb45dc062ae543da9d4ae2f1d73d2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/instance--ffdc9470776fa9117985240c.md) | 112 | `declaration-track:ffdc9470776fa9117985240c695e63758320ea6f70ee743c51fd7e31d7b23d5d` |
| 6 | `theorem` | [split_imp_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/split-imp-of-iso--7aba95005f080b7fd3187fc6.md) | 120 | `result-track:7aba95005f080b7fd3187fc6c474280986e51ae4cfd1319b6fb4c1f615a5a7d2` |
| 7 | `theorem` | [split_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/split-iff-of-iso--b01e9c74c3bb32122ca69781.md) | 132 | `result-track:b01e9c74c3bb32122ca6978158bc86a079592ebc24586e7d3d706535e707ac9f` |
| 8 | `theorem` | [Equivalence.isIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/equivalence-isidempotentcomplete--e376fcf64cef10edca2471c0.md) | 145 | `result-track:e376fcf64cef10edca2471c0636070e3769de739a608127a18bcc63421931e91` |
| 9 | `theorem` | [isIdempotentComplete_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/isidempotentcomplete-iff-of-equivalence--2ed140b43f5e32540808419c.md) | 164 | `result-track:2ed140b43f5e32540808419c34ff7d069989b2eee3b0b09bbb7fba25826ead9b` |
| 10 | `theorem` | [isIdempotentComplete_of_isIdempotentComplete_opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/isidempotentcomplete-of-isidempotentcomplete-opposite--1c443b8fe70f437532fc2c23.md) | 170 | `result-track:1c443b8fe70f437532fc2c230a317f791e50ef3ec5dcdd18e40721eb1e753030` |
| 11 | `theorem` | [isIdempotentComplete_iff_opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/isidempotentcomplete-iff-opposite--25aa97512e690d70c64b3c05.md) | 183 | `result-track:25aa97512e690d70c64b3c0501a9feee7d8a494907238c018c7ffccda32ab39c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/declarations/instance--c8571d89f9fb7e83d5867e15.md) | 191 | `declaration-track:c8571d89f9fb7e83d5867e15c261bd9a698923f6d3a1b81a1d0101281a152f5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
