# Verification target: GRWTSK.Algebra.LinearAlgebra.FreeAndStrongRankCondition.Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df9f85997be88a5689440b6984c21e1f25e6d939",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df9f85997be88a5689440b6984c21e1f25e6d939`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Subsingleton` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.ofRankEqZero](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/basis-ofrankeqzero--2dee7e9d4a2df8d6608cdb33.md) | 32 | `declaration-track:2dee7e9d4a2df8d6608cdb33c9c7f192fabd7ccc6f07d551df4f98843a4d3040` |
| 2 | `theorem` | [Basis.ofRankEqZero_apply](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/basis-ofrankeqzero-apply--35129dd54cb3c714787a5237.md) | 41 | `result-track:35129dd54cb3c714787a5237513ca239009c4c30806376b7a911ff168ae6dc66` |
| 3 | `theorem` | [le_rank_iff_exists_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/le-rank-iff-exists-linearindependent--f7a83644f374733f855fcab4.md) | 44 | `result-track:f7a83644f374733f855fcab48316c8f8e7731c84e2bd68cd4b01ac5f015fe5db` |
| 4 | `theorem` | [le_rank_iff_exists_linearIndependent_finset](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/le-rank-iff-exists-linearindependent-finset--c8d3e56bccb17d8e3da4a1a6.md) | 61 | `result-track:c8d3e56bccb17d8e3da4a1a68890ec21305eb2356f822ab2fb99dbaf06335d7e` |
| 5 | `theorem` | [rank_le_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/rank-le-one-iff--bf88dd5646ec2c959592d106.md) | 73 | `result-track:bf88dd5646ec2c959592d1065e7bbbe787ce4052bbf362a6ddd70320150d942e` |
| 6 | `theorem` | [rank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/rank-eq-one-iff--4b28776f125726fee57445da.md) | 101 | `result-track:4b28776f125726fee57445da09df6b98785dfc98d1ef62567230f27195f0f88a` |
| 7 | `theorem` | [rank_submodule_le_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/rank-submodule-le-one-iff--822fb817dc98f46b97fd3a97.md) | 120 | `result-track:822fb817dc98f46b97fd3a97261bb7dec36b689d92aac914a9935954ceba3bab` |
| 8 | `theorem` | [rank_submodule_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/rank-submodule-eq-one-iff--d056d71a8d7cb82f849d3746.md) | 140 | `result-track:d056d71a8d7cb82f849d374658f1899c705856126cf2774740198f149937f506` |
| 9 | `theorem` | [rank_submodule_le_one_iff'](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/rank-submodule-le-one-iff--0c4f1de9c8ea2b3a248ceb6c.md) | 155 | `result-track:0c4f1de9c8ea2b3a248ceb6ccf14ebd12e606c697a645cb548a1c82af67f6b3a` |
| 10 | `theorem` | [Submodule.rank_le_one_iff_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/submodule-rank-le-one-iff-isprincipal--46870598dcf708db60a2326a.md) | 167 | `result-track:46870598dcf708db60a2326ae4b7cf0b160cf232aaef5b6b30d9c99178ff1a54` |
| 11 | `theorem` | [Module.rank_le_one_iff_top_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/module-rank-le-one-iff-top-isprincipal--f73aa312c09b7f3b3e6a207a.md) | 179 | `result-track:f73aa312c09b7f3b3e6a207afc58daf1d2103d80c47860c8aaf548ec3cdaa242` |
| 12 | `theorem` | [finrank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/finrank-eq-one-iff--5aa9932fc7213f8d4626e692.md) | 186 | `result-track:5aa9932fc7213f8d4626e692751a6c5bf918311bc6529d3015a61831e6887a31` |
| 13 | `theorem` | [finrank_eq_one_iff'](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/finrank-eq-one-iff--2450826aa11ef8772764ca8b.md) | 196 | `result-track:2450826aa11ef8772764ca8b79f4735494ae345b3cf4d027bc19a506763a77a8` |
| 14 | `theorem` | [finrank_le_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/finrank-le-one-iff--c04b820603e90c4968b8988a.md) | 204 | `result-track:c04b820603e90c4968b8988a5f2aca317309a5341947c4d3b36b81b68812b24e` |
| 15 | `theorem` | [Submodule.finrank_le_one_iff_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/submodule-finrank-le-one-iff-isprincipal--73526d2dd18cffb51eeef802.md) | 208 | `result-track:73526d2dd18cffb51eeef802ee40a449e5f503b6701b45f7d81042bbd30400cd` |
| 16 | `theorem` | [Module.finrank_le_one_iff_top_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/module-finrank-le-one-iff-top-isprincipal--292eafde451e5dc2388e6976.md) | 213 | `result-track:292eafde451e5dc2388e6976c4dd143d7a7c1348dff8f9c507c11f6e61f8457c` |
| 17 | `theorem` | [lift_cardinalMk_eq_lift_cardinalMk_field_pow_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/lift-cardinalmk-eq-lift-cardinalmk-field-pow-lift-rank--a7a3ab6d572ce143122f019a.md) | 218 | `result-track:a7a3ab6d572ce143122f019ac705614d25a3d1986e65c0ca7863bf29641b75d0` |
| 18 | `theorem` | [cardinalMk_eq_cardinalMk_field_pow_rank](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/cardinalmk-eq-cardinalmk-field-pow-rank--b24c07699e998520b6713a18.md) | 234 | `result-track:b24c07699e998520b6713a18cd2172a23dfe027ec3aa0171370cc641390993f8` |
| 19 | `theorem` | [cardinal_lt_aleph0_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/cardinal-lt-aleph0-of-finitedimensional--0d1dbaf03356251aae4401dd.md) | 243 | `result-track:0d1dbaf03356251aae4401dd064a2b236e639b65d5771cae387dfe3857dfe922` |
| 20 | `theorem` | [eq_bot_of_rank_le_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/eq-bot-of-rank-le-one--4484d4d59c3807ed15fe43a6.md) | 256 | `result-track:4484d4d59c3807ed15fe43a636e886f80aac45e2ae7212ac48e93cf70b1ef273` |
| 21 | `theorem` | [eq_bot_of_finrank_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/eq-bot-of-finrank-one--23b3549729ad197b715b9d9a.md) | 270 | `result-track:23b3549729ad197b715b9d9a4b043e9812c70de42c7703d058a0c98e819c20a7` |
| 22 | `theorem` | [rank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/rank-eq-one-iff--81b1d7b44f9796520f439aa3.md) | 276 | `result-track:81b1d7b44f9796520f439aa39174b7923394ee9ef103a9b16cafa59ddfe18bbc` |
| 23 | `theorem` | [finrank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/finrank-eq-one-iff--8d7547bc19549d2ff4fdd40f.md) | 291 | `result-track:8d7547bc19549d2ff4fdd40fea94b97912bdbbdd4b8aec189340853fd0d16889` |
| 24 | `theorem` | [bot_eq_top_iff_rank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/bot-eq-top-iff-rank-eq-one--55f337639fdfd410a009352d.md) | 295 | `result-track:55f337639fdfd410a009352d68ea79817ee4c628ad27a118ce5a5929b410dd8c` |
| 25 | `theorem` | [bot_eq_top_iff_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant101bd783cc39c1d66505dcd6682208c34c29f70192f0bb7d15d083acd48c6fc5.lean/declarations/bot-eq-top-iff-finrank-eq-one--688bd19d0307315f7c665f7f.md) | 301 | `result-track:688bd19d0307315f7c665f7ff2c0f6a76559b33ba430627e7d5a3b5b1b6d67ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
