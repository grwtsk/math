# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe80e119efa8005fd9c96f26ec6b401224da47e3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe80e119efa8005fd9c96f26ec6b401224da47e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Bicategory.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [leftZigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftzigzag--b5b89301efc0a8fec85f3f0b.md) | 57 | `declaration-track:b5b89301efc0a8fec85f3f0b5f417d54126c66a8b35b719b5dfdd863fe99cc19` |
| 2 | `abbrev` | [rightZigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightzigzag--95d695f22ab1900045bd0933.md) | 69 | `declaration-track:95d695f22ab1900045bd09338d20b44276ffb70212289f955c5f5284b0ce765e` |
| 3 | `theorem` | [rightZigzag_idempotent_of_left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightzigzag-idempotent-of-left-triangle--79a87c477fd45dca10d839d5.md) | 72 | `result-track:79a87c477fd45dca10d839d532788889a6f13a8e21e1e16586aa933094ad2c2c` |
| 4 | `structure` | [Adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/adjunction--cd6200d4710e034d219187c7.md) | 87 | `declaration-track:cd6200d4710e034d219187c709684b8b109371d740530651d634d932fdb49025` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/id--0981a17027cb13ca4085340c.md) | 104 | `declaration-track:0981a17027cb13ca4085340cef6032df1890f1217171f2ddd658c7423451af9b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/instance--db957e95550d3933b335c9e2.md) | 110 | `declaration-track:db957e95550d3933b335c9e24fd76c1baf7147c62eb32d7c84241fdc5c39c17c` |
| 7 | `def` | [compUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/compunit--4de44a2a3b66b3eb9b707c93.md) | 119 | `declaration-track:4de44a2a3b66b3eb9b707c930892486ef7965861fcf57e7608e08fec885a5779` |
| 8 | `def` | [compCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/compcounit--e075d4520e68b7407162e88e.md) | 124 | `declaration-track:e075d4520e68b7407162e88e1cbede0436d9f8fd2b2a72eed680e9f5d3135699` |
| 9 | `theorem` | [comp_left_triangle_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/comp-left-triangle-aux--6ffdd33a3bd421e073d4fe34.md) | 127 | `result-track:6ffdd33a3bd421e073d4fe34ef9a4626a0c4cc8ddfe87932e86b730fa4f118ec` |
| 10 | `theorem` | [comp_right_triangle_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/comp-right-triangle-aux--c64b159558ebec9e7f250cd3.md) | 142 | `result-track:c64b159558ebec9e7f250cd30c8813e5c947a2e9f5c26c3fa6000fe383444c50` |
| 11 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/comp--4df44c79f24347d0966795c3.md) | 159 | `declaration-track:4df44c79f24347d0966795c38e776d24e58b1eb44af7862560c6f3933f37a0f7` |
| 12 | `abbrev` | [leftZigzagIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftzigzagiso--4de96467b7efa2f8d56f1ab6.md) | 174 | `declaration-track:4de96467b7efa2f8d56f1ab67aee34bb87ce601484dd93e667359cdf5c454f1a` |
| 13 | `abbrev` | [rightZigzagIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightzigzagiso--8460d4d5c907a4d0e4bd5fca.md) | 178 | `declaration-track:8460d4d5c907a4d0e4bd5fca2f545a4ed36edc4666612f759d5a609bc040d2d5` |
| 14 | `theorem` | [leftZigzagIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftzigzagiso-hom--becf96c107967dd902f2d9c5.md) | 182 | `result-track:becf96c107967dd902f2d9c58c48756594a8142b5d1e199015538e18330ef9ad` |
| 15 | `theorem` | [rightZigzagIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightzigzagiso-hom--e3446c270e3be980ccd3ca04.md) | 186 | `result-track:e3446c270e3be980ccd3ca04d3b527aa15c73680d45778110c8be1932c0b6100` |
| 16 | `theorem` | [leftZigzagIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftzigzagiso-inv--ab7fbc6ab04051ca1481a2c8.md) | 190 | `result-track:ab7fbc6ab04051ca1481a2c8fa5d199653003fc8353d8074b024e87b197f5ab4` |
| 17 | `theorem` | [rightZigzagIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightzigzagiso-inv--5dbe1e3baf9f65bceaa8d93e.md) | 194 | `result-track:5dbe1e3baf9f65bceaa8d93e3bbc9ec7bb60cd0ff27761deda0bb6e7f25d9070` |
| 18 | `theorem` | [leftZigzagIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftzigzagiso-symm--ed08051a3e8c81350df96a45.md) | 198 | `result-track:ed08051a3e8c81350df96a4561f778a69d248912d90ff19c7eb4def1e4ec7a59` |
| 19 | `theorem` | [rightZigzagIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightzigzagiso-symm--f01a60dbd42678ec41bf6097.md) | 202 | `result-track:f01a60dbd42678ec41bf6097b272eb0cc64ed7aca841f496ca96926224631967` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/instance--e0fb04dbfab2723e8ded38d0.md) | 205 | `declaration-track:e0fb04dbfab2723e8ded38d02feae3c56d4158e03299470486115cd6cb5e22d1` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/instance--aece5704a0bafaedd0fc15ae.md) | 207 | `declaration-track:aece5704a0bafaedd0fc15aeaa05447f2b22778c826c07e4213816535e8d01c1` |
| 22 | `theorem` | [right_triangle_of_left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/right-triangle-of-left-triangle--79fca16b7df6f4d2c2c21631.md) | 209 | `result-track:79fca16b7df6f4d2c2c216319e9d45c6ed3d4288ef6e17314226564d136c4d63` |
| 23 | `def` | [adjointifyCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/adjointifycounit--89e563920db4f8eaf37375be.md) | 218 | `declaration-track:89e563920db4f8eaf37375bed046b1a7a51a814b48c0725841d48732fe7c2fca` |
| 24 | `theorem` | [adjointifyCounit_left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/adjointifycounit-left-triangle--0c624571296bda27a8b3df9d.md) | 221 | `result-track:0c624571296bda27a8b3df9d5fb92748e05c9a5662048946f0a38a4d21c62d80` |
| 25 | `structure` | [Equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/equivalence--7f10c58b7da1eff523c06e1f.md) | 239 | `declaration-track:7f10c58b7da1eff523c06e1f653e4f0889a4e66c5af162db5297c65ed623cafd` |
| 26 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/id--108504d1a5b91d777d70e814.md) | 256 | `declaration-track:108504d1a5b91d777d70e814093d2cd88d57bbac61f6ebd592672d0036eafa0e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/instance--1025032933db60eb14c0b0f3.md) | 258 | `declaration-track:1025032933db60eb14c0b0f3241a5b50dd8479da33c3bd7d65a778f3a28dc36b` |
| 28 | `theorem` | [left_triangle_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/left-triangle-hom--f39aa2dd4be9a970a8632795.md) | 260 | `result-track:f39aa2dd4be9a970a863279556e8bf41572fdb518b08b6105b309cf81bb5229a` |
| 29 | `theorem` | [right_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/right-triangle--6bf85849812747a5e2eb3a6f.md) | 264 | `result-track:6bf85849812747a5e2eb3a6f2e2a579fc2de624601799a1a716fce7b52a8dbd0` |
| 30 | `theorem` | [right_triangle_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/right-triangle-hom--ec0b21a3be29b0f77399c627.md) | 268 | `result-track:ec0b21a3be29b0f77399c6270e07f5c240b8f67e0e55d8c9c03f0ae55837c4bc` |
| 31 | `def` | [mkOfAdjointifyCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/mkofadjointifycounit--6f06c0546c3b61450a310ca9.md) | 273 | `declaration-track:6f06c0546c3b61450a310ca98be6f56498ee4d23ac1e937fcf8ea704467bc492` |
| 32 | `structure` | [RightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightadjoint--36b3e51c06816897cb1cf313.md) | 288 | `declaration-track:36b3e51c06816897cb1cf313e30c98d03b09e409eff3c24c8ee350a94bfff9eb` |
| 33 | `class` | [IsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/isleftadjoint--76ba21a0e30d19dfacc3695f.md) | 295 | `declaration-track:76ba21a0e30d19dfacc3695f978ab4d2e3bbb83878c537db2e349e0fc1fd1b9d` |
| 34 | `theorem` | [IsLeftAdjoint.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/isleftadjoint-mk--ab7d2b0c96b8c58e208f9834.md) | 298 | `result-track:ab7d2b0c96b8c58e208f98348f8d2d85a8bfa3ab914edd9ba5646f3d36c9038c` |
| 35 | `def` | [getRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/getrightadjoint--7fa1af07a9406ce94323d2ce.md) | 302 | `declaration-track:7fa1af07a9406ce94323d2cea3adb0d75db6bfd4e6435caa489d52ddfdb6ec9b` |
| 36 | `def` | [rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/rightadjoint--30fdbeac5c4c95711043acff.md) | 306 | `declaration-track:30fdbeac5c4c95711043acffbf8e7fbdec213641e9f56f9eb0895d06b5476785` |
| 37 | `def` | [Adjunction.ofIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/adjunction-ofisleftadjoint--0e9e9bd4f342750af75d5ae8.md) | 310 | `declaration-track:0e9e9bd4f342750af75d5ae87d298db85030f06414646f4eac889b973d061d50` |
| 38 | `structure` | [LeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftadjoint--b6038a729bc680df5ff24cf0.md) | 314 | `declaration-track:b6038a729bc680df5ff24cf0cdd85e365cf88e4d5a99f9124c8b922aaf56116f` |
| 39 | `class` | [IsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/isrightadjoint--b7f5c8e2b04f7baf47d2c237.md) | 321 | `declaration-track:b7f5c8e2b04f7baf47d2c2370240016d3aac05cdfcae68d2de66acc1c695ef94` |
| 40 | `theorem` | [IsRightAdjoint.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/isrightadjoint-mk--aaf2ca2b1777ff8b4eb900d6.md) | 324 | `result-track:aaf2ca2b1777ff8b4eb900d62d36c9225811586c23e8ed8546d1edfc630f3faa` |
| 41 | `def` | [getLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/getleftadjoint--365e6e805615843962da8979.md) | 328 | `declaration-track:365e6e805615843962da8979bc0fbbb2da97510da27633183caabd1cd73170ac` |
| 42 | `def` | [leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/leftadjoint--ec2fe45110cce678e1703ba3.md) | 332 | `declaration-track:ec2fe45110cce678e1703ba3b45b5d2c002ee63e90804e124faf14fd5873456d` |
| 43 | `def` | [Adjunction.ofIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/declarations/adjunction-ofisrightadjoint--2128cf8e7f2d11b7107d1476.md) | 336 | `declaration-track:2128cf8e7f2d11b7107d147646b36fd4184cf96f1e533c71080e5e1499085098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
