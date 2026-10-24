# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25fbad12676c25da82f083b8bb319fc746a6bfdf",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25fbad12676c25da82f083b8bb319fc746a6bfdf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraTower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_rank_mul_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/lift-rank-mul-lift-rank--e36846efd789d5af5a4f30ac.md) | 48 | `result-track:e36846efd789d5af5a4f30ac61c36c320b0c40b7f7c98f90ec235346a1f74f83` |
| 2 | `theorem` | [rank_mul_rank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/rank-mul-rank--6539752008a34610ad1f13b6.md) | 62 | `result-track:6539752008a34610ad1f13b6998648b94914b2f6d8df8dcb356ff3e2d20b281f` |
| 3 | `theorem` | [Module.finrank_mul_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/module-finrank-mul-finrank--63981da3caecd8114674ec55.md) | 69 | `result-track:63981da3caecd8114674ec5501ca6463901808f8de5bcd6c5eb19cd5eefb4960` |
| 4 | `theorem` | [rank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/rank-eq-card-choosebasisindex--02b9bcba9e2d0765bce70d42.md) | 87 | `result-track:02b9bcba9e2d0765bce70d42047bc13c87c5e7d9ae833eb5012a9153a211b55d` |
| 5 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.Module.finrank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-variant004df3eefc4--218a35d39a502105edf007ea.md) | 91 | `result-track:218a35d39a502105edf007ea8c2d51050f9a3dc8dc08b92a4fe0219e58a96536` |
| 6 | `lemma` | [rank_eq_mk_of_infinite_lt](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/rank-eq-mk-of-infinite-lt--1167761e6d34a01d5603dbaa.md) | 97 | `result-track:1167761e6d34a01d5603dbaa47613ffcd60657272e93b0257dd3b1e6dff2626c` |
| 7 | `theorem` | [nonempty_linearEquiv_of_lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/nonempty-linearequiv-of-lift-rank-eq--b677e2b7500978816e5aecc6.md) | 113 | `result-track:b677e2b7500978816e5aecc658044dc595c59223f58e602cf280d49c8ce2a4a3` |
| 8 | `theorem` | [nonempty_linearEquiv_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/nonempty-linearequiv-of-rank-eq--98441501faae10ee95e24c85.md) | 123 | `result-track:98441501faae10ee95e24c856d38824660a942fd41cdb3f436807058f9fd62be` |
| 9 | `def` | [LinearEquiv.ofLiftRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/linearequiv-ofliftrankeq--fa9474e408731caa00272477.md) | 132 | `declaration-track:fa9474e408731caa002724774280db48b1a58ba08f170900aa90b7c194913441` |
| 10 | `def` | [LinearEquiv.ofRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/linearequiv-ofrankeq--c0a704cba7a2677b454a3a89.md) | 138 | `declaration-track:c0a704cba7a2677b454a3a899f86dcd9b4f60ade2786cdb22b8ba201de2a985c` |
| 11 | `theorem` | [LinearEquiv.nonempty_equiv_iff_lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/linearequiv-nonempty-equiv-iff-lift-rank-eq--aa5562af298e9982554b8858.md) | 144 | `result-track:aa5562af298e9982554b8858f9129c1141c09f1767ace0d87c6ca8c4780d8a1a` |
| 12 | `theorem` | [LinearEquiv.nonempty_equiv_iff_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/linearequiv-nonempty-equiv-iff-rank-eq--2f7c6517e93279b8dfb31f81.md) | 149 | `result-track:2f7c6517e93279b8dfb31f817c930b3976b005d6471c2ebe4cbd8ea4566e225f` |
| 13 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finitedimensional-nonempty-linearequiv-of-finrank-eq--beb02bae264c291e6dc45c9b.md) | 154 | `result-track:beb02bae264c291e6dc45c9bbc264f819718858bae95daa000d63eaf9133e077` |
| 14 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_iff_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finitedimensional-nonempty-linearequiv-iff-finrank-eq--ffa7b342b3654ae754625fb8.md) | 160 | `result-track:ffa7b342b3654ae754625fb821d41f10c319522caff9701728a32aebffc22428` |
| 15 | `def` | [LinearEquiv.ofFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/linearequiv-offinrankeq--c1561d0339c6f91090608ff0.md) | 167 | `declaration-track:c1561d0339c6f91090608ff03b8529d2c236f33a85974c8a6371cbd35ce428ed` |
| 16 | `lemma` | [subsingleton_of_rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/subsingleton-of-rank-zero--77b100a4e1307721d5b6b566.md) | 176 | `result-track:77b100a4e1307721d5b6b5666637e60d72951931427d3929eaf4a38de2a035a1` |
| 17 | `lemma` | [rank_lt_aleph0_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/rank-lt-aleph0-iff--c4545ac1ea1ab185195cb7a0.md) | 181 | `result-track:c4545ac1ea1ab185195cb7a07cb025b9ba923cfc9fd2285ef2675054c1af23c0` |
| 18 | `theorem` | [finrank_of_not_finite](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finrank-of-not-finite--65ab7d95b3d6e9ca21d185a1.md) | 186 | `result-track:65ab7d95b3d6e9ca21d185a1edae36f204ef81dec0021da48709c3074a7913f6` |
| 19 | `theorem` | [finite_of_finrank_pos](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finite-of-finrank-pos--e43ed168a50f8fa6652aeaa3.md) | 190 | `result-track:e43ed168a50f8fa6652aeaa3178ad7b55c0105b0ca4f4e831e8ad47d98c9090b` |
| 20 | `theorem` | [finite_of_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finite-of-finrank-eq-succ--39e218e72fe296c939b61091.md) | 194 | `result-track:39e218e72fe296c939b61091d002e2b6d44ab4db7720b705b9da06266583ef09` |
| 21 | `theorem` | [finite_iff_of_rank_eq_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finite-iff-of-rank-eq-nsmul--d63184b6366fca7965232a0a.md) | 197 | `result-track:d63184b6366fca7965232a0addf499c58e8960f89ae99f0c31bbde8f488c4afa` |
| 22 | `lemma` | [finrank_top_le_finrank_of_isScalarTower_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finrank-top-le-finrank-of-isscalartower-of-free--4b4c18e0af487e4570246566.md) | 206 | `result-track:4b4c18e0af487e457024656643109e079b8810426b8f936340be5494dd995670` |
| 23 | `lemma` | [finrank_bot_le_finrank_of_isScalarTower_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finrank-bot-le-finrank-of-isscalartower-of-free--4b5aed6eaece09f5a8cb4cd2.md) | 220 | `result-track:4b5aed6eaece09f5a8cb4cd2e504e2fba3e0ff37d6a24690e440ae56b532e303` |
| 24 | `def` | [finBasis](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finbasis--1459ffd8fcdb4954eca30a5f.md) | 234 | `declaration-track:1459ffd8fcdb4954eca30a5f979512d1e9b9faa2fb7776095df35efd05b9aa57` |
| 25 | `def` | [finBasisOfFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/finbasisoffinrankeq--18cb4fe3a8661d20d0f52964.md) | 240 | `declaration-track:18cb4fe3a8661d20d0f52964ee44eb2dc90f95ddb73636aefb3d25dd1262fa50` |
| 26 | `def` | [basisUnique](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/basisunique--a54f4759c580b039c6df65fa.md) | 246 | `declaration-track:a54f4759c580b039c6df65fa009b73218e76b0de8b4a72284fd13be83e3031cc` |
| 27 | `theorem` | [basisUnique_repr_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/basisunique-repr-eq-zero-iff--ad5e386ba45afe3f17ae64f0.md) | 254 | `result-track:ad5e386ba45afe3f17ae64f0c39812c22f1b028fcec547329f51f94eb34c8d39` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/declarations/instance--bd47c746ee7f20e3dbb52a89.md) | 265 | `declaration-track:bd47c746ee7f20e3dbb52a8939573a186a8a52c8b8b098528349e4abcdf30915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
