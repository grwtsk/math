# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53cfc92075cd8da8896521af794af48df5f987bf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53cfc92075cd8da8896521af794af48df5f987bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mono_iff_fst_eq_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/mono-iff-fst-eq-snd--5a131db621b272f116d0aa19.md) | 46 | `result-track:5a131db621b272f116d0aa19edf4313df9a317df720825cc661b86689bd6f33f` |
| 2 | `lemma` | [mono_iff_isIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/mono-iff-isiso-fst--c53e9789e9bf02daea26060c.md) | 56 | `result-track:c53e9789e9bf02daea26060c589e03ed18e800a54534fd25bbf512011dcc670a` |
| 3 | `lemma` | [mono_iff_isIso_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/mono-iff-isiso-snd--28eb4202f2f090077cce96c7.md) | 72 | `result-track:28eb4202f2f090077cce96c71f9b502e3a0a68d6121e26335d0a299a41d6cffd` |
| 4 | `lemma` | [mono_iff_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/mono-iff-ispullback--d9a04a9a242cf6cba964e336.md) | 77 | `result-track:d9a04a9a242cf6cba964e33643cd96de5ccb885f84d410e663e2656c0d5b6a33` |
| 5 | `lemma` | [epi_iff_inl_eq_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/epi-iff-inl-eq-inr--16b966e3aa805782de764970.md) | 90 | `result-track:16b966e3aa805782de76497070e4dec012d46a702a93f4de9f4ad4c30b96500a` |
| 6 | `lemma` | [epi_iff_isIso_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/epi-iff-isiso-inl--c3452d086fd5370b5b3cfb9c.md) | 100 | `result-track:c3452d086fd5370b5b3cfb9c11d72040a14ddd8036776a712c4114f0bb22374e` |
| 7 | `lemma` | [epi_iff_isIso_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/epi-iff-isiso-inr--154f73e114cf8aa4ad7b3b9c.md) | 116 | `result-track:154f73e114cf8aa4ad7b3b9c42525b4f2386b197098146deede1462fbd6575c8` |
| 8 | `lemma` | [epi_iff_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/declarations/epi-iff-ispushout--ad3a5b67e29f51c1f7f595d9.md) | 121 | `result-track:ad3a5b67e29f51c1f7f595d94e962edcd22a362541cd592f1a110b2e103d2833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
