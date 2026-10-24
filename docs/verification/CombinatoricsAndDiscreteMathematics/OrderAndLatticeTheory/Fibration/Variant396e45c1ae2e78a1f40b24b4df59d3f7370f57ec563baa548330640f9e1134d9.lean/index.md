# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Fibration.Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebb38a930b0ada4485d7c1a9385a9fe6585cb838",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebb38a930b0ada4485d7c1a9385a9fe6585cb838`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Fibration.isLowerSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-islowerset-image--1d45e4a9dc56acaf2cf14343.md) | 18 | `result-track:1d45e4a9dc56acaf2cf14343d23919c0436f4388355521486df0aae3380ea21c` |
| 2 | `lemma` | [fibration_iff_isLowerSet_image_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-iff-islowerset-image-iic--315f9615f726979e5c773391.md) | 24 | `result-track:315f9615f726979e5c773391fcd4fcb4e4dced1dc47e2920ffc1f844f3519ebe` |
| 3 | `lemma` | [fibration_iff_isLowerSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-iff-islowerset-image--04cdba98c175069650973b3c.md) | 28 | `result-track:04cdba98c175069650973b3c3fedb92f3be106afc3bc457c3e5c1b15baebea7a` |
| 4 | `lemma` | [fibration_iff_image_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-iff-image-iic--69a273fe6e1be44340a36345.md) | 33 | `result-track:69a273fe6e1be44340a363458a9a7a1bc4decf026982d04e3996f31094fda43d` |
| 5 | `lemma` | [Fibration.isUpperSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-isupperset-image--cd86d9c60757595c7a61a243.md) | 39 | `result-track:cd86d9c60757595c7a61a243c6306cf1bd02851b3751e216096da562b17d6efd` |
| 6 | `lemma` | [fibration_iff_isUpperSet_image_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-iff-isupperset-image-ici--fae94f66068d9d6b2ba581f6.md) | 45 | `result-track:fae94f66068d9d6b2ba581f616d9d028e55ebe846722d6e66fe44bbee1ab8e82` |
| 7 | `lemma` | [fibration_iff_isUpperSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-iff-isupperset-image--f044af4a8483cbf974ac66e5.md) | 49 | `result-track:f044af4a8483cbf974ac66e5d1460d7317e2ffc05eef6be0d4a13611836cc5d9` |
| 8 | `lemma` | [fibration_iff_image_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9.lean/declarations/fibration-iff-image-ici--f4e4e1be28d4e577d5ab86f0.md) | 53 | `result-track:f4e4e1be28d4e577d5ab86f04657d611c8e7e658e53e749f641ca69ff5d667a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
