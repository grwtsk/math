# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1cb02be50870925a3abf671358b593077dd8676",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1cb02be50870925a3abf671358b593077dd8676`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasLiftingProperty_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean/declarations/hasliftingproperty-of-iszero--f351a3214c98785667e5a52a.md) | 36 | `result-track:f351a3214c98785667e5a52a36062c8bc1bfe815be2ddd1b9d361c0101889cfc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean/declarations/instance--37e938d7b4bfb765b6b9a8ff.md) | 43 | `declaration-track:37e938d7b4bfb765b6b9a8ff09fbf949b0415c7893d4524dee508d61b854896a` |
| 3 | `lemma` | [projective_iff_llp_epimorphisms_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean/declarations/projective-iff-llp-epimorphisms-of-iszero--05e01ecb55523730cbca5745.md) | 49 | `result-track:05e01ecb55523730cbca5745524a27b4cc05cf2b379389a32c4f79499418e95a` |
| 4 | `lemma` | [projective_iff_llp_epimorphisms_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783.lean/declarations/projective-iff-llp-epimorphisms-zero--c70dc9b95e95c0c1d5ee9cc8.md) | 63 | `result-track:c70dc9b95e95c0c1d5ee9cc8647b5e0415679219faf116a47e35839859f50309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
