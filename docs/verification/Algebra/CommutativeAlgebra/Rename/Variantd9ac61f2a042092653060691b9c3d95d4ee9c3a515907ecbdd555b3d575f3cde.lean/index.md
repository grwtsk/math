# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Rename.Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f933326fb4d67a9271b91bef8df1d969a29e1a5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f933326fb4d67a9271b91bef8df1d969a29e1a5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename--2dc9f0c9664fde35de1915eb.md) | 64 | `declaration-track:2dc9f0c9664fde35de1915eb0de1925d622569b3922f6b7d475d4d26981dd783` |
| 2 | `theorem` | [rename_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-c--027234a423c602ce8597aebb.md) | 69 | `result-track:027234a423c602ce8597aebb01139de2bbd51bae7c9432dcab6cce208fa571d0` |
| 3 | `theorem` | [rename_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-x--d9a8568ba32fbedc9423eda4.md) | 75 | `result-track:d9a8568ba32fbedc9423eda4e64eeabb85e02d6a8f5b4abda8b5947f64c8c037` |
| 4 | `theorem` | [map_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/map-rename--8497595949fe9a77a5b8e30b.md) | 80 | `result-track:8497595949fe9a77a5b8e30b218e75088fa499c7e3ab80a772006adb19e3d38b` |
| 5 | `theorem` | [rename_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-rename--853a8a98b26239caf272c100.md) | 89 | `result-track:853a8a98b26239caf272c10046df403d22e30851f32e958ec603553e7bb89200` |
| 6 | `theorem` | [rename_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-id--186c156266ef6b96ac1599b1.md) | 102 | `result-track:186c156266ef6b96ac1599b1dd1f5943890bb15b58ef455f2d2174dcdbf45219` |
| 7 | `theorem` | [rename_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-monomial--e3c54243124cfd210ba906ec.md) | 106 | `result-track:e3c54243124cfd210ba906ec95f4d4a4b64236bc7858e33860858eff9adf4fc1` |
| 8 | `theorem` | [rename_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-eq--0265f4b865857f7e8a798b38.md) | 115 | `result-track:0265f4b865857f7e8a798b38e7fbd43be9a6e6c7e49796dbed5d4e1f4848d67d` |
| 9 | `theorem` | [rename_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-injective--e133140b846c2341c01cb3df.md) | 122 | `result-track:e133140b846c2341c01cb3df5240a693e6b9a704a6fd293f6589c05843280780` |
| 10 | `def` | [killCompl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/killcompl--0923607969acfd13476ade6d.md) | 140 | `declaration-track:0923607969acfd13476ade6d076f090cebadbf1953b4cf0cbc824901b5c3b471` |
| 11 | `theorem` | [killCompl_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/killcompl-comp-rename--99a7f02e43979badc0da9a0f.md) | 144 | `result-track:99a7f02e43979badc0da9a0f8a01ce35b370e70d3545d500a302c13e0a99ce73` |
| 12 | `theorem` | [killCompl_rename_app](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/killcompl-rename-app--24c73035fbdaaecad8026c14.md) | 151 | `result-track:24c73035fbdaaecad8026c1444f43cbc654a63ce6a13206a1022a9f2c7c1fe10` |
| 13 | `def` | [renameEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/renameequiv--946ec79b05043fbc35d89021.md) | 163 | `declaration-track:946ec79b05043fbc35d89021c57aa825e446ce2496f0654024d8d57642001fd9` |
| 14 | `theorem` | [renameEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/renameequiv-refl--20d50ec1ec375d774423927f.md) | 172 | `result-track:20d50ec1ec375d774423927fd0adf434b071fb20137f0fbcf3b35bddc3949219` |
| 15 | `theorem` | [renameEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/renameequiv-symm--0735615ea8fb6843ca4f3986.md) | 177 | `result-track:0735615ea8fb6843ca4f3986ad898d409d1f2a9dd0ecbb7eaeeaca3c9986245d` |
| 16 | `theorem` | [renameEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/renameequiv-trans--0a04fcb00ee90187dedbddde.md) | 182 | `result-track:0a04fcb00ee90187dedbddde131ac6d3fde60aff3f2216796b43dfa0f21d4d67` |
| 17 | `theorem` | [eval₂_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/eval-rename--49e8a98fed286182d73df271.md) | 193 | `result-track:49e8a98fed286182d73df2718b886332bb4aceec9a2cc0d8ce320d2dae86244d` |
| 18 | `theorem` | [eval₂Hom_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/eval-hom-rename--ddbcd8f0c3e067db8f63346a.md) | 199 | `result-track:ddbcd8f0c3e067db8f63346a66a298da6050df5e8b4b465a54364672ed2df5ce` |
| 19 | `theorem` | [aeval_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/aeval-rename--d15ffaed106d8b95952baf4a.md) | 203 | `result-track:d15ffaed106d8b95952baf4ae7d4f41fb632da03ed0e0bffc5d34eea46a26f12` |
| 20 | `theorem` | [rename_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-eval--195cfbff42c926ca6f6c1e53.md) | 207 | `result-track:195cfbff42c926ca6f6c1e532947a6def1fa5474c1684096e99cc5639fce6b3f` |
| 21 | `theorem` | [rename_prod_mk_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/rename-prod-mk-eval--34d3f6dac37250b7fb935475.md) | 214 | `result-track:34d3f6dac37250b7fb9354759173ef2a784f09c5ac181a8b9e6555e160fa0cff` |
| 22 | `theorem` | [eval₂_rename_prod_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/eval-rename-prod-mk--cb818b34bfec2400ea147c47.md) | 221 | `result-track:cb818b34bfec2400ea147c47b091cffdfb8f9359456773f3917a700e422f6ea8` |
| 23 | `theorem` | [eval_rename_prod_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/eval-rename-prod-mk--74a27c081f2133723e9f5514.md) | 228 | `result-track:74a27c081f2133723e9f55140402347e00ee486a3cfecbdadb90a5bf98d8e7b6` |
| 24 | `theorem` | [exists_finset_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/exists-finset-rename--09e38f78ad125478363452bd.md) | 236 | `result-track:09e38f78ad125478363452bd4de0ab370d32ded85ef04194c93c004ec44801f8` |
| 25 | `theorem` | [exists_finset_rename₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/exists-finset-rename--b6aa2b85c166c5fdd5ad3fd3.md) | 262 | `result-track:b6aa2b85c166c5fdd5ad3fd3186b8d07014d43d51fbced1578b398c5e8f66915` |
| 26 | `theorem` | [exists_fin_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/exists-fin-rename--fab451e2713ebbe770543afa.md) | 278 | `result-track:fab451e2713ebbe770543afa040545a2e8b0b6c0d96174e9068cc00ee94933ae` |
| 27 | `theorem` | [eval₂_cast_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/eval-cast-comp--24d5a7da25a9f9c19c4cb41d.md) | 290 | `result-track:24d5a7da25a9f9c19c4cb41dee7dec3fa93bf2b20a74517401e260324d5343fb` |
| 28 | `theorem` | [coeff_rename_mapDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/coeff-rename-mapdomain--47bc160be96ef54e7eff8ceb.md) | 300 | `result-track:47bc160be96ef54e7eff8ceb329ba2664a057fbf08eb96bb393a4a5a742b87cb` |
| 29 | `theorem` | [coeff_rename_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/coeff-rename-eq-zero--3bd8d5010dfda451a9781c71.md) | 312 | `result-track:3bd8d5010dfda451a9781c71dd8a06602bef6453d794d5a78aa9f9a48a82d807` |
| 30 | `theorem` | [coeff_rename_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/coeff-rename-ne-zero--b7a455d19f1fd5e36a40250f.md) | 325 | `result-track:b7a455d19f1fd5e36a40250fcf40598d24eb04a2eb26dab976c09739fce623a3` |
| 31 | `theorem` | [constantCoeff_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/constantcoeff-rename--548d541edb6b71d679c93c5f.md) | 332 | `result-track:548d541edb6b71d679c93c5f3d89bac48b25b1fa66535d12bb6bbfbb40993bbb` |
| 32 | `theorem` | [support_rename_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/declarations/support-rename-of-injective--74b75fe2df5e3d4ab8d14cf9.md) | 347 | `result-track:74b75fe2df5e3d4ab8d14cf964f5f3feee4976dd65f8e961bd9ad23c42cbfd84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
