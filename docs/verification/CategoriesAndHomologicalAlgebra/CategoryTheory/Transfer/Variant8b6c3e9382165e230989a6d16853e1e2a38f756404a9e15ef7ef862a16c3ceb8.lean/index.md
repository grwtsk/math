# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transfer.Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eecb896f223a066dcab942ab288e0636cff813fc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eecb896f223a066dcab942ab288e0636cff813fc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.AbelianImages` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Transfer` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/haskernels--8c7b5147ab5e004cff9ffc7b.md) | 62 | `result-track:8c7b5147ab5e004cff9ffc7baae6d384011c8119f28c27a208446b4888cb5111` |
| 2 | `theorem` | [hasCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/hascokernels--9c26600cac4835681c521b9e.md) | 72 | `result-track:9c26600cac4835681c521b9e21ae17c8dca543ea745cd49bb3d8c4b0b004524f` |
| 3 | `def` | [abelianOfAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/abelianofadjunction--c80685ec7b2e8128aca9f782.md) | 92 | `declaration-track:c80685ec7b2e8128aca9f782d246b3048ceed9aeda83db058d58fd37f164d0dc` |
| 4 | `def` | [abelianOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/abelianofequivalence--e5baea35d19378da38fe04f3.md) | 115 | `declaration-track:e5baea35d19378da38fe04f3ef9108c434062550a7979d6844ac71aaa9bd4676` |
| 5 | `instance` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/preadditive--c7a4cd3c000e54e8f27adff6.md) | 132 | `declaration-track:c7a4cd3c000e54e8f27adff6b23b01bf1d0f945ff55baf7fde59139e5b15b9b4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/instance--acd5e5883bd4e06a29eb523e.md) | 135 | `declaration-track:acd5e5883bd4e06a29eb523e571a86adfc148b149627f2a0f18d759575ff2288` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/instance--c8f37539831bfc87be29154f.md) | 138 | `declaration-track:c8f37539831bfc87be29154f85de4e8cef1119dd46667a13a01c9628e6360e28` |
| 8 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/haslimitsofshape--c519652b07729523e4d7b549.md) | 141 | `declaration-track:c519652b07729523e4d7b549750322da716a50d7d18738c7e26f388665712414` |
| 9 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/hasfinitelimits--d2cdcb849bcdf6d98c2d6751.md) | 145 | `declaration-track:d2cdcb849bcdf6d98c2d675179c7ae6d56bb10757d6b83d7d1d496cf0daaa100` |
| 10 | `instance` | [abelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/abelian--f2ce8f6a40cff88e15278e9a.md) | 151 | `declaration-track:f2ce8f6a40cff88e15278e9aff30e1f32117df8460e482eece475addaf723213` |
| 11 | `instance` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/preadditive--321abf338ee00b93c1069b02.md) | 169 | `declaration-track:321abf338ee00b93c1069b02635ffde00728e04c823b4c53b1856bccb0634827` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/instance--320f39d8fbef27981bf48775.md) | 172 | `declaration-track:320f39d8fbef27981bf48775aea747cc25f405e1186a43ae90228c12cf01dc39` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/instance--86f0d2966c2d13c6391a6f9a.md) | 175 | `declaration-track:86f0d2966c2d13c6391a6f9addcfcb50aac0cf04e84e009bfc6a838ff76fd7ba` |
| 14 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/haslimitsofshape--2d1a34073b3a38f2ffbf4e5a.md) | 178 | `declaration-track:2d1a34073b3a38f2ffbf4e5af63c67139c6e3e9d24b59e7af184319f9c131876` |
| 15 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/hasfinitelimits--ba1fd7802428ff09061c8e1f.md) | 182 | `declaration-track:ba1fd7802428ff09061c8e1f28822f9d7ebf1a4e8aad6d785d5773e6df7cda95` |
| 16 | `instance` | [abelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant8b6c3e9382165e230989a6d16853e1e2a38f756404a9e15ef7ef862a16c3ceb8.lean/declarations/abelian--75f5edea51f7415c6505ecbf.md) | 188 | `declaration-track:75f5edea51f7415c6505ecbf9747a94e0c7cf38a94a6a9c87dbebb9e66ed0570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
