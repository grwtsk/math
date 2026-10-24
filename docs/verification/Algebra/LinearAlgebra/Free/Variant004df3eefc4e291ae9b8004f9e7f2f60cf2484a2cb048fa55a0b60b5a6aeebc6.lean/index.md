# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bf0c637eac3af20494b75e0c7c0f6c4f273010c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bf0c637eac3af20494b75e0c7c0f6c4f273010c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraTower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_rank_mul_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/lift-rank-mul-lift-rank--1d10d27123d05544836c2d1f.md) | 40 | `result-track:1d10d27123d05544836c2d1fde7d9396e738c6b57588d796556ef67912d25e77` |
| 2 | `theorem` | [rank_mul_rank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/rank-mul-rank--b7ab4fadd6100f9ce45862c4.md) | 54 | `result-track:b7ab4fadd6100f9ce45862c47faa18a896cf1b8380630ae52987feab292676ba` |
| 3 | `theorem` | [Module.finrank_mul_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/module-finrank-mul-finrank--1eaa5ba1b6ddcd0f9abcc3b5.md) | 61 | `result-track:1eaa5ba1b6ddcd0f9abcc3b5a18c1dd95e494830fbab319f1075364f6fd0207a` |
| 4 | `theorem` | [rank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/rank-eq-card-choosebasisindex--2e8809343f16ab8dec7d86c8.md) | 79 | `result-track:2e8809343f16ab8dec7d86c8acb86f4f2875e003d35004722eb87d65b50192b5` |
| 5 | `theorem` | [_root_.Module.finrank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/root-module-finrank-eq-card-choosebasisindex--febefdc190f72e3a204d80c7.md) | 83 | `result-track:febefdc190f72e3a204d80c7b1cdcaacec19e94ca0bce8c5466316c7348af2f9` |
| 6 | `lemma` | [rank_eq_mk_of_infinite_lt](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/rank-eq-mk-of-infinite-lt--ec807297e83c9a6b07023a28.md) | 89 | `result-track:ec807297e83c9a6b07023a28a15c660154b9c58b77b8048e99aa998e5c8a287a` |
| 7 | `theorem` | [nonempty_linearEquiv_of_lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/nonempty-linearequiv-of-lift-rank-eq--c4fde4d453e59cef53fc0aed.md) | 105 | `result-track:c4fde4d453e59cef53fc0aed1f997d17975f07d194f620448c143fd21a481c32` |
| 8 | `theorem` | [nonempty_linearEquiv_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/nonempty-linearequiv-of-rank-eq--51e96e13d6ec2a4d1333ff57.md) | 115 | `result-track:51e96e13d6ec2a4d1333ff57d71e181683587abe0d6155d3f1d83e38f50ab710` |
| 9 | `def` | [LinearEquiv.ofLiftRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/linearequiv-ofliftrankeq--4953a35834d468edc4e66977.md) | 124 | `declaration-track:4953a35834d468edc4e669773e222f031261d2f6656b1dddbc867e3cfe15a36d` |
| 10 | `def` | [LinearEquiv.ofRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/linearequiv-ofrankeq--01c2cbae55f4c8c1c6b7bd41.md) | 130 | `declaration-track:01c2cbae55f4c8c1c6b7bd4196b949b054a05f997f0d67f7546bb81b2b782805` |
| 11 | `theorem` | [LinearEquiv.nonempty_equiv_iff_lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/linearequiv-nonempty-equiv-iff-lift-rank-eq--94ebe4478516036c10ec6cc1.md) | 136 | `result-track:94ebe4478516036c10ec6cc16b663cc9a08266b34d865e9044de2c607e171a8a` |
| 12 | `theorem` | [LinearEquiv.nonempty_equiv_iff_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/linearequiv-nonempty-equiv-iff-rank-eq--e471460eb78ec348e007c34b.md) | 141 | `result-track:e471460eb78ec348e007c34ba73a80317c7cd59f6191778b2885c1cdca404283` |
| 13 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finitedimensional-nonempty-linearequiv-of-finrank-eq--8c47b3413b4bea7da7cc404c.md) | 146 | `result-track:8c47b3413b4bea7da7cc404c7a1e00dfbe5ed314fe0493a3852eb4763e1a8b45` |
| 14 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_iff_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finitedimensional-nonempty-linearequiv-iff-finrank-eq--474a11c4a40c0d8dc7fcb7da.md) | 152 | `result-track:474a11c4a40c0d8dc7fcb7da3e754078aba6a8c9c75c94f72930f226de571c9e` |
| 15 | `def` | [LinearEquiv.ofFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/linearequiv-offinrankeq--ee53f34000fc1895016192b8.md) | 159 | `declaration-track:ee53f34000fc1895016192b85d7c91915cbe81e0fe0ad7aec2e4b631e5a7f293` |
| 16 | `lemma` | [subsingleton_of_rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/subsingleton-of-rank-zero--fd6a50335f96810a9b88705f.md) | 168 | `result-track:fd6a50335f96810a9b88705f6698a627ab26c74fb64ab7c84db9d0b5b5530a40` |
| 17 | `lemma` | [rank_lt_aleph0_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/rank-lt-aleph0-iff--f08d248bfd7b1e9296a1a3d1.md) | 173 | `result-track:f08d248bfd7b1e9296a1a3d1bafbd0260b89c8ebff0dc912e1a66f7e56853033` |
| 18 | `theorem` | [finrank_of_not_finite](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finrank-of-not-finite--5e84eaabb4a5f90b88dfa942.md) | 178 | `result-track:5e84eaabb4a5f90b88dfa942826e632bf605b9a9ff76a541ea422e62a5e024e3` |
| 19 | `theorem` | [finite_of_finrank_pos](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finite-of-finrank-pos--588e9ee6de46d88a6a68c732.md) | 182 | `result-track:588e9ee6de46d88a6a68c7320c1ae52974475298ac098f42d48a5a966543fe0c` |
| 20 | `theorem` | [finite_of_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finite-of-finrank-eq-succ--6271730e734fde08188fbf8c.md) | 186 | `result-track:6271730e734fde08188fbf8c358eab3fc03ac3a5d95eedbfefac5d7850484baf` |
| 21 | `theorem` | [finite_iff_of_rank_eq_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finite-iff-of-rank-eq-nsmul--9279ce1b70e5246831b36a65.md) | 189 | `result-track:9279ce1b70e5246831b36a655e97e8ac5aa6c1d1d8f0709959fa21cd534f1af9` |
| 22 | `lemma` | [finrank_top_le_finrank_of_isScalarTower_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finrank-top-le-finrank-of-isscalartower-of-free--7a9831abcbe65555f819c80b.md) | 198 | `result-track:7a9831abcbe65555f819c80b642247e979c5cb563194b69d5b57cefadd26a22e` |
| 23 | `lemma` | [finrank_bot_le_finrank_of_isScalarTower_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finrank-bot-le-finrank-of-isscalartower-of-free--a5362c5980c6146bf53c0e0b.md) | 212 | `result-track:a5362c5980c6146bf53c0e0b65980102a0c287af5c0bb0e84356e92e63cfbbfd` |
| 24 | `def` | [finBasis](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finbasis--55320c315424d8a2fb986889.md) | 226 | `declaration-track:55320c315424d8a2fb9868897964ab1e5e7bc012bc1488d852b8774e64f2237e` |
| 25 | `def` | [finBasisOfFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/finbasisoffinrankeq--8d85c8932ef2b01bdd0c27c4.md) | 232 | `declaration-track:8d85c8932ef2b01bdd0c27c49ce58aa444ee9798d3f59f0ca380c9db7099ee63` |
| 26 | `def` | [basisUnique](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/basisunique--00d34ae16ac4c252e4131e9e.md) | 238 | `declaration-track:00d34ae16ac4c252e4131e9e397c91fa3e5729d2f0c868013991860d38b31346` |
| 27 | `theorem` | [basisUnique_repr_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/basisunique-repr-eq-zero-iff--cd0e3c4fe1d3a4758da62cc8.md) | 246 | `result-track:cd0e3c4fe1d3a4758da62cc88af23147686ebd579cc297aea9c6acc209fe1f14` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/declarations/instance--626fe519ee51faefd72f7730.md) | 257 | `declaration-track:626fe519ee51faefd72f7730fbaceecff49cfeaa8d0a50f8d882199e66fc9b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
