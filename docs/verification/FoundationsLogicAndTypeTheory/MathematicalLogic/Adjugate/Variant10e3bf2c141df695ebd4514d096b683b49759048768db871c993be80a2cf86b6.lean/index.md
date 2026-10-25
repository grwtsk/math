# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Adjugate.Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e576f5b14db1e8ee5ba3bd88cfdd7f766b42ae",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e576f5b14db1e8ee5ba3bd88cfdd7f766b42ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.MvPolynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cramerMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramermap--102224e3cbfb1559ff9ac7e9.md) | 72 | `declaration-track:102224e3cbfb1559ff9ac7e9f6f30f9d3a132d041ecf231ace3059d914794015` |
| 2 | `theorem` | [cramerMap_is_linear](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramermap-is-linear--551eca4ba5129478fd9259fd.md) | 75 | `result-track:551eca4ba5129478fd9259fdcc250c2f110eb03415bdfaae1d5d8b9f1d4e0483` |
| 3 | `theorem` | [cramer_is_linear](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-is-linear--b263c95c817d2ce81eab4105.md) | 79 | `result-track:b263c95c817d2ce81eab4105d3df2821ed75ccd7d7870797bad332ca65a430b8` |
| 4 | `def` | [cramer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer--6cabeedaf13a3579f1b448d3.md) | 90 | `declaration-track:6cabeedaf13a3579f1b448d37c896efb59592317f52198a028479eee148667bb` |
| 5 | `theorem` | [cramer_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-apply--76647e99b24097a89c1f474b.md) | 93 | `result-track:76647e99b24097a89c1f474bea558bda29d77ef9fe90ba7be9ade0a9bd3f7420` |
| 6 | `theorem` | [cramer_transpose_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-transpose-apply--492f10680dcfe3e6c6d56eed.md) | 96 | `result-track:492f10680dcfe3e6c6d56eedcefefad6f9df8ec6a6fd986bef053914c36e1581` |
| 7 | `theorem` | [cramer_transpose_row_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-transpose-row-self--84abf7062a01123a24ebd0c4.md) | 99 | `result-track:84abf7062a01123a24ebd0c4b5f530eca31e2479cb6436d187b2b60447171261` |
| 8 | `theorem` | [cramer_row_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-row-self--b391e4f9959bbb1b801d8f6f.md) | 111 | `result-track:b391e4f9959bbb1b801d8f6f80ae02c170df4c9f1ed2edd9028e667ebfabf19f` |
| 9 | `theorem` | [cramer_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-one--ded5b13c3f36767ca6e85e64.md) | 117 | `result-track:ded5b13c3f36767ca6e85e640962108ecd6ddd43c1ae9f842017c879f949adf0` |
| 10 | `theorem` | [cramer_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-smul--38592722db9f44e8b9fde51b.md) | 124 | `result-track:38592722db9f44e8b9fde51b19796b75c2871788261743af19138d59bc1fca3b` |
| 11 | `theorem` | [cramer_subsingleton_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-subsingleton-apply--875a11c2fc9ac6af8199ea1a.md) | 129 | `result-track:875a11c2fc9ac6af8199ea1a6133ef4a85e6a7a97fc18c057e55561fefc23397` |
| 12 | `theorem` | [cramer_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-zero--d6aab22629d898cec4afdd5b.md) | 132 | `result-track:d6aab22629d898cec4afdd5b4f4260fcb3eb51a6bd74dfc674357305ee4d2ae8` |
| 13 | `theorem` | [sum_cramer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/sum-cramer--f42a2ec98082f0dc2e8dea63.md) | 140 | `result-track:f42a2ec98082f0dc2e8dea63a72069443261f2b7f405d81b99579cd97c890069` |
| 14 | `theorem` | [sum_cramer_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/sum-cramer-apply--bfe86d17730ac9241c24e593.md) | 145 | `result-track:bfe86d17730ac9241c24e5937a8f6d010d31edf3d83f91dcffefc3bbf61a5b63` |
| 15 | `theorem` | [cramer_submatrix_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-submatrix-equiv--50636779860b69e2fa42699d.md) | 157 | `result-track:50636779860b69e2fa42699df81b5d40a87d7add00b7a9f609de6de549f7f535` |
| 16 | `theorem` | [cramer_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-reindex--7a402d769f6d7528677df968.md) | 163 | `result-track:7a402d769f6d7528677df96836af61215dba5d836ba7f3afa487c0ab42f780eb` |
| 17 | `def` | [adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate--72f79ea994533f287a1918e4.md) | 187 | `declaration-track:72f79ea994533f287a1918e45b6a8317618c0b8378b16c851f37951d18fc9b89` |
| 18 | `theorem` | [adjugate_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-def--e4b9282310b8eb3059dc9aee.md) | 190 | `result-track:e4b9282310b8eb3059dc9aee8e6bc6fdb8fea546babfc2c076625593970af303` |
| 19 | `theorem` | [adjugate_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-apply--9de536f0cdd70ce3a142dc94.md) | 193 | `result-track:9de536f0cdd70ce3a142dc94a484ef4a4b82941dac3e3cc6699d7d8c2d7486f3` |
| 20 | `theorem` | [adjugate_transpose](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-transpose--b2b32f3233887f0862e232f1.md) | 197 | `result-track:b2b32f3233887f0862e232f1d826544af7a18453cf64f80059aecfca73b380f9` |
| 21 | `theorem` | [adjugate_submatrix_equiv_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-submatrix-equiv-self--7b9b2531f952e31d9b2b2237.md) | 227 | `result-track:7b9b2531f952e31d9b2b22372dd45d4cc401a8099822d9e3ce7eb35cee82564d` |
| 22 | `theorem` | [adjugate_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-reindex--dc86c3bf3bb9ce8398188342.md) | 235 | `result-track:dc86c3bf3bb9ce83981883429cc6358ccc2259a8eccbc84de5dea86598fef462` |
| 23 | `theorem` | [cramer_eq_adjugate_mulVec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/cramer-eq-adjugate-mulvec--f0d639324fa441f79a210a33.md) | 241 | `result-track:f0d639324fa441f79a210a33672733a34e32e273025c8923fcf1cb504d569604` |
| 24 | `theorem` | [mul_adjugate_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/mul-adjugate-apply--1d2733bfd90fb3c3f9d1cde8.md) | 254 | `result-track:1d2733bfd90fb3c3f9d1cde8e810962831874b35b61cc15b6e17ae6cc512d40c` |
| 25 | `theorem` | [mul_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/mul-adjugate--8b6b29a4627ee19ac0078f47.md) | 259 | `result-track:8b6b29a4627ee19ac0078f47d428a337454cc3586b5d033236bffabe7a5e112d` |
| 26 | `theorem` | [adjugate_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-mul--8d39b6796a5553769569cd48.md) | 264 | `result-track:8d39b6796a5553769569cd488206644861958107b118f2fdb64a071d52050cd4` |
| 27 | `theorem` | [adjugate_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-smul--347a43d13bfd4932e5bd081a.md) | 270 | `result-track:347a43d13bfd4932e5bd081a182f91865faaf222094e2a3aa4596acdc3cb6a2a` |
| 28 | `theorem` | [mulVec_cramer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/mulvec-cramer--85964413887ee3b6bd42604f.md) | 279 | `result-track:85964413887ee3b6bd42604f8947ae103c1ef13a1e503b5ccb4fb622249f476b` |
| 29 | `theorem` | [adjugate_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-subsingleton--59ea61ca498810f58fa0ab84.md) | 282 | `result-track:59ea61ca498810f58fa0ab84db6885a9c6b64c9ad32bc0edf9021ec29a217c26` |
| 30 | `theorem` | [adjugate_eq_one_of_card_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-eq-one-of-card-eq-one--ed756e9b58321d921abaa271.md) | 286 | `result-track:ed756e9b58321d921abaa271b2b68ef9d06749a667b27ea10dfbc2353337d6f6` |
| 31 | `theorem` | [adjugate_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-zero--5f330e488f301cdb425a9b70.md) | 292 | `result-track:5f330e488f301cdb425a9b7045721422d9945b51c76c0e054fb8aadc5d0bb753` |
| 32 | `theorem` | [adjugate_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-one--39cb0c85ce2d5d7c48a16aa0.md) | 300 | `result-track:39cb0c85ce2d5d7c48a16aa0effa09b534902077dcc07a7fcd62e9266cf662fe` |
| 33 | `theorem` | [adjugate_diagonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-diagonal--1d9e7ab0de9879915250b14b.md) | 305 | `result-track:1d9e7ab0de9879915250b14bbd5946cc555f5a5d56646cf1b675c49117b61b0d` |
| 34 | `theorem` | [_root_.RingHom.map_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/root-ringhom-map-adjugate--9ca9ecd9f1a620104f3e86d0.md) | 318 | `result-track:9ca9ecd9f1a620104f3e86d0cb385aaaeaabf18c57cf3cfce553b94ee3b6bd39` |
| 35 | `theorem` | [_root_.AlgHom.map_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/root-alghom-map-adjugate--bab138de54eeaad117aed853.md) | 327 | `result-track:bab138de54eeaad117aed85346b7072715ef90104c258202bde043a7b75f542e` |
| 36 | `theorem` | [det_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/det-adjugate--12b83db2df2ad1037fa356ef.md) | 332 | `result-track:12b83db2df2ad1037fa356ef0e186af3ffba7803834b83f195e5741da2c5139f` |
| 37 | `theorem` | [adjugate_fin_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-zero--c70dd400a71080ef7fe40631.md) | 351 | `result-track:c70dd400a71080ef7fe40631e8cea781eac0f6230c4310dc80ba67cd65955baf` |
| 38 | `theorem` | [adjugate_fin_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-one--e28e16d5c0611f83a54f201a.md) | 355 | `result-track:e28e16d5c0611f83a54f201a68aecfa183e76175a0dfb31dafe27e0f430e399d` |
| 39 | `theorem` | [adjugate_fin_succ_eq_det_submatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-succ-eq-det-submatrix--24bfff152a8833c9eb1c309c.md) | 358 | `result-track:24bfff152a8833c9eb1c309c92948d0ea911427551cfe840883d8f59bba833bd` |
| 40 | `theorem` | [adjugate_fin_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-two--7a6d8b1bda0c328abaf1e04a.md) | 364 | `result-track:7a6d8b1bda0c328abaf1e04a7dc1bfd5cb1b4aa67259ce66e1768ae372168015` |
| 41 | `theorem` | [adjugate_fin_two_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-two-of--aeb868099aa923461217fa28.md) | 371 | `result-track:aeb868099aa923461217fa28351004760326a84aa01e498452325e7cf9d643fb` |
| 42 | `theorem` | [adjugate_fin_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-three--dfddbdb9839afb1ac913f01d.md) | 374 | `result-track:dfddbdb9839afb1ac913f01d81c32e46c7791a39d91a303a0d46c9d85d81fb84` |
| 43 | `theorem` | [adjugate_fin_three_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-fin-three-of--46f21fd0fd40ca0382b97ca5.md) | 390 | `result-track:46f21fd0fd40ca0382b97ca534060d1f1f423f0740d7dfae3a61cf74abf5b437` |
| 44 | `theorem` | [det_eq_sum_mul_adjugate_row](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/det-eq-sum-mul-adjugate-row--792ca8f4fb13d1b0791115bc.md) | 397 | `result-track:792ca8f4fb13d1b0791115bc2183cda5a7ba77c28af41fcb7fdfe56bda9e3a4f` |
| 45 | `theorem` | [det_eq_sum_mul_adjugate_col](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/det-eq-sum-mul-adjugate-col--1ff2dccda89b44734955c057.md) | 410 | `result-track:1ff2dccda89b44734955c057ab9e1fd87a1e5e0c66a158cd1c128879fce2459a` |
| 46 | `theorem` | [adjugate_conjTranspose](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-conjtranspose--1147b50d4de53e4de2fee988.md) | 414 | `result-track:1147b50d4de53e4de2fee988b9ab16c63c17ab7b1ed8c73cb9f49c2b00f02013` |
| 47 | `theorem` | [isRegular_of_isLeftRegular_det](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/isregular-of-isleftregular-det--e264e1131d22047df20400cb.md) | 419 | `result-track:e264e1131d22047df20400cbad5266bbf8b3d9b9e9b6e1ab9f6d243dcc127cf3` |
| 48 | `theorem` | [adjugate_mul_distrib_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-mul-distrib-aux--d3a7c021ede25f13556107ea.md) | 433 | `result-track:d3a7c021ede25f13556107ea399fd33ca58cea647dac9c2a351a571057cd57f4` |
| 49 | `theorem` | [adjugate_mul_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-mul-distrib--64b317017142a992869795e6.md) | 445 | `result-track:64b317017142a992869795e641fb82e88e8eb4d082846e879fa3a4f3edd37d78` |
| 50 | `theorem` | [adjugate_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-pow--23a1fe91de12bddf0e226bbd.md) | 468 | `result-track:23a1fe91de12bddf0e226bbd5b167c20659fe3c0663c4c1ce28ecd4b4139cda0` |
| 51 | `theorem` | [det_smul_adjugate_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/det-smul-adjugate-adjugate--6ba44fd16a1341436e7ea77c.md) | 473 | `result-track:6ba44fd16a1341436e7ea77cd4ea47ef63081f8a62c2b2d9690adb3642b43196` |
| 52 | `theorem` | [adjugate_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-adjugate--bacbb03b1f427f4dc153c71d.md) | 482 | `result-track:bacbb03b1f427f4dc153c71d8da9b95369ffcfe2519848597c7ae98c4c7f4045` |
| 53 | `theorem` | [adjugate_adjugate'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/declarations/adjugate-adjugate--90ea54a66f12533e2291890f.md) | 505 | `result-track:90ea54a66f12533e2291890f00ab6d7d6110e4722685465039b339bb0ce6e7f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
