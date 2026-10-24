# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimit.Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b4e7cbc7b3e8c63be9ed6544dc35b942cfdc65f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b4e7cbc7b3e8c63be9ed6544dc35b942cfdc65f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean.json)

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
| 1 | `def` | [coconeCompShrinkYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/coconecompshrinkyonedahomequiv--e0250b7a2114a93ac9c11e5d.md) | 52 | `declaration-track:e0250b7a2114a93ac9c11e5d853ae8e6995c02e00f9cbf1f538caac9e7eef27d` |
| 2 | `def` | [coconePtToShrinkYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/coconepttoshrinkyoneda--148c720b54b17571ca997182.md) | 74 | `declaration-track:148c720b54b17571ca997182952b56c0238d8db9be2f8fa29da66e2dc807ebed` |
| 3 | `lemma` | [coconePtToShrinkYoneda_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/coconepttoshrinkyoneda-comp--5425aec5ba80c3d01743e3ba.md) | 81 | `result-track:5425aec5ba80c3d01743e3ba2376fc18481dd379fecdf350f9c996cbdd581582` |
| 4 | `lemma` | [nonempty_isLimit_mapCone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/nonempty-islimit-mapcone-iff--9c89c5c56bc3a2db2dfb3d7b.md) | 90 | `result-track:9c89c5c56bc3a2db2dfb3d7b85e87532fd547ac9fd12d7347d81204878f21b2f` |
| 5 | `lemma` | [preservesLimit_eq_isLocal_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/preserveslimit-eq-islocal-single--7c449d8e7677ca7b7e034f23.md) | 104 | `result-track:7c449d8e7677ca7b7e034f2312a0a328172a879079ed11eaa52db71a87b76326` |
| 6 | `abbrev` | [preservesLimitHomFamilySrc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/preserveslimithomfamilysrc--e7375a4e704f06e10f515376.md) | 115 | `declaration-track:e7375a4e704f06e10f5153760289f52bbb4970739e595ee5a509e4ee34cc3d19` |
| 7 | `abbrev` | [preservesLimitHomFamilyTgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/preserveslimithomfamilytgt--3357bfc6f0710e614998293c.md) | 119 | `declaration-track:3357bfc6f0710e614998293c57f6a7a4b18294e14540d9ab717a3fb1814ee0e3` |
| 8 | `abbrev` | [preservesLimitHomFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/preserveslimithomfamily--74d3bc0d74e3169a8c3099c1.md) | 127 | `declaration-track:74d3bc0d74e3169a8c3099c1ad9fd06d492e44413f553eec524bc7020e88ab03` |
| 9 | `lemma` | [preservesLimit_eq_isLocal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/preserveslimit-eq-islocal--081ebe1f7bc876b0c40ce91a.md) | 132 | `result-track:081ebe1f7bc876b0c40ce91a525fedf07df1a2a840ddce91311fced565ce9c0a` |
| 10 | `lemma` | [preservesLimitsOfShape_eq_isLocal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant9ee621fa8737d28884a19ea63bd254de70d125dc35aad1eb43b130a799e944a3.lean/declarations/preserveslimitsofshape-eq-islocal--1888a489396dfee37860bbfe.md) | 144 | `result-track:1888a489396dfee37860bbfe756069253cdd5bafb1b6248af7c9331a6fd2eccb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
