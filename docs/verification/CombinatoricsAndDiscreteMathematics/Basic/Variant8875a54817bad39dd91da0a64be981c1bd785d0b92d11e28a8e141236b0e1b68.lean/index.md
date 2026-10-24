# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree--57d8360646692637e6f1697c.md) | 42 | `declaration-track:57d8360646692637e6f1697ccf2d23c36266f090425a7f51c5e203d496bef83c` |
| 2 | `theorem` | [IsRelPrime.of_squarefree_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/isrelprime-of-squarefree-mul--2a469b4891c7660802a57461.md) | 45 | `result-track:2a469b4891c7660802a574615f5b364e2d2fa1f2fea65e962a6620a2cb99e6de` |
| 3 | `theorem` | [IsUnit.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/isunit-squarefree--4fa258dd7b3814b8b741c915.md) | 49 | `result-track:4fa258dd7b3814b8b741c915c7a77df6026b3dc2298edd769492a5db578e6b64` |
| 4 | `theorem` | [squarefree_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-one--d19b15b35320e1f75819695b.md) | 52 | `result-track:d19b15b35320e1f75819695b3e7cb7670cf11cd293b7c0103a5341ae169bf9a7` |
| 5 | `theorem` | [not_squarefree_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/not-squarefree-zero--161702e6a8af0d544edb4252.md) | 56 | `result-track:161702e6a8af0d544edb425271e17c3db3006e26e8c7d914d918ed7fcf1b38c1` |
| 6 | `theorem` | [Squarefree.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-ne-zero--d9d73474b3e949cd1607d36d.md) | 60 | `result-track:d9d73474b3e949cd1607d36d45e3388de9d773e2597ec71657fabcd154e4b34d` |
| 7 | `theorem` | [Irreducible.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/irreducible-squarefree--34a62add3ea07efb1fea19ee.md) | 66 | `result-track:34a62add3ea07efb1fea19ee2d493e96fa3646fe0fd33fa7e97aec2e21fede0a` |
| 8 | `theorem` | [Prime.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/prime-squarefree--3611880667765d7ef43036a7.md) | 74 | `result-track:3611880667765d7ef43036a7c390ccd5e4dfc6600e1db2886cc9bb0a8e62db1e` |
| 9 | `theorem` | [Squarefree.of_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-of-mul-left--a79202f791a64c87f2e4e671.md) | 78 | `result-track:a79202f791a64c87f2e4e6716067cda22af0a88a289f511a16d97eb932172c81` |
| 10 | `theorem` | [Squarefree.of_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-of-mul-right--635b132e8dbd02e13767bf3f.md) | 81 | `result-track:635b132e8dbd02e13767bf3f51a0026b6e40cc44df0d424cdfb7cade4743bbad` |
| 11 | `theorem` | [Squarefree.squarefree_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-squarefree-of-dvd--9b48afb6ef18a3464127222f.md) | 84 | `result-track:9b48afb6ef18a3464127222f2047fe4551a7d64f846230bfdd383fbb2446ab96` |
| 12 | `theorem` | [Associated.squarefree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/associated-squarefree-iff--a41c256782f2ba09ab724f53.md) | 87 | `result-track:a41c256782f2ba09ab724f5386011793702ebae0f3d73e9622cc22a5579a40aa` |
| 13 | `theorem` | [Squarefree.eq_zero_or_one_of_pow_of_not_isUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-eq-zero-or-one-of-pow-of-not-isunit--911f4ca2d29ae87571ec49cb.md) | 91 | `result-track:911f4ca2d29ae87571ec49cbe14f3102c69fcea3d30f7e6be5f2e2faa63a5918` |
| 14 | `theorem` | [Squarefree.pow_dvd_of_pow_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-pow-dvd-of-pow-dvd--f0cbcf4bfe5d7942f44dd83c.md) | 99 | `result-track:f0cbcf4bfe5d7942f44dd83cab8b84c0ea0788c648b7ce828294a80cd088ff4b` |
| 15 | `theorem` | [Squarefree.gcd_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-gcd-right--b1a305869acd7729f9f4ff4e.md) | 109 | `result-track:b1a305869acd7729f9f4ff4e983f1ce6c7f224d9e2c58121a88ae66956ca7b40` |
| 16 | `theorem` | [Squarefree.gcd_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-gcd-left--ceb65644783d90fd0cfdb893.md) | 112 | `result-track:ceb65644783d90fd0cfdb893fc41339a8ccef8a637bdebfe7e5224e5d1a8854b` |
| 17 | `theorem` | [squarefree_iff_emultiplicity_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-iff-emultiplicity-le-one--2fe22731652571a8757b17e4.md) | 117 | `result-track:2fe22731652571a8757b17e4b368c07423eb83894ee0fc6f73ac31aeb2ecc062` |
| 18 | `theorem` | [squarefree_iff_no_irreducibles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-iff-no-irreducibles--0e3c769fc12c5956a0d1fc03.md) | 129 | `result-track:0e3c769fc12c5956a0d1fc03b3d2fa55b1dc4a7792a0ec258f60c92142571bfa` |
| 19 | `theorem` | [irreducible_sq_not_dvd_iff_eq_zero_and_no_irreducibles_or_squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/irreducible-sq-not-dvd-iff-eq-zero-and-no-irreducibles-or-squarefree--3cad1f5a3f5e003554d0745b.md) | 136 | `result-track:3cad1f5a3f5e003554d0745b8195fef40b3d02961af47360931e1a502c0ccad0` |
| 20 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-ne-zero--814a9b9f14a2bd2c50ceba3a.md) | 147 | `result-track:814a9b9f14a2bd2c50ceba3a220cc32c81970f67fb1fa0f549bce074fda0ba71` |
| 21 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_exists_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-exists-irreducible--e8c07876b1ffa96a860d1d2c.md) | 151 | `result-track:e8c07876b1ffa96a860d1d2c1ccf6e1b8f125451091317199f078432c96f10a9` |
| 22 | `theorem` | [Squarefree.isRadical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-isradical--aecaaa32e6e8433b0eb4ea7c.md) | 163 | `result-track:aecaaa32e6e8433b0eb4ea7c5d5de2cae62e9f05153cad433e05b73fd3973c79` |
| 23 | `theorem` | [Squarefree.dvd_pow_iff_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-dvd-pow-iff-dvd--5231c9627cd876985bee89ef.md) | 168 | `result-track:5231c9627cd876985bee89ef4d38dff1d83cec4383cfd620a4c9e8eb9e463de4` |
| 24 | `theorem` | [IsRadical.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/isradical-squarefree--438b5dcbc83cbfadfe20f446.md) | 175 | `result-track:438b5dcbc83cbfadfe20f4463ccb52acc560460db8b2f8d0524970ae55ac7bbd` |
| 25 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-right--79d032fd46ded423ee620585.md) | 183 | `result-track:79d032fd46ded423ee620585905be2051bf5aa77c63dee89020f73c89ee6d9fd` |
| 26 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-left--1a2fcaad2f62c150a75edd84.md) | 195 | `result-track:1a2fcaad2f62c150a75edd842721d5e77b34b68834bd289a20a9b03a529de7fe` |
| 27 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-right--874c77c57cf9e26a1edda8f4.md) | 203 | `result-track:874c77c57cf9e26a1edda8f490b522e2dd1246f7e8062e81448919d440b3ab20` |
| 28 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-left--e6f9a412964a95ae68aa1f11.md) | 211 | `result-track:e6f9a412964a95ae68aa1f117dd9e978f701b1952b0015721ee5283fdc7f152c` |
| 29 | `theorem` | [dvd_of_isSquare_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/dvd-of-issquare-mul--a8f3eeb6f807dde9c54a4e80.md) | 215 | `result-track:a8f3eeb6f807dde9c54a4e802b1b4202b5e47dbc1aad8d0a725a16bc6411d60b` |
| 30 | `theorem` | [associated_of_isSquare_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/associated-of-issquare-mul--4ba9109f3a7d406324990033.md) | 223 | `result-track:4ba9109f3a7d406324990033b3487d945c2b78a94f5a3ed814179a89bfd1da57` |
| 31 | `theorem` | [squarefree_mul_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-mul-iff--21bc9e93ceedd40426a3e178.md) | 232 | `result-track:21bc9e93ceedd40426a3e17838efd360ca83d30e51d0655089a40a91fb6ba14e` |
| 32 | `theorem` | [Finset.squarefree_prod_of_pairwise_isCoprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/finset-squarefree-prod-of-pairwise-iscoprime--0d8b64c1c67bc2dfede1c813.md) | 238 | `result-track:0d8b64c1c67bc2dfede1c813308d190d31afe77fca316c1a982426527304f4f7` |
| 33 | `theorem` | [isRadical_iff_squarefree_or_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/isradical-iff-squarefree-or-zero--212e0a0c723cb5894e9eb2c6.md) | 250 | `result-track:212e0a0c723cb5894e9eb2c6838cdc8952f3f32d26ca8dd17cb26b030b6c8ba1` |
| 34 | `theorem` | [isRadical_iff_squarefree_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/isradical-iff-squarefree-of-ne-zero--46b27dd53a19a8517652cc6b.md) | 257 | `result-track:46b27dd53a19a8517652cc6b5f415863129f16f14ecbd12c9ce0f1531796a10d` |
| 35 | `lemma` | [_root_.exists_squarefree_dvd_pow_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/root-exists-squarefree-dvd-pow-of-ne-zero--ebec1d37f0d99ae3951cf627.md) | 266 | `result-track:ebec1d37f0d99ae3951cf627ef74f39523c9e0e3cec2524c378dd3b445850f2d` |
| 36 | `theorem` | [_root_.exists_sq_mul_squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/root-exists-sq-mul-squarefree--bc1b3260cf4606c618764413.md) | 283 | `result-track:bc1b3260cf4606c61876441306b970546cbfa46e0d2da2d92348ed31e2c39e06` |
| 37 | `theorem` | [squarefree_iff_nodup_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-iff-nodup-normalizedfactors--95d47a5204edd2a5323948f8.md) | 296 | `result-track:95d47a5204edd2a5323948f831d3ee894455297c7014412b6c1f3b2719c52036` |
| 38 | `theorem` | [squarefree_natAbs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-natabs--f4f776c574337209e623ae00.md) | 325 | `result-track:f4f776c574337209e623ae001e48270611012111b43879adf28a8b553970cfb8` |
| 39 | `theorem` | [squarefree_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/declarations/squarefree-natcast--89828d8b1b4ca5dd4bb75f3d.md) | 330 | `result-track:89828d8b1b4ca5dd4bb75f3de189bf6fb6cf8b8bc67f7b00eb48869de64d8b31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
