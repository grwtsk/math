# Verification target: GRWTSK.Analysis.ComplexAnalysis.Hadamard.Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66f8e734f866c4ad7b9ec241fb86967a95d293e0",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66f8e734f866c4ad7b9ec241fb86967a95d293e0`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean.json)

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
| 1 | `def` | [verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/verticalstrip--c63eb13e61cacb8d926d1cfd.md) | 80 | `declaration-track:c63eb13e61cacb8d926d1cfd26dbd6f41d26f63f25f0076f4b6af2212a0881b9` |
| 2 | `def` | [verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/verticalclosedstrip--314a3457e5e942c9722d91f4.md) | 83 | `declaration-track:314a3457e5e942c9722d91f4cd4e81ace0af390dfeb852178866763b91b0b143` |
| 3 | `def` | [sSupNormIm](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/ssupnormim--4fa545a2a0e8cc9bdbce4113.md) | 87 | `declaration-track:4fa545a2a0e8cc9bdbce41131d148c195bdd1adcbda48d2a661066f92edc9946` |
| 4 | `def` | [invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/invinterpstrip--3f2e067e2b5d34c330fed5ae.md) | 102 | `declaration-track:3f2e067e2b5d34c330fed5ae5bf55e3ebc0bfcf2e82187ab3fa9bc523ae159be` |
| 5 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/f--3d2d8279c1293d6d26131a26.md) | 106 | `declaration-track:3d2d8279c1293d6d26131a2659f6ad0568ab6e641911490e15243af95b994370` |
| 6 | `lemma` | [sSupNormIm_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/ssupnormim-nonneg--ab230f7c2084bd346965a3da.md) | 109 | `result-track:ab230f7c2084bd346965a3da727d9cb7cdaaa2c4356ee6ad50bd3d4223b68aa8` |
| 7 | `lemma` | [sSupNormIm_eps_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/ssupnormim-eps-pos--fba2a9351de0a710577a5471.md) | 116 | `result-track:fba2a9351de0a710577a54716b8d8b089635d82021b80e965241332ac0741e8d` |
| 8 | `lemma` | [norm_invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-invinterpstrip--210219b21affba5b680a3d23.md) | 120 | `result-track:210219b21affba5b680a3d239b120f20244e5cf3fca4e0d2955b3e9f86494cf4` |
| 9 | `lemma` | [diffContOnCl_invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/diffcontoncl-invinterpstrip--f07a2d335d2e9333248d84d4.md) | 129 | `result-track:f07a2d335d2e9333248d84d4f3d491e308bc502734849b1af5cce67e289c1728` |
| 10 | `lemma` | [norm_le_sSupNormIm](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-ssupnormim--efb15409e4c9d00f030231ab.md) | 143 | `result-track:efb15409e4c9d00f030231ab2565aebe15233b0200cffd2a8439ff86505137ce` |
| 11 | `lemma` | [norm_lt_sSupNormIm_eps](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-lt-ssupnormim-eps--08a042132c89a7d8d040fdfb.md) | 153 | `result-track:08a042132c89a7d8d040fdfb007552ee0509bc034500d5098efa69fb6fa1cb9b` |
| 12 | `lemma` | [F_BddAbove](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/f-bddabove--17e72f16118a5a25b60db810.md) | 162 | `result-track:17e72f16118a5a25b60db81059ce2849b688c4479367dde73f1dfbd5f6f409a6` |
| 13 | `lemma` | [F_edge_le_one](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/f-edge-le-one--6a92c082b08d3fbdeafbbb1a.md) | 202 | `result-track:6a92c082b08d3fbdeafbbb1a2cd0af2b102eb11e8f66f0ea80db89d5625e698c` |
| 14 | `theorem` | [norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-mul-invinterpstrip-le-one-of-mem-verticalclosedstrip--766a107b567e956f54159ed5.md) | 221 | `result-track:766a107b567e956f54159ed502dbc63b3d9e85c35d1f96b4206fb2278044d99b` |
| 15 | `def` | [interpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/interpstrip--86d0ea2b4a2e7dc3a237b304.md) | 257 | `declaration-track:86d0ea2b4a2e7dc3a237b304acda9edf7fda1a70c499e531119772addd6d8577` |
| 16 | `lemma` | [interpStrip_eq_of_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/interpstrip-eq-of-pos--dd498c625aaeb44d90477c16.md) | 263 | `result-track:dd498c625aaeb44d90477c167d4593698509bfa910fe790f7ea45257e11113e8` |
| 17 | `lemma` | [interpStrip_eq_of_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/interpstrip-eq-of-zero--1a6b69688b91cb646f995000.md) | 268 | `result-track:1a6b69688b91cb646f995000f3987eb93cd2bbdb655067a71057144ecb96f535` |
| 18 | `lemma` | [interpStrip_eq_of_mem_verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/interpstrip-eq-of-mem-verticalstrip--48fbb116d320f42f1febfc1c.md) | 273 | `result-track:48fbb116d320f42f1febfc1c505d87b6338f3509e4818265339b1c6f2b25aab2` |
| 19 | `lemma` | [diffContOnCl_interpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/diffcontoncl-interpstrip--38f88150ba3632a2d92555b7.md) | 291 | `result-track:38f88150ba3632a2d92555b7f8bb4612e0278ade0018aeea7210376f5e1bb971` |
| 20 | `def` | [interpStrip'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/interpstrip--4d6d4bff5e7193c780b9dd31.md) | 312 | `declaration-track:4d6d4bff5e7193c780b9dd319ccc966f9df71b43566dcfad10265a872d83497f` |
| 21 | `def` | [scale](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale--a8a296a6fc7e7553c9d03e5e.md) | 318 | `declaration-track:a8a296a6fc7e7553c9d03e5eea97add9dffc6f4daea15272baeb42ae772015ce` |
| 22 | `lemma` | [scale_id_mem_verticalClosedStrip_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale-id-mem-verticalclosedstrip-of-mem-verticalclosedstrip--50082672e77c424101ff80af.md) | 322 | `result-track:50082672e77c424101ff80af830f9c1c3e2584a5207c56069aadeea6fa8761fc` |
| 23 | `lemma` | [scale_bddAbove](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale-bddabove--f6e47fe458d76ef0ac945cad.md) | 329 | `result-track:f6e47fe458d76ef0ac945cad480f676233e3a683b4b484398a143dd97d50c15c` |
| 24 | `lemma` | [scale_bound_left](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale-bound-left--7ec33866998eec0dcecac7b6.md) | 338 | `result-track:7ec33866998eec0dcecac7b67c7328fb8208130eac9caa1a650d8389e78e6ed6` |
| 25 | `lemma` | [scale_bound_right](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale-bound-right--21a1e58d87a23077bd519bf3.md) | 346 | `result-track:21a1e58d87a23077bd519bf31aa2264c94a3d39c6286859b33cd54d88044e91d` |
| 26 | `lemma` | [sSupNormIm_scale_left](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/ssupnormim-scale-left--9e24a06f2ce68fee7ce67c74.md) | 354 | `result-track:9e24a06f2ce68fee7ce67c747565abb666e992047052343500e8ea8f7b8040fa` |
| 27 | `lemma` | [sSupNormIm_scale_right](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/ssupnormim-scale-right--f306225d0203adeec4206665.md) | 378 | `result-track:f306225d0203adeec4206665e79cea82203019bc852a12c4bef69bff39af1bf7` |
| 28 | `lemma` | [interpStrip_scale](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/interpstrip-scale--510cad3468020544efd4de68.md) | 402 | `result-track:510cad3468020544efd4de6847943b07221168a571c0347d705f0848da4538ec` |
| 29 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip_eps](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip-eps--96da442a71396a41db44ad88.md) | 409 | `result-track:96da442a71396a41db44ad886703a3e27e72fdf9faaf72ce874a512d6b417276` |
| 30 | `lemma` | [eventuallyle](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/eventuallyle--840ba9d87602cae2d1238dbe.md) | 424 | `result-track:840ba9d87602cae2d1238dbe14dd0774d254acaf0b4987f1170591665de3a337` |
| 31 | `lemma` | [norm_le_interpStrip_of_mem_verticalStrip_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-interpstrip-of-mem-verticalstrip-zero--e214724a7f202bda19dfaba0.md) | 432 | `result-track:e214724a7f202bda19dfaba0b18bf44ab4d9da40fa57ca18f569287889d381f9` |
| 32 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip₀₁](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip--ab9c790af88e93300f052675.md) | 474 | `result-track:ab9c790af88e93300f052675a763abd93163c410dea4c85ad77d19b78771092d` |
| 33 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip₀₁'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip--408d693f625a73948a82e22b.md) | 488 | `result-track:408d693f625a73948a82e22b49a53f02963eb778e7f8719dc9b53cb5ab923f06` |
| 34 | `lemma` | [scale_id_mem_verticalStrip_of_mem_verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale-id-mem-verticalstrip-of-mem-verticalstrip--c83a0b768fd7e7b0f2b17217.md) | 533 | `result-track:c83a0b768fd7e7b0f2b172177b1d7ec52034b46e2cb7cb83cde53946dac2ea7d` |
| 35 | `lemma` | [mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/mem-verticalclosedstrip-of-scale-id-mem-verticalclosedstrip--b635dd68602d02223e6762cd.md) | 546 | `result-track:b635dd68602d02223e6762cd92ff791f081a51e148cc6fdb5552ebd299e890a7` |
| 36 | `lemma` | [scale_diffContOnCl](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/scale-diffcontoncl--f291c22851286e87a752d592.md) | 563 | `result-track:f291c22851286e87a752d59285d05ced5a59e60956573bda09136aee71eea98b` |
| 37 | `lemma` | [fun_arg_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/fun-arg-eq--b7870c16a4866f77d7ea61c9.md) | 576 | `result-track:b7870c16a4866f77d7ea61c948bb9e987244df293037bd46d92d13d5d7be1240` |
| 38 | `lemma` | [bound_exp_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/bound-exp-eq--4695498781d8f4acd8ff7630.md) | 583 | `result-track:4695498781d8f4acd8ff7630bbe0445c5d6c16b54011e36204cb3e9fc38c170c` |
| 39 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip--affbaca5685098888a9c89f8.md) | 599 | `result-track:affbaca5685098888a9c89f85367fe14618da7604aaf67817a6b5444de5ff0ea` |
| 40 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip--6cd941b8db8e7792c098aed7.md) | 618 | `result-track:6cd941b8db8e7792c098aed775198f2089290d4769211a7ebec4add9e6d30fec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
