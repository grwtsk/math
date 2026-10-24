# Verification target: GRWTSK.Algebra.LinearAlgebra.Linear.Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81ce9dfd398bccea98a343c5e1cd55f89e7e6653",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81ce9dfd398bccea98a343c5e1cd55f89e7e6653`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Weights.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearWeights](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/linearweights--c76285514382cab13d5bb06a.md) | 59 | `declaration-track:c76285514382cab13d5bb06a90fc05718d1c050c9ecf40fe51c94652f2f010cb` |
| 2 | `def` | [toLinear](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/tolinear--1684ad632984972c74d0035c.md) | 70 | `declaration-track:1684ad632984972c74d0035c0bc234fbdbdd0920aaec7bc453d4bea982a83129` |
| 3 | `instance` | [instCoeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instcoelinearmap--7ab33119921095c9dc8ddb58.md) | 75 | `declaration-track:7ab33119921095c9dc8ddb587bd8c39ee77d1707365a7ea36117093e02d3fedf` |
| 4 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instlinearmapclass--99d095c3a991e49297c714b1.md) | 78 | `declaration-track:99d095c3a991e49297c714b18c992ea004f0792c8f8b7de2bd9fa7c72f31a4cf` |
| 5 | `lemma` | [apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/apply-lie--4fbf749e172d07761d325260.md) | 85 | `result-track:4fbf749e172d07761d325260ca1275d8b70c3d866b74bc6577f5421e363f3c3c` |
| 6 | `lemma` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/coe-coe--c63d55a104f1e994f619d879.md) | 89 | `result-track:c63d55a104f1e994f619d879e199656c98ca4cab360289fc8d21698644e8ba78` |
| 7 | `lemma` | [coe_toLinear_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/coe-tolinear-eq-zero-iff--a428e5def57c50726517c825.md) | 91 | `result-track:a428e5def57c50726517c8256d400605dcd3efd9398d763cbb5fc9b01af2f9e3` |
| 8 | `lemma` | [coe_toLinear_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/coe-tolinear-ne-zero-iff--2a2f1252b5d67b789b4b8aed.md) | 94 | `result-track:2a2f1252b5d67b789b4b8aedc2f771c012f9ae028954a22d10ca3dfdc17ee5fc` |
| 9 | `abbrev` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/ker--25177d01e08d359dc4863082.md) | 97 | `declaration-track:25177d01e08d359dc48630829abe5f10f254dffdd7f8b72436d3d5cb323c5c45` |
| 10 | `instance` | [instLinearWeightsOfIsLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instlinearweightsofislieabelian--53274bb4762289fac206c8f3.md) | 102 | `declaration-track:53274bb4762289fac206c8f373cb1c137bbc49ed06cf51ac1332ec78ae7ac494` |
| 11 | `lemma` | [trace_comp_toEnd_genWeightSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/trace-comp-toend-genweightspace-eq--b6fd7dbfd00ccd5e2b04ae79.md) | 128 | `result-track:b6fd7dbfd00ccd5e2b04ae7931202cd06e8096e22f0e98095856f4ad59df66d0` |
| 12 | `lemma` | [zero_lt_finrank_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/zero-lt-finrank-genweightspace--8d7dcb4a97d1dab940086e8e.md) | 140 | `result-track:8d7dcb4a97d1dab940086e8e11641cd29cd67f04d9a735437980967d26dffad0` |
| 13 | `instance` | [instLinearWeightsOfCharZero](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instlinearweightsofcharzero--5355f1f08faecede36685a13.md) | 147 | `declaration-track:5355f1f08faecede36685a13e10939755ddbe290f6ec73e7793aedee3091ad5c` |
| 14 | `def` | [shiftedGenWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/shiftedgenweightspace--40f64d34a16405ac52e42b2d.md) | 166 | `declaration-track:40f64d34a16405ac52e42b2dae27901edcc710cafc0bfcde0d207781663f3783` |
| 15 | `lemma` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/aux--bb5ca12ef0f748e04997f234.md) | 170 | `result-track:bb5ca12ef0f748e04997f234b65f6f3b69dbac19c43261ef0839997766c898c3` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instance--bf2ee641d4276f24f6e9df1d.md) | 175 | `declaration-track:bf2ee641d4276f24f6e9df1d193f242097eb3cf44d24cd1653611d718ce3e7cc` |
| 17 | `lemma` | [coe_lie_shiftedGenWeightSpace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/coe-lie-shiftedgenweightspace-apply--5092bbb6cf13d6f82d8c054e.md) | 191 | `result-track:5092bbb6cf13d6f82d8c054e26e6641104976c4aa36d8112b04811429a262de6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instance--68b3ef82b80d3739f37fa659.md) | 196 | `declaration-track:68b3ef82b80d3739f37fa6599ffa027daed3919ee2bb134c41cdfe456f8e2dff` |
| 19 | `def` | [shift](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/shift--4236a04a58adec04c60c2330.md) | 214 | `declaration-track:4236a04a58adec04c60c2330065380492f02d622da59e88aaa6d858c612cd6c2` |
| 20 | `lemma` | [toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/toend-eq--499e9a051ff63bca41cbdc8b.md) | 216 | `result-track:499e9a051ff63bca41cbdc8b7b8f40897fbc042447559c9ec04676cce9c46527` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/instance--0a6e94e85c98f4c8518ba1db.md) | 230 | `declaration-track:0a6e94e85c98f4c8518ba1db9fb9b7b7979c231b5ee21744c1cb962fe188f7f9` |
| 22 | `lemma` | [exists_forall_lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/exists-forall-lie-eq-smul--412df88aa14ed4d44348845b.md) | 239 | `result-track:412df88aa14ed4d44348845b9503eeca168d8b69a666775701c768916e64789c` |
| 23 | `lemma` | [exists_nontrivial_weightSpace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/declarations/exists-nontrivial-weightspace-of-isnilpotent--52c72f5cd8c0738e2cc32c64.md) | 254 | `result-track:52c72f5cd8c0738e2cc32c64a1dc5771a7e9752445f5000710d9a42d46a8417d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
