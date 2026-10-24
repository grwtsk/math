# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaProfile.Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85c7ec0ffbbc61c65fed4d995350f4ec6a8eac7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85c7ec0ffbbc61c65fed4d995350f4ec6a8eac7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Yoneda` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompleteMorphismProfile](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/declarations/completemorphismprofile--4ad47cd6bfe33655afa18997.md) | 28 | `declaration-track:4ad47cd6bfe33655afa18997f7d1e9250d3f387971c791f2a13ae0dcaf0c16cb` |
| 2 | `def` | [profileIsoOfObjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/declarations/profileisoofobjectiso--d987a7b419620ce07a4a9f7a.md) | 32 | `declaration-track:d987a7b419620ce07a4a9f7a2e6bd0d2f7727e5a211ec4db635f6421e6d3c067` |
| 3 | `def` | [reconstructIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/declarations/reconstructiso--d35d701a9eb6b5abaf9df941.md) | 40 | `declaration-track:d35d701a9eb6b5abaf9df9416e94358ef5b483a2b55f7cc95a0873dd2e656a7e` |
| 4 | `theorem` | [reconstructIso_profileIsoOfObjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/declarations/reconstructiso-profileisoofobjectiso--539367732a521b137461f54e.md) | 49 | `result-track:539367732a521b137461f54ed85c6439306d2e7bbe1e80406b9a95f0bebb98ac` |
| 5 | `theorem` | [profileIso_nonempty_iff_objectIso_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant17f6a4074cf07345e482f0cfc66cc92ed168a7dd2bcdbcaac3b1401512a30e25.lean/declarations/profileiso-nonempty-iff-objectiso-nonempty--df22321dde563cf854d1d481.md) | 59 | `result-track:df22321dde563cf854d1d481639af2bdb987d61b42e015824bf7afb62bc254a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
