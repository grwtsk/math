# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad092db9c438b3103fc150e07bcebd6e379a4b91",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad092db9c438b3103fc150e07bcebd6e379a4b91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint--c9abd99ae6dbe296d01506b0.md) | 52 | `declaration-track:c9abd99ae6dbe296d01506b0c03facc62b602b176f320cc428e4491fbec0b2a5` |
| 2 | `theorem` | [AffineMap.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/affinemap-map-midpoint--ee96105cabf0fa40159097d6.md) | 59 | `result-track:ee96105cabf0fa40159097d6907d4c981cf7adade9f549c0a4cb3e4c3032b287` |
| 3 | `theorem` | [AffineEquiv.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/affineequiv-map-midpoint--45456f1f3db779beeca7e10a.md) | 65 | `result-track:45456f1f3db779beeca7e10abf2106864f4dd378253de6ca870f3bc1ac84fe55` |
| 4 | `theorem` | [AffineEquiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/affineequiv-pointreflection-midpoint-left--9ced026c9e78ebc07b85bdc5.md) | 70 | `result-track:9ced026c9e78ebc07b85bdc57d536338628698823ae1984a6bde059791224e34` |
| 5 | `theorem` | [Equiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/equiv-pointreflection-midpoint-left--5db7de8292925ec3d6cd842a.md) | 77 | `result-track:5db7de8292925ec3d6cd842a90b4fbd3ab343961dd522334ce17b9f42070fb42` |
| 6 | `theorem` | [midpoint_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-comm--a068e029132ca9ba2fd1c75d.md) | 82 | `result-track:a068e029132ca9ba2fd1c75ded0c26227900cb10a6ccf70c4a508465af7fae40` |
| 7 | `theorem` | [AffineEquiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/affineequiv-pointreflection-midpoint-right--5b3b255cc816ae2f49f18913.md) | 86 | `result-track:5b3b255cc816ae2f49f189134eb5a42265727b54ce93184e5658fef71ce2656e` |
| 8 | `theorem` | [Equiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/equiv-pointreflection-midpoint-right--6d106605294a7552f4b0b530.md) | 92 | `result-track:6d106605294a7552f4b0b53085797fd81ff91cb2098625b32525e4cb2636d2e3` |
| 9 | `theorem` | [midpoint_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-vsub-midpoint--d3c0c53c30d9ea08c51b576e.md) | 96 | `result-track:d3c0c53c30d9ea08c51b576effac4cee32845226bc26cf452339a0dfe20086f8` |
| 10 | `theorem` | [midpoint_vadd_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-vadd-midpoint--bd1e534c47298951f1a09202.md) | 101 | `result-track:bd1e534c47298951f1a09202b8bb139d833ef0ba1e49d1891a488bfc5b82702a` |
| 11 | `theorem` | [midpoint_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-eq-iff--8c849eaeecb92835ef502166.md) | 106 | `result-track:8c849eaeecb92835ef5021663e7279e3e9a2cff3f9efe9c3ee32f406fbc964a9` |
| 12 | `theorem` | [midpoint_pointReflection_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-pointreflection-left--e52d11417d041a8ea167582d.md) | 113 | `result-track:e52d11417d041a8ea167582d2a9fde07f803f68f1a68addbc2a49de5a35e92fc` |
| 13 | `theorem` | [midpoint_pointReflection_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-pointreflection-right--397d88975e14b2827ef4fc19.md) | 118 | `result-track:397d88975e14b2827ef4fc19fc5cf98dabb5ce7fbc487ca6029e3dcca5211d3a` |
| 14 | `theorem` | [midpoint_vsub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-vsub-left--75b66a3cb4fc5ab936cabd7c.md) | 123 | `result-track:75b66a3cb4fc5ab936cabd7cc4f4d441f0ff18f39873f3e0e253f286c2828ba6` |
| 15 | `theorem` | [midpoint_vsub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-vsub-right--5749bfd10180e7f8a7007382.md) | 128 | `result-track:5749bfd10180e7f8a70073821ac085437f854ecfee83e2232268b5c58243a4e0` |
| 16 | `theorem` | [left_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/left-vsub-midpoint--8085fff33796279a0a3553eb.md) | 133 | `result-track:8085fff33796279a0a3553eb2846d589b82417a29fd7a752fbe4e75cf85c35a2` |
| 17 | `theorem` | [right_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/right-vsub-midpoint--8a7225cb2d6f19083bec89b2.md) | 138 | `result-track:8a7225cb2d6f19083bec89b2dea3623ce47ec5bed88c85dee9dce1bb1ed62e05` |
| 18 | `theorem` | [midpoint_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-vsub--ae5edb23494504c53f319707.md) | 142 | `result-track:ae5edb23494504c53f3197079dc156933290e6a1dd19fd9fd62cb1d922dc5dce` |
| 19 | `theorem` | [vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/vsub-midpoint--76b4b560573453ef1c980d1a.md) | 149 | `result-track:76b4b560573453ef1c980d1a5466e03cc56b0a9734bbd78c76dfc955130ba967` |
| 20 | `theorem` | [midpoint_sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-sub-left--6a88639214af2863703f9f5d.md) | 156 | `result-track:6a88639214af2863703f9f5dc4ff2b2bd6c3580e59800aef9afe05311a42c009` |
| 21 | `theorem` | [midpoint_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-sub-right--d9f50f0b39cb9ce46a28f479.md) | 161 | `result-track:d9f50f0b39cb9ce46a28f4797f58eff67f6cc1d8937e669c48b22294ed2c9b41` |
| 22 | `theorem` | [left_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/left-sub-midpoint--d93ddbed15dfa4d79fa42a37.md) | 166 | `result-track:d93ddbed15dfa4d79fa42a37e83122519db1012c13f16a09cd0748ee3043d27c` |
| 23 | `theorem` | [right_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/right-sub-midpoint--da6d076feb6a7cecc17d98ab.md) | 171 | `result-track:da6d076feb6a7cecc17d98ab1e641a4902b56902ef2e0c896f692f6cd7eef066` |
| 24 | `theorem` | [midpoint_eq_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-eq-left-iff--cf7bcc08c82bf4b0da8096d4.md) | 178 | `result-track:cf7bcc08c82bf4b0da8096d48c23655befb3f61668730808041fe37c624c77e9` |
| 25 | `theorem` | [left_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/left-eq-midpoint-iff--9214e919acc03d311b15b4a6.md) | 183 | `result-track:9214e919acc03d311b15b4a65f877d1ac45cd2ae60812dc09d240ba2b6aee5e8` |
| 26 | `theorem` | [midpoint_eq_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-eq-right-iff--87f1346504fcaec7971d3618.md) | 188 | `result-track:87f1346504fcaec7971d36182692474a8501744b88507be6aaec4b76014f9558` |
| 27 | `theorem` | [right_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/right-eq-midpoint-iff--90ee6ca0edf90a63b649cd85.md) | 193 | `result-track:90ee6ca0edf90a63b649cd85ed11ad2f810eb9545640b670d73ee109e14cd14c` |
| 28 | `theorem` | [midpoint_eq_midpoint_iff_vsub_eq_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-eq-midpoint-iff-vsub-eq-vsub--aba465dd29dcbe4b131db807.md) | 197 | `result-track:aba465dd29dcbe4b131db8070fe6b7bb328e9348c5e77f2fac22c2b993263947` |
| 29 | `theorem` | [midpoint_eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-eq-iff--1cdaf774d35c9ecf698e0cfe.md) | 203 | `result-track:1cdaf774d35c9ecf698e0cfe810e22a94b567a1b2060efdeb47efe8e84607b87` |
| 30 | `theorem` | [midpoint_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-unique--629f26d7b5b949a08bd10fec.md) | 208 | `result-track:629f26d7b5b949a08bd10fec94d9ac9e6d14f6aa5aa3c328e34c057646e00cfb` |
| 31 | `theorem` | [midpoint_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-self--33a26f377f84c50ceeddb791.md) | 214 | `result-track:33a26f377f84c50ceeddb791d51f8239be9876b988bffb296e1f82c69c218df1` |
| 32 | `theorem` | [midpoint_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-add-self--8215a5aa8368c2c0214241b8.md) | 219 | `result-track:8215a5aa8368c2c0214241b895c404399404d9ff4b1c37e18c00e9b99d3daa30` |
| 33 | `theorem` | [midpoint_zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-zero-add--4edaaebb97febecedf7ac4d5.md) | 225 | `result-track:4edaaebb97febecedf7ac4d573014c299bd78c5c6484f05f764a8378a964a0e9` |
| 34 | `theorem` | [midpoint_eq_smul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-eq-smul-add--993be47dacfe902e9f7b1ccc.md) | 229 | `result-track:993be47dacfe902e9f7b1ccc9e588f37340249693adfd0c2c8b09509c41cf202` |
| 35 | `theorem` | [midpoint_self_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-self-neg--1bf8602b5448c2a215ca5b5a.md) | 235 | `result-track:1bf8602b5448c2a215ca5b5aa386dc3e1f3b82f6ac55b5c0e1f7fe87f045248b` |
| 36 | `theorem` | [midpoint_neg_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-neg-self--5e486cc61be72f17514e5ab1.md) | 240 | `result-track:5e486cc61be72f17514e5ab1bc4c8ee77e398c59f16aac211d652651b8872d99` |
| 37 | `theorem` | [midpoint_sub_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-sub-add--c7e5d1d0b41b06da487d56df.md) | 244 | `result-track:c7e5d1d0b41b06da487d56dfe50adf4ddb63bfdcd7807f2f99466abe48aabf52` |
| 38 | `theorem` | [midpoint_add_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/midpoint-add-sub--14cb005824d7baf770507a11.md) | 249 | `result-track:14cb005824d7baf770507a11102e07d7b2d09dde96d4bf16ff2918e6f15ba736` |
| 39 | `def` | [ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/ofmapmidpoint--e7304852c8a4a160a3e667cb.md) | 261 | `declaration-track:e7304852c8a4a160a3e667cb1d80838eca0f0425306c40bfb177f8eb5e5044cd` |
| 40 | `theorem` | [coe_ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantdb5c0a8ca971c3fec22e75884da69c0128d5d85a219a7f3a8acdf83fa45edb52.lean/declarations/coe-ofmapmidpoint--3e2f888282f264f58d592e3c.md) | 276 | `result-track:3e2f888282f264f58d592e3c6a6bda32f192bfe2515b6d53704c8d3c74294907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
