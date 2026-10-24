# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractArgument.Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3b6c705ceb2496647cce69d00847898316540c8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3b6c705ceb2496647cce69d00847898316540c8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Factorization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RetractArrow.ofLeftLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/declarations/retractarrow-ofleftliftingproperty--acf9cd13131521ffa73d05b6.md) | 31 | `declaration-track:acf9cd13131521ffa73d05b67580ffc087adbfbc5d70d5abd257d5df81a96d25` |
| 2 | `def` | [RetractArrow.ofRightLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/declarations/retractarrow-ofrightliftingproperty--ebc37449e069def86edaf150.md) | 40 | `declaration-track:ebc37449e069def86edaf15042f8e950f60cfb6c2e0299bf9bf91d6cd7faff5f` |
| 3 | `lemma` | [llp_eq_of_le_llp_of_hasFactorization_of_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/declarations/llp-eq-of-le-llp-of-hasfactorization-of-isstableunderretracts--797e280fb459da62f1cccb76.md) | 51 | `result-track:797e280fb459da62f1cccb76e7b5bb8c947440b5ccc6bccf1e22718dcd6f5a75` |
| 4 | `lemma` | [rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/declarations/rlp-eq-of-le-rlp-of-hasfactorization-of-isstableunderretracts--bd6e3ba5ccf16fe4289f5cbd.md) | 59 | `result-track:bd6e3ba5ccf16fe4289f5cbd63352108a2cdcdc2d07775f3df32ed1cac344b04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
