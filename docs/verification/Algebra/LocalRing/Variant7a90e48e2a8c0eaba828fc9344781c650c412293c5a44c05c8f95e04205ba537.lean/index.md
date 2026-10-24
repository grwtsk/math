# Verification target: GRWTSK.Algebra.LocalRing.Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd9026bb6f98fc407d4a9068ae314075fe6de347",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd9026bb6f98fc407d4a9068ae314075fe6de347`.

Source path: `GRWTSK/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.JacobsonIdeal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocalRing](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/localring--f3f649e973e450467459eb02.md) | 49 | `declaration-track:f3f649e973e450467459eb0213826149ecfacf5f3423903fa175a2a14dcf18b6` |
| 2 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-isunit-or-isunit-of-isunit-add--47b620769e08d9f24d25f7ac.md) | 62 | `result-track:47b620769e08d9f24d25f7acc73708bcccd3d25f4478c355153cc730793b4bc3` |
| 3 | `theorem` | [of_nonunits_add](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-nonunits-add--70b7af39b8e6b48b5f73abce.md) | 68 | `result-track:70b7af39b8e6b48b5f73abceb632731197770aee493a7f4a2d6315b832b2755c` |
| 4 | `theorem` | [of_unique_max_ideal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-unique-max-ideal--77b44fb9c3e17a6e4aece290.md) | 74 | `result-track:77b44fb9c3e17a6e4aece290b10d5ac1f22f5cedb73373b527e152d724e37ab1` |
| 5 | `theorem` | [of_unique_nonzero_prime](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-unique-nonzero-prime--9a006cbd95f0933ea06102f1.md) | 88 | `result-track:9a006cbd95f0933ea06102f1f16f7f35a4885f757035a549c60302b32e03fe28` |
| 6 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isunit-or-isunit-of-isunit-add--7de650c78a0a637d4076733a.md) | 101 | `result-track:7de650c78a0a637d4076733ae6c7e88ac488b4ee08a7df9e6766609b265c9fcb` |
| 7 | `theorem` | [nonunits_add](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/nonunits-add--da375e3538e554ddee788c4e.md) | 107 | `result-track:da375e3538e554ddee788c4e7262ef949a5ac911a5e6f7893de104ede21b07a2` |
| 8 | `def` | [maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/maximalideal--08d1f0093e811d64741ab93b.md) | 114 | `declaration-track:08d1f0093e811d64741ab93b86892690252285bf480c18aad65d8804348d0351` |
| 9 | `instance` | [maximalIdeal.isMaximal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/maximalideal-ismaximal--aa2bc331201c0744b4a0d432.md) | 121 | `declaration-track:aa2bc331201c0744b4a0d4328e3fd0adc7d463fdf0f15688ceea3b21879f8e4b` |
| 10 | `theorem` | [maximal_ideal_unique](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/maximal-ideal-unique--40e0add5445789f750665dba.md) | 133 | `result-track:40e0add5445789f750665dba6ba5419bf2849307b502a6be6a79d7a18d79b059` |
| 11 | `theorem` | [eq_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/eq-maximalideal--aad8cbf2f9e6d1bb7b036925.md) | 140 | `result-track:aad8cbf2f9e6d1bb7b036925ca83cdb5b0f97308a158481bd45e799d85a1a293` |
| 12 | `theorem` | [le_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/le-maximalideal--af8bb3ae649c70b01bc595c7.md) | 144 | `result-track:af8bb3ae649c70b01bc595c7b8af21fb4fbfd4ffabc80c51d907f0f511685c4c` |
| 13 | `theorem` | [mem_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/mem-maximalideal--45bd1a3efd5723a7c8864475.md) | 150 | `result-track:45bd1a3efd5723a7c88644754db8689d11e2650b1483ff86957f379fe18343b1` |
| 14 | `theorem` | [isField_iff_maximalIdeal_eq](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isfield-iff-maximalideal-eq--47e4af92b30b81424d76e648.md) | 154 | `result-track:47e4af92b30b81424d76e648ebff5d9f072279f65377bb7cf828a4f3774f2a23` |
| 15 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-isunit-or-isunit-one-sub-self--87071434d676ad3ee049ee42.md) | 170 | `result-track:87071434d676ad3ee049ee42c67edde0a4cd76914db0fc41f64677d683e8356a` |
| 16 | `theorem` | [isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isunit-or-isunit-one-sub-self--f479e1c6a05b5be3bd40292d.md) | 177 | `result-track:f479e1c6a05b5be3bd40292d8514e509087748f2e47fa3663aadc3063e933008` |
| 17 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isunit-of-mem-nonunits-one-sub-self--6dbd829288853d65bfa4e2b9.md) | 181 | `result-track:6dbd829288853d65bfa4e2b9255e9dded99ebeaefdbc14f66feaf622c22e4b74` |
| 18 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isunit-one-sub-self-of-mem-nonunits--20dadbb1cb67d5a28335dddc.md) | 185 | `result-track:20dadbb1cb67d5a28335dddcfb196e3edb8b1f864aedffc480bb0ddfc54cb902` |
| 19 | `theorem` | [of_surjective'](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-surjective--40b5749d08307954cfee4281.md) | 189 | `result-track:40b5749d08307954cfee4281c6838431a1ee6e3c6a6699304472295e14672db5` |
| 20 | `theorem` | [jacobson_eq_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/jacobson-eq-maximalideal--9d42cd7c7a359922d994a963.md) | 199 | `result-track:9d42cd7c7a359922d994a963da8abc6e580667b9c2e8fe2de864915e473f644b` |
| 21 | `class` | [IsLocalRingHom](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/islocalringhom--390e0eb79725b8e79988cd5c.md) | 213 | `declaration-track:390e0eb79725b8e79988cd5cb76260d8e660b167507a30251bfdfb1d8a7b082a` |
| 22 | `instance` | [isLocalRingHom_id](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/islocalringhom-id--af49a4eaa705af34b7948c99.md) | 222 | `declaration-track:af49a4eaa705af34b7948c99b01d5263e0a0c18bce6f7b97bb11d03273cc75b5` |
| 23 | `theorem` | [isUnit_map_iff](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isunit-map-iff--33405260bc19d3ea6e669007.md) | 227 | `result-track:33405260bc19d3ea6e669007719497b2db05ccc7e2892e8a17cbd4dac74df258` |
| 24 | `theorem` | [map_mem_nonunits_iff](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-mem-nonunits-iff--63aad98006c15336e26f7df5.md) | 233 | `result-track:63aad98006c15336e26f7df5d546b344d4423892b01a5d05b720c7e60af2e116` |
| 25 | `instance` | [isLocalRingHom_comp](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/islocalringhom-comp--23ceac93d8ce80fe51d4f4b8.md) | 238 | `declaration-track:23ceac93d8ce80fe51d4f4b84df3c3ef2a53e0a7b5024f3e28642374159c7394` |
| 26 | `instance` | [isLocalRingHom_equiv](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/islocalringhom-equiv--bd157c44c72abe80e3718c4c.md) | 243 | `declaration-track:bd157c44c72abe80e3718c4c880d435f439e7e6d3ae02dc850aec053c8d22483` |
| 27 | `theorem` | [isUnit_of_map_unit](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/isunit-of-map-unit--a82f029191a146486e3f2560.md) | 250 | `result-track:a82f029191a146486e3f2560f11f6ea19a584c3297ca8d7a2641d0160d55b9f8` |
| 28 | `theorem` | [of_irreducible_map](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-irreducible-map--2c701cc53bee47aebb413752.md) | 254 | `result-track:2c701cc53bee47aebb4137524a91777bd96658dafedcf4cad43cdc6be195972d` |
| 29 | `theorem` | [isLocalRingHom_of_comp](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/islocalringhom-of-comp--f25ba348ff56105c4366358f.md) | 261 | `result-track:f25ba348ff56105c4366358f644f352d3b6a7620bd55d2e451d8c341dbe898c8` |
| 30 | `theorem` | [RingHom.domain_localRing](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/ringhom-domain-localring--912313df77af91d9a929087d.md) | 267 | `result-track:912313df77af91d9a929087d2f851043c09c289d069afe84ba35054a75474642` |
| 31 | `theorem` | [map_nonunit](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-nonunit--76c76742097dcc392dfc61c2.md) | 287 | `result-track:76c76742097dcc392dfc61c2b8e2a651ea0bb6a1b79add13f4ebffcb49610588` |
| 32 | `theorem` | [local_hom_TFAE](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/local-hom-tfae--00cb6e4287ce803728643bcc.md) | 302 | `result-track:00cb6e4287ce803728643bcccd6d669a8d34c2827c4511a171181c5b2c604092` |
| 33 | `theorem` | [of_surjective](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/of-surjective--89d90901832de67634240674.md) | 329 | `result-track:89d90901832de676342406746cf4e8ab825215eef93dd5b9974887cba217fb91` |
| 34 | `theorem` | [surjective_units_map_of_local_ringHom](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/surjective-units-map-of-local-ringhom--e9a45f118ab89ef785389343.md) | 342 | `result-track:e9a45f118ab89ef7853893430d744b60f7b120271004c26c81b3f318d20bcf03` |
| 35 | `def` | [ResidueField](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residuefield--64eeee4b20eaaf6bf5b989ae.md) | 357 | `declaration-track:64eeee4b20eaaf6bf5b989ae276fd1183b7dfd03722cbb8080ddfd481e0ca732` |
| 36 | `instance` | [ResidueFieldCommRing](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residuefieldcommring--421846e2a263728b3c3d4aea.md) | 362 | `declaration-track:421846e2a263728b3c3d4aea7e682d169db42fa2ed01c0eab14ae0791b058367` |
| 37 | `instance` | [ResidueFieldInhabited](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residuefieldinhabited--742393e3b404b1ea51c7e209.md) | 365 | `declaration-track:742393e3b404b1ea51c7e2094c62dbb809be5a3d8b7981b8b1e14a17dea1a400` |
| 38 | `instance` | [ResidueField.field](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residuefield-field--d2c5bb735ad35f2926ec830b.md) | 368 | `declaration-track:d2c5bb735ad35f2926ec830b242218655862ac0499991ab5715e53da870ce22d` |
| 39 | `def` | [residue](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residue--4fefb1a0890717d2771bea40.md) | 373 | `declaration-track:4fefb1a0890717d2771bea408f98e566be1f1939fbe164a6bf1f3bd5827054d5` |
| 40 | `instance` | [ResidueField.algebra](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residuefield-algebra--b122409d8478efc0f893d849.md) | 377 | `declaration-track:b122409d8478efc0f893d849c4f51ab8ef6e51d617930dbcd00138d030c47309` |
| 41 | `theorem` | [ResidueField.algebraMap_eq](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residuefield-algebramap-eq--d401058f86f87849349b66f9.md) | 381 | `result-track:d401058f86f87849349b66f9821c06b1607d48b2d099c5c3012190635e6b826c` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/instance--c62ed5db9ebef5a89c75ef7e.md) | 385 | `declaration-track:c62ed5db9ebef5a89c75ef7ec2a0ad923216cba51750283d9cea7cfe7cc4951e` |
| 43 | `def` | [lift](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/lift--973e58923857ae919710c0cc.md) | 394 | `declaration-track:973e58923857ae919710c0cce72b8a1cf049848841a8b6bb8f54532939cc2536` |
| 44 | `theorem` | [lift_comp_residue](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/lift-comp-residue--a2a16e0f8a3d749e820d355f.md) | 400 | `result-track:a2a16e0f8a3d749e820d355f9ad396a6fc12e6eab5901f0504aee5820b6d996d` |
| 45 | `theorem` | [lift_residue_apply](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/lift-residue-apply--10ba4a2caa17a99f3ed37781.md) | 406 | `result-track:10ba4a2caa17a99f3ed37781c94bdc3d41e5561c9f1f0cd2165da84254c2ac34` |
| 46 | `def` | [map](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map--1f4b0a3cf4a00da16b7ea903.md) | 412 | `declaration-track:1f4b0a3cf4a00da16b7ea903e7a419add0797ef90d6eb78ccbef907480e562c7` |
| 47 | `theorem` | [map_id](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-id--2e440a494bc66fc023b9a0c5.md) | 421 | `result-track:2e440a494bc66fc023b9a0c5c601f5d095c25f65196214a7e1c81589db599660` |
| 48 | `theorem` | [map_comp](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-comp--90d9be587a2ad66861547452.md) | 428 | `result-track:90d9be587a2ad66861547452461d43587e23d1565b761060b673e800dd8bfb2a` |
| 49 | `theorem` | [map_comp_residue](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-comp-residue--c6a7ee661a2a714f6de56a10.md) | 434 | `result-track:c6a7ee661a2a714f6de56a100cfea878d745ca37285f263bd6321dd02a78bcbe` |
| 50 | `theorem` | [map_residue](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-residue--9fe5391becf14214db5e1501.md) | 439 | `result-track:9fe5391becf14214db5e1501e472291fdfa48f277d3fd2fb862182e90f4c5158` |
| 51 | `theorem` | [map_id_apply](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-id-apply--5fc9673ce2a826cd21b5a5ca.md) | 444 | `result-track:5fc9673ce2a826cd21b5a5caca48f6022f042d425996713034253e0d69cb3090` |
| 52 | `theorem` | [map_map](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/map-map--13dc6c654650ee4979ddb702.md) | 449 | `result-track:13dc6c654650ee4979ddb702e7fffd5abe57bbbd08f06cf71ea63c1dbf06fb15` |
| 53 | `def` | [mapEquiv](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/mapequiv--ec3e1bf85b39ba4dbf5d4a01.md) | 456 | `declaration-track:ec3e1bf85b39ba4dbf5d4a0116d364e0dd1f8ebb2277216de73d74b960ef83d6` |
| 54 | `theorem` | [mapEquiv.symm](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/mapequiv-symm--ef461ebae3f7c7efd6f0a6e3.md) | 466 | `result-track:ef461ebae3f7c7efd6f0a6e3ab7488ab550d85768f5da4eedbf7d16b6479bb0c` |
| 55 | `theorem` | [mapEquiv_trans](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/mapequiv-trans--c62148dcce7026121dfa6624.md) | 471 | `result-track:c62148dcce7026121dfa6624e714f3706c587929db110e65e0959992b5b5b4b0` |
| 56 | `theorem` | [mapEquiv_refl](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/mapequiv-refl--45f31146288d2ab33acf2822.md) | 477 | `result-track:45f31146288d2ab33acf28224cb1ae024e18fe1c2d38511b3eb09d79c4a74d45` |
| 57 | `def` | [mapAut](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/mapaut--ede11874b433443e558ca107.md) | 484 | `declaration-track:ede11874b433443e558ca1075721961e279bcaf903c2d0d9ac212cb21976d0af` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/instance--fa5cde7fb7a986bd5627fe4f.md) | 495 | `declaration-track:fa5cde7fb7a986bd5627fe4f4653ad1aa878a1271540b983587206305d38b7e7` |
| 59 | `theorem` | [residue_smul](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/residue-smul--7a63543aee9c043c51df2b18.md) | 499 | `result-track:7a63543aee9c043c51df2b18c1eb7d1b8d2c4e2f7cef9689990dfae6a1ef706f` |
| 60 | `theorem` | [ker_eq_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/ker-eq-maximalideal--68ad6d1ea5ba27e6d3fef747.md) | 507 | `result-track:68ad6d1ea5ba27e6d3fef7473232f0bbe4c3b6cb6ddf1b1f91d15c275a44119f` |
| 61 | `theorem` | [isLocalRingHom_residue](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/islocalringhom-residue--88e4201a057d7d0586270f97.md) | 512 | `result-track:88e4201a057d7d0586270f97b189647cfbf17374a65742a9fb6e1e715c24bd44` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/instance--15ba5b7ecf3355183b2ba2e8.md) | 531 | `declaration-track:15ba5b7ecf3355183b2ba2e87f765cb189d7f84481b05b54d727441fc3476858` |
| 63 | `theorem` | [LocalRing.maximalIdeal_eq_bot](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/localring-maximalideal-eq-bot--bbcdf8a81af70b96874ce28d.md) | 538 | `result-track:bbcdf8a81af70b96874ce28d6ac961f390dd3083b4fa615a83e8ff4d270645f0` |
| 64 | `theorem` | [localRing](../../../../mathematics/Algebra/LocalRing/Variant7a90e48e2a8c0eaba828fc9344781c650c412293c5a44c05c8f95e04205ba537.lean/declarations/localring--3ec61deaf4fabaccad84a547.md) | 545 | `result-track:3ec61deaf4fabaccad84a54710e9f85bc6c7b75aff0a432abde9f37220d6421d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
