# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc3cccab7323a0040257aabd0e2035497a3979e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc3cccab7323a0040257aabd0e2035497a3979e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multicospanShapeEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/multicospanshapeend--31afae3f3cbe9dd6e08cbb27.md) | 46 | `declaration-track:31afae3f3cbe9dd6e08cbb27e3f8f05ac9e148060fce605e1276385f34a34399` |
| 2 | `def` | [multicospanIndexEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/multicospanindexend--2f1938ad8fa4870dd54a709c.md) | 55 | `declaration-track:2f1938ad8fa4870dd54a709c0a9bc6833e6bc8d13ec8ac1ed34d5a3509c774a0` |
| 3 | `abbrev` | [Wedge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/wedge--568db601350c95b2f97bc2a4.md) | 64 | `declaration-track:568db601350c95b2f97bc2a49e75fc0436bf721dc22b540749debc1b892ba54f` |
| 4 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/mk--0c17ff6592d20ce28acf6f56.md) | 77 | `declaration-track:0c17ff6592d20ce28acf6f56fbbb15b5a013d536f41379e51fda57361a88319f` |
| 5 | `lemma` | [mk_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/mk--36f1d3844081a8678815157c.md) | 81 | `result-track:36f1d3844081a8678815157c4bb4bc592c25cefda25ec1cb6d71e7cfafd52bcc` |
| 6 | `lemma` | [condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/condition--c3ef0eefbf1e192194ba91f5.md) | 86 | `result-track:c3ef0eefbf1e192194ba91f58408628b29fd4c1d32b7def372e91009229274c2` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/hom-ext--a7f05938526edaff09b8897d.md) | 94 | `result-track:a7f05938526edaff09b8897d35cf3cbea6a9085d93a2403054213c24a067f0ee` |
| 8 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/lift--7a944527eb5295ffc4c268f4.md) | 99 | `declaration-track:7a944527eb5295ffc4c268f4fea98c1027ff612845bf5ad7f68f88afa6ebb80d` |
| 9 | `lemma` | [lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/lift--62df6f4ad4dffe53343df114.md) | 105 | `result-track:62df6f4ad4dffe53343df114f16aac6785cc7ce4894a2664be003517a8342a99` |
| 10 | `abbrev` | [HasEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/hasend--34216045af3245017a69ab36.md) | 118 | `declaration-track:34216045af3245017a69ab36460a5815122b5f058ce2802e572266449dd55924` |
| 11 | `def` | [end_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/end--8244db66d2dc18e41099e6c4.md) | 123 | `declaration-track:8244db66d2dc18e41099e6c44cbe17fd2972af9929e614e30ecc8ed1cfc0998f` |
| 12 | `def` | [end_.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/end--83d806851fbec594393491a4.md) | 127 | `declaration-track:83d806851fbec594393491a43bd369ff9941cbe190f35023a62b7578633c8d3c` |
| 13 | `lemma` | [end_.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/end-condition--94b5c1e442e29581b434170f.md) | 130 | `result-track:94b5c1e442e29581b434170fcf4aed0ba5c913083a9898fdf364d4d971a75692` |
| 14 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/hom-ext--63136e6848da9f7f620380b0.md) | 137 | `result-track:63136e6848da9f7f620380b0021f9261d1714be9a21d124bd91d68ef6be5ee2a` |
| 15 | `def` | [end_.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/end-lift--56651eb87f221a0323200e21.md) | 147 | `declaration-track:56651eb87f221a0323200e216ac002c6934e2418440fd85fc18ddb24576cf5c2` |
| 16 | `lemma` | [end_.lift_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/declarations/end-lift--7c9967e5a828615dbeb85c6b.md) | 151 | `result-track:7c9967e5a828615dbeb85c6b7cc68e57efba827d4b0d92e8c5e4936ee92a6123` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
