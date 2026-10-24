# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fubini.Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a203a49b24faf9425fbf273d9fdfa91eabd41fd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a203a49b24faf9425fbf273d9fdfa91eabd41fd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiagramOfCones](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/diagramofcones--dd0ecf9e801c1f5f6fb57691.md) | 56 | `declaration-track:dd0ecf9e801c1f5f6fb5769129b5e1154f0dd7eba74392716b2d6a25b82f0c2c` |
| 2 | `def` | [DiagramOfCones.conePoints](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/diagramofcones-conepoints--c1bc579549da50ac0aa2364e.md) | 70 | `declaration-track:c1bc579549da50ac0aa2364e00f63b1c4a25690c29175f819b9b5f8299bed9c6` |
| 3 | `def` | [coneOfConeUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/coneofconeuncurry--28409d96f731eb5356ce5ff8.md) | 81 | `declaration-track:28409d96f731eb5356ce5ff82b895d84ac51fd70686a330308902f8ce6236647` |
| 4 | `def` | [coneOfConeUncurryIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/coneofconeuncurryislimit--d0904d71078fc3a377fabf09.md) | 114 | `declaration-track:d0904d71078fc3a377fabf096caeb4fe161abc18d717cc6b5b7267915cbdfa8b` |
| 5 | `def` | [DiagramOfCones.mkOfHasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/diagramofcones-mkofhaslimits--f8d272ee091a1397a279b8af.md) | 163 | `declaration-track:f8d272ee091a1397a279b8affbeb512a07a4a7f749c18df005af77950453d184` |
| 6 | `instance` | [diagramOfConesInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/diagramofconesinhabited--ffa512d07fa00d52a1427211.md) | 169 | `declaration-track:ffa512d07fa00d52a1427211b7a53835c23aeaba4d6cea3e9f32d07050118c85` |
| 7 | `theorem` | [DiagramOfCones.mkOfHasLimits_conePoints](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/diagramofcones-mkofhaslimits-conepoints--71d775f71169dc4908c6eb9f.md) | 174 | `result-track:71d775f71169dc4908c6eb9fb3315eeee54ea1500938937dcfeb8fcd923f72e3` |
| 8 | `def` | [limitUncurryIsoLimitCompLim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limituncurryisolimitcomplim--749b684b031dab746ceb4c25.md) | 187 | `declaration-track:749b684b031dab746ceb4c251274191d0f6a274cc07f8ba731e7e8994415cf1d` |
| 9 | `theorem` | [limitUncurryIsoLimitCompLim_hom_π_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limituncurryisolimitcomplim-hom--d23bd199af2a0322f7d3e7a8.md) | 198 | `result-track:d23bd199af2a0322f7d3e7a81d5d80817d5498ec7d8c5f1dff15aff016d6b7c2` |
| 10 | `theorem` | [limitUncurryIsoLimitCompLim_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limituncurryisolimitcomplim-inv--116e52ad400b9010ccc12091.md) | 206 | `result-track:116e52ad400b9010ccc12091036ee4baa96bef731e57d80888163f55cef3e15b` |
| 11 | `def` | [limitFlipCompLimIsoLimitCompLim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitflipcomplimisolimitcomplim--e6faeca47959269aa80c3e1f.md) | 223 | `declaration-track:e6faeca47959269aa80c3e1f9f1266d790f5bda5f2d6d03d3d71de9568be98f6` |
| 12 | `theorem` | [limitFlipCompLimIsoLimitCompLim_hom_π_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitflipcomplimisolimitcomplim-hom--44a8c9afe88f01d5ed681995.md) | 233 | `result-track:44a8c9afe88f01d5ed681995def1aa66f280844125a1eed232466ca864abe10a` |
| 13 | `theorem` | [limitFlipCompLimIsoLimitCompLim_inv_π_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitflipcomplimisolimitcomplim-inv--2c6aab39d9aad1224480d9ca.md) | 243 | `result-track:2c6aab39d9aad1224480d9ca8a30d3671dae4a36aa08f1e56fcc558dfe189106` |
| 14 | `def` | [limitIsoLimitCurryCompLim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitisolimitcurrycomplim--a9d06551b3e6cea877e574a7.md) | 268 | `declaration-track:a9d06551b3e6cea877e574a7ea06a6f13bebb651a5f1f740de6717f592d21bb3` |
| 15 | `theorem` | [limitIsoLimitCurryCompLim_hom_π_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitisolimitcurrycomplim-hom--e9edd97ad5d087deeba102f9.md) | 277 | `result-track:e9edd97ad5d087deeba102f9003c17e9f624ace17100b1116734ee5c71c995ee` |
| 16 | `theorem` | [limitIsoLimitCurryCompLim_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitisolimitcurrycomplim-inv--65cca5e3a7a54955879366ca.md) | 284 | `result-track:65cca5e3a7a54955879366ca0ad6911681578971cb0c0eaec9340d4887a68f1e` |
| 17 | `def` | [limitCurrySwapCompLimIsoLimitCurryCompLim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim--94817245a24054c8c287eef8.md) | 303 | `declaration-track:94817245a24054c8c287eef86d584726afda2b96d7795aa060d49d53ad3ea5b6` |
| 18 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_hom_π_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim-hom--88433f9652b1f0dce7ff0919.md) | 314 | `result-track:88433f9652b1f0dce7ff0919a45419cd9e1919ff7c96fd5af522a68210eea3cd` |
| 19 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim-inv--ce2e470de3c6edb352572498.md) | 332 | `result-track:ce2e470de3c6edb352572498b00fcd088998a394f7a930cbec0f8210b9a08650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
