# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d93514137a792e1f627144558e0d550fb2f08b6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d93514137a792e1f627144558e0d550fb2f08b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/evaluationjointlyreflectslimits--89ce5ca523c084e8f54d7bba.md) | 42 | `declaration-track:89ce5ca523c084e8f54d7bba481b831ab8ef850dde62271771541470d1ca597c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/instance--7cea0eb3bd74846ae7fcc52b.md) | 64 | `declaration-track:7cea0eb3bd74846ae7fcc52b7fc418a462e79de31434d0d2e59628c4e7799b3f` |
| 3 | `def` | [limitPresheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/limitpresheafofmodules--9257456a70a86f119b2d4b03.md) | 72 | `declaration-track:9257456a70a86f119b2d4b034d5fe189dc7cebf73cefdb453e20cc8867283018` |
| 4 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/limitcone--9839417f465d2b410d645ba2.md) | 114 | `declaration-track:9839417f465d2b410d645ba2b7991a324604912e3ae1bf3922acd6f6a6befa5c` |
| 5 | `def` | [isLimitLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/islimitlimitcone--703f517328c10431428f23ce.md) | 128 | `declaration-track:703f517328c10431428f23ce322d992ce1f464646afb798fdc6618e96516a2cc` |
| 6 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/haslimit--ab141c60c07c5c5d10666b36.md) | 131 | `declaration-track:ab141c60c07c5c5d10666b36a7772ac42b890ba60666df551fc4044c989867d3` |
| 7 | `instance` | [evaluation_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/evaluation-preserveslimit--ac61993ea7a61d3f6611f225.md) | 133 | `declaration-track:ac61993ea7a61d3f6611f22531b8aa4c4dfececa9b45fd5eee832789019c3578` |
| 8 | `instance` | [toPresheaf_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/topresheaf-preserveslimit--d480c68299f2db794b2a5574.md) | 137 | `declaration-track:d480c68299f2db794b2a55744b2de769fc5b4b6f9796cfb83fa0ab360dd4a9e9` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/haslimitsofshape--db6316ac59535bda2d64e166.md) | 152 | `declaration-track:db6316ac59535bda2d64e1668c5bf14bef7075049091742af66cb96b7d1c292e` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/haslimitsofsize--4476a43e629b45ec540b19cd.md) | 154 | `declaration-track:4476a43e629b45ec540b19cda27fe5e075bab364466579a079c605f56f628bd1` |
| 11 | `instance` | [evaluation_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/evaluation-preserveslimitsofshape--60afb3ab27480154b53aba78.md) | 156 | `declaration-track:60afb3ab27480154b53aba785fb93f161781b6a8370bef834a5fb33446f00369` |
| 12 | `instance` | [toPresheaf_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/topresheaf-preserveslimitsofshape--f9155add8d6d81f9d742cba5.md) | 159 | `declaration-track:f9155add8d6d81f9d742cba553a5bd9ee3e2f2fc0a960bcc381e01a57c69e03a` |
| 13 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/hasfinitelimits--f6caeabdee266f3e0b4c9b72.md) | 166 | `declaration-track:f6caeabdee266f3e0b4c9b7242817785ad2c1b4f9c10d4188e40e6173f25de28` |
| 14 | `instance` | [evaluation_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/evaluation-preservesfinitelimits--9d9ecf0fddffc324a96e0eba.md) | 169 | `declaration-track:9d9ecf0fddffc324a96e0eba9c770fb8e296e130e488442d0dd6fca8f2bf9a1a` |
| 15 | `instance` | [toPresheaf_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean/declarations/topresheaf-preservesfinitelimits--454b0653c965a045dbf4d0db.md) | 172 | `declaration-track:454b0653c965a045dbf4d0dbe6d3a489d0e5e2e4c218dbbaf5eece29b65eb1f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
