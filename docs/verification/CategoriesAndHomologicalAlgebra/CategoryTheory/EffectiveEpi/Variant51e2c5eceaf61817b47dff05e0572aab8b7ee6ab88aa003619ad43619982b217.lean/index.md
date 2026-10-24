# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpi.Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.RegularEpi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiStructOfQuotientMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/declarations/effectiveepistructofquotientmap--4a389a72e0bd70ccc430de66.md) | 29 | `declaration-track:4a389a72e0bd70ccc430de66302d00c4503491b3c75b3d1197849077c7185194` |
| 2 | `theorem` | [effectiveEpi_iff_isQuotientMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/declarations/effectiveepi-iff-isquotientmap--9ae1fdcfc3dbf72fc4f320f3.md) | 59 | `result-track:9ae1fdcfc3dbf72fc4f320f34336d815a0fb7005f458795e61a27287fcab8f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
