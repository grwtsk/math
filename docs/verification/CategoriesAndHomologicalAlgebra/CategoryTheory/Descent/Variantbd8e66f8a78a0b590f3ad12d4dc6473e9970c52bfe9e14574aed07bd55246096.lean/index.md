# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Descent.Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8859ef586279820cdb1d8dc6f351b48ea9b63a3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8859ef586279820cdb1d8dc6f351b48ea9b63a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DescendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/descendsalong--89e14497239df4341b15f574.md) | 26 | `declaration-track:89e14497239df4341b15f5742794fab69ae84fbd2b7d6d63a35bd839d7270aa7` |
| 2 | `lemma` | [of_isPullback_of_descendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/of-ispullback-of-descendsalong--d9cda3aaa9bc23bbb4e1ee50.md) | 34 | `result-track:d9cda3aaa9bc23bbb4e1ee5072b869a3234f8c745e62da5c081f2fe15d89944b` |
| 3 | `lemma` | [iff_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/iff-of-ispullback--e6674cb43964bef89f548b36.md) | 38 | `result-track:e6674cb43964bef89f548b36d5286d18d392b1ab8ae3600fc1aa901b5be719c2` |
| 4 | `lemma` | [of_pullback_fst_of_descendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/of-pullback-fst-of-descendsalong--d90b32cef4d24964722aec03.md) | 42 | `result-track:d90b32cef4d24964722aec03b7ccffc28c2387891bec769b357418427cd9404d` |
| 5 | `lemma` | [pullback_fst_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/pullback-fst-iff--3d395aa023013fd1fdcf227c.md) | 46 | `result-track:3d395aa023013fd1fdcf227c15bc21448fa37b2860dabccb7681ae9ce1b97e08` |
| 6 | `lemma` | [of_pullback_snd_of_descendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/of-pullback-snd-of-descendsalong--9b9dd6693de1c29faae83a7d.md) | 50 | `result-track:9b9dd6693de1c29faae83a7ddc8cd57a52ccf75208f87b5eee11c650b6b34c1e` |
| 7 | `lemma` | [pullback_snd_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/pullback-snd-iff--f93a3434b01e05e09cdd3214.md) | 54 | `result-track:f93a3434b01e05e09cdd3214794cc4cb3466fb6393af402a648bf5ac38b1af73` |
| 8 | `instance` | [DescendsAlong.top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/descendsalong-top--a0346d7d700b676de5a5c114.md) | 58 | `declaration-track:a0346d7d700b676de5a5c11460ffc28afdbf197bd907d3f8a35b95b272f643ee` |
| 9 | `instance` | [DescendsAlong.inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/descendsalong-inf--ec315d54e2d498e2775340d3.md) | 61 | `declaration-track:ec315d54e2d498e2775340d3d52199fb4f15dede945c9ab1445b11596785a196` |
| 10 | `lemma` | [DescendsAlong.of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/descendsalong-of-le--0a1e1bdb9cf1ab8005c93552.md) | 65 | `result-track:0a1e1bdb9cf1ab8005c93552e6c2964ed713fb4ec34563f40cb8b2840a05a109` |
| 11 | `lemma` | [DescendsAlong.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/descendsalong-mk--f888ea44f2b9fbcc74644473.md) | 69 | `result-track:f888ea44f2b9fbcc74644473402530ca6840a06e66498eaeaedcfe8ffd7680b9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/instance--49fb7e30055e8511ee023adf.md) | 78 | `declaration-track:49fb7e30055e8511ee023adf782f81e5b13d3498a6d0c81aa46fbc61cfcb24cc` |
| 13 | `class` | [CodescendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/codescendsalong--deeb6dc926e8a3afaf7b3347.md) | 89 | `declaration-track:deeb6dc926e8a3afaf7b33477578d021ee8a1dfe467a52aa9adb04b1da52dabb` |
| 14 | `lemma` | [of_isPushout_of_codescendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/of-ispushout-of-codescendsalong--c2e1b1042108cf75eed78bc0.md) | 97 | `result-track:c2e1b1042108cf75eed78bc086603c00e20f596466b9ced870a86f12fdd2b762` |
| 15 | `lemma` | [iff_of_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/iff-of-ispushout--c55dc63bdcd47fb3b576f76a.md) | 101 | `result-track:c55dc63bdcd47fb3b576f76a5477547b7a8cd993ed96cf539518813205c93267` |
| 16 | `lemma` | [of_pushout_inl_of_codescendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/of-pushout-inl-of-codescendsalong--4049449c56007632c8be00dc.md) | 105 | `result-track:4049449c56007632c8be00dcdb14b24f1a041d4adaf9f550a8a086b69d26b755` |
| 17 | `lemma` | [pushout_inl_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/pushout-inl-iff--2bf237db99b2e347f615d555.md) | 109 | `result-track:2bf237db99b2e347f615d555ac33be7d76691ae32041590ceb76a334f5856280` |
| 18 | `lemma` | [of_pushout_inr_of_descendsAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/of-pushout-inr-of-descendsalong--00cae963e82be71ccf337454.md) | 113 | `result-track:00cae963e82be71ccf33745457ccb63b914ddc266e0156aa9aa9138708b9ebb5` |
| 19 | `lemma` | [pushout_inr_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/pushout-inr-iff--888325f4fcc324082d8f4784.md) | 117 | `result-track:888325f4fcc324082d8f47846042b94258d5527a39bba28236aa79bf62c778a2` |
| 20 | `lemma` | [CodescendsAlong.of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/codescendsalong-of-le--e544d74afee6f914a8d42df6.md) | 121 | `result-track:e544d74afee6f914a8d42df67319c19bac47fcb298ea7e788e4bfa8db56db424` |
| 21 | `instance` | [CodescendsAlong.top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/codescendsalong-top--37d59c1bebdecc3d84c08aa4.md) | 124 | `declaration-track:37d59c1bebdecc3d84c08aa4e8cac4f9e155274c8161f8f18d07833bd845bfb9` |
| 22 | `instance` | [CodescendsAlong.inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/codescendsalong-inf--8ff7488b1dfa38dedb493b19.md) | 127 | `declaration-track:8ff7488b1dfa38dedb493b19270b50cfb8cf6b998e2bf700b5d0dcffb715b462` |
| 23 | `lemma` | [CodescendsAlong.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/codescendsalong-mk--853449c98da1189faec0ac25.md) | 133 | `result-track:853449c98da1189faec0ac25f6d0d4bddcf00eca9f8ea7d45c7c5dc38f3be2e4` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean/declarations/instance--f0120020c9384c744b8c5823.md) | 141 | `declaration-track:f0120020c9384c744b8c58239749e3d17c044125df3f38bd3120b8059c3c59b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
