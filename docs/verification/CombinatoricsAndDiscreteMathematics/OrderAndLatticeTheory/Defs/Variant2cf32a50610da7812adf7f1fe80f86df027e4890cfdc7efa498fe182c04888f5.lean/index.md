# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e4cde0eda4a9ed3cbe8450e66318f8908a9c9b8",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e4cde0eda4a9ed3cbe8450e66318f8908a9c9b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Positivity.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorSemiring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floorsemiring--039dc3a3700d3b2eb0f3cc2e.md) | 56 | `declaration-track:039dc3a3700d3b2eb0f3cc2e172a42ecf94c30bde8d2cd11c646bf0d26cc79eb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/instance--ed9fb715b99a1b1773b6cfbe.md) | 69 | `declaration-track:ed9fb715b99a1b1773b6cfbeac64f65bc5dae3d2f7f4d0ad01897aac268291fc` |
| 3 | `def` | [floor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor--9482dcc9adef4c9309a1bcda.md) | 85 | `declaration-track:9482dcc9adef4c9309a1bcdadd67cb511cd2a11661957489988b02e912e9dd57` |
| 4 | `def` | [ceil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil--b934efa7a5238764f7bd32a2.md) | 89 | `declaration-track:b934efa7a5238764f7bd32a2ab6fcd757b917594bef1e1dd5ad267a0323d7bea` |
| 5 | `theorem` | [floor_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor-nat--2ecaeff29947974e76420e38.md) | 93 | `result-track:2ecaeff29947974e76420e38944033281079361abe61ae3b217643fc8a0ef23d` |
| 6 | `theorem` | [ceil_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-nat--95e8c99d981b207e6c854bda.md) | 97 | `result-track:95e8c99d981b207e6c854bda33f90fe1a09b355bb7891938329fdea45b0ae908` |
| 7 | `theorem` | [le_floor_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/le-floor-iff--ae30aef951a2d8790d985dd9.md) | 106 | `result-track:ae30aef951a2d8790d985dd99fc2b1c38f5b31df4ff20b5009ce1d6e08a9aae6` |
| 8 | `theorem` | [le_floor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/le-floor--a85accb80186ad637c465566.md) | 109 | `result-track:a85accb80186ad637c46556619278e948f173ee1fe0a248aea18157b6eea15b3` |
| 9 | `theorem` | [gc_ceil_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/gc-ceil-coe--393acc1a730a5bb2d300f86e.md) | 112 | `result-track:393acc1a730a5bb2d300f86ee10bea808c88eed0550783dbf74a669165f25888` |
| 10 | `theorem` | [ceil_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-le--86626cbce062b0038c15618b.md) | 116 | `result-track:86626cbce062b0038c15618be797dec5d0f94cb7ee0fcd8edad8f814757e3260` |
| 11 | `theorem` | [lt_ceil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/lt-ceil--91e9d949f2a7bcc87cf000e8.md) | 125 | `result-track:91e9d949f2a7bcc87cf000e8d7abca3609e11b4e6ef0144e9bfe18692f7e1950` |
| 12 | `theorem` | [ceil_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-pos--4071d77669e19eb6a7fcf167.md) | 129 | `result-track:4071d77669e19eb6a7fcf16791ed4878264414ee6841835b24715f8c785c0655` |
| 13 | `class` | [FloorRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floorring--53d39a0736b6d8a22e9b037f.md) | 140 | `declaration-track:53d39a0736b6d8a22e9b037fdc877216e924185d15cb0385c60fcecf53a632a5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/instance--640fd4dc78eefe1927a84078.md) | 150 | `declaration-track:640fd4dc78eefe1927a84078929a2295619eee2a5c54de8f6539d4b63c3a6553` |
| 15 | `def` | [FloorRing.ofFloor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floorring-offloor--58c4c630df63b91b0369d1a0.md) | 159 | `declaration-track:58c4c630df63b91b0369d1a01994a3870a3868dd381ad1dfd5912338236c7937` |
| 16 | `def` | [FloorRing.ofCeil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floorring-ofceil--8e1cdb7261bb1cf19affeac7.md) | 167 | `declaration-track:8e1cdb7261bb1cf19affeac7b1963a543f16c65ed6cf9bf89c667c03103db9b7` |
| 17 | `def` | [floor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor--886a970bc0121c6b5622c582.md) | 179 | `declaration-track:886a970bc0121c6b5622c582e50ca79f9e7676f526980c7af5301081feb62583` |
| 18 | `def` | [ceil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil--b04189cc8237a1f7ccb46a65.md) | 183 | `declaration-track:b04189cc8237a1f7ccb46a651ae71cd4e5a03b4c5cb55df5c2003b3325f5e006` |
| 19 | `def` | [fract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/fract--64d831832c4d6c689de7a0c4.md) | 187 | `declaration-track:64d831832c4d6c689de7a0c4b1e628820978a65292e227f49b49b22ded0980be` |
| 20 | `theorem` | [floor_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor-int--b2fa0de124a7a1aec4207d4e.md) | 191 | `result-track:b2fa0de124a7a1aec4207d4e6da668e6f526eae2768b19511dadbe5124e41421` |
| 21 | `theorem` | [ceil_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-int--3a35377c1ae143317a9f1f79.md) | 195 | `result-track:3a35377c1ae143317a9f1f796cec1fd1aeedc4e85855e0ce8c36d0da1f372921` |
| 22 | `theorem` | [fract_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/fract-int--3970d44f54d65189eb0b60fc.md) | 199 | `result-track:3970d44f54d65189eb0b60fc9f1906e943badd72708133c9ea5da5a9ac2e66ef` |
| 23 | `theorem` | [floorRing_floor_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floorring-floor-eq--80bf5567242bf1e76b1f63e5.md) | 211 | `result-track:80bf5567242bf1e76b1f63e5c45c06f0829e8e3cc7fffdf18242df471cdf3c77` |
| 24 | `theorem` | [floorRing_ceil_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floorring-ceil-eq--b44fb8d98fc44cc534629466.md) | 215 | `result-track:b44fb8d98fc44cc534629466fbb156e5b7895b34a91fe708386dec39d0dbb523` |
| 25 | `theorem` | [gc_coe_floor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/gc-coe-floor--fc84871a42c8b5787e89a078.md) | 220 | `result-track:fc84871a42c8b5787e89a078a029487db6a9f351fa807a9cbc60567f82616f17` |
| 26 | `theorem` | [le_floor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/le-floor--29ae7e1c7ca7d9c38399dce7.md) | 223 | `result-track:29ae7e1c7ca7d9c38399dce756b758f3405e0755cbd5f98aaa66d7e075689829` |
| 27 | `theorem` | [floor_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor-lt--594b0886941948be49d8d38c.md) | 226 | `result-track:594b0886941948be49d8d38cb2509f0fa6472c61e72b8ac9585a4ebadb3e5782` |
| 28 | `theorem` | [floor_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor-le--5d77ed6b42166884e73cc06d.md) | 230 | `result-track:5d77ed6b42166884e73cc06d71afb1b217715e529cd7ae6d87b9e5fb47787815` |
| 29 | `theorem` | [floor_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor-nonneg--bd2bf692f5ac19866b97824f.md) | 233 | `result-track:bd2bf692f5ac19866b97824f35cbad0d0246f5a7d44f8d340195765d3229eab3` |
| 30 | `theorem` | [floor_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/floor-nonpos--3319c995f893bc49f519e413.md) | 236 | `result-track:3319c995f893bc49f519e413c36cc279502471b833b329504a5d2ab4b8b84f6a` |
| 31 | `theorem` | [gc_ceil_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/gc-ceil-coe--025c7933a58663634a57ebeb.md) | 242 | `result-track:025c7933a58663634a57ebeb56f0f94ffd5a74811792cc2c43a2512e8a13d4a8` |
| 32 | `theorem` | [ceil_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-le--5932bacc0de3a7f5b3bfac50.md) | 245 | `result-track:5932bacc0de3a7f5b3bfac503eb96b7fbd6a825c17e89ce313b67d008b1fb165` |
| 33 | `theorem` | [lt_ceil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/lt-ceil--63c04cf42a701b1a400e8eae.md) | 248 | `result-track:63c04cf42a701b1a400e8eae8149911ca3ecebbd3070774995bdd2720692da94` |
| 34 | `theorem` | [le_ceil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/le-ceil--6b874dff337f6a50488b2ddd.md) | 252 | `result-track:6b874dff337f6a50488b2ddddc2e1f11406079e7ac79a94fdc76807cd9619fd3` |
| 35 | `theorem` | [ceil_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-nonneg--346fb275a4fbaa198fea5f2e.md) | 256 | `result-track:346fb275a4fbaa198fea5f2e90bb8bd722797a6a86860b5967bebb42aed88b64` |
| 36 | `theorem` | [ceil_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/ceil-pos--24c9dd2c4ab8e0400cd46db5.md) | 259 | `result-track:24c9dd2c4ab8e0400cd46db522513f554af27d47a7f3ba8862bc6773710c8278` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/instance--5c388fa86c70f3b159fc0d39.md) | 271 | `declaration-track:5c388fa86c70f3b159fc0d39ac8005f101b3b38f58d9fc78f37447e8a564c556` |
| 38 | `theorem` | [Int.floor_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/int-floor-tonat--840e814cd44ee75eccc3f6d2.md) | 278 | `result-track:840e814cd44ee75eccc3f6d2853c3941217cc34fac1fc3323b362fcaf5c9bf09` |
| 39 | `theorem` | [Int.ceil_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/int-ceil-tonat--e9b0baba778220841cae095c.md) | 281 | `result-track:e9b0baba778220841cae095c22e08a907573d6491eafcb2cdc3eb4a06b292a60` |
| 40 | `theorem` | [Nat.floor_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/nat-floor-int--a5a56988d25eb0f73eebb316.md) | 285 | `result-track:a5a56988d25eb0f73eebb31603afbf1346f0ae1c32852fe68c5811df7ae4bbc5` |
| 41 | `theorem` | [Nat.ceil_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/nat-ceil-int--1d9120a460b0a8f110978e5f.md) | 289 | `result-track:1d9120a460b0a8f110978e5f6dc4c26a9d9d6be46663f4e5c40e0e55f1eac46d` |
| 42 | `theorem` | [int_floor_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/int-floor-nonneg--69f50ce6ea7f76d22af5b647.md) | 297 | `result-track:69f50ce6ea7f76d22af5b6478390000e93b844f7b4e5c37e73f05173f20b198c` |
| 43 | `theorem` | [int_floor_nonneg_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/int-floor-nonneg-of-pos--17867b4a3ca460d1a6c7e1e2.md) | 301 | `result-track:17867b4a3ca460d1a6c7e1e2a9033f1b10930d42344ce2013e1679c593d4735d` |
| 44 | `def` | [evalIntFloor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/evalintfloor--b618e6f3e1c0fef4b021d2a5.md) | 308 | `declaration-track:b618e6f3e1c0fef4b021d2a58c227932c198f281c63cdbc838e9f23c76d75fa8` |
| 45 | `theorem` | [nat_ceil_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/nat-ceil-pos--f6dbfe4127156d60dcab033c.md) | 321 | `result-track:f6dbfe4127156d60dcab033cb85c16f9b06aa29237699ed6790e448977168132` |
| 46 | `def` | [evalNatCeil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/evalnatceil--7537b695efcc21e2831b06a2.md) | 327 | `declaration-track:7537b695efcc21e2831b06a278905930cb55fcf5523bbc987eac2b9b680da3fa` |
| 47 | `theorem` | [int_ceil_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/int-ceil-pos--1b316a7ff91cedaa6c5db255.md) | 340 | `result-track:1b316a7ff91cedaa6c5db255242667aaa3a6d3e109f04e95b9c10458dea539e4` |
| 48 | `def` | [evalIntCeil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant2cf32a50610da7812adf7f1fe80f86df027e4890cfdc7efa498fe182c04888f5.lean/declarations/evalintceil--5ed99d92bae8b04ecd3f3e1d.md) | 345 | `declaration-track:5ed99d92bae8b04ecd3f3e1d91e3b74ba6086f675ed79010e6c0cc9bf0c11346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
