# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c22d04e1ff75a98026a80d3ac2da890bb5051ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c22d04e1ff75a98026a80d3ac2da890bb5051ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Subobject` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Transfer` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.AdjointFunctorTheorems` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGrothendieckAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/isgrothendieckabelian--b040d29d170c225e67cb841b.md) | 67 | `declaration-track:b040d29d170c225e67cb841b0e92052492054fe3917c7407a63ed739c0dae7b7` |
| 2 | `theorem` | [IsGrothendieckAbelian.of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/isgrothendieckabelian-of-equivalence--7ac3e7f92acf5ace92a589d6.md) | 78 | `result-track:7ac3e7f92acf5ace92a589d6f5c4b172144f2ce20452b52be0d319406dd30fbb` |
| 3 | `instance` | [ShrinkHoms.isGrothendieckAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/shrinkhoms-isgrothendieckabelian--d5d7d451cea4aa2f83a184f0.md) | 88 | `declaration-track:d5d7d451cea4aa2f83a184f0b2d060f3a6d5c587f33e3c87f4e7c1451dbaa122` |
| 4 | `instance` | [IsGrothendieckAbelian.hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/isgrothendieckabelian-hascolimits--3198959a8f08ebc4d10425de.md) | 96 | `declaration-track:3198959a8f08ebc4d10425def319ad89eb371e7589c49221cb3a7926b7744eb7` |
| 5 | `instance` | [IsGrothendieckAbelian.hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/isgrothendieckabelian-haslimits--0a0a17da7399c12516d48937.md) | 99 | `declaration-track:0a0a17da7399c12516d4893797feeb7b1e680345a3ab60efaa7d9d3b2e8e7ec5` |
| 6 | `instance` | [IsGrothendieckAbelian.wellPowered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/isgrothendieckabelian-wellpowered--195b0017579b1f6f9e312db1.md) | 103 | `declaration-track:195b0017579b1f6f9e312db1e9afb46db4b156faea094e5810ed7e435e785615` |
| 7 | `instance` | [IsGrothendieckAbelian.ab4OfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83e554baf5d45c7b6a9a951215a56076ca2e3a86222ae986bd1c5c04a14fc4ce.lean/declarations/isgrothendieckabelian-ab4ofsize--fb728e5180e70a11f4130f4b.md) | 106 | `declaration-track:fb728e5180e70a11f4130f4b259b187dac99b047e2fd7a0cdf48d9fa9ce7864c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
