# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a57af281d5593eaac9c94bff0d7bcff0bc6b3357",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a57af281d5593eaac9c94bff0d7bcff0bc6b3357`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.DiagramLemmas.Four` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Preadditive` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Opposites` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preadditiveCoyonedaObj_map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean/declarations/preadditivecoyonedaobj-map-surjective--00149c9b14700d775a3fbfcc.md) | 40 | `result-track:00149c9b14700d775a3fbfcc1c43eba466723e5b51a8f9743c3b871f09b73f1c` |
| 2 | `theorem` | [full_comp_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0dc125660953ca6e04550072990085d7d630776e796b440cc745a2b0dfbabf43.lean/declarations/full-comp-preadditivecoyonedaobj--dca49e65e1e96654278485cc.md) | 62 | `result-track:dca49e65e1e96654278485ccd6789020bcb1d61322317718bbe33dfe796e4a59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
