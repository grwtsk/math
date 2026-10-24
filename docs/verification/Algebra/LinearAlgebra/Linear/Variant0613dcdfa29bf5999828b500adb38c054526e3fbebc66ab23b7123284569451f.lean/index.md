# Verification target: GRWTSK.Algebra.LinearAlgebra.Linear.Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9debbac5b58f98a22e4e6d9b72a55bf62f1c3e5d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9debbac5b58f98a22e4e6d9b72a55bf62f1c3e5d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean.json)

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
| 1 | `class` | [LinearWeights](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/linearweights--5afc49da1b5001e58da077b4.md) | 61 | `declaration-track:5afc49da1b5001e58da077b44e41b5d2c28f5c7ed18fe77009546d338947a81d` |
| 2 | `def` | [toLinear](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/tolinear--c072151ffd2b3674e000e6e1.md) | 72 | `declaration-track:c072151ffd2b3674e000e6e19c15d01133c809597d9f1f8b50072a90a44fcb37` |
| 3 | `instance` | [instCoeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instcoelinearmap--85cd213abb246ae47bf78f05.md) | 77 | `declaration-track:85cd213abb246ae47bf78f056185eb0e762828960cd0d19a508b540819a71c9f` |
| 4 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instlinearmapclass--50430d80e8c5898ccfe9dec5.md) | 80 | `declaration-track:50430d80e8c5898ccfe9dec55beab729f24ac26f5b703b70487c74b11823ec8d` |
| 5 | `lemma` | [apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/apply-lie--ddafafafcdd7a984e3141b49.md) | 87 | `result-track:ddafafafcdd7a984e3141b492c39690e1d1c16442df92cd61896628c82411fac` |
| 6 | `lemma` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/coe-coe--d0eb64a51ddc5e61f46e4592.md) | 91 | `result-track:d0eb64a51ddc5e61f46e4592c6bda6b9dd356efb560e826080c93f20b2687a99` |
| 7 | `lemma` | [coe_toLinear_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/coe-tolinear-eq-zero-iff--22d6ce065ff58d796dfe0cd7.md) | 93 | `result-track:22d6ce065ff58d796dfe0cd7064425f9e7da5b9331c3caf4e070c43868e8c1ed` |
| 8 | `lemma` | [coe_toLinear_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/coe-tolinear-ne-zero-iff--8d6f13013eb07c71e64b6831.md) | 96 | `result-track:8d6f13013eb07c71e64b6831f4a66fe970db4e629834399d369483630d8bfe78` |
| 9 | `abbrev` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/ker--ade422c9b84d0c6f8704d862.md) | 99 | `declaration-track:ade422c9b84d0c6f8704d86213b242c3dd7c5945d6a752ca9e85a3d81169ee71` |
| 10 | `instance` | [instLinearWeightsOfIsLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instlinearweightsofislieabelian--5fd0afb86e2f67087298d04b.md) | 106 | `declaration-track:5fd0afb86e2f67087298d04b5bf8a45aacea9d901f71215d010a9b8d4731f71b` |
| 11 | `lemma` | [trace_comp_toEnd_genWeightSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/trace-comp-toend-genweightspace-eq--31a51ae5d0c1c878bc94b232.md) | 132 | `result-track:31a51ae5d0c1c878bc94b23288a7130a9dd5cebb02939a69272aa66bc710af0e` |
| 12 | `lemma` | [zero_lt_finrank_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/zero-lt-finrank-genweightspace--57368366c698b77085b934f5.md) | 139 | `result-track:57368366c698b77085b934f5a1eafde26701efdacfe445b8dec9402f08341613` |
| 13 | `instance` | [instLinearWeightsOfCharZero](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instlinearweightsofcharzero--7ed4f414932f70eb421018b0.md) | 146 | `declaration-track:7ed4f414932f70eb421018b0f9269daaa9edd5ff7469c5649da999ea8dd14db0` |
| 14 | `def` | [shiftedGenWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/shiftedgenweightspace--60639ea3d5fbcf29dc9f2eed.md) | 165 | `declaration-track:60639ea3d5fbcf29dc9f2eedc0fc5736d458acd7d9aab9c6a81d22b998cbe5cd` |
| 15 | `lemma` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/aux--a09ff97cc693e9ee1774f9ec.md) | 169 | `result-track:a09ff97cc693e9ee1774f9ec986f0bab5166515185cde9b10751c2e902157548` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instance--ddc16526f9a9c1f24b05ecf9.md) | 174 | `declaration-track:ddc16526f9a9c1f24b05ecf91dec9a3d0f67f80675b2cb0a366d254b91d15f58` |
| 17 | `lemma` | [coe_lie_shiftedGenWeightSpace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/coe-lie-shiftedgenweightspace-apply--f8df038d13b3b39996c6a8f3.md) | 190 | `result-track:f8df038d13b3b39996c6a8f39329acc5f3b9e4c68edb699495880ce4115d049c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instance--3d1540f4b8ba8b6b6bc5277f.md) | 195 | `declaration-track:3d1540f4b8ba8b6b6bc5277fac16389b1ab681806fc9bc3d67bdc7594f256bdd` |
| 19 | `def` | [shift](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/shift--d38cdddd1ff2696d3d156d15.md) | 213 | `declaration-track:d38cdddd1ff2696d3d156d15f330d95c859abdb9310298faacd7cb22c9d11379` |
| 20 | `lemma` | [toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/toend-eq--e877f66cfb318a7c2aa87046.md) | 215 | `result-track:e877f66cfb318a7c2aa8704683c7ec1a656297396fdeb631e27396a09c78c726` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/instance--9549fc2eabd57d0e628b6cb3.md) | 223 | `declaration-track:9549fc2eabd57d0e628b6cb32b3ce83e8451134dee8103a11f89e556c5fa606f` |
| 22 | `lemma` | [exists_forall_lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/exists-forall-lie-eq-smul--b2935c3d12093e6a48a85c4d.md) | 232 | `result-track:b2935c3d12093e6a48a85c4dca00e5e5da6e4d341683446b9929e6015ca91663` |
| 23 | `lemma` | [exists_nontrivial_weightSpace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant0613dcdfa29bf5999828b500adb38c054526e3fbebc66ab23b7123284569451f.lean/declarations/exists-nontrivial-weightspace-of-isnilpotent--7fb8061bdc36a07d237219b2.md) | 247 | `result-track:7fb8061bdc36a07d237219b22f0d32c237535bc96fdbfd608ec0bb6312ea4216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
