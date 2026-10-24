# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Monad.Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9516b1d70fd9b7299c321d0800b5ad983ee373",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9516b1d70fd9b7299c321d0800b5ad983ee373`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Rename` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind--6ca2c0b848af52459d50fef0.md) | 64 | `declaration-track:6ca2c0b848af52459d50fef0b09df8fa21ca9f71b256a973e18fe1947eb0843a` |
| 2 | `def` | [bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind--5eeea4b9381f853b29353218.md) | 75 | `declaration-track:5eeea4b9381f853b29353218b7057e56eb5c0ea588ae26569203599b259632fb` |
| 3 | `def` | [join₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/join--7cf3c383c7d0c8422adb8ecc.md) | 84 | `declaration-track:7cf3c383c7d0c8422adb8ecc2f463440f05944ff3a48ff75c145aaedad5ef0c7` |
| 4 | `def` | [join₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/join--5a86994d7dc02981fed50810.md) | 93 | `declaration-track:5a86994d7dc02981fed50810e1d854affc5a27735033d04410716995f9da4485` |
| 5 | `theorem` | [aeval_eq_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/aeval-eq-bind--888f93179db52bb109cbc685.md) | 97 | `result-track:888f93179db52bb109cbc6855eaa88056009129431f79ee3beed569d67dc2931` |
| 6 | `theorem` | [eval₂Hom_C_eq_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-c-eq-bind--271edb80c6106d27cb5555bd.md) | 101 | `result-track:271edb80c6106d27cb5555bd18fc092c70dfacb682918ee2533bb3a0c6d2cf2d` |
| 7 | `theorem` | [eval₂Hom_eq_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-eq-bind--38a32349526f06403101bf12.md) | 105 | `result-track:38a32349526f06403101bf12978240153c5d1f1144e43312a7a08dfb3aacdf6c` |
| 8 | `theorem` | [aeval_id_eq_join₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/aeval-id-eq-join--bc9a08fa1e4455aeb8aabcf0.md) | 113 | `result-track:bc9a08fa1e4455aeb8aabcf078627b9892d2d3cf555381e020194841cec1a042` |
| 9 | `theorem` | [eval₂Hom_C_id_eq_join₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-c-id-eq-join--6dbf74b6f63ca21dfd3ad880.md) | 116 | `result-track:6dbf74b6f63ca21dfd3ad880e562ae5c9d755144ce03ce56209d5f1fbd7d6c49` |
| 10 | `theorem` | [eval₂Hom_id_X_eq_join₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-id-x-eq-join--d054afa5e769adf557fd5d1d.md) | 121 | `result-track:d054afa5e769adf557fd5d1d3ba9a3a2f07c4d79004e52c87a27cb7463d4f504` |
| 11 | `theorem` | [bind₁_X_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-x-right--e5fa055edd21de2818f49bed.md) | 133 | `result-track:e5fa055edd21de2818f49bed62e586b8849e5bf1064c57d5926150b9c12b9778` |
| 12 | `theorem` | [bind₂_X_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-x-right--3e19e4642e8395e36c9660b0.md) | 137 | `result-track:3e19e4642e8395e36c9660b0caf28277bb28980e32e543de587dcf3a82e9da77` |
| 13 | `theorem` | [bind₁_X_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-x-left--58f042523516aa40c3ef8156.md) | 141 | `result-track:58f042523516aa40c3ef8156caf9495754a7751f3c2c4029b3302ce9480cc989` |
| 14 | `theorem` | [bind₁_C_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-c-right--0dfda0746f3f77607d4c2d00.md) | 147 | `result-track:0dfda0746f3f77607d4c2d0047afd203eeeadc89cdff60f4814f8c258d604f18` |
| 15 | `theorem` | [bind₂_C_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-c-right--805faae30687eb4e358c280e.md) | 150 | `result-track:805faae30687eb4e358c280e576e940f370300b4ed1f63ffef5909a7448ebf98` |
| 16 | `theorem` | [bind₂_C_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-c-left--ff31ba3f46c80e71a7a09c75.md) | 154 | `result-track:ff31ba3f46c80e71a7a09c7552c7994f4cf15c93fdfa1d6b9682333451d6627b` |
| 17 | `theorem` | [bind₂_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-comp-c--fcd40ffb5069f105df851d52.md) | 157 | `result-track:fcd40ffb5069f105df851d528a135b5819e0fc8f2339f1a3449778a42e0b0b33` |
| 18 | `theorem` | [join₂_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/join-map--1471984b2c5a95d7d77f392c.md) | 161 | `result-track:1471984b2c5a95d7d77f392c561e203e725499c3dae45eef07172a4ae5ae6269` |
| 19 | `theorem` | [join₂_comp_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/join-comp-map--c32d84f8632279ae24c85c8b.md) | 165 | `result-track:c32d84f8632279ae24c85c8b9b469f86815b7a84495006a6b4ece949e9e200a7` |
| 20 | `theorem` | [aeval_id_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/aeval-id-rename--ef60aa3aff3adbc85fd874f4.md) | 168 | `result-track:ef60aa3aff3adbc85fd874f4154dcab8037f1db6699bb7eda85819eff9e82e26` |
| 21 | `theorem` | [join₁_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/join-rename--b19db44471f3b8cecd4c5ea2.md) | 172 | `result-track:b19db44471f3b8cecd4c5ea20aebf4b5abaa18ffb49b831747d12f570488741b` |
| 22 | `theorem` | [bind₁_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-id--b6b4512cfe56eb5e6f144f78.md) | 177 | `result-track:b6b4512cfe56eb5e6f144f783221695399abdcce2f4d8e4c0cb165697ec8de9c` |
| 23 | `theorem` | [bind₂_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-id--17d06cc7efddb68946d6f8ff.md) | 181 | `result-track:17d06cc7efddb68946d6f8ff2efc50e2cd6865ed0cd0cd8103c77cc7fceb657b` |
| 24 | `theorem` | [bind₁_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-bind--07241a0bfdc3a71ea503626c.md) | 184 | `result-track:07241a0bfdc3a71ea503626c5143e84f9ad2e9f866e1f160f3862a7241b37bb7` |
| 25 | `theorem` | [bind₁_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-comp-bind--92c47d38790c5a089f9b2d05.md) | 188 | `result-track:92c47d38790c5a089f9b2d0534097a8e21102870f68a316c9ad3f4d38c0cdc90` |
| 26 | `theorem` | [bind₂_comp_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-comp-bind--b5c946cc14c9be0070c0c24d.md) | 193 | `result-track:b5c946cc14c9be0070c0c24dbed25bf7fd397e959945e49d9aa4ad4bfe5c82f5` |
| 27 | `theorem` | [bind₂_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-bind--8b09ff58686ae64fee5e75a7.md) | 196 | `result-track:8b09ff58686ae64fee5e75a7e8d077a62b6160aa09d8890f819d5a25868b273d` |
| 28 | `theorem` | [rename_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/rename-comp-bind--ef2bd3159c59a8fa3c75a23c.md) | 200 | `result-track:ef2bd3159c59a8fa3c75a23c9c751da9d71a222ba6435bd37be9bdce93346368` |
| 29 | `theorem` | [rename_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/rename-bind--c25cff94312d887f93ea0a94.md) | 205 | `result-track:c25cff94312d887f93ea0a9422424134369dab2a38cbed7d8aed7a5eb8f2ad8c` |
| 30 | `theorem` | [map_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/map-bind--d4f8eddc3390a6def5afd123.md) | 209 | `result-track:d4f8eddc3390a6def5afd1239326fd02398d4636c79b78efb562451d9a98537d` |
| 31 | `theorem` | [bind₁_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-comp-rename--aea1cacc759d00e45c879d7f.md) | 215 | `result-track:aea1cacc759d00e45c879d7fb158b824c58ce9006e8d090471b1a1cf84d2bacc` |
| 32 | `theorem` | [bind₁_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-rename--c18b51f07450c9b1c85b94e8.md) | 220 | `result-track:c18b51f07450c9b1c85b94e8d685eae13b150bce1181a9b3b355cf09ce28a2cb` |
| 33 | `theorem` | [bind₂_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-map--713981e1b65774def4abde44.md) | 224 | `result-track:713981e1b65774def4abde44474c54ac347ae75823ca157bf56d78df22ce3583` |
| 34 | `theorem` | [map_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/map-comp-c--30e450087ac6c43366de2538.md) | 228 | `result-track:30e450087ac6c43366de2538f23cf3a337ef2d83ac898a839d370dd408ad75d1` |
| 35 | `theorem` | [hom_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/hom-bind--790776b27b87ab920ff4e946.md) | 233 | `result-track:790776b27b87ab920ff4e9469a58e60cb368bfee483927e3dd88f889cde4596a` |
| 36 | `theorem` | [map_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/map-bind--7d69cde28d64ece2f37df6cd.md) | 237 | `result-track:7d69cde28d64ece2f37df6cd79ffb1f67f761d6b4d719b398f7f88a35893d8d9` |
| 37 | `theorem` | [eval₂Hom_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-comp-c--7ffeab97a4c1f45480acd9c5.md) | 243 | `result-track:7ffeab97a4c1f45480acd9c52ad53a5f6fd9ea57863ee49f8c415d13e77e4e44` |
| 38 | `theorem` | [eval₂Hom_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-bind--9d5cd084a2aca86b252b7849.md) | 247 | `result-track:9d5cd084a2aca86b252b7849083c5a7b5440b709f37bfcaf5cb2ad9aaedd1db3` |
| 39 | `theorem` | [aeval_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/aeval-bind--66dc46b136a29164955a1555.md) | 251 | `result-track:66dc46b136a29164955a1555a2395b159412aafd5b45f8ae996fcdd47e212874` |
| 40 | `theorem` | [aeval_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/aeval-comp-bind--47bbeec1558e74a89c480212.md) | 255 | `result-track:47bbeec1558e74a89c480212116a9161d69d0b84424e42e3cdf6ebfdab1bdfed` |
| 41 | `theorem` | [eval₂Hom_comp_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-comp-bind--1e69692db652b99fe7f31a24.md) | 260 | `result-track:1e69692db652b99fe7f31a24cc20c1371ec6d8022ec168b1bbf07379cc93ba4b` |
| 42 | `theorem` | [eval₂Hom_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/eval-hom-bind--a7a8403b31524b5c4b5aaa01.md) | 263 | `result-track:a7a8403b31524b5c4b5aaa01775d1e5ae8d600173d0ecd17955452734aab3c32` |
| 43 | `theorem` | [aeval_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/aeval-bind--9c375e5777913bdb6d363aa2.md) | 267 | `result-track:9c375e5777913bdb6d363aa2fa8c9760ce8ce64ea34ec67c87b573130f82e704` |
| 44 | `theorem` | [bind₁_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-monomial--e67d124893fd9b99a09d7ed9.md) | 273 | `result-track:e67d124893fd9b99a09d7ed99670023dd8d4b87b5423c2b277561043977ba79f` |
| 45 | `theorem` | [bind₂_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-monomial--8ad3b451728892b911c02102.md) | 278 | `result-track:8ad3b451728892b911c02102b2b7943ce55c97cf0fb8e5b3854a8cd0001bd6aa` |
| 46 | `theorem` | [bind₂_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/bind-monomial-one--69353e53d6bcad00edaec157.md) | 284 | `result-track:69353e53d6bcad00edaec1571271f9f3ec97116444fe5655142436de7da69aa3` |
| 47 | `theorem` | [vars_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/vars-bind--ffb58bee7a0197a72b19771a.md) | 289 | `result-track:ffb58bee7a0197a72b19771addfc90b8db6d956bf68e96eff6b1acf4d2e063ac` |
| 48 | `theorem` | [mem_vars_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/mem-vars-bind--0355c256fa451e50911aa3cd.md) | 322 | `result-track:0355c256fa451e50911aa3cd890d51329270c9ae1ab4e0a157c6eef75a7d3ffd` |
| 49 | `instance` | [monad](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/monad--0a36a94d22d8f19133fe9552.md) | 327 | `declaration-track:0a36a94d22d8f19133fe9552880497aa2e2fea094f5399cc82af4c095f62f3e5` |
| 50 | `instance` | [lawfulFunctor](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/lawfulfunctor--896a356a854e34f891a34856.md) | 332 | `declaration-track:896a356a854e34f891a348563cc965f591a5b6398c6ad9f3707c2da583b392f8` |
| 51 | `instance` | [lawfulMonad](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Varianta822d383bbb5b8f8ab92494eba89d0245f8ef7a01fd67c2616152180c83d0363.lean/declarations/lawfulmonad--ffdc0943c6d9a2211877ea46.md) | 338 | `declaration-track:ffdc0943c6d9a2211877ea46bef890431af1a32603e2adcc5f2097303f4d28cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
