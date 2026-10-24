# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9377948e2fab7d17343dd342f65bf234a7fb1818",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9377948e2fab7d17343dd342f65bf234a7fb1818`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.OfSection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGeneratedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/isgeneratedby--f18625d7d3ccdc284e6443ef.md) | 37 | `declaration-track:f18625d7d3ccdc284e6443ef06dc5feca8251bf9e0f4fd4f839ff65154288fcd` |
| 2 | `lemma` | [isGeneratedBy_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/isgeneratedby-iff--0fb9ed91cd48ea57aac65616.md) | 39 | `result-track:0fb9ed91cd48ea57aac656164b4b18f4f86a508db82fc4d63b484eb01a20cbb2` |
| 3 | `lemma` | [iSup_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/isup-eq--d65da2a619f3905e03ccd754.md) | 46 | `result-track:d65da2a619f3905e03ccd75403c9e5229c461d293df7dce444b3ac816a2785f5` |
| 4 | `lemma` | [ofSection_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/ofsection-le--4c114d654f67ca336f1e57fa.md) | 48 | `result-track:4c114d654f67ca336f1e57facb112e1089f0945bc3e4fae2be492370b0ec35db` |
| 5 | `lemma` | [mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/mem--aaf93de2c5f16ba5bd36216a.md) | 52 | `result-track:aaf93de2c5f16ba5bd36216a8a6123485036dbb079756e2a3ab2ef70ad66d08b` |
| 6 | `lemma` | [of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/of-equiv--33eca1586be9584a7ed33f10.md) | 56 | `result-track:33eca1586be9584a7ed33f10d091d1343e20b529f51d19369dcabca2df149c1c` |
| 7 | `lemma` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/image--5a6bfbd911814551ba1e4d39.md) | 67 | `result-track:5a6bfbd911814551ba1e4d390412db8140c73e54d7cbfe6784627358f4c53d7a` |
| 8 | `class` | [IsFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/isfinite--7ed0b516e74ed70a72abd411.md) | 76 | `declaration-track:7ed0b516e74ed70a72abd411be9692dcf526be1365adbef91cab42695cfd541c` |
| 9 | `def` | [Index](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/index--718498848671c456df2d8df7.md) | 86 | `declaration-track:718498848671c456df2d8df785f2a5adc8825a84bb248bafbe682dffe0c96554` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/instance--407d5101468ac821d7bc1602.md) | 88 | `declaration-track:407d5101468ac821d7bc16024bfc2d6a5a0c5cc56417f28a7d26b3cbe51f3c5a` |
| 11 | `def` | [X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/x--2a388c4d3bf755749d1c32ad.md) | 94 | `declaration-track:2a388c4d3bf755749d1c32ada8ccc580d68aa1b17b026d7ad747f54329162680` |
| 12 | `def` | [x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/x--bd757e0ef5fae6ef1482db38.md) | 98 | `declaration-track:bd757e0ef5fae6ef1482db38d5b74bef154bbe1da3355bd8e3ad73be5a6dcbe9` |
| 13 | `lemma` | [isGeneratedBy_of_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/isgeneratedby-of-isfinite--08b59810f20ee605e2cd7a62.md) | 103 | `result-track:08b59810f20ee605e2cd7a6244dc5f010f708e310d24a26b899bc560dae5c371` |
| 14 | `lemma` | [IsGeneratedBy.isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/isgeneratedby-isfinite--890c38a2a17f4886cf9df4f6.md) | 107 | `result-track:890c38a2a17f4886cf9df4f6f2250d65746955fa00e33fccec299d042c915161` |
| 15 | `lemma` | [image_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/image-isfinite--9906480245718729d313f4a1.md) | 113 | `result-track:9906480245718729d313f4a1cdf66fe4de0e900b55521d9aea3fe41e9be457dc` |
| 16 | `abbrev` | [PresheafIsGeneratedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/presheafisgeneratedby--78ffd260289980e8596eb4f3.md) | 127 | `declaration-track:78ffd260289980e8596eb4f3faaa6bc84fd87b3e5eb60a5675b53887a251d2fa` |
| 17 | `lemma` | [range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/range--c54c65f289f7489c50d67de1.md) | 135 | `result-track:c54c65f289f7489c50d67de127453ff7593ef1cd7343558f7664033b1418b58b` |
| 18 | `lemma` | [of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/of-epi--7931b817027c37e0f434bc0c.md) | 138 | `result-track:7931b817027c37e0f434bc0cac74c0c2d7ff38c6af122c532c58337890a054fd` |
| 19 | `abbrev` | [PresheafIsFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/presheafisfinite--484fb70684100486fa628c3f.md) | 146 | `declaration-track:484fb70684100486fa628c3fbc2f9ef08f10ca44af983546fddf724c03ce86f0` |
| 20 | `lemma` | [presheafIsGeneratedBy_of_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/presheafisgeneratedby-of-isfinite--e6fb09dfd8879d327280f6ea.md) | 148 | `result-track:e6fb09dfd8879d327280f6ead65068a9c94a3194cd1adec9981eba79805b49c2` |
| 21 | `lemma` | [Subpresheaf.range_isFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/subpresheaf-range-isfinite--fae5aabd5f0060adfd684a5b.md) | 152 | `result-track:fae5aabd5f0060adfd684a5b7749e5b178cc2c2e1c3d687cac21c7c3e27e13c2` |
| 22 | `lemma` | [presheafIsFinite_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/presheafisfinite-of-epi--1604c60cb8e0cec78f8ed725.md) | 156 | `result-track:1604c60cb8e0cec78f8ed72590050b117e5cfddfdf1de93575a3197bd5aae248` |
| 23 | `lemma` | [yoneda_obj_isGeneratedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/yoneda-obj-isgeneratedby--357e6f9fe80c327cce89a1f7.md) | 160 | `result-track:357e6f9fe80c327cce89a1f7231a9c2fec51e686f28de03400eee306efca44d1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3c984ba786b2268033a1b37ae9b8d7d9cb6c656c7428d9e62587b26b60f5efae.lean/declarations/instance--f22b8740536dc12cf8068166.md) | 168 | `declaration-track:f22b8740536dc12cf80681669df0f68ad9a2fd8fe36712bd4dda05bc1867586d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
