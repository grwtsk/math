# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Support.Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c91d963450c9f557978a68f1984c84f9b7b5e7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c91d963450c9f557978a68f1984c84f9b7b5e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Supported` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-mul--e8c16a4d65ad3629984238e2.md) | 33 | `result-track:e8c16a4d65ad3629984238e26d5b9f4a518e9430008913789ba046e7e88d64bc` |
| 2 | `theorem` | [support_single_mul_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-single-mul-subset--725da83e3bbd249415acfb73.md) | 40 | `result-track:725da83e3bbd249415acfb73c82b86b37c92b60ce2fd13eb3bcf8bf216b6e648` |
| 3 | `theorem` | [support_mul_single_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-mul-single-subset--6559fd1f93fef020c6010938.md) | 45 | `result-track:6559fd1f93fef020c601093816953e9a35268177179c23fa8d03b721a1ffb157` |
| 4 | `theorem` | [support_single_mul_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-single-mul-eq-image--088d86a97f9dfe6d0c96a15e.md) | 50 | `result-track:088d86a97f9dfe6d0c96a15edddf4fd88cca725ac53754b7f5cad128bc438176` |
| 5 | `theorem` | [support_mul_single_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-mul-single-eq-image--c25ab0109aae27d4296a496f.md) | 59 | `result-track:c25ab0109aae27d4296a496f511f6d8c0d13a0096cb8b5b5ebe446e3044f67bc` |
| 6 | `theorem` | [support_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-mul-single--305c11cbd3bb20dc94504764.md) | 68 | `result-track:305c11cbd3bb20dc94504764cd259777bbc043b8f02f65e214357ac2f4fa082d` |
| 7 | `theorem` | [support_single_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-single-mul--9587f021e0fd14d7381ca6a7.md) | 76 | `result-track:9587f021e0fd14d7381ca6a7e7f4d4a7cae3b058b37518e534e84bc513d70262` |
| 8 | `lemma` | [support_one_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-one-subset--2453db3497be121b9084c93a.md) | 84 | `result-track:2453db3497be121b9084c93abfb2e9d774736c0d521c8dc2038d75656156f169` |
| 9 | `lemma` | [support_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-one--2391b22b2879b1b955f92707.md) | 88 | `result-track:2391b22b2879b1b955f92707716da55b62336ceb14b01a0f270d96cd27fa1a02` |
| 10 | `theorem` | [mem_span_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/mem-span-support--511d2096d942da75c8f2aa97.md) | 96 | `result-track:511d2096d942da75c8f2aa97002383fc3edc0c8439882dc3abf36a98d05b9cc8` |
| 11 | `theorem` | [support_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-mul--fdf012e358f729ff505467eb.md) | 110 | `result-track:fdf012e358f729ff505467eb4690ad6d3848a29ee5b65dfc5adcdfa909ae38ab` |
| 12 | `theorem` | [support_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-mul-single--7d687222f89e2a8e011f79fe.md) | 114 | `result-track:7d687222f89e2a8e011f79fe0944dbdd71e16f932576e578533d48077a9d9d7b` |
| 13 | `theorem` | [support_single_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-single-mul--8ba57b35bfb4e01015ef2d15.md) | 119 | `result-track:8ba57b35bfb4e01015ef2d15914ddb5d02f25093e694688d74c432750399c7dd` |
| 14 | `lemma` | [support_one_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-one-subset--dae86b4761ff98b7411edd20.md) | 124 | `result-track:dae86b4761ff98b7411edd2050f5cfab2db0ffef7127379960b64d7f3e0f664b` |
| 15 | `lemma` | [support_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/support-one--de7c6b105eb84dd7e5b8195f.md) | 127 | `result-track:de7c6b105eb84dd7e5b8195f7edb93a38b523b5232de67bdb541641c3ed2887a` |
| 16 | `theorem` | [mem_span_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/mem-span-support--ab817bdeca20b3a39af0405d.md) | 133 | `result-track:ab817bdeca20b3a39af0405d1cc9cb7a87a74c543369cb7ca9852655d673cb6b` |
| 17 | `theorem` | [mem_span_support'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantf51d46acef192983854e3cca1044fd7f245e5e683c2bc12549c93e3ab4cfe773.lean/declarations/mem-span-support--5c9735aee2483b5d6c4a49a4.md) | 139 | `result-track:5c9735aee2483b5d6c4a49a492a1dba906dfc53eca5be34fc5d856044b94b799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
