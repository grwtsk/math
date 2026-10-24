# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteColimits.Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24c2e972dcc06e9e8efaf0e15ff17a3ae95d549",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24c2e972dcc06e9e8efaf0e15ff17a3ae95d549`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iSup_range_eq_top_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/isup-range-eq-top-of-iscolimit--b902568880740bbdc56a74e7.md) | 39 | `result-track:b902568880740bbdc56a74e7abe3c5a7ea01217e5e3357c2c8794a686cd510d3` |
| 2 | `lemma` | [range_eq_iSup_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/range-eq-isup-of-iscolimit--cd2d75b542875a72f4285bbb.md) | 47 | `result-track:cd2d75b542875a72f4285bbb07b955a7418181e2b823a411424df29db4833b4d` |
| 3 | `lemma` | [hasDimensionLT_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/hasdimensionlt-of-iscolimit--7552471279611393d2f23b73.md) | 53 | `result-track:7552471279611393d2f23b73ac02546eb50e62b9ef75a7e0af630cdc77b5fc19` |
| 4 | `lemma` | [finite_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/finite-of-iscolimit--08ab105eceac4751e98fee06.md) | 59 | `result-track:08ab105eceac4751e98fee06b1de2acfdcfe2f3192767c8d02b6fa8c31d1bd88` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/instance--9894e70a3a8f4fbf5b20c4e2.md) | 66 | `declaration-track:9894e70a3a8f4fbf5b20c4e2d717c21ad2214e98b09b7076442e8a08ce8360b4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/instance--9683786c696a448b5773e7ca.md) | 70 | `declaration-track:9683786c696a448b5773e7ca9e890b657da660ccb7b3c487ef2e6365d78f7a0e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/instance--8331a60923adae5ef701a235.md) | 75 | `declaration-track:8331a60923adae5ef701a2359748e91d58c8403eda25ce9fc20e4f93a73daa40` |
| 8 | `lemma` | [range_eq_iSup_sigma_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant012f20fa79420aa1df6aec33a992fa47f0a525b09bb5ea58434b468a24749aa9.lean/declarations/range-eq-isup-sigma--0381a6afc1d79efacb1d6975.md) | 83 | `result-track:0381a6afc1d79efacb1d69753e6d34dbaf478ee0b202e15c7d4b2156960e53c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
