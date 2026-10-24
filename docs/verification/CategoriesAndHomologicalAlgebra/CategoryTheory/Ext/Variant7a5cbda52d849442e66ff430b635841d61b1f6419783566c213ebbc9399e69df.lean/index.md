# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ext.Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f077ac33ec2a3c663dedf45f73aa4d83c3be3897",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f077ac33ec2a3c663dedf45f73aa4d83c3be3897`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.LeftDerived` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective.Resolution` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Yoneda` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/declarations/ext--598ca5331c73d48a0c7acea2.md) | 40 | `declaration-track:598ca5331c73d48a0c7acea287ec67815fd195dae18cb0a1f4666e93849614c1` |
| 2 | `def` | [ChainComplex.linearYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/declarations/chaincomplex-linearyonedaobj--4600315300278ac8874c2b30.md) | 57 | `declaration-track:4600315300278ac8874c2b30398d0231713bce5d94a793f1825404937bafaa69` |
| 3 | `def` | [isoExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/declarations/isoext--35718c00e34797154304a6fc.md) | 69 | `declaration-track:35718c00e34797154304a6fcae38dbe04415507c4161dbd7f5d97f5e04d31038` |
| 4 | `lemma` | [isZero_Ext_succ_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/declarations/iszero-ext-succ-of-projective--85cc0bdca79b09eff02479b8.md) | 79 | `result-track:85cc0bdca79b09eff02479b89129aa2abbd6476638990cdf7d7c22deb03b45fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
