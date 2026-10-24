# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1d40992cfacb7fddfbee6f3683798167d9d4e1d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1d40992cfacb7fddfbee6f3683798167d9d4e1d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_congr_forget_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/forall-congr-forget-type--0d97b6a3068f7c9021dfc709.md) | 53 | `result-track:0d97b6a3068f7c9021dfc7091e2e68953fc0fa58652220601a7d824351113b73` |
| 2 | `theorem` | [forget_hom_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/forget-hom-type--32d91770c1f6f220bbb239c1.md) | 58 | `result-track:32d91770c1f6f220bbb239c1ccaa310963b4aa7e815e07544fa0f21bdddbc9b1` |
| 3 | `theorem` | [hom_elementwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/hom-elementwise--db68efb4bf6f66df74664333.md) | 60 | `result-track:db68efb4bf6f66df74664333942eaf3185b29b4bc3ffa0e9b8c4b377bcaa250c` |
| 4 | `def` | [elementwiseThms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/elementwisethms--e748bb78f97c59837bfff121.md) | 66 | `declaration-track:e748bb78f97c59837bfff121a8a79c61ff215d56cf36da954ae1ea85ab3fbda5` |
| 5 | `def` | [elementwiseExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/elementwiseexpr--4b93f2e5d8da808f36a8cc4e.md) | 87 | `declaration-track:4b93f2e5d8da808f36a8cc4ef1a808026a784735916eb72011e3483a7bd95232` |
| 6 | `def` | [mkUnusedName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/mkunusedname--33c7af294e38548184a60c89.md) | 141 | `declaration-track:33c7af294e38548184a60c89e7041a274b8977e185d1841f2cc7d3d5dc32aac1` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/syntax--16d909ea5ce9982ef46ff1ba.md) | 190 | `declaration-track:16d909ea5ce9982ef46ff1ba9d10712b09b7c1046db5c6cd85c954bfe6417f25` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/initialize--1f65cbfec0c7713de1ff422a.md) | 193 | `declaration-track:1f65cbfec0c7713de1ff422a4e98479656bae5b600a8e665face22083df6ffbd` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/elab--a90c3d0d2ae9471834040ff8.md) | 235 | `declaration-track:a90c3d0d2ae9471834040ff87a1f4b5eb3a58e4e39dff6e0eef109ba2b4e432f` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/syntax--51b6abd8a810bf324a33f52d.md) | 241 | `declaration-track:51b6abd8a810bf324a33f52d94602cde0c15df60e2f527f97921cc23f27ad76c` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/declarations/syntax--c885818b12de37669d5b1ece.md) | 242 | `declaration-track:c885818b12de37669d5b1ece748aaf9ad96510ed1e1cfeb3650d9fbec22a0574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
