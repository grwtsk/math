# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12d76e64cc4489b75218a9b9834ca6c36b7298d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12d76e64cc4489b75218a9b9834ca6c36b7298d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWitnessComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/inversewitnesscomparison--dafa135377538f4e1c7af284.md) | 28 | `declaration-track:dafa135377538f4e1c7af284568851974e94ca681a09f4726f634e18d579c67e` |
| 2 | `def` | [assemble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/assemble--9c8d85a077d50dfec026ae4b.md) | 38 | `declaration-track:9c8d85a077d50dfec026ae4ba1075dc614263d21e271f285a7eb3753fabf683e` |
| 3 | `theorem` | [assemble_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/assemble-functor--2885a2b3b9c5c15ddacd6de4.md) | 43 | `result-track:2885a2b3b9c5c15ddacd6de415a1615f28a791a7de235ad36ac8fa24a791b966` |
| 4 | `theorem` | [assemble_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/assemble-inverse--c54ca1dc03c7286ae389e181.md) | 47 | `result-track:c54ca1dc03c7286ae389e181a2a397c0312bb0307e849ad9fa09591e49aaf08c` |
| 5 | `abbrev` | [Sector](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/sector--951805d2cdf0748e59fe13b9.md) | 52 | `declaration-track:951805d2cdf0748e59fe13b976c69ce9a67cebb0e556ba2dac0808fd6d96e726` |
| 6 | `def` | [quarterTurn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/quarterturn--11e6f3f0a0d8574e4c9a3139.md) | 55 | `declaration-track:11e6f3f0a0d8574e4c9a313941f814828ad3c0f0db4373a974ea20191980dfd2` |
| 7 | `theorem` | [quarterTurn_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/quarterturn-square--b04ed0e584f423b0e02310b4.md) | 61 | `result-track:b04ed0e584f423b0e02310b4d5b04ff7529c6794d132bd24ea08310bc30f1bb9` |
| 8 | `theorem` | [quarterTurn_fourth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/quarterturn-fourth--b71297e83d98f961db764953.md) | 66 | `result-track:b71297e83d98f961db764953ae0f65eb75a70c2b6303e1c8baf200315026533d` |
| 9 | `theorem` | [quarterTurn_square_not_identity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/quarterturn-square-not-identity--87cd63ba8a2deddc6063b0ac.md) | 71 | `result-track:87cd63ba8a2deddc6063b0acffa526a5368590b66b0badce2c6758ab5fe7a703` |
| 10 | `def` | [sectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/sectorequivalence--0d18ba02ab29c33d2435f6c1.md) | 76 | `declaration-track:0d18ba02ab29c33d2435f6c1185d568038e82e2c9bf5ba50268b7916df4b8a14` |
| 11 | `def` | [assembledSectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantbcf8ea0110839dc093d98f4c2ddc2d7d401149805aa20ee780bdc10b975c2e9a.lean/declarations/assembledsectorequivalence--57e4258eb4397e879e86777e.md) | 80 | `declaration-track:57e4258eb4397e879e86777e648d7877b6caf3553fe5e22af1aee1ab12b0bafd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
