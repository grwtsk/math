# Verification target: GRWTSK.Algebra.LinearAlgebra.Equalizer.Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c98f2dc24f277c3d375f5b55fe886e09609e14b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c98f2dc24f277c3d375f5b55fe886e09609e14b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.Flat.ker_lTensor_eq](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/module-flat-ker-ltensor-eq--a6b7dd5db9ee9aad6513ba51.md) | 38 | `result-track:a6b7dd5db9ee9aad6513ba5118247b641142bc7c4fa2c2815e8c434fbff98952` |
| 2 | `lemma` | [Module.Flat.eqLocus_lTensor_eq](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/module-flat-eqlocus-ltensor-eq--c2dce8d50bd67234d9b565ec.md) | 44 | `result-track:c2dce8d50bd67234d9b565ece301e02c3cfb32d47b4271a93650f70b59b4d65f` |
| 3 | `def` | [LinearMap.tensorEqLocusBil](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocusbil--0ef133a9daf4d775ee59fb7c.md) | 52 | `declaration-track:0ef133a9daf4d775ee59fb7c8131557f23216543238a8db35129cfaf8618c3c9` |
| 4 | `def` | [LinearMap.tensorKerBil](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorkerbil--5e75d301c450e6c86ae254a5.md) | 68 | `declaration-track:5e75d301c450e6c86ae254a5b7f47c36313abc16730e603b721c5fe08d06df8b` |
| 5 | `def` | [LinearMap.tensorEqLocus](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocus--6b90aed599fce193b3a2b9ed.md) | 78 | `declaration-track:6b90aed599fce193b3a2b9edc243ff966ee33c6fb7f2387cefc1f532b99cd2d2` |
| 6 | `def` | [LinearMap.tensorKer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorker--bcf1c7be3d4dbdc636240ba7.md) | 83 | `declaration-track:bcf1c7be3d4dbdc636240ba79e8fcb6651fff3bf3ea993b94cd361539e07a167` |
| 7 | `lemma` | [LinearMap.tensorKer_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorker-tmul--81d8e14135d1c4389c368fa7.md) | 88 | `result-track:81d8e14135d1c4389c368fa7a477a614c93a5d88d83abd0ebcce053f8cee0218` |
| 8 | `lemma` | [LinearMap.tensorKer_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorker-coe--12690ba74928eaf89ef47a80.md) | 93 | `result-track:12690ba74928eaf89ef47a80de36280d11aff0e4d513d499ccecc3f126932422` |
| 9 | `lemma` | [LinearMap.tensorEqLocus_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocus-tmul--8a51f189bd4ee88aaa7a5f24.md) | 98 | `result-track:8a51f189bd4ee88aaa7a5f24ed7ef8f7d419eb2775d2685d62d9f099d9a10005` |
| 10 | `lemma` | [LinearMap.tensorEqLocus_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocus-coe--b35846996e2e725386b84740.md) | 103 | `result-track:b35846996e2e725386b8474084a7936d18c3f99418d43cb8c27078ae4f933e5c` |
| 11 | `def` | [LinearMap.tensorKerInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorkerinv--69951f56c673c8d3a40ae6f2.md) | 107 | `declaration-track:69951f56c673c8d3a40ae6f2ea8c795b2445f974db48da37b4219786732bacd0` |
| 12 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-ltensor-ker-subtype-tensorkerinv--79c0be564e57b1fcd5d57c89.md) | 115 | `result-track:79c0be564e57b1fcd5d57c89798c316e1b7c3fc0d3ef9c833098bdcdad200f38` |
| 13 | `def` | [LinearMap.tensorEqLocusInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocusinv--9a46851499a22d2a8b394c97.md) | 121 | `declaration-track:9a46851499a22d2a8b394c97e9eac3420632128c1476eabe3704f3feea2fe4a5` |
| 14 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensorEqLocusInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusinv--529af63b7fdc1780a10fbdd0.md) | 132 | `result-track:529af63b7fdc1780a10fbdd01bf387f8b9b2f74a052f7dc4b955226a640a1680` |
| 15 | `def` | [LinearMap.tensorKerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorkerequiv--feedc687be4169528d53058a.md) | 139 | `declaration-track:feedc687be4169528d53058a2251186aff5a00c2fb84b91e5ad081e3da25d3c2` |
| 16 | `lemma` | [LinearMap.tensorKerEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensorkerequiv-apply--3f24ee19d8d62a275a822dc3.md) | 150 | `result-track:3f24ee19d8d62a275a822dc33098718e04bb8925821204c1d6478e1fa827f2b8` |
| 17 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-ltensor-ker-subtype-tensorkerequiv-symm--4cd7e9441de049159cf78161.md) | 155 | `result-track:4cd7e9441de049159cf781615f1f9db09295b640bd5a5c2b7aeb27652f164547` |
| 18 | `def` | [LinearMap.tensorEqLocusEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocusequiv--b4015892d601953f8a6e38ed.md) | 162 | `declaration-track:b4015892d601953f8a6e38ed2517508d77e175c52f3c7d17683ea7e82bc5619e` |
| 19 | `lemma` | [LinearMap.tensorEqLocusEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-tensoreqlocusequiv-apply--977eeb60079548e61c8b7afc.md) | 175 | `result-track:977eeb60079548e61c8b7afcdbff7e29e17040de27ed20239646eadb3cf8e08b` |
| 20 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensoreqLocusEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusequiv-symm--f0118686acd5c6147da58e70.md) | 180 | `result-track:f0118686acd5c6147da58e70ca5392f43a7a0384e426ee6094445f0d51834905` |
| 21 | `def` | [AlgHom.tensorEqualizerAux](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-tensorequalizeraux--daa338d3c707132c3d3e30db.md) | 193 | `declaration-track:daa338d3c707132c3d3e30dbe3f4c8ab6d59cd29b697a3062f69d8e103d3d792` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/instance--a0ea7e4084fb4058021247a3.md) | 199 | `declaration-track:a0ea7e4084fb4058021247a377ecc12c461b2aa5dee08f8ef5e326e92dbe858e` |
| 23 | `lemma` | [AlgHom.coe_tensorEqualizerAux](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-coe-tensorequalizeraux--b84b4151a6f749b8bcd7a624.md) | 202 | `result-track:b84b4151a6f749b8bcd7a624bec7aa0eb7e4ff8f595e96a03456797e169b6994` |
| 24 | `lemma` | [AlgHom.tensorEqualizerAux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-tensorequalizeraux-mul--36d23cc8a9db518049a343ba.md) | 210 | `result-track:36d23cc8a9db518049a343ba540ceb3e68b79b76627eac2dfcd0d91a69a067e9` |
| 25 | `def` | [AlgHom.tensorEqualizer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-tensorequalizer--bfa41b4646787b5f24dd9455.md) | 219 | `declaration-track:bfa41b4646787b5f24dd9455df69346826c1b5ca746afc0ba322fcd2902cff15` |
| 26 | `lemma` | [AlgHom.coe_tensorEqualizer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-coe-tensorequalizer--67632f0378958ed6c0c6be91.md) | 227 | `result-track:67632f0378958ed6c0c6be915de37e13f98b46a2c2071465a7411abf3e2796f4` |
| 27 | `def` | [AlgHom.tensorEqualizerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-tensorequalizerequiv--4aec0b9e7e067f1eb04903d7.md) | 234 | `declaration-track:4aec0b9e7e067f1eb04903d7d8153d6fba3ae6dbd66aa79f2d445df684fcca57` |
| 28 | `lemma` | [AlgHom.tensorEqualizerEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/declarations/alghom-tensorequalizerequiv-apply--3b4cfa5bb2f427a32349acbb.md) | 242 | `result-track:3b4cfa5bb2f427a32349acbb15901669ac7c711c648745a0ba2c451587c7b0df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
