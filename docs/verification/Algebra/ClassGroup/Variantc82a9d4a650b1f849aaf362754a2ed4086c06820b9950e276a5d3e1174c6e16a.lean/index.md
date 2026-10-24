# Verification target: GRWTSK.Algebra.ClassGroup.Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md) · [Full source](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02e5f881947fef2b44892ea2db997205708cabf3`.

Source path: `GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_toPrincipalIdeal](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/coe-toprincipalideal--a2a27be33bee665eb2454f19.md) | 54 | `result-track:a2a27be33bee665eb2454f198fd8781d78187783900380db8fb3bf444ccd573d` |
| 2 | `theorem` | [toPrincipalIdeal_eq_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/toprincipalideal-eq-iff--a7c05cb055b57c729f147116.md) | 59 | `result-track:a7c05cb055b57c729f147116c4073acdc0ca69fb4d75fe113a1658ff4d93f16c` |
| 3 | `theorem` | [mem_principal_ideals_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/mem-principal-ideals-iff--c5d15cc0180f7d0bb1c2dc46.md) | 63 | `result-track:c5d15cc0180f7d0bb1c2dc46751f9d86aee9d66919ffa0ac56d3286ee79ce31f` |
| 4 | `instance` | [PrincipalIdeals.normal](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/principalideals-normal--85ade798d9204466425afe64.md) | 72 | `declaration-track:85ade798d9204466425afe64b3a63930f8bdbf22845f8acffc3e122eba7e5515` |
| 5 | `def` | [ClassGroup](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup--48f945b5137d1c515de6270b.md) | 82 | `declaration-track:48f945b5137d1c515de6270b5ee05fddda0e699140098757721876747cd8d764` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/instance--e9af669539483858ca9a4e67.md) | 85 | `declaration-track:e9af669539483858ca9a4e6705b45b9f46761bff44965137b4b32c0e12ccacc3` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/instance--a2b7bcaed6fbbd0ba0fe567d.md) | 88 | `declaration-track:a2b7bcaed6fbbd0ba0fe567dfa2dad499092d92f4fd57c0885d6887d9fea09fb` |
| 8 | `def` | [ClassGroup.mk](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk--12c066b2432f799e5ba7c9b6.md) | 93 | `declaration-track:12c066b2432f799e5ba7c9b67d056150d1f55a676f1dbed6177edfaf50119f82` |
| 9 | `lemma` | [ClassGroup.mk_def](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-def--995a031fc905d46bdeca4b94.md) | 97 | `result-track:995a031fc905d46bdeca4b9460bc4e8d8498c9df26f4e67c19d087897266e7c2` |
| 10 | `theorem` | [ClassGroup.Quot_mk_eq_mk](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-quot-mk-eq-mk--c352c4f3478d631f4f114d04.md) | 103 | `result-track:c352c4f3478d631f4f114d041e010db26f9827e5886d41a8c8e56a25d3ed2381` |
| 11 | `theorem` | [ClassGroup.mk_eq_mk](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-eq-mk--b7cac3c1ad6e8a6dc269a1c5.md) | 109 | `result-track:b7cac3c1ad6e8a6dc269a1c55e77ffd90a38c297e208f6f2c2a2117aeed15a7a` |
| 12 | `theorem` | [ClassGroup.mk_eq_mk_of_coe_ideal](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-eq-mk-of-coe-ideal--ca92057de32d47ea1c49f88d.md) | 115 | `result-track:ca92057de32d47ea1c49f88d0e70b8bd5691b4358fe121ef048c9c5692ed46cf` |
| 13 | `theorem` | [ClassGroup.mk_eq_one_of_coe_ideal](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-eq-one-of-coe-ideal--1bec46c74435c04d73e3d444.md) | 135 | `result-track:1bec46c74435c04d73e3d44403af5310d13a1450812ebcd4d2ab82189efa65f5` |
| 14 | `theorem` | [ClassGroup.induction](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-induction--28ae8356477e2d7f744fd6b0.md) | 157 | `result-track:28ae8356477e2d7f744fd6b055e4dff6d962d00ec1d7be06b6f8372d637abae2` |
| 15 | `def` | [ClassGroup.equiv](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-equiv--ec664da68c5405082e193a8d.md) | 167 | `declaration-track:ec664da68c5405082e193a8d4f3aac2371384ebd47044575c971c9d38d87d80b` |
| 16 | `theorem` | [ClassGroup.equiv_mk](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-equiv-mk--0116c4a9120f55d3cb6d494c.md) | 194 | `result-track:0116c4a9120f55d3cb6d494c5a635b95a5b86643a4aedecdd318cb53ba60d374` |
| 17 | `theorem` | [ClassGroup.mk_canonicalEquiv](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-canonicalequiv--c088664cdcbb2b3522c26c01.md) | 206 | `result-track:c088664cdcbb2b3522c26c0119bc8b91f7aec19b6f01349c3713e63dc5f4d170` |
| 18 | `def` | [FractionalIdeal.mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/fractionalideal-mk0--1bf0e135d42df949ca3fac93.md) | 215 | `declaration-track:1bf0e135d42df949ca3fac93381b816aa66f3dbefe95542751c46d216b454efb` |
| 19 | `theorem` | [FractionalIdeal.coe_mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/fractionalideal-coe-mk0--a4fa94ff14b6c61fe516a8da.md) | 222 | `result-track:a4fa94ff14b6c61fe516a8da94a35221c6ed760b9168362e5476275aa7b50102` |
| 20 | `theorem` | [FractionalIdeal.canonicalEquiv_mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/fractionalideal-canonicalequiv-mk0--29e4eafb0d6a25b9c574690b.md) | 225 | `result-track:29e4eafb0d6a25b9c574690b8c3ab5a0ba801cb17b1b4b9187ddcb3792d94fa0` |
| 21 | `theorem` | [FractionalIdeal.map_canonicalEquiv_mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/fractionalideal-map-canonicalequiv-mk0--e5b01cff0cff62e8c04457d5.md) | 232 | `result-track:e5b01cff0cff62e8c04457d5614320ced6dfcceafc37c6753c5619bda13b587d` |
| 22 | `def` | [ClassGroup.mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0--7365ff08ff9a749a400cc79f.md) | 239 | `declaration-track:7365ff08ff9a749a400cc79fbe083d7557d46560041ab6c31ae33ccac94852f6` |
| 23 | `theorem` | [ClassGroup.mk_mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-mk0--de7650b32a4666aeed9d47ec.md) | 243 | `result-track:de7650b32a4666aeed9d47eccb4d631b89e204c6a973342192cfa0139baac49e` |
| 24 | `theorem` | [ClassGroup.equiv_mk0](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-equiv-mk0--78d53681b1aeb09ccb7ce3a9.md) | 249 | `result-track:78d53681b1aeb09ccb7ce3a901da4975eb906db2e98825375b84bed0bc34837f` |
| 25 | `theorem` | [ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0-eq-mk0-iff-exists-fraction-ring--2a951680648992bf6bd47477.md) | 256 | `result-track:2a951680648992bf6bd474776afd9a9ecf49a95e9d50dc363b9a9762986fcb27` |
| 26 | `theorem` | [ClassGroup.mk0_eq_mk0_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0-eq-mk0-iff--7fdf22e6b8ec029ca107e4c6.md) | 273 | `result-track:7fdf22e6b8ec029ca107e4c683b6a7311c06e5972f231c89291d6fa1e6ef14e5` |
| 27 | `def` | [ClassGroup.integralRep](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-integralrep--f546c52a80fa18b6ee237aec.md) | 293 | `declaration-track:f546c52a80fa18b6ee237aecaf0f82f4a102bab9e01914a93b0d18977da7d85f` |
| 28 | `theorem` | [ClassGroup.integralRep_mem_nonZeroDivisors](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-integralrep-mem-nonzerodivisors--7365761330e6cee8f31bc96f.md) | 296 | `result-track:7365761330e6cee8f31bc96f78c9235456964201e5f3e9ce397bbff4f168673d` |
| 29 | `theorem` | [ClassGroup.mk0_integralRep](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0-integralrep--a76d2e70b24bb7e7cad5ad00.md) | 301 | `result-track:a76d2e70b24bb7e7cad5ad00f5ecc880b69f00248d3a797097028f33e03f6400` |
| 30 | `theorem` | [ClassGroup.mk0_surjective](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0-surjective--e982591397570ccc944f086f.md) | 313 | `result-track:e982591397570ccc944f086fc99cee7f0d38b55692ed2409cac0decbca824f57` |
| 31 | `theorem` | [ClassGroup.mk_eq_one_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk-eq-one-iff--fcc6cfc754c87c7c52fd1576.md) | 319 | `result-track:fcc6cfc754c87c7c52fd1576a96c6b5842d27ec9ca360f12871646c62c0a5f7a` |
| 32 | `theorem` | [ClassGroup.mk0_eq_one_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0-eq-one-iff--9dcd3ca0f42daf227aa70368.md) | 335 | `result-track:9dcd3ca0f42daf227aa70368108e78b315aca87ec4b6037cdc11e98e2259a709` |
| 33 | `theorem` | [ClassGroup.mk0_eq_mk0_inv_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/classgroup-mk0-eq-mk0-inv-iff--fdedf0e29d6781624d1acba7.md) | 339 | `result-track:fdedf0e29d6781624d1acba720b86660bf9b74d40a6c104ec44393b0dbd0c398` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/instance--b7f3dc6b3b2c3c47b75bc33f.md) | 354 | `declaration-track:b7f3dc6b3b2c3c47b75bc33f5eb9ee2008a4967c5fa5b1ba1572310b31d31d5b` |
| 35 | `theorem` | [card_classGroup_eq_one](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/card-classgroup-eq-one--307f76bd606d91818a523cf9.md) | 362 | `result-track:307f76bd606d91818a523cf978fd36892c8a3fc483f1368c9fdb90932ab2ec8d` |
| 36 | `theorem` | [card_classGroup_eq_one_iff](../../../../mathematics/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/declarations/card-classgroup-eq-one-iff--2d911543c01a6336cc4d9379.md) | 369 | `result-track:2d911543c01a6336cc4d93798d6f306752dfe544741597dbc6bff782d6b8f9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
