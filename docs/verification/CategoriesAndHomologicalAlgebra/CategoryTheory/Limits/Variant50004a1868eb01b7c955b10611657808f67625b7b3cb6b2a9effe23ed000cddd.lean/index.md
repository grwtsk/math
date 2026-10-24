# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eddd8635913e10161cec1516a0a305a3931d4e4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eddd8635913e10161cec1516a0a305a3931d4e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/anonymous--f1aa50b76c56c0ba08c54974.md) | 58 | `declaration-track:f1aa50b76c56c0ba08c54974710fb67f35e55b9c4c24af947fc56154c0464788` |
| 2 | `def` | [newCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/newcone--637dedff2c0549a8db6b9f25.md) | 63 | `declaration-track:637dedff2c0549a8db6b9f25a083615dec2c295b81caa4a7cc448caadb0ea47b` |
| 3 | `def` | [conePoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/conepoint--b36aff5407c0aff30d8c0a43.md) | 70 | `declaration-track:b36aff5407c0aff30d8c0a43677a6ac68a48c79fc5faaa040da7774fdb0acd22` |
| 4 | `def` | [liftedCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/liftedcone--1015a50f624c5fb896c8008f.md) | 89 | `declaration-track:1015a50f624c5fb896c8008fdba73b7cc4ac21f25a31a044bceec769088d4c92` |
| 5 | `def` | [liftedConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/liftedconeislimit--0f058a050289bd3cbd6eca9e.md) | 102 | `declaration-track:0f058a050289bd3cbd6eca9eb4ed77886c64f2fa496900cfc959b2fdf870d67a` |
| 6 | `instance` | [forgetCreatesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/forgetcreateslimits--b9dc12b33c4b6acbaa6433a7.md) | 122 | `declaration-track:b9dc12b33c4b6acbaa6433a77477554b14df04531cc74d18d63702c0a29361fe` |
| 7 | `theorem` | [hasLimit_of_comp_forget_hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/haslimit-of-comp-forget-haslimit--dca0ced384ab1d511cf79c7e.md) | 132 | `result-track:dca0ced384ab1d511cf79c7e24aa79cdfcde51136ecd54fbbfd428ba1c9fef22` |
| 8 | `def` | [γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/anonymous--c31356f279d1516acc0ec8a6.md) | 156 | `declaration-track:c31356f279d1516acc0ec8a67f8e6acbd873304800f1afe103554bb320c220e8` |
| 9 | `def` | [newCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/newcocone--33f2119d7c90184d6b83315b.md) | 164 | `declaration-track:33f2119d7c90184d6b83315b7de264fe174da175f2585061126738693c362102` |
| 10 | `def` | [lambda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/lambda--5a69c16734d62a96994324bd.md) | 177 | `declaration-track:5a69c16734d62a96994324bd4026aedaebfa5b47f3b687b69990b298bc9ec7cf` |
| 11 | `theorem` | [commuting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/commuting--46a1b61d55f6f2c93fa82ec9.md) | 182 | `result-track:46a1b61d55f6f2c93fa82ec944aa05fc774ec4857fdc2c184578895d2b4e2699` |
| 12 | `def` | [coconePoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/coconepoint--1aedcd4fcc6b68f32d9ffbd8.md) | 194 | `declaration-track:1aedcd4fcc6b68f32d9ffbd8e44b3d563662dec3bf2a95ffa45971576d957c8b` |
| 13 | `def` | [liftedCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/liftedcocone--c32a3c769b30809b3f82d277.md) | 215 | `declaration-track:c32a3c769b30809b3f82d277d57c2e0fc2d737cda2a1a34b3837b00ab8720efb` |
| 14 | `def` | [liftedCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/liftedcoconeiscolimit--b447dc64386a08026d9d0713.md) | 230 | `declaration-track:b447dc64386a08026d9d0713b5756c37c9bb39c74b3d7ef716784afdb5d92481` |
| 15 | `instance` | [forgetCreatesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/forgetcreatescolimit--5b788b567f072746ff494593.md) | 253 | `declaration-track:5b788b567f072746ff4945931052d71b0a5f62abd97e4e84c4c97ab49f0bf634` |
| 16 | `instance` | [forgetCreatesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/forgetcreatescolimitsofshape--9fb074c768141bfeab1f2f94.md) | 271 | `declaration-track:9fb074c768141bfeab1f2f94e41885be30cc90580e548295694b6c336ff1fb7c` |
| 17 | `instance` | [forgetCreatesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/forgetcreatescolimits--ece18108cca46f50304d9677.md) | 275 | `declaration-track:ece18108cca46f50304d9677c938fdced9de9fd634e8965e0b94c1f3f4bcc340` |
| 18 | `theorem` | [forget_creates_colimits_of_monad_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/forget-creates-colimits-of-monad-preserves--df32561f514125da031ce552.md) | 282 | `result-track:df32561f514125da031ce55281b02a3db22cf9cec3f6938101cbafa6fbd42f61` |
| 19 | `instance` | [comp_comparison_forget_hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/comp-comparison-forget-haslimit--0daa2a706dc2f91cedf6b509.md) | 293 | `declaration-track:0daa2a706dc2f91cedf6b5098fe8f7171e2249447bd9ba97bd6550a0267d9059` |
| 20 | `instance` | [comp_comparison_hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/comp-comparison-haslimit--ddda8dd741ea364992868747.md) | 300 | `declaration-track:ddda8dd741ea3649928687474ee1f3a9839a5dcf6a00d0b4658ab74ec6297366` |
| 21 | `def` | [monadicCreatesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/monadiccreateslimits--f9e9f65e73abf328f6e41fb1.md) | 306 | `declaration-track:f9e9f65e73abf328f6e41fb141a955a0e2a1a53475fab8557d2802cc35ca8489` |
| 22 | `def` | [monadicCreatesColimitOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/monadiccreatescolimitofpreservescolimit--90e847bc407fb06523ce4705.md) | 314 | `declaration-track:90e847bc407fb06523ce470599ec9b7ea41d91afcb1ea0cc6a76ba7c76baab30` |
| 23 | `def` | [monadicCreatesColimitsOfShapeOfPreservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/monadiccreatescolimitsofshapeofpreservescolimitsofshape--e465120bc74f5ae5874861b0.md) | 343 | `declaration-track:e465120bc74f5ae5874861b06f9955d504bfb494182682a7e9c85beb09f6018d` |
| 24 | `def` | [monadicCreatesColimitsOfPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/monadiccreatescolimitsofpreservescolimits--1e31a030062a561d8b7c83f4.md) | 353 | `declaration-track:1e31a030062a561d8b7c83f49b96e55a0a56024d32f17e46999eff767e88b852` |
| 25 | `theorem` | [hasLimit_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/haslimit-of-reflective--956b0cdf77f5f3d0cd03eb22.md) | 361 | `result-track:956b0cdf77f5f3d0cd03eb229edcf09c21d783291e578e960950e38d746e4021` |
| 26 | `theorem` | [hasLimitsOfShape_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/haslimitsofshape-of-reflective--eee4f2ea29db0d2b77f95634.md) | 368 | `result-track:eee4f2ea29db0d2b77f956347e3d02a933ed5314dd45782111d95a138d8ddb13` |
| 27 | `theorem` | [hasLimits_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/haslimits-of-reflective--0a119c09925a3ce36708f9e9.md) | 374 | `result-track:0a119c09925a3ce36708f9e95ced9729b529111a9578eb5200b9815bb167bb60` |
| 28 | `theorem` | [hasColimitsOfShape_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/hascolimitsofshape-of-reflective--2da944033fb8030715ffd366.md) | 380 | `result-track:2da944033fb8030715ffd36607e31aafe3b8dd52ba0a1a36109b959bba7f598b` |
| 29 | `theorem` | [hasColimits_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/hascolimits-of-reflective--6486613a7eb3756f64c4aa1b.md) | 393 | `result-track:6486613a7eb3756f64c4aa1bca11584f436a42506350b92003c1486680356038` |
| 30 | `def` | [leftAdjointPreservesTerminalOfReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/declarations/leftadjointpreservesterminalofreflective--3f60a9d47e963dfde0ee1fd8.md) | 401 | `declaration-track:3f60a9d47e963dfde0ee1fd8da740b9d4233af43b6185c82a26bd4537effb6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
