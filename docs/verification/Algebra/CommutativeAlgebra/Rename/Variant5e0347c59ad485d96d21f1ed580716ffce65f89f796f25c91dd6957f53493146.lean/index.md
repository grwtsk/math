# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Rename.Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae23a9ffa0fbeae21e3557243c178bc58766e719",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae23a9ffa0fbeae21e3557243c178bc58766e719`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean.json)

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
| 1 | `def` | [rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename--cc3f3524df99de2572c4d6c5.md) | 62 | `declaration-track:cc3f3524df99de2572c4d6c518a00f38c10a0c654b85baba70ca23fded95ea7a` |
| 2 | `theorem` | [rename_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-c--8c72f209344d9ca34ea7bd0e.md) | 66 | `result-track:8c72f209344d9ca34ea7bd0e8a7faea9fd49da266d51604db12a38b74eff5846` |
| 3 | `theorem` | [rename_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-x--8c3d5122303d64efda4899d9.md) | 70 | `result-track:8c3d5122303d64efda4899d9a1e488fef84205c5b128828a71d01fa5ad3cec43` |
| 4 | `lemma` | [rename_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-zero--58756b63c0a5e519fd3800db.md) | 74 | `result-track:58756b63c0a5e519fd3800db12ab159c6242573ee692ef5ee2d46d5835063ad2` |
| 5 | `theorem` | [map_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/map-rename--7bc1ddfe3e99fd8e72f46cb3.md) | 76 | `result-track:7bc1ddfe3e99fd8e72f46cb33a62aec54b11b1f0b8799a5883d8a9eaac123557` |
| 6 | `lemma` | [map_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/map-comp-rename--a829ff581ef597cdfd1c6812.md) | 83 | `result-track:a829ff581ef597cdfd1c681238835c9b06363af57570199724bdb469112d721a` |
| 7 | `theorem` | [rename_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-rename--c3f3fa2b4988066246702ed9.md) | 88 | `result-track:c3f3fa2b4988066246702ed94f23dc1e95eed8ba9024057ad490b4556efee3a6` |
| 8 | `lemma` | [rename_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-comp-rename--66b7211a5e4f3fb14331d6f4.md) | 92 | `result-track:66b7211a5e4f3fb14331d6f43ee6784c7488bf9680c534e2f9149ea00acb42ad` |
| 9 | `theorem` | [rename_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-id--9e2bff9642cb201a003e650a.md) | 97 | `result-track:9e2bff9642cb201a003e650a8fc9d9ec900c71d621f73c146c6e9cfe26a8e33c` |
| 10 | `lemma` | [rename_id_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-id-apply--5d09621f706840c74475351d.md) | 99 | `result-track:5d09621f706840c74475351db5e22571c0dbae6ef8be5dc85cd32612f71e65a8` |
| 11 | `theorem` | [rename_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-monomial--7f6b54c49b091a308e8ba450.md) | 102 | `result-track:7f6b54c49b091a308e8ba45072ff5fe4da3e35ed4638efaa58678f1ae2e86f2c` |
| 12 | `lemma` | [rename_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-eq-aeval--6b55e11bf5f848b1e62617d8.md) | 106 | `result-track:6b55e11bf5f848b1e62617d824211b4c65b202debe2aa7dc222d10c8733dbc78` |
| 13 | `theorem` | [rename_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-injective--a07290786963389afb021b83.md) | 110 | `result-track:a07290786963389afb021b83a1f3635fe965a5a1a6ef188706fac3339bedf1e8` |
| 14 | `lemma` | [rename_eq_zero_iff_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-eq-zero-iff-of-injective--1aae1eab23ca6dd330157bad.md) | 115 | `result-track:1aae1eab23ca6dd330157bad5c535cc65a20c81082aa320d2e6cd2ea8d86883c` |
| 15 | `theorem` | [rename_leftInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-leftinverse--944ec46fd1dc450ab8a945f7.md) | 119 | `result-track:944ec46fd1dc450ab8a945f71e43724e3f7a484f89fd1b2326bf6d0642385b15` |
| 16 | `theorem` | [rename_rightInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-rightinverse--257df2545556aaaa2154cb5c.md) | 124 | `result-track:257df2545556aaaa2154cb5cca71e37170990e39e024cadc0c646536f0d62c10` |
| 17 | `theorem` | [rename_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-surjective--0eaff20ab5980a7136775ed8.md) | 128 | `result-track:0eaff20ab5980a7136775ed81a88b74c4013a2140be34f2a80f144fa97604f50` |
| 18 | `def` | [killCompl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl--32b7ad3c66c53685304c1001.md) | 140 | `declaration-track:32b7ad3c66c53685304c100133535dd87d2b06efba4a3e032f94a12f44c129c1` |
| 19 | `theorem` | [killCompl_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-c--d518df00bc0d634f6e84cb4d.md) | 143 | `result-track:d518df00bc0d634f6e84cb4d206de759fe682c6f206b5f92a0b8efbc765aee4f` |
| 20 | `theorem` | [killCompl_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-comp-rename--53084bcf29ad7b246b347bf3.md) | 145 | `result-track:53084bcf29ad7b246b347bf3c2410705c9bf0fccb1ac2404d47c71e152c27bff` |
| 21 | `theorem` | [killCompl_rename_app](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-rename-app--b8d9fb381de6bf5f4f20c631.md) | 151 | `result-track:b8d9fb381de6bf5f4f20c631b2b82a82a5b2dff79c3deb6d47da7587aa28b752` |
| 22 | `lemma` | [killCompl_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-map--d4aeb8a161ddefb3afa5a4cf.md) | 154 | `result-track:d4aeb8a161ddefb3afa5a4cfb1c0638f79a40ddb08ddd627799ba998df5197e4` |
| 23 | `lemma` | [killCompl_monomial_mapDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-monomial-mapdomain--d0404b0fdc9b64fca9deaffb.md) | 163 | `result-track:d0404b0fdc9b64fca9deaffb5b63520559ef23c149bbc2a8d7f6d00d07e14b5e` |
| 24 | `lemma` | [killCompl_monomial_eq_zero_of_notMem_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-monomial-eq-zero-of-notmem-range--a8d61ca3abfaa42a4cbe830d.md) | 167 | `result-track:a8d61ca3abfaa42a4cbe830d2432365102fbdd4876f7354c51a2a4c3dc9d81a9` |
| 25 | `lemma` | [killCompl_monomial_eq_zero_of_not_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-monomial-eq-zero-of-not-subset--00f07f519648830b9c06eadc.md) | 175 | `result-track:00f07f519648830b9c06eadc911447e3f721eaeb5ae3a158d5ccdfa4c0183b20` |
| 26 | `lemma` | [killCompl_monomial_eq_monomial_comapDomain_of_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-monomial-eq-monomial-comapdomain-of-subset--6fa1e2045a848e2aaf1a4153.md) | 180 | `result-track:6fa1e2045a848e2aaf1a41535d0cbf72209b133511bf81c7d0f583f71b086b53` |
| 27 | `lemma` | [killCompl_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/killcompl-monomial--9912c0ab1facd61e59ccdf44.md) | 185 | `result-track:9912c0ab1facd61e59ccdf44f15deb42ef5a9c2a227286fc89eb50b7bf0363af` |
| 28 | `lemma` | [coeff_killCompl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/coeff-killcompl--df5fa34c2d5eaa235b37b198.md) | 192 | `result-track:df5fa34c2d5eaa235b37b1983b582248c8a5f2402cc4b5cea7cc9632bf5564e7` |
| 29 | `lemma` | [support_killCompl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/support-killcompl--34735ab83b8929e426e06dcb.md) | 207 | `result-track:34735ab83b8929e426e06dcbff80741ec9685973048ab83d229e73addf5e00d1` |
| 30 | `def` | [renameEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/renameequiv--39f918bce6a82785ce7383e5.md) | 221 | `declaration-track:39f918bce6a82785ce7383e5276c4f16884923910fd28022489fd5c3acddec2b` |
| 31 | `theorem` | [renameEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/renameequiv-refl--004d7b8168e855d281740408.md) | 229 | `result-track:004d7b8168e855d281740408bc299d2f1221648cac20286888b3fc5f6be37610` |
| 32 | `theorem` | [renameEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/renameequiv-symm--43b329ae0a867e172ed8526f.md) | 233 | `result-track:43b329ae0a867e172ed8526fe0882a645807dbb47d852b3762832f37fe1f7288` |
| 33 | `theorem` | [renameEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/renameequiv-trans--c265184c5a85f4dacdcb3f07.md) | 237 | `result-track:c265184c5a85f4dacdcb3f0786e8dc4a8552959bdd6581693e8712e5bb789a6c` |
| 34 | `theorem` | [eval₂_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/eval-rename--dddbf49bed19086488a19aed.md) | 247 | `result-track:dddbf49bed19086488a19aed22bd441c27bd835bfa1659e46ceb09d67aa92625` |
| 35 | `theorem` | [eval_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/eval-rename--67d1b114839fb87e7c272a35.md) | 252 | `result-track:67d1b114839fb87e7c272a35aa7aa565f82a032402437edb319e66d13fb22d96` |
| 36 | `theorem` | [eval₂Hom_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/eval-hom-rename--636d0c19dcc0da31d6b8ef91.md) | 255 | `result-track:636d0c19dcc0da31d6b8ef9108e067565f966c5e5e694357f3f32967d133cefd` |
| 37 | `theorem` | [aeval_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/aeval-rename--d19c9ce8e214fd776b6576a0.md) | 258 | `result-track:d19c9ce8e214fd776b6576a0883285483cecf044bd04d24cfa47a3ccb397f1d4` |
| 38 | `lemma` | [aeval_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/aeval-comp-rename--e7096d258269d7f13fb5d48e.md) | 261 | `result-track:e7096d258269d7f13fb5d48eae52f83679083b11a83336e1bbf39c4e50c99de2` |
| 39 | `theorem` | [rename_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-eval--e6c07c061ec0037eebcf9e8f.md) | 265 | `result-track:e6c07c061ec0037eebcf9e8f76f209a6310a8c4b89e13d315936bcc08ac2227b` |
| 40 | `theorem` | [rename_prod_mk_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/rename-prod-mk-eval--8d92682eba676da523553803.md) | 271 | `result-track:8d92682eba676da523553803631afbde24a5c08656e3de39c023044ba0455fdd` |
| 41 | `theorem` | [eval₂_rename_prod_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/eval-rename-prod-mk--a6c7a30562f8c09bfdbf3420.md) | 277 | `result-track:a6c7a30562f8c09bfdbf3420b78ed885952f13bba4a96a267d23e3d33fb7ee8c` |
| 42 | `theorem` | [eval_rename_prod_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/eval-rename-prod-mk--0156f39974375b38fcad0e16.md) | 283 | `result-track:0156f39974375b38fcad0e16c7adca52d685754d979e0dadd464841891a9dd77` |
| 43 | `theorem` | [exists_finset_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/exists-finset-rename--7588e8d437ff0a51ee4c8b93.md) | 290 | `result-track:7588e8d437ff0a51ee4c8b932a0dd0c8955430c0370dfbdeabb5df1d51b42295` |
| 44 | `theorem` | [exists_finset_rename₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/exists-finset-rename--1d0f5b006693b7a7f6d4e96b.md) | 314 | `result-track:1d0f5b006693b7a7f6d4e96bd54a3b6b5f332bcdf818cc9c04edd815683354e3` |
| 45 | `theorem` | [exists_fin_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/exists-fin-rename--36c8301b2e3b439821eaf00e.md) | 325 | `result-track:36c8301b2e3b439821eaf00ece941d6d3460bd9b2d90b754b3a223c933a4c54f` |
| 46 | `theorem` | [eval₂_cast_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/eval-cast-comp--f896315647ce011bbd799768.md) | 336 | `result-track:f896315647ce011bbd79976886f8f4f8a9f90ab000360b38f2ff6b5e6903402a` |
| 47 | `theorem` | [coeff_rename_mapDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/coeff-rename-mapdomain--da7877c18e4c247c3e70b430.md) | 342 | `result-track:da7877c18e4c247c3e70b430af8e05cedb908c7a78b91fb2e6a9a1bf86dbafd1` |
| 48 | `theorem` | [coeff_rename_embDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/coeff-rename-embdomain--084018f3420b291c22c589b4.md) | 353 | `result-track:084018f3420b291c22c589b48e7ee7a4765361aebfec6f2c2d9ee7f0c7a005a2` |
| 49 | `theorem` | [coeff_rename_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/coeff-rename-eq-zero--40f85c65950fd44c4ca61667.md) | 357 | `result-track:40f85c65950fd44c4ca61667cc34ef45ba9e360838e8264eb78477f6e6063725` |
| 50 | `theorem` | [coeff_rename_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/coeff-rename-ne-zero--9c7c3dcb0c2fdf0bd8fe8071.md) | 369 | `result-track:9c7c3dcb0c2fdf0bd8fe80718e5314b69f4bc5a10d5fa17765d48a7f38118052` |
| 51 | `theorem` | [constantCoeff_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/constantcoeff-rename--8b63cc0bf25df8965779dff6.md) | 375 | `result-track:8b63cc0bf25df8965779dff631bd30c73e88a26e4faee478152b3ba90f92ccd0` |
| 52 | `theorem` | [support_rename_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/support-rename-of-injective--8516b3b39d3ba47f45e7e652.md) | 389 | `result-track:8516b3b39d3ba47f45e7e652934c23fcf23aa14111f8f5c647349fffbcc499ae` |
| 53 | `lemma` | [support_rename_killCompl_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/declarations/support-rename-killcompl-subset--208d05d30a1078d84a69c769.md) | 394 | `result-track:208d05d30a1078d84a69c7690c6431277de713a24f4ee2944ac62ed4ee04cc45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
