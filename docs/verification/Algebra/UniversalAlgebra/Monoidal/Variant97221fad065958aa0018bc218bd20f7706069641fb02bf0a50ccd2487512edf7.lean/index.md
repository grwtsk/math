# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa3139cd9d460f506c01b5b41301610ac68ef67c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa3139cd9d460f506c01b5b41301610ac68ef67c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.AlgCat.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.BialgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.CoalgCat.Monoidal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.TensorProduct` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonoidalCategoryStruct](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/declarations/instmonoidalcategorystruct--6dd5f29ba95e8eac13ee588c.md) | 40 | `declaration-track:6dd5f29ba95e8eac13ee588c3b07f7a892887c84efc708540699a4ead9917d8e` |
| 2 | `def` | [MonoidalCategory.inducingFunctorData](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/declarations/monoidalcategory-inducingfunctordata--4085542fd17d1996677d4903.md) | 54 | `declaration-track:4085542fd17d1996677d4903186d3b13792e5adacbdc0e202d4d3b2130693f34` |
| 3 | `instance` | [instMonoidalCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/declarations/instmonoidalcategory--d143ea141afa92bdcb25b3ce.md) | 66 | `declaration-track:d143ea141afa92bdcb25b3ce6aee87297b6444c72de4db1d22800cc9b56347f2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/declarations/instance--e3195b3050deb97a55b898af.md) | 70 | `declaration-track:e3195b3050deb97a55b898af70086f9ce5faf5e74b6290a2fc0a1d0eefc7a600` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant97221fad065958aa0018bc218bd20f7706069641fb02bf0a50ccd2487512edf7.lean/declarations/instance--aaa78616f4890a96c6c6f619.md) | 75 | `declaration-track:aaa78616f4890a96c6c6f619bc2464ff8b6aff2acc208e963f5c4ee5b211e9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
