# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UniqueGluing.Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07b565b7ca63f2a34d16e39af2a392af18864bb1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07b565b7ca63f2a34d16e39af2a392af18864bb1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Forget` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Sheaf` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/iscompatible--8ab248d5848250ecbe65793c.md) | 69 | `declaration-track:8ab248d5848250ecbe65793c2a4734180ec1e4e79fa9a75a40b2e32977e89564` |
| 2 | `def` | [IsGluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/isgluing--e5f06d155685c1b95d47d7a9.md) | 77 | `declaration-track:e5f06d155685c1b95d47d7a9966dd7bca4f14a3b130c9ebcee0c23074a1854ec` |
| 3 | `def` | [IsSheafUniqueGluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/issheafuniquegluing--87d39b10a2be4a5a2175f83f.md) | 90 | `declaration-track:87d39b10a2be4a5a2175f83fedd13a9568ea61c4bfc4ff599955416d308990f8` |
| 4 | `def` | [piOpensIsoSectionsFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/piopensisosectionsfamily--f5c89d3e58d73f98b1d15828.md) | 104 | `declaration-track:f5c89d3e58d73f98b1d15828aa837033e3bc1bcbca51fa6671d2e4018f77f03a` |
| 5 | `theorem` | [piOpensIsoSectionsFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/piopensisosectionsfamily-apply--53cb4a0d2b70452f6bce614f.md) | 110 | `result-track:53cb4a0d2b70452f6bce614f04020c0f4125897e5a19e625b4f1595ee61b941d` |
| 6 | `theorem` | [compatible_iff_leftRes_eq_rightRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/compatible-iff-leftres-eq-rightres--7ae50cc61e710f1c75ffb1d6.md) | 117 | `result-track:7ae50cc61e710f1c75ffb1d650a509796c026e5ba8d25703b1757e574dbe2d7e` |
| 7 | `theorem` | [isGluing_iff_eq_res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/isgluing-iff-eq-res--c918c9e2c48565b5eeb08768.md) | 141 | `result-track:c918c9e2c48565b5eeb08768200ee7530b5dda4530599da5dd026645179984a2` |
| 8 | `theorem` | [isSheaf_of_isSheafUniqueGluing_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/issheaf-of-issheafuniquegluing-types--ac76f87800bc689074919a36.md) | 159 | `result-track:ac76f87800bc689074919a366906443fdeb36638ac6f48b26ec71da712ea8ff3` |
| 9 | `theorem` | [isSheafUniqueGluing_of_isSheaf_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/issheafuniquegluing-of-issheaf-types--ff0079e4b1eac4b8241022f9.md) | 188 | `result-track:ff0079e4b1eac4b8241022f930ae62aaff1172c30f744728f7f10a4182b71f0d` |
| 10 | `theorem` | [isSheaf_iff_isSheafUniqueGluing_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/issheaf-iff-issheafuniquegluing-types--de68ab1beb4893ec21bf337e.md) | 211 | `result-track:de68ab1beb4893ec21bf337eb0509cce5a047bdfa619ae9edcb6ab1ac94b3e70` |
| 11 | `theorem` | [isSheaf_iff_isSheafUniqueGluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/issheaf-iff-issheafuniquegluing--28a8f7c20fc3ecf4e71ccf00.md) | 230 | `result-track:28a8f7c20fc3ecf4e71ccf00d66563298d498fe0268d010c28be7da74e907c57` |
| 12 | `theorem` | [existsUnique_gluing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/existsunique-gluing--d8c7379a4ab976195d1ec005.md) | 258 | `result-track:d8c7379a4ab976195d1ec005a9288972d6f7be5b6f3b7b41daecddee49ac5306` |
| 13 | `theorem` | [existsUnique_gluing'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/existsunique-gluing--46bd4de20f4476a22bfc9491.md) | 267 | `result-track:46bd4de20f4476a22bfc94912f6039155c718e1bb8e097e86bc982695d97e897` |
| 14 | `theorem` | [eq_of_locally_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/eq-of-locally-eq--75ac28a94dddd1d02570a952.md) | 285 | `result-track:75ac28a94dddd1d02570a9526a1597d3302b0448993dbe2d55e682e67ff10c3c` |
| 15 | `theorem` | [eq_of_locally_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/eq-of-locally-eq--2882a947d4976ceeb2b50c9f.md) | 307 | `result-track:2882a947d4976ceeb2b50c9f150ddbea281211a2569a77ded43d2212c88c2ef8` |
| 16 | `theorem` | [eq_of_locally_eq₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/declarations/eq-of-locally-eq--faecd92b0475a8b907767084.md) | 321 | `result-track:faecd92b0475a8b907767084c8a2143276fd5616f4ae770f7b537a06223caf71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
