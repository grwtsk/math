# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Intervals.Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "368dd0235b1f605d254c40d4b23c59aff3e5f77a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `368dd0235b1f605d254c40d4b23c59aff3e5f77a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_Ico_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-add--06cb9574ef97fbe354e7a08b.md) | 38 | `result-track:06cb9574ef97fbe354e7a08b97cd6d7900060f340b2300b4a4ff53ec9f2ef7a2` |
| 2 | `theorem` | [prod_Ico_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-add--368ee4ffc992a96c3b52ffe5.md) | 45 | `result-track:368ee4ffc992a96c3b52ffe5ccb1c6ddf1ba4f7405cc62f3897a7ba25ed46202` |
| 3 | `theorem` | [prod_Ico_add_right_sub_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-add-right-sub-eq--ccdd36619c99979d442d213b.md) | 52 | `result-track:ccdd36619c99979d442d213ba5ed1a0015af3cd3c5b420e78bdcfbe1f036eeea` |
| 4 | `theorem` | [prod_Ico_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-succ-top--024c04f32cb951a87977d38b.md) | 58 | `result-track:024c04f32cb951a87977d38bf4834ade5ae52b8076959398b295b26643953cc4` |
| 5 | `theorem` | [prod_eq_prod_Ico_succ_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-eq-prod-ico-succ-bot--ec250802ffdf1386644a92e7.md) | 63 | `result-track:ec250802ffdf1386644a92e79b0a21ae0af0603e02b28236700375405f2b76cd` |
| 6 | `theorem` | [prod_Ico_consecutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-consecutive--695c373231779fde1abfacad.md) | 69 | `result-track:695c373231779fde1abfacada9faaa095121b15a4b7b4308bf518dba6cfb5f6c` |
| 7 | `theorem` | [prod_Ioc_consecutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ioc-consecutive--f67d45bae2b8fb6e7af9eb98.md) | 74 | `result-track:f67d45bae2b8fb6e7af9eb984d667870ef251277db39816c8ffd6092dd7a97bf` |
| 8 | `theorem` | [prod_Ioc_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ioc-succ-top--d1db131091eb93c0fc1dc738.md) | 82 | `result-track:d1db131091eb93c0fc1dc738c67bf132df2d857ca52c3b05b3a1da62d6f4ff68` |
| 9 | `theorem` | [prod_Icc_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-icc-succ-top--06f4de3507db8ce447b5c209.md) | 87 | `result-track:06f4de3507db8ce447b5c20986f77a8ae6c4845b123e070ce9f71046258ee20e` |
| 10 | `theorem` | [prod_range_mul_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-mul-prod-ico--73393bfaa528b10ce849c4dc.md) | 92 | `result-track:73393bfaa528b10ce849c4dc4dd958674b3adf4cbc07a7b6e7c4a080ebe194f9` |
| 11 | `theorem` | [prod_range_eq_mul_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-eq-mul-ico--074ef12cd29c8bc8aabb7963.md) | 97 | `result-track:074ef12cd29c8bc8aabb7963f9663c09bd7eadd62cb7c87aed918cdd496eae1f` |
| 12 | `theorem` | [prod_Ico_eq_mul_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-eq-mul-inv--d0d36f5b6cda220cf465acc7.md) | 102 | `result-track:d0d36f5b6cda220cf465acc75b56706a4ea9f2fd721c5e0740f69f8f7c8bd42e` |
| 13 | `theorem` | [prod_Ico_eq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-eq-div--c86efe9b526129fb5fb2f0ed.md) | 107 | `result-track:c86efe9b526129fb5fb2f0ed3685dacd931619c621933152ec277755620e3bee` |
| 14 | `theorem` | [prod_range_div_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-div-prod-range--893497467ec68019e330667b.md) | 112 | `result-track:893497467ec68019e330667b0f9b8f24a4955c12661ae383184a9e765133ff43` |
| 15 | `theorem` | [sum_Ico_Ico_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/sum-ico-ico-comm--a98c5bf81a9b12c844e7845e.md) | 121 | `result-track:a98c5bf81a9b12c844e7845e295d5e4306c33d3cdb9d23826a0c78643fa947bb` |
| 16 | `theorem` | [sum_Ico_Ico_comm'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/sum-ico-ico-comm--e4b15aa7c7e7dd58852e976e.md) | 132 | `result-track:e4b15aa7c7e7dd58852e976e78a9aa76415513d8d561b91270843be255626b64` |
| 17 | `theorem` | [prod_Ico_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-eq-prod-range--6703f56bf76f8bc158bf5060.md) | 143 | `result-track:6703f56bf76f8bc158bf5060c37a8ddfe8a0b6703849cd6221188a7fba911e2a` |
| 18 | `theorem` | [prod_Ico_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-reflect--c0c6d9a5abb780a67fe484ba.md) | 150 | `result-track:c0c6d9a5abb780a67fe484badf993d07fdb783c417b0da45647b3751c2bf40ea` |
| 19 | `theorem` | [sum_Ico_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/sum-ico-reflect--d0a4fd48e9ae04258fb5e2b3.md) | 167 | `result-track:d0a4fd48e9ae04258fb5e2b3e09b54c35fe0d258fbe1e44f1b54f4c11d6c1437` |
| 20 | `theorem` | [prod_range_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-reflect--363a57950d0dddd3cd04324d.md) | 171 | `result-track:363a57950d0dddd3cd04324d0c302c8bdd2aaa2aff10b521dcecc238f908f28a` |
| 21 | `theorem` | [sum_range_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/sum-range-reflect--991b89138cb5352f602d7051.md) | 179 | `result-track:991b89138cb5352f602d70517d79e2401156e9ca81630eeb3d5d97ca1f9f2a86` |
| 22 | `theorem` | [prod_Ico_id_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-id-eq-factorial--a140467b1448b7a45fa77745.md) | 184 | `result-track:a140467b1448b7a45fa77745e364bd83e9d124fc9ac7a0fb482f53c44172161c` |
| 23 | `theorem` | [prod_range_add_one_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-add-one-eq-factorial--0c346896f08a2be7492a02fa.md) | 191 | `result-track:0c346896f08a2be7492a02fafd1b1018dc62c85a9d952b6f751ab001bc9af8a3` |
| 24 | `theorem` | [sum_range_id_mul_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/sum-range-id-mul-two--38a17d204176057fe56461ac.md) | 198 | `result-track:38a17d204176057fe56461ac528820a7be01d8634f156628c7890bdcee74eb66` |
| 25 | `theorem` | [sum_range_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/sum-range-id--eddf9f435d11a9e13c9c6bb3.md) | 208 | `result-track:eddf9f435d11a9e13c9c6bb3a2210db9686332be346e5f317f9cc6e96f6662d0` |
| 26 | `lemma` | [prod_range_diag_flip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-diag-flip--ebf016fde83bc1a7f60e0f69.md) | 214 | `result-track:ebf016fde83bc1a7f60e0f69552ef1e44b1a5cc609accc63b27a2b56ceaea8db` |
| 27 | `theorem` | [prod_range_succ_div_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-succ-div-prod--82d9a59e9b75b8241474d7d3.md) | 237 | `result-track:82d9a59e9b75b8241474d7d3bbbc7a06bb19cd95f3b306f32ced9c88996c0fa5` |
| 28 | `theorem` | [prod_range_succ_div_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-range-succ-div-top--7f21e8754b2e8e2c66e8fc0c.md) | 241 | `result-track:7f21e8754b2e8e2c66e8fc0c4b749270d6c4f3e27db96b4bbf1fe6d890201670` |
| 29 | `theorem` | [prod_Ico_div_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-div-bot--6e593bf5f6bf20eb5c589f28.md) | 245 | `result-track:6e593bf5f6bf20eb5c589f2890945c1e3d438893ccf33d5f0d52d5f18e02d2f8` |
| 30 | `theorem` | [prod_Ico_succ_div_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-succ-div-top--ec5fab519e3de2ca9b7c850e.md) | 249 | `result-track:ec5fab519e3de2ca9b7c850e488db018b7e0183e1573433a7145553c4c47a7e6` |
| 31 | `theorem` | [prod_Ico_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant736f25d969f364caa2f8250ebffc918fac62401b1a2ce434f566c26235526546.lean/declarations/prod-ico-div--7ba27e3dd42ab5f3fe40440b.md) | 254 | `result-track:7ba27e3dd42ab5f3fe40440b2f1aa2f3423d63d5a27792704afedb21a84b7ba2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
