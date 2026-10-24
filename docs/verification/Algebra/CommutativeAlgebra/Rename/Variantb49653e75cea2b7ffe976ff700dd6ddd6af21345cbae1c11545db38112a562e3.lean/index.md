# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Rename.Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5c0be4fa856f2b5392e1573b76a9c4bde6600e5",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5c0be4fa856f2b5392e1573b76a9c4bde6600e5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename--52a7027ba8b3c6c4218855e6.md) | 50 | `declaration-track:52a7027ba8b3c6c4218855e6ebbbf96ab798c391d2b4519485e184c8b383da23` |
| 2 | `theorem` | [rename_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-c--ffbb7dbf0cbc4455536623e4.md) | 53 | `result-track:ffbb7dbf0cbc4455536623e4f5396f878d6c6d61feef739e5d21336043f3e6ac` |
| 3 | `theorem` | [rename_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-x--a85304394337f5126a85de4d.md) | 57 | `result-track:a85304394337f5126a85de4dd35003a06606c7951e99ba61c9ba3da445b8d54a` |
| 4 | `theorem` | [map_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/map-rename--582ec9345a98e2c3d27b4afa.md) | 60 | `result-track:582ec9345a98e2c3d27b4afa1e1b47b46ba678b83f94267b7c4c2b0351413609` |
| 5 | `lemma` | [map_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/map-comp-rename--559b40c613af705c5457656f.md) | 67 | `result-track:559b40c613af705c5457656f106c83423d74276877863facdcd9188d1f9a3757` |
| 6 | `theorem` | [rename_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-rename--28980049c76d8da0c03c56bd.md) | 72 | `result-track:28980049c76d8da0c03c56bd7dc87f6db66fece4a3aba0a3c892a05a20852037` |
| 7 | `lemma` | [rename_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-comp-rename--3032314ab0c090a32f61f1df.md) | 83 | `result-track:3032314ab0c090a32f61f1df7b9e90eb96426fdd6f0bcf7897e25ccfa1f414aa` |
| 8 | `theorem` | [rename_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-id--79d16fff5bc706e46e23c294.md) | 88 | `result-track:79d16fff5bc706e46e23c294f51b9ed589072004f7e2646b6ee0992cabcce4cc` |
| 9 | `lemma` | [rename_id_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-id-apply--a27d60879a37bac753cb1361.md) | 91 | `result-track:a27d60879a37bac753cb1361f7137bd6d86ee51ffa3151109d4c6db0976cd6d7` |
| 10 | `theorem` | [rename_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-monomial--6e5ae12fe6f14509321315bf.md) | 94 | `result-track:6e5ae12fe6f14509321315bf8635ca34929e20416c47d078db788555c55dbbab` |
| 11 | `theorem` | [rename_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-eq--6658268024f8960b00ff1cec.md) | 102 | `result-track:6658268024f8960b00ff1cec45b2031855bcbbda65b27f81950a33e0fd641f99` |
| 12 | `theorem` | [rename_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-injective--771d8b01b9814ef62f5fef55.md) | 108 | `result-track:771d8b01b9814ef62f5fef55449a2c7625eb99e31241fb7dfcbe71acd3421b92` |
| 13 | `theorem` | [rename_leftInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-leftinverse--abe4dea6754145483ec1d68b.md) | 116 | `result-track:abe4dea6754145483ec1d68bb4de529c49aa45e7bbfca1e6840bf8c7a9f6b87d` |
| 14 | `theorem` | [rename_rightInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-rightinverse--e4927279a5000e9ec5075313.md) | 121 | `result-track:e4927279a5000e9ec5075313542cca218a31fd75b74a50ae12c41b8d03b5c872` |
| 15 | `theorem` | [rename_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-surjective--b82802fe57628042d3962d49.md) | 125 | `result-track:b82802fe57628042d3962d49c891ad9857f7c503888fe9744639f2f0beb0cbb3` |
| 16 | `def` | [killCompl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/killcompl--444c971a798b98c4dcb393e8.md) | 137 | `declaration-track:444c971a798b98c4dcb393e882744f79cba3b50038c3287ad79abb1079e63708` |
| 17 | `theorem` | [killCompl_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/killcompl-c--fb6818760094f86ceed98b66.md) | 140 | `result-track:fb6818760094f86ceed98b666f44a2d888e4838922ccfeb8e07efe05d54d9091` |
| 18 | `theorem` | [killCompl_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/killcompl-comp-rename--566b3f18793a4d27ad856d49.md) | 142 | `result-track:566b3f18793a4d27ad856d490f8072a585a56b639359c6926f061aece32ff8d7` |
| 19 | `theorem` | [killCompl_rename_app](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/killcompl-rename-app--72e77ddb2300769fc63c3682.md) | 148 | `result-track:72e77ddb2300769fc63c3682b993cc51dbb41561124e784f9a565dfbb9594d15` |
| 20 | `def` | [renameEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/renameequiv--5dcb274f0ae461f88b48d255.md) | 159 | `declaration-track:5dcb274f0ae461f88b48d25514d2d369fb5b5a9c66df3b5bc16b322bdeec730a` |
| 21 | `theorem` | [renameEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/renameequiv-refl--a768cde1ef37664c20b22595.md) | 167 | `result-track:a768cde1ef37664c20b2259533e94490f1b6a46e47a2079e8d0fc266dce69764` |
| 22 | `theorem` | [renameEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/renameequiv-symm--d105c956e1c7e00a0e1194b4.md) | 171 | `result-track:d105c956e1c7e00a0e1194b4f927d6971b1124c0371348f0715d56bb26901563` |
| 23 | `theorem` | [renameEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/renameequiv-trans--7ac93c3c9a96a6eeda3b4b0a.md) | 175 | `result-track:7ac93c3c9a96a6eeda3b4b0a8ab87a47d63a5443d8ad98d079fd2bd5f5089af8` |
| 24 | `theorem` | [eval₂_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/eval-rename--9edf3aee5c4a17881f11939e.md) | 185 | `result-track:9edf3aee5c4a17881f11939e83aeba9084063dc72aece0e451f64d33e23a6701` |
| 25 | `theorem` | [eval_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/eval-rename--f3871d1c3a30b0ee259eac2f.md) | 190 | `result-track:f3871d1c3a30b0ee259eac2f95d8fd67e789238c2ae46e8590fc0eb639be69b1` |
| 26 | `theorem` | [eval₂Hom_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/eval-hom-rename--d9a8d916398184033614c8ea.md) | 193 | `result-track:d9a8d916398184033614c8eae30f4eb0eb0227a2d7309497b7c0c0aae06cd1c5` |
| 27 | `theorem` | [aeval_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/aeval-rename--3122514d254fbcd417727204.md) | 196 | `result-track:3122514d254fbcd417727204549d398dcddf7ac3311ddf9687d1ce2ab029d5f5` |
| 28 | `lemma` | [aeval_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/aeval-comp-rename--5b9b72ef30dc36443b6f8693.md) | 199 | `result-track:5b9b72ef30dc36443b6f8693cd74df57c5661f392dc4ce62b7a4de5bab892c78` |
| 29 | `theorem` | [rename_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-eval--68a86bed256bc2f335f303cd.md) | 203 | `result-track:68a86bed256bc2f335f303cd13d383dc64feeb813b0495e94d71a7d952d466ef` |
| 30 | `theorem` | [rename_prod_mk_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/rename-prod-mk-eval--94909e01eb63dd325be5decf.md) | 209 | `result-track:94909e01eb63dd325be5decf4ed28a32291c78ff537e12d160b4cc0c82d235e3` |
| 31 | `theorem` | [eval₂_rename_prod_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/eval-rename-prod-mk--60e33de4994c1f4d75e798da.md) | 215 | `result-track:60e33de4994c1f4d75e798da3cd78a7117d050e2913005cca116373acb8a9452` |
| 32 | `theorem` | [eval_rename_prod_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/eval-rename-prod-mk--9530b29aafbebf08a90ba9a1.md) | 221 | `result-track:9530b29aafbebf08a90ba9a151115f1fd0827fc395ddad851689818033169cfe` |
| 33 | `theorem` | [exists_finset_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/exists-finset-rename--aa7ba3d58cd3efd8ebbfa71f.md) | 228 | `result-track:aa7ba3d58cd3efd8ebbfa71f4e0e4cf35e2b4a8fe22e5e54376595f6d55b2361` |
| 34 | `theorem` | [exists_finset_rename₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/exists-finset-rename--6764824f79d619fdc8c22a9c.md) | 252 | `result-track:6764824f79d619fdc8c22a9c1fd229c2c05b6fb09595d88d0f93e1b2516e5887` |
| 35 | `theorem` | [exists_fin_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/exists-fin-rename--800f3736792c10da4cd364db.md) | 263 | `result-track:800f3736792c10da4cd364db8ee4dad8ee7a7287c552fdf9b9feaf4ebc36d472` |
| 36 | `theorem` | [eval₂_cast_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/eval-cast-comp--d7e318d74d798e7ec143c665.md) | 274 | `result-track:d7e318d74d798e7ec143c66524542ded5e48954ff1d4bc9f97d98a325a63d041` |
| 37 | `theorem` | [coeff_rename_mapDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/coeff-rename-mapdomain--3842727258ff84db6f23de6a.md) | 283 | `result-track:3842727258ff84db6f23de6a27c3d05e0d97b64aaf82c54420234159d786877a` |
| 38 | `theorem` | [coeff_rename_embDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/coeff-rename-embdomain--4c1ee800dbfb52325e1925e3.md) | 295 | `result-track:4c1ee800dbfb52325e1925e3261f06ca1c297a8823e48ab81bd1fd5977b653ee` |
| 39 | `theorem` | [coeff_rename_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/coeff-rename-eq-zero--8674ae5e05d4ede78645ee67.md) | 299 | `result-track:8674ae5e05d4ede78645ee677f1986a2ce05762eae3ac805d5fb85498ce3bca8` |
| 40 | `theorem` | [coeff_rename_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/coeff-rename-ne-zero--98f0f36b56cf7e80e2071867.md) | 311 | `result-track:98f0f36b56cf7e80e2071867c1e131b0ad18c64d87d60081cc899b34d9ab2e8f` |
| 41 | `theorem` | [constantCoeff_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/constantcoeff-rename--538de85fbe54f3df677a1c9a.md) | 317 | `result-track:538de85fbe54f3df677a1c9a8ee6c17c59ad19c5106b3f6f539d1657992ac932` |
| 42 | `theorem` | [support_rename_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantb49653e75cea2b7ffe976ff700dd6ddd6af21345cbae1c11545db38112a562e3.lean/declarations/support-rename-of-injective--e8073226386f4c4b4571c7cb.md) | 331 | `result-track:e8073226386f4c4b4571c7cbb45f6db82791a063cc75972cd0c4161f1873d5b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
