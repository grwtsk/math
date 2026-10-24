# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f66f04420bdda4de9848a2f72a9aa72a073b7c6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f66f04420bdda4de9848a2f72a9aa72a073b7c6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mono_iff_fst_eq_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/mono-iff-fst-eq-snd--073dc1804fc7dd6fe685edfd.md) | 38 | `result-track:073dc1804fc7dd6fe685edfd14530c3e42ab692f0bc89d87d0194c5838cac3b9` |
| 2 | `lemma` | [mono_iff_isIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/mono-iff-isiso-fst--2e61b83d11bd98f39e82758e.md) | 48 | `result-track:2e61b83d11bd98f39e82758ef0d2e6c770c9e52638b8354d7b45c16ce66f0f6c` |
| 3 | `lemma` | [mono_iff_isIso_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/mono-iff-isiso-snd--4798e1e4ea3e3bb3918f29a1.md) | 64 | `result-track:4798e1e4ea3e3bb3918f29a1ddd0101dc59fee7d486643e9ead808c804880593` |
| 4 | `lemma` | [mono_iff_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/mono-iff-ispullback--ee1ed790af0846896f2958ba.md) | 69 | `result-track:ee1ed790af0846896f2958ba87b6ab04e6af956aa57354dd7ad8ad3657ad116f` |
| 5 | `lemma` | [epi_iff_inl_eq_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/epi-iff-inl-eq-inr--e6393eed6d236deb3aee51da.md) | 82 | `result-track:e6393eed6d236deb3aee51da59bdd0ade0a5e7fe59e5f76ef219eac3e18a1e23` |
| 6 | `lemma` | [epi_iff_isIso_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/epi-iff-isiso-inl--3e72fd04bdf9858d4b382ccb.md) | 92 | `result-track:3e72fd04bdf9858d4b382ccbaad95d9645db9b6bd4f7a776d56ee4817df59726` |
| 7 | `lemma` | [epi_iff_isIso_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/epi-iff-isiso-inr--32432dacca9557b7c3b54dd8.md) | 108 | `result-track:32432dacca9557b7c3b54dd8235bfc86725f6ab32820eb112731b595155e49b2` |
| 8 | `lemma` | [epi_iff_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f.lean/declarations/epi-iff-ispushout--566550b528bf35be8c0a2494.md) | 113 | `result-track:566550b528bf35be8c0a2494a80b9964779a6db0e2becb9d84468d302741defb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
