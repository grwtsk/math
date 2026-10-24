# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ecc42e0cbc485910743ec252ccde29d2c64dbe",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ecc42e0cbc485910743ec252ccde29d2c64dbe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/unop--4e7938b23b5293a701001d58.md) | 38 | `declaration-track:4e7938b23b5293a701001d58c644eb114eef870894371912d52d7082eed3e232` |
| 2 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/op--d213a0119c28cc82a254f576.md) | 47 | `declaration-track:d213a0119c28cc82a254f5763df025e232598d18b75412c7815b35e4171dacfe` |
| 3 | `def` | [leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/leftop--ddab22d1162205edc2f7fb36.md) | 55 | `declaration-track:ddab22d1162205edc2f7fb36c125c7ca46eaa7d41815358dc4203eb2199b8a8b` |
| 4 | `def` | [rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/rightop--563d725f0737874997649f87.md) | 63 | `declaration-track:563d725f0737874997649f87ee0a09b055a2cbab1fa1d6a07deb6538ae7536f3` |
| 5 | `lemma` | [leftOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/leftop-eq--a8e7727cb3f06ff0974adc41.md) | 70 | `result-track:a8e7727cb3f06ff0974adc410e5874056569e8d1f13181a0702088d1f61d7aca` |
| 6 | `lemma` | [rightOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/rightop-eq--432a77fc38968773dbcd61d7.md) | 75 | `result-track:432a77fc38968773dbcd61d779c10957c233f405e7b4bf40e58b33d611506b1b` |
| 7 | `def` | [leftAdjointsCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/leftadjointscoyonedaequiv--eab78dbde0af517b960e97af.md) | 85 | `declaration-track:eab78dbde0af517b960e97afac4d7b1461db5eb652278b696f3b4b99efdcfd59` |
| 8 | `instance` | [IsLeftAdjoint.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/isleftadjoint-op--d0a1f01c32c9330652845fb2.md) | 95 | `declaration-track:d0a1f01c32c9330652845fb2354327bc5815dbb8804a90190db1141af9f85c83` |
| 9 | `instance` | [IsRightAdjoint.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/isrightadjoint-op--7618ca24c894121dfaa1d783.md) | 98 | `declaration-track:7618ca24c894121dfaa1d783efed962684df4761c2b075fe456408f46a936d72` |
| 10 | `instance` | [IsLeftAdjoint.leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/isleftadjoint-leftop--b242d0932f9822c46209be8c.md) | 101 | `declaration-track:b242d0932f9822c46209be8cb1867db9049b7ccc95af541bd98249070a3cadc5` |
| 11 | `instance` | [IsRightAdjoint.leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/isrightadjoint-leftop--89ad4ff8ccbc6f0a17561d6b.md) | 105 | `declaration-track:89ad4ff8ccbc6f0a17561d6b08f013a23f1baddf6cba1206abe88c97c5024425` |
| 12 | `instance` | [IsLeftAdjoint.rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/isleftadjoint-rightop--94881d3b5f0f793335403feb.md) | 109 | `declaration-track:94881d3b5f0f793335403feb7ef94c0fd2cc2f53b77be7ad98cd3bc76f885e5c` |
| 13 | `instance` | [IsRightAdjoint.rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/declarations/isrightadjoint-rightop--5ddde67eca557f3307ed4b3c.md) | 112 | `declaration-track:5ddde67eca557f3307ed4b3c5a1e5b892d061ec8b72d40166d1ba97e16ef7a0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
