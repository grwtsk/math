# Verification target: GRWTSK.Algebra.Opposite.Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eafe644393ede0b9a2fe614f7f3eb862517946e7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eafe644393ede0b9a2fe614f7f3eb862517946e7`.

Source path: `GRWTSK/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAlgebra](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/instalgebra--d3759e039fe57dbdf83b1abe.md) | 48 | `declaration-track:d3759e039fe57dbdf83b1abeb0901af43f573200f2ce9207ec3a61e53b588158` |
| 2 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/algebramap-apply--eac8d8d87d345a7742b955b1.md) | 57 | `result-track:eac8d8d87d345a7742b955b1ee273236d4d3ffc9632b78cb6e32bec9ddfb4626` |
| 3 | `def` | [opOp](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/opop--802f86f4e38418885c614e80.md) | 67 | `declaration-track:802f86f4e38418885c614e80b03f2fe5a6c236ee5ff7738e3cfa35d6f043c2b4` |
| 4 | `theorem` | [toRingEquiv_opOp](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringequiv-opop--22a9e88841099ff72d503394.md) | 71 | `result-track:22a9e88841099ff72d503394614a762c9346b67138f0174d733927446e02a43c` |
| 5 | `def` | [fromOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/fromopposite--040b0aee298493de37dfa0d6.md) | 81 | `declaration-track:040b0aee298493de37dfa0d6735b031afaafa06c83a8f693590ee22335d9ca22` |
| 6 | `theorem` | [toLinearMap_fromOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/tolinearmap-fromopposite--9ce682147767485828d45c50.md) | 87 | `result-track:9ce682147767485828d45c5046457991b606ef8b103c207b9639b96da9f2956a` |
| 7 | `theorem` | [toRingHom_fromOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringhom-fromopposite--07e0b6af74d10e6a63254681.md) | 92 | `result-track:07e0b6af74d10e6a632546819234bce50598d9bbae43c7c5e03fedce7de7bee4` |
| 8 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toopposite--f528e39804bf977072e5e142.md) | 100 | `declaration-track:f528e39804bf977072e5e142d40165e664fe2c300008929882866d94890b3186` |
| 9 | `theorem` | [toLinearMap_toOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/tolinearmap-toopposite--e99f13693395b72a3e6cbfd2.md) | 106 | `result-track:e99f13693395b72a3e6cbfd21a75c6d8ede37c9241ab85de15da41ea1d8b6357` |
| 10 | `theorem` | [toRingHom_toOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringhom-toopposite--baaf1b6dedca8429f0eefa18.md) | 111 | `result-track:baaf1b6dedca8429f0eefa187c8ed33279e8b7f1783662edd300bccadc1d72c2` |
| 11 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/op--35c09ff7434943d0e828aed6.md) | 118 | `declaration-track:35c09ff7434943d0e828aed60002cb6bc8ea81e089ed864b43210474866fc152` |
| 12 | `theorem` | [toRingHom_op](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringhom-op--71ea693f393b4ad3b8a14743.md) | 124 | `result-track:71ea693f393b4ad3b8a147432d0397baf40a10a9d71e57f694a71fd3a24454ed` |
| 13 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/unop--96dda3ad6ce1908bacba3ad6.md) | 128 | `declaration-track:96dda3ad6ce1908bacba3ad6041abac7f62f5d447bbe8eef0fb6efeb089e3cf0` |
| 14 | `theorem` | [toRingHom_unop](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringhom-unop--3ed7c8458b19ff77ecca4206.md) | 130 | `result-track:3ed7c8458b19ff77ecca42063b28f1bdc0e71087e3d3b7f8b45539c45f5e8e19` |
| 15 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/opcomm--85c9ae199302917eba879902.md) | 135 | `declaration-track:85c9ae199302917eba879902a41552859fdbb7231f236e30f099c34d211fe1b7` |
| 16 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/op--25b098240c84279d90c2d5b3.md) | 145 | `declaration-track:25b098240c84279d90c2d5b32cdd8ab449e356b612a9e0114774987eb42b23c0` |
| 17 | `theorem` | [toAlgHom_op](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toalghom-op--202ca6ade840b4e468629619.md) | 155 | `result-track:202ca6ade840b4e46862961958cea571f00e6c43ee1f963b936fd5945987fb20` |
| 18 | `theorem` | [toRingEquiv_op](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringequiv-op--589bb178264d24fae86f532c.md) | 159 | `result-track:589bb178264d24fae86f532c285e0a6bfe61b014ab575c675e576c6919a06036` |
| 19 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/unop--4fb8aa1de204205cd18981eb.md) | 164 | `declaration-track:4fb8aa1de204205cd18981eb685670a9fb9f05aba401fdf62c09e5c59281cce9` |
| 20 | `theorem` | [toAlgHom_unop](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toalghom-unop--36f74acaf46dfc4c8e1c983f.md) | 166 | `result-track:36f74acaf46dfc4c8e1c983f653dbf75133b8ac38b0abae875351a4dc635278d` |
| 21 | `theorem` | [toRingEquiv_unop](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringequiv-unop--8c987bee153afee35aa92d10.md) | 169 | `result-track:8c987bee153afee35aa92d101f11e101349fe11b7015c5ac9f5aa6dcc7acbb26` |
| 22 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/opcomm--3535b64ed030feceff0c67c4.md) | 175 | `declaration-track:3535b64ed030feceff0c67c4a40e09ab95757c23a28fa0febc195ae76afa5633` |
| 23 | `def` | [moduleEndSelf](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/moduleendself--512cc9a27f2f6dd8392300c3.md) | 182 | `declaration-track:512cc9a27f2f6dd8392300c3c499c0135567afd8dd2c67a703c978ae85783aa8` |
| 24 | `def` | [moduleEndSelfOp](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/moduleendselfop--38c555b6a231fb6fafb1c7a1.md) | 188 | `declaration-track:38c555b6a231fb6fafb1c7a131179abd40ac4ebf8062b06e8b04b8970cf5c1c2` |
| 25 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toopposite--38f2492ebacf5b3af988a7d4.md) | 203 | `declaration-track:38f2492ebacf5b3af988a7d49ae8cd006169651e779f59e5467725c250336e30` |
| 26 | `lemma` | [toRingEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/toringequiv-toopposite--9755593e8c80f50fd4651a01.md) | 207 | `result-track:9755593e8c80f50fd4651a01d72aaf4198894f637f8f16994bb739814b51dc16` |
| 27 | `lemma` | [toLinearEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variant0c96695633c7652e7701e928b99d884c7cb92d5e9acbac0014b0418a751a29eb.lean/declarations/tolinearequiv-toopposite--981f5c546dfe9453823dab37.md) | 208 | `result-track:981f5c546dfe9453823dab37d3430e4f3ba502c8d409ef8e6c88c93b13d80a44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
