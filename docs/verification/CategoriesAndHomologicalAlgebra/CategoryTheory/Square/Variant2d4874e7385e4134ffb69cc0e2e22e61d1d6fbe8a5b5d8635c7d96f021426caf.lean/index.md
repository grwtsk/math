# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179ce76e2d8e6e80d584e3a5f42e38343f05385c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179ce76e2d8e6e80d584e3a5f42e38343f05385c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Square` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/pullbackcone--bf0b3fc19e8f7bd7e876b61e.md) | 42 | `declaration-track:bf0b3fc19e8f7bd7e876b61eb0861fbfe21dcef52130cfc9d36633d8ce257017` |
| 2 | `abbrev` | [pushoutCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/pushoutcocone--eafd32312f6e618ebfd0f928.md) | 46 | `declaration-track:eafd32312f6e618ebfd0f9280928f7d9a2d878b26baadb3f8f87e2109e21b36e` |
| 3 | `def` | [IsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback--572152f20906fb22edbe0e37.md) | 50 | `declaration-track:572152f20906fb22edbe0e37679fe6e05ef1b015bae31edb9232df560c66311b` |
| 4 | `def` | [IsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout--f290b89eea8091389d94ad07.md) | 54 | `declaration-track:f290b89eea8091389d94ad075eb8bdf4ae3088fd8c4abd31a602d497a6d4e8d8` |
| 5 | `lemma` | [isPullback_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-iff--7c914f407b57314cba0b721c.md) | 57 | `result-track:7c914f407b57314cba0b721c4e55cf7838c50eaa867e7c8b5715c33c217504b1` |
| 6 | `lemma` | [isPushout_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-iff--78f7272c5b896027e88de711.md) | 61 | `result-track:78f7272c5b896027e88de7118cbb74afe7935039733cdbe66734fa8b910f2cca` |
| 7 | `lemma` | [IsPullback.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-mk--05054ca002589f697c819887.md) | 65 | `result-track:05054ca002589f697c819887e0362be316c451a206fc90db831b32bd3bafbb57` |
| 8 | `lemma` | [IsPushout.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-mk--0ddf92e8c168567dbcc0331b.md) | 68 | `result-track:0ddf92e8c168567dbcc0331b75d1afc6ca542b0a8307789cd26df35fb121ba29` |
| 9 | `def` | [IsPullback.isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-islimit--69be5afc9fd8b38e09cda60d.md) | 75 | `declaration-track:69be5afc9fd8b38e09cda60d4660362d8d3afdf4ad01b07246ce6e5d170dfd7e` |
| 10 | `def` | [IsPushout.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-iscolimit--72f6a836715cc910e9abddb9.md) | 81 | `declaration-track:72f6a836715cc910e9abddb90f1a7850608cca8864a6b8ef16a048789c1e198a` |
| 11 | `lemma` | [IsPullback.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-of-iso--69ffcb1067daec7d457415f1.md) | 85 | `result-track:69ffcb1067daec7d457415f10680ed20e0a3e11a5b9f25fc7986213311270c67` |
| 12 | `lemma` | [IsPullback.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-iff-of-iso--e6f7ce3867f319076c32d735.md) | 92 | `result-track:e6f7ce3867f319076c32d735d5d824d69a1227a3b473f820fa8e1cac08dd786e` |
| 13 | `lemma` | [IsPushout.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-of-iso--ae62db05220f48e1b589d31a.md) | 96 | `result-track:ae62db05220f48e1b589d31a7632fe783d745a75068a0a5a9edd0f52ce871366` |
| 14 | `lemma` | [IsPushout.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-iff-of-iso--36fdbc74117185555831ceca.md) | 103 | `result-track:36fdbc74117185555831cecaef789620065b8ab5ae8db1a8de42f62291ae59a7` |
| 15 | `lemma` | [IsPushout.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-op--00936247e5d5251f6bf64fbf.md) | 107 | `result-track:00936247e5d5251f6bf64fbfcb93a93b90cd08a3fca319b24cf0bbefbc6de071` |
| 16 | `lemma` | [IsPushout.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispushout-unop--766dcf93c90f12626ddc7c92.md) | 110 | `result-track:766dcf93c90f12626ddc7c9282449f85d0eec996a1ca959c6b221bc622355eda` |
| 17 | `lemma` | [IsPullback.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-op--f8e973cfd5cb759a437612fd.md) | 113 | `result-track:f8e973cfd5cb759a437612fd1f30da37c4b311dc538851c39fea265efc26db8b` |
| 18 | `lemma` | [IsPullback.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/ispullback-unop--cd0fc3b6b56093306518af34.md) | 116 | `result-track:cd0fc3b6b56093306518af342a93b40d6aee5eceebccdaf7d4391ae75cb35bf8` |
| 19 | `lemma` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/flip--7efd2be0032797c3d443f93c.md) | 125 | `result-track:7efd2be0032797c3d443f93c084473c62047bab8e30b13af7b399af1ac0fbc17` |
| 20 | `lemma` | [mono_f₁₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/mono-f--5bfd909d58aa460a06a3f60e.md) | 127 | `result-track:5bfd909d58aa460a06a3f60eee5cdba2bccd03aac66e5bd61984fcff6664a981` |
| 21 | `lemma` | [mono_f₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/mono-f--20a9c7123f5aa24b0eca0169.md) | 130 | `result-track:20a9c7123f5aa24b0eca0169e6fbc5c7698908cab67f550f50f79094a1fced0a` |
| 22 | `lemma` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/flip--e26b92a97ad44715ae0981d1.md) | 142 | `result-track:e26b92a97ad44715ae0981d1fe8ca4eff6845f2e0d8845b1ddcfd9614ad44bbd` |
| 23 | `lemma` | [epi_f₂₄](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/epi-f--5580469d8507f28dd4fb591f.md) | 144 | `result-track:5580469d8507f28dd4fb591f17aed493ba8213beef9eda23b39993aefee66943` |
| 24 | `lemma` | [epi_f₃₄](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant2d4874e7385e4134ffb69cc0e2e22e61d1d6fbe8a5b5d8635c7d96f021426caf.lean/declarations/epi-f--28c1b5f8363417f84c97a9bb.md) | 147 | `result-track:28c1b5f8363417f84c97a9bbe323ad49af8e5ff1be94686e3035cf9aa05f4c4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
