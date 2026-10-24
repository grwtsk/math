# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1205fd25f107722b52e6c2bd815bfe5b6d31d440",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1205fd25f107722b52e6c2bd815bfe5b6d31d440`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Monics](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/monics--26e094fcf8fd3c08df801280.md) | 41 | `declaration-track:26e094fcf8fd3c08df801280e08e322db4b29a64ce8a7841b3df1ab1349d21ad` |
| 2 | `def` | [Vars](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/vars--f2b9ad77885f420ee1174d55.md) | 45 | `declaration-track:f2b9ad77885f420ee1174d555013ca7402194205045fc08613b308ee67ff8fe7` |
| 3 | `def` | [subProdXSubC](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/subprodxsubc--e0918c15f045861c55027549.md) | 50 | `declaration-track:e0918c15f045861c550275499c430cc80290833fa5d2f587734f0db34ee7dbc1` |
| 4 | `def` | [spanCoeffs](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/spancoeffs--8eac9c799a3c6e48ab9fdb25.md) | 54 | `declaration-track:8eac9c799a3c6e48ab9fdb25db4196e2a7dc3029e39d8532e476907d570fc263` |
| 5 | `def` | [finEquivRoots](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/finequivroots--226a594a558ee37f506b58ef.md) | 61 | `declaration-track:226a594a558ee37f506b58ef37faf71472ef0ce13a96622b2dafba1b7e6a90f2` |
| 6 | `lemma` | [Monics.splits_finsetProd](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/monics-splits-finsetprod--77939f8a366804892cc1e1d4.md) | 67 | `result-track:77939f8a366804892cc1e1d41a3a4c3b470eb51e21d498569e6b604661546624` |
| 7 | `def` | [toSplittingField](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/tosplittingfield--5bfa751eb06ef8dc78468e50.md) | 75 | `declaration-track:5bfa751eb06ef8dc78468e50102c61878039ed3f747b99a817ef27e20aa0e1b9` |
| 8 | `theorem` | [toSplittingField_coeff](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/tosplittingfield-coeff--42f7275e5738578788c6d177.md) | 80 | `result-track:42f7275e5738578788c6d17773c79162e16903a457fd978c9d11f085320e4efd` |
| 9 | `theorem` | [spanCoeffs_ne_top](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/spancoeffs-ne-top--d6fcb2f8d8baf58f6a4b012e.md) | 95 | `result-track:d6fcb2f8d8baf58f6a4b012eca4533c1cb5a0868f3ed87e705e627b7e537e0ce` |
| 10 | `def` | [maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/maxideal--a33d7e60865e8f96589c67c0.md) | 107 | `declaration-track:a33d7e60865e8f96589c67c07fd7fbc734f243f7e953e44d7c27d0dba0ca2bff` |
| 11 | `instance` | [maxIdeal.isMaximal](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/maxideal-ismaximal--c7cc55cc55f88cc1c60c9616.md) | 110 | `declaration-track:c7cc55cc55f88cc1c60c961693de710f2dc7918e24b96f7ac229c9e575119686` |
| 12 | `theorem` | [le_maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/le-maxideal--8ad693d8666e6d50ac95f8dd.md) | 113 | `result-track:8ad693d8666e6d50ac95f8ddd7c290b92f8d6230a1ffabb31d9217cbe4e79cd6` |
| 13 | `def` | [AlgebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/algebraicclosure--ad441e7e34373c3633c814c2.md) | 122 | `declaration-track:ad441e7e34373c3633c814c2af54d6ae157d99389e8f33046e8eb854b9e443c3` |
| 14 | `instance` | [instCommRing](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instcommring--7e85fa3847b2dde3fead58f0.md) | 127 | `declaration-track:7e85fa3847b2dde3fead58f0b5f18adc248161a52ef5a08024ea41850e09f715` |
| 15 | `instance` | [instInhabited](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instinhabited--5b8a4d6735e3d3fa0ba3242f.md) | 128 | `declaration-track:5b8a4d6735e3d3fa0ba3242fda645c3ada7a07b1fcc295ac868daad5ace4e16c` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--989f41cf505dc33ee7447638.md) | 130 | `declaration-track:989f41cf505dc33ee74476387e03331936575522c7bf7c5260874296c61f2d8a` |
| 17 | `instance` | [instAlgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instalgebra--ed626db518bedfcaeae5f37e.md) | 133 | `declaration-track:ed626db518bedfcaeae5f37ef3929faee284b8ec472c21fbe1048834c50eddfd` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--2836368f7ef0b6e267d2495d.md) | 136 | `declaration-track:2836368f7ef0b6e267d2495d6acaa769385796743a46d68612d9d460a7e4b814` |
| 19 | `instance` | [instGroupWithZero](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instgroupwithzero--35be901aecf5125b1d2294be.md) | 140 | `declaration-track:35be901aecf5125b1d2294be71e012012a20e467fad516c2b664055e2115db5a` |
| 20 | `instance` | [instField](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instfield--474b57331473d92c7d0ad1a1.md) | 143 | `declaration-track:474b57331473d92c7d0ad1a1fb5475ccd6892d7019fb747f9c6991dbebbfb51a` |
| 21 | `theorem` | [Monics.map_eq_prod](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/monics-map-eq-prod--76dd8be5252d24a1785a9f49.md) | 158 | `result-track:76dd8be5252d24a1785a9f49fda8ff70c18608c16d0d157f069021046d18a311` |
| 22 | `instance` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/isalgebraic--601ec860d50888c24f40b00c.md) | 167 | `declaration-track:601ec860d50888c24f40b00c668d0922579ab723f6172885866b2d6dab11dec8` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--1ec28595f89749eda0f18599.md) | 186 | `declaration-track:1ec28595f89749eda0f18599134f38a1e2551a9a1d0cfdde5dfcd5a071cd433f` |
| 24 | `instance` | [isAlgClosed](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/isalgclosed--f718be344ddac06f23975521.md) | 190 | `declaration-track:f718be344ddac06f2397552117bdde6da6358b470110c99228768472d6f1f17a` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--ae0c72c7650cc73491649658.md) | 192 | `declaration-track:ae0c72c7650cc7349164965819f657cb23a44cb6b1b65dfe18cf89334e7ab53e` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--0be154d1b9de8ef280e3c4b5.md) | 195 | `declaration-track:0be154d1b9de8ef280e3c4b59200689dea4ce2aa575a1f0c12c9b6ff853033f1` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--2c2e0884fbc03f89b1a3b491.md) | 198 | `declaration-track:2c2e0884fbc03f89b1a3b491cbaa5b0c548be7177d8ae9f7e8cd54ff1ab8fd51` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/instance--6e772f65852663f3383627c1.md) | 209 | `declaration-track:6e772f65852663f3383627c19e2e567dd608085d7814c5a7b2c01c956f7b671a` |
| 29 | `theorem` | [AdjoinSimple.normal_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/adjoinsimple-normal-algebraicclosure--0896c886136087217499fad5.md) | 212 | `result-track:0896c886136087217499fad5b9197bf6de80c38cf9bd3b9f02e222b34a088d1e` |
| 30 | `theorem` | [AdjoinDouble.normal_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/declarations/adjoindouble-normal-algebraicclosure--fd78131916f7a89f95c49c5b.md) | 217 | `result-track:fd78131916f7a89f95c49c5b5e930885e9777ff54c46de4f2b5049f61f3d09ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
