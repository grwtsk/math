# Verification target: GRWTSK.Algebra.Span.Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46823817528e53e28a492b4a24ce0988c9166bcd",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46823817528e53e28a492b4a24ce0988c9166bcd`.

Source path: `GRWTSK/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Idempotent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Lattice` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPrincipalIdealRing](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/isprincipalidealring--a7003ce08fd5b643df0cde82.md) | 34 | `declaration-track:a7003ce08fd5b643df0cde825f71530dbb832aa4e2296c20c22e0d185072db94` |
| 2 | `def` | [span](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span--00922b91fcceb4095d38f2c2.md) | 46 | `declaration-track:00922b91fcceb4095d38f2c24d1532d9cb04e3362f32ff8332d695f5c2ce3533` |
| 3 | `theorem` | [submodule_span_eq](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/submodule-span-eq--48c64ca1f9ec81fab920f546.md) | 50 | `result-track:48c64ca1f9ec81fab920f546a20aa4d22069b716c4814a620fe606262c21cc67` |
| 4 | `theorem` | [span_empty](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-empty--ed53fdceecc6d70b0053ced9.md) | 54 | `result-track:ed53fdceecc6d70b0053ced9f7e26821484d7d329777ce5ea297e2ef722c36e0` |
| 5 | `theorem` | [span_univ](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-univ--e1d8e6d0708970fcaf6e2ca9.md) | 58 | `result-track:e1d8e6d0708970fcaf6e2ca9df5f20cf66ec0663c3b7bef8ab04ba1f9566a589` |
| 6 | `theorem` | [span_union](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-union--196c475a838a1eb64da554a8.md) | 61 | `result-track:196c475a838a1eb64da554a8a58d41121cf29230fa754b5b03b3cb96d49f7d35` |
| 7 | `theorem` | [span_iUnion](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-iunion--1b6676794bc29d3c881d9149.md) | 64 | `result-track:1b6676794bc29d3c881d91490ed7f7bd2554504fb4c968f2e93737917baf3f11` |
| 8 | `theorem` | [mem_span](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span--da7637d835988e12b9fb70a4.md) | 67 | `result-track:da7637d835988e12b9fb70a4f72b50f39925f943ac2b14cdd8806722527a47ed` |
| 9 | `theorem` | [subset_span](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/subset-span--223b84b025e62190b0ca5854.md) | 70 | `result-track:223b84b025e62190b0ca58542b567931e33f24090fa25dee40c58e4c5aaec0c6` |
| 10 | `theorem` | [span_le](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-le--8fed8eac7e32254fa4f5e705.md) | 73 | `result-track:8fed8eac7e32254fa4f5e705e9365ceb3ec2e76a6bcc5a5416942356c2ec66c2` |
| 11 | `theorem` | [span_mono](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-mono--f77ecefcc0093f1e4413b4af.md) | 77 | `result-track:f77ecefcc0093f1e4413b4af94442995aab88aea649c5618a634b95d7f8e7c47` |
| 12 | `theorem` | [span_eq](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-eq--04528399544c453faac482ad.md) | 81 | `result-track:04528399544c453faac482ada6e0ef5d14c577e8085b229b3658392512fadaef` |
| 13 | `theorem` | [span_singleton_one](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-one--3447b2d8c53d19bcd0e676f4.md) | 85 | `result-track:3447b2d8c53d19bcd0e676f4befd96064ec6e6a4c4172c3bb3e204dcc36ee1e2` |
| 14 | `theorem` | [isCompactElement_top](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/iscompactelement-top--0c667b8c278c20df6eb24ead.md) | 88 | `result-track:0c667b8c278c20df6eb24ead778f354ec5d603951e12ca271e7c31582fef5627` |
| 15 | `theorem` | [mem_span_insert](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-insert--6d46569de26b45adfd83da69.md) | 91 | `result-track:6d46569de26b45adfd83da6946b0850dc4330a413458ab9480b968fc1250c938` |
| 16 | `theorem` | [mem_span_singleton'](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-singleton--6efc9b9a79dbc11980426522.md) | 95 | `result-track:6efc9b9a79dbc11980426522739e484400110ef8fe3052f22ad4898cc812a210` |
| 17 | `theorem` | [mem_span_singleton_self](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-singleton-self--dd027f72ce95113f96545527.md) | 98 | `result-track:dd027f72ce95113f96545527d5ae81b5ac57e054ce790d0361eabdd4fb9e5455` |
| 18 | `theorem` | [span_singleton_le_iff_mem](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-le-iff-mem--c1f892bd5b9f6907cfff6b84.md) | 101 | `result-track:c1f892bd5b9f6907cfff6b847891197f16d95f390bfb420c697a790e9fd87a64` |
| 19 | `theorem` | [span_singleton_mul_left_unit](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-mul-left-unit--96caab88b374d3446cf9cf50.md) | 104 | `result-track:96caab88b374d3446cf9cf502259564684d9bffb95f687a8f567610d5c5c707f` |
| 20 | `theorem` | [span_insert](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-insert--754cfba4d47a532f1a0bfc61.md) | 109 | `result-track:754cfba4d47a532f1a0bfc610ff1b3d9f6c2cd259e5a61ff5cd230781d623d77` |
| 21 | `theorem` | [span_eq_bot](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-eq-bot--7d06ed670774341fea62fef9.md) | 112 | `result-track:7d06ed670774341fea62fef9d2895e1b48f9ba0871a68f2559362025f365541e` |
| 22 | `theorem` | [span_singleton_eq_bot](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-eq-bot--ef6bf5ff7c732fc0c47102d9.md) | 116 | `result-track:ef6bf5ff7c732fc0c47102d9d608af064974cced09e58453bdf8fff8458d956c` |
| 23 | `theorem` | [span_singleton_ne_top](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-ne-top--089025a8f7d4a84d59b72f8e.md) | 119 | `result-track:089025a8f7d4a84d59b72f8ea49fcab9a70c348e8dcaa6da95807b4ba0ef73b8` |
| 24 | `theorem` | [span_zero](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-zero--c9331d474b4c645bc9c6db75.md) | 126 | `result-track:c9331d474b4c645bc9c6db752af93b20b9e365c28e0d76a4b68c5b58ded210c7` |
| 25 | `theorem` | [span_one](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-one--3232c622ddd701ccc566263c.md) | 129 | `result-track:3232c622ddd701ccc566263ccb99e70fc495f68092fea78feb781c463f956446` |
| 26 | `theorem` | [span_eq_top_iff_finite](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-eq-top-iff-finite--81cd87db3892d7f9c4dfb71c.md) | 131 | `result-track:81cd87db3892d7f9c4dfb71c67f510078703e802430b1e341b1d5da9c34816e4` |
| 27 | `theorem` | [mem_span_singleton_sup](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-singleton-sup--3215c9499d4f4485ee043d1f.md) | 136 | `result-track:3215c9499d4f4485ee043d1f229c02fff6fd0fae7a9d83cd941e0e01718133e6` |
| 28 | `def` | [ofRel](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/ofrel--4ffcc8ed40581722d1ebd58c.md) | 148 | `declaration-track:4ffcc8ed40581722d1ebd58c3360c64529d00e96bb4ecc390a6364bfa5ab89b7` |
| 29 | `theorem` | [zero_ne_one_of_proper](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/zero-ne-one-of-proper--3d4127175148d99bf4c78ea8.md) | 151 | `result-track:3d4127175148d99bf4c78ea8a9bb70bba0b74e86c14f03eb9c55a00f38990e6a` |
| 30 | `theorem` | [span_pair_comm](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-pair-comm--dc733fb1e09fdcd24fc16da0.md) | 154 | `result-track:dc733fb1e09fdcd24fc16da0ef23747a8374d2d3532267c73b850673f0f2e0b2` |
| 31 | `theorem` | [mem_span_pair](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-pair--e9a589ace59487fc010381f1.md) | 157 | `result-track:e9a589ace59487fc010381f139139c5299ead93ea534b93c081466aa7f333509` |
| 32 | `theorem` | [span_pair_add_mul_left](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-pair-add-mul-left--02ce4e056a8188634200fa8a.md) | 161 | `result-track:02ce4e056a8188634200fa8a9a9fe69012ec4d0d142ca72b15d3fd6ee0ea21cb` |
| 33 | `theorem` | [span_pair_add_mul_right](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-pair-add-mul-right--810a5a7eff612e5ad4a5c1b0.md) | 176 | `result-track:810a5a7eff612e5ad4a5c1b0ada252d8b63e5733454070a99ffb33e0f85916b8` |
| 34 | `theorem` | [mem_span_singleton](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-singleton--688817e75033acb570aa9263.md) | 194 | `result-track:688817e75033acb570aa9263fd303ab9ae5c0199dc86ee30cec6c39585438540` |
| 35 | `theorem` | [span_singleton_le_span_singleton](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-le-span-singleton--02de8577b9e89a4fa7bd1b4c.md) | 197 | `result-track:02de8577b9e89a4fa7bd1b4cb3e20bd2439504f1109d797f2752e8d27cc3a2c8` |
| 36 | `theorem` | [span_singleton_eq_span_singleton](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-eq-span-singleton--e92fd4a0213d5789dbb4c44f.md) | 201 | `result-track:e92fd4a0213d5789dbb4c44f83c3cb85e9ad38b8930111c80183fc8c098b9a88` |
| 37 | `theorem` | [span_singleton_mul_right_unit](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-mul-right-unit--dc9a96968cc09c38178c93ef.md) | 206 | `result-track:dc9a96968cc09c38178c93efbeb864b5b8c419ad36bd59d7f85351521e95ca0c` |
| 38 | `theorem` | [span_singleton_eq_top](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-eq-top--09706ca73ad6d6c731813547.md) | 210 | `result-track:09706ca73ad6d6c7318135477aae5cdd355d6b20b1440eaee08918314d06bd27` |
| 39 | `theorem` | [factors_decreasing](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/factors-decreasing--ccee3063f3803b7b3b695f91.md) | 213 | `result-track:ccee3063f3803b7b3b695f91f162709d3a97590673d9b5cecb6f8a5a39473bab` |
| 40 | `theorem` | [mem_span_insert'](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/mem-span-insert--c9b1085140b343966e3428d0.md) | 230 | `result-track:c9b1085140b343966e3428d0d1268e8f50c6567fa587279a3ad6cf22e80b07c4` |
| 41 | `theorem` | [span_singleton_neg](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-neg--a67a90b4a837fa51427ec89e.md) | 234 | `result-track:a67a90b4a837fa51427ec89e0c170a2cb1e01eec3ac0dd913b14fd6ec7de99b4` |
| 42 | `theorem` | [span_singleton_abs](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/span-singleton-abs--f597656b288b40766b5a3826.md) | 240 | `result-track:f597656b288b40766b5a3826b36f57f4ae9c2cc039ddae2535a520e767268b81` |
| 43 | `theorem` | [ker_toSpanSingleton_eq_span](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/ker-tospansingleton-eq-span--bc1c694330c9ac9dfe557dbb.md) | 254 | `result-track:bc1c694330c9ac9dfe557dbb76f8f04cc56c3c750b31139e9a3e9c6f8c04016c` |
| 44 | `theorem` | [ker_toSpanSingleton_one_sub_eq_span](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/ker-tospansingleton-one-sub-eq-span--d36a78ce0ef52e74408d2405.md) | 262 | `result-track:d36a78ce0ef52e74408d240530ec567aeb67b5798519af2842f5f605f6174b64` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Span/Varianta8ac2f1c2c55229d320aa6eb88756248c38c3034986f61d87dc85e5c3850d65b.lean/declarations/instance--1a01a0adb3a2417712334b84.md) | 270 | `declaration-track:1a01a0adb3a2417712334b84b098b7c072ba41d97196c0e2c7e7186da9ac3d12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
