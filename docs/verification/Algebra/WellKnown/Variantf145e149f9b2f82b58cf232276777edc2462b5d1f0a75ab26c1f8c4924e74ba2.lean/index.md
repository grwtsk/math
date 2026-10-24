# Verification target: GRWTSK.Algebra.WellKnown.Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md) · [Full source](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `573be53173ec1e7dcad83d95fd65556f49523066`.

Source path: `GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invunitssub--946d2261a6bb186a03c8df5e.md) | 35 | `declaration-track:946d2261a6bb186a03c8df5e6234534111ce1a6b0508be75b054cd620425ba70` |
| 2 | `theorem` | [coeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/coeff-invunitssub--836f24bf3f47fb43ae816fcd.md) | 39 | `result-track:836f24bf3f47fb43ae816fcd264ea25356a719089ccd0f7498da4fc08c1c7bce` |
| 3 | `theorem` | [constantCoeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/constantcoeff-invunitssub--af9ec8ce65e357bcc4913c41.md) | 43 | `result-track:af9ec8ce65e357bcc4913c413a40e4c690e8d9657432f4bb431c40e7e8e2dddf` |
| 4 | `theorem` | [invUnitsSub_mul_X](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invunitssub-mul-x--b71d7b3f4cef6dcf457416c9.md) | 47 | `result-track:b71d7b3f4cef6dcf457416c9d522b6266d2e3a2212ba6ef7160f030aa62f3683` |
| 5 | `theorem` | [invUnitsSub_mul_sub](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invunitssub-mul-sub--85ffed022f26c9847543f7e6.md) | 53 | `result-track:85ffed022f26c9847543f7e6f8782b03d43406da53707633a3182a4e175e06c0` |
| 6 | `theorem` | [map_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/map-invunitssub--836f690614d6d55504e86419.md) | 56 | `result-track:836f690614d6d55504e86419250bcdb19fe7ff626f90a14a9a09d3711a2f0346` |
| 7 | `theorem` | [mk_one_mul_one_sub_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/mk-one-mul-one-sub-eq-one--fb74990b36349e3698353d7f.md) | 74 | `result-track:fb74990b36349e3698353d7fd5a3512aae76ce63d4672922df30090227af7ee3` |
| 8 | `theorem` | [mk_one_pow_eq_mk_choose_add](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/mk-one-pow-eq-mk-choose-add--fd15ca23c20b86f1a10d9855.md) | 86 | `result-track:fd15ca23c20b86f1a10d98551155e6697553c2e25d751809d693484b38c1edb6` |
| 9 | `def` | [invOneSubPow](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow--4ed3ea5d57613ffe864bff81.md) | 103 | `declaration-track:4ed3ea5d57613ffe864bff8143a37d83f2c56702d8d9c1be7f4fb4a113c14e64` |
| 10 | `theorem` | [invOneSubPow_zero](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-zero--ec1709295b57d03c47ea3c91.md) | 114 | `result-track:ec1709295b57d03c47ea3c91ec1b0da3ea0815a0f7c99a565485dea135ea082e` |
| 11 | `theorem` | [invOneSubPow_val_eq_mk_sub_one_add_choose_of_pos](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-val-eq-mk-sub-one-add-choose-of-pos--cd68529e149aeca257a39f35.md) | 118 | `result-track:cd68529e149aeca257a39f35e59b42f08fa36cfac5340c70d273fc9ff3c40246` |
| 12 | `theorem` | [invOneSubPow_val_succ_eq_mk_add_choose](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-val-succ-eq-mk-add-choose--1f16207668906d186cf7b3c6.md) | 122 | `result-track:1f16207668906d186cf7b3c6e86cd311a8779b0be758b03e60360d751aa32aa1` |
| 13 | `theorem` | [invOneSubPow_val_one_eq_invUnitSub_one](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-val-one-eq-invunitsub-one--7860dd4722cc71d634d06d83.md) | 125 | `result-track:7860dd4722cc71d634d06d837dab4b3ee837ea9d16388bb8e1e306f4b3783199` |
| 14 | `theorem` | [invOneSubPow_eq_inv_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-eq-inv-one-sub-pow--f317c9a8034bb82f9c8396d8.md) | 134 | `result-track:f317c9a8034bb82f9c8396d8bb65132395784d8f0d1d8ac9f1a9e2d9fa892df2` |
| 15 | `theorem` | [invOneSubPow_inv_eq_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-inv-eq-one-sub-pow--3606b8028c847544923cc053.md) | 146 | `result-track:3606b8028c847544923cc0530a89fb84f97de13782c2a880e549f76580718b04` |
| 16 | `theorem` | [invOneSubPow_inv_zero_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-inv-zero-eq-one--615d08e264cdaf4e3a8565a2.md) | 152 | `result-track:615d08e264cdaf4e3a8565a2777ca07c04fe3eddacb3f6e59f741568d41da853` |
| 17 | `theorem` | [mk_add_choose_mul_one_sub_pow_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/mk-add-choose-mul-one-sub-pow-eq-one--b9c44723a36c5141faffc622.md) | 156 | `result-track:b9c44723a36c5141faffc622e053fb60baad25d398173cb9224112053b4b9b00` |
| 18 | `theorem` | [invOneSubPow_add](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/invonesubpow-add--a1face2f692aa2dd63cf0e3f.md) | 160 | `result-track:a1face2f692aa2dd63cf0e3f8941869c6e8a8a9545f184651813bcbe6e3ed41d` |
| 19 | `theorem` | [one_sub_pow_mul_invOneSubPow_val_add_eq_invOneSubPow_val](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/one-sub-pow-mul-invonesubpow-val-add-eq-invonesubpow-val--e1883aaeff523867e9a5e864.md) | 164 | `result-track:e1883aaeff523867e9a5e8644103fee98ed60306fa157cf513981fa7c2ecbbb9` |
| 20 | `theorem` | [one_sub_pow_add_mul_invOneSubPow_val_eq_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/one-sub-pow-add-mul-invonesubpow-val-eq-one-sub-pow--10c45c9d0952c628e42d4071.md) | 168 | `result-track:10c45c9d0952c628e42d4071d250a6d95089e2b515808ddcbfc8108984f0eae6` |
| 21 | `def` | [exp](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/exp--a4d87ad03682e4030c72eea8.md) | 181 | `declaration-track:a4d87ad03682e4030c72eea8b1449608fbae7fc372781497fdabe6f9008ff9c0` |
| 22 | `def` | [sin](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/sin--914b50fa685b347cdd45ec2b.md) | 185 | `declaration-track:914b50fa685b347cdd45ec2bdd034795bd8da8a24747dbe7d451ab72ab1cf3b8` |
| 23 | `def` | [cos](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/cos--a1a837ee82b90ef28653ed7d.md) | 189 | `declaration-track:a1a837ee82b90ef28653ed7d358c79eb157d83fdec5e871a51b69aa223476f50` |
| 24 | `theorem` | [coeff_exp](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/coeff-exp--a17fe8b919c7b1374b63ee16.md) | 195 | `result-track:a17fe8b919c7b1374b63ee16b8739193649b5059167c8eff3164640d4649dbb9` |
| 25 | `theorem` | [constantCoeff_exp](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/constantcoeff-exp--68f94ed1d1a1e2cd5b948138.md) | 199 | `result-track:68f94ed1d1a1e2cd5b948138e4300f6797d00cb8154ced06a55cd905b6c66ec9` |
| 26 | `theorem` | [map_exp](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/map-exp--26c31a6fd306955f488470bc.md) | 206 | `result-track:26c31a6fd306955f488470bc0d9056e5fe2acc1d2ae503a7786a678a80fef545` |
| 27 | `theorem` | [map_sin](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/map-sin--5f5a68e734e7163d032023af.md) | 211 | `result-track:5f5a68e734e7163d032023af0d06d3b9cc1c0ad295de5be2a7e5aec4f64ebb87` |
| 28 | `theorem` | [map_cos](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/map-cos--24a4af5e546da110d6df0ae3.md) | 216 | `result-track:24a4af5e546da110d6df0ae3a15315cfda30a03f8d337be6dc63ac6fc8c621ec` |
| 29 | `theorem` | [exp_mul_exp_eq_exp_add](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/exp-mul-exp-eq-exp-add--99e83a3f13bf03ef35bc0ef6.md) | 229 | `result-track:99e83a3f13bf03ef35bc0ef6092d4258c932d4849d67ab3a717a83eba382c699` |
| 30 | `theorem` | [exp_mul_exp_neg_eq_one](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/exp-mul-exp-neg-eq-one--25d25cfe9640d6e039cea4cc.md) | 256 | `result-track:25d25cfe9640d6e039cea4cccea5cbbae285b239b1854c7fcea41458121dfcd7` |
| 31 | `theorem` | [exp_pow_eq_rescale_exp](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/exp-pow-eq-rescale-exp--009c3236e608717a44521bcf.md) | 260 | `result-track:009c3236e608717a44521bcf09564ca9670298164de960f7169a31c695b6a18d` |
| 32 | `theorem` | [exp_pow_sum](../../../../mathematics/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/declarations/exp-pow-sum--4eb535954a0012a1988b9918.md) | 269 | `result-track:4eb535954a0012a1988b99188b476e7cfd4d3bcf35d1648da4b794015e0e0e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
