# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a3db22aa34f98ca0ff93bed57d8b1479f57e623",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a3db22aa34f98ca0ff93bed57d8b1479f57e623`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-sigma--0a13b0ec2170bdadb5c8b9c5.md) | 42 | `result-track:0a13b0ec2170bdadb5c8b9c55266df59e18d602033e2c6796e873029d8677483` |
| 2 | `theorem` | [prod_sigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-sigma--2010ae411974aeb80697aa2d.md) | 50 | `result-track:2010ae411974aeb80697aa2dcc9be1acdd111d450126ea8aa2cc449c4b957ffc` |
| 3 | `theorem` | [prod_finset_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-finset-product--240e5b8a2e28a518e5c7e9f0.md) | 55 | `result-track:240e5b8a2e28a518e5c7e9f066c4bb951cfee532e2442721a7cc55552445a2bc` |
| 4 | `theorem` | [prod_finset_product'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-finset-product--dd9017470e14d96e95510b1e.md) | 62 | `result-track:dd9017470e14d96e95510b1e2620659cb44b9c439f59e44d8c6a2b25443afd00` |
| 5 | `theorem` | [prod_finset_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-finset-product-right--d6a52fe99f5ad0febaeedb48.md) | 68 | `result-track:d6a52fe99f5ad0febaeedb485956760cb18d4e8ef5da816b0297bdb106a4f256` |
| 6 | `theorem` | [prod_finset_product_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-finset-product-right--bf45a7cd568baba2ffeddd47.md) | 75 | `result-track:bf45a7cd568baba2ffeddd479f74840d23c6480da1e1a00c788158e2fb660d48` |
| 7 | `theorem` | [prod_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-product--ecf55848722ee65c4a21bb45.md) | 84 | `result-track:ecf55848722ee65c4a21bb45002562b09c5b4e1fbc7e4e88ff2c2823be9a65c1` |
| 8 | `theorem` | [prod_product'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-product--df0cb6412a8963ab6f3c5c8f.md) | 92 | `result-track:df0cb6412a8963ab6f3c5c8fab6ddd805b32e3114867da4101f97f24314a65d9` |
| 9 | `theorem` | [prod_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-product-right--498c31581ead0f43c0cb21bc.md) | 97 | `result-track:498c31581ead0f43c0cb21bce6e51015085161d2bc4a68b13a2e18d113815da6` |
| 10 | `theorem` | [prod_product_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-product-right--e9d58cde90e20879f9238451.md) | 103 | `result-track:e9d58cde90e20879f9238451213a47de651a12b0c63ee9e4bbb12a0c2ef6effc` |
| 11 | `theorem` | [prod_comm'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-comm--bd6cd97527aaf4d993cc1341.md) | 111 | `result-track:bd6cd97527aaf4d993cc1341d2bc2d88ead55fa0e79d0329e94ffcb2f31bf75a` |
| 12 | `theorem` | [prod_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-comm--01c5b0798b56fdb356a0de99.md) | 125 | `result-track:01c5b0798b56fdb356a0de99b8df455cc158838d2e73dd1caa9e9824548da874` |
| 13 | `theorem` | [prod_comm_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/prod-comm-cycle--7bbd09eb7b06ff5904f5fb48.md) | 131 | `result-track:7bbd09eb7b06ff5904f5fb4801fb1c9f1210e73d9e400b90e5ed3c1af32cc23b` |
| 14 | `theorem` | [card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantfeeecba3f7ae53bf0367538a69864dfc629554c69f92374a9b84f8a8d0065f90.lean/declarations/card-sigma--f6bd2c4b536348b8b0e7adcb.md) | 138 | `result-track:f6bd2c4b536348b8b0e7adcbee424ee40f778cda68a15e898c98d223e58c21db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
