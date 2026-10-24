# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2730fe613d8c18d876b9cc2c37e171824063f725",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2730fe613d8c18d876b9cc2c37e171824063f725`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.EngelSubalgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Zero` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank--7ca24aeb7b60c67a8c4b388a.md) | 66 | `declaration-track:7ca24aeb7b60c67a8c4b388ae090aa8088d27a22164c6f857bac4a89c8e9f6ef` |
| 2 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/polycharpoly-coeff-rank-ne-zero--8c8b991a2f69dc149f2e1bd4.md) | 68 | `result-track:8c8b991a2f69dc149f2e1bd4278d4a2eb104d92437cd5a047796df5732d63333` |
| 3 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-eq-nattrailingdegree--fbb8b16f702cf4d0341601f1.md) | 72 | `result-track:fbb8b16f702cf4d0341601f1ccf1f06d329dc9412d2062f9117e480020f458c4` |
| 4 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-card--48c22eb763e3943e68d43df7.md) | 79 | `result-track:48c22eb763e3943e68d43df7a5e79e6e55cdd15e58ea8fdae539dde02fb49400` |
| 5 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-finrank--805b34e1182f6af80f7006f4.md) | 83 | `result-track:805b34e1182f6af80f7006f42eb269e7669f2898690f0fd9394c8ab35935388a` |
| 6 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--a357fce6965a8fc746b24e68.md) | 88 | `result-track:a357fce6965a8fc746b24e6808e73271a73ea1b758187c6e3e45d97896d05518` |
| 7 | `def` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular--efe82a9ef3ca75a91ea1c609.md) | 95 | `declaration-track:efe82a9ef3ca75a91ea1c609f16b03fa5a5f66ea8deb5c7d0cde12e0bb407fda` |
| 8 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-def--89f20d1921a110625b3453d8.md) | 97 | `result-track:89f20d1921a110625b3453d8a4c7c149c613d7ad33347e787382291e58cdbdb8` |
| 9 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--29990dbf69515d4434314223.md) | 100 | `result-track:29990dbf69515d44343142235d96e2de5ca2434251c7a698bce2662d7f1cdf31` |
| 10 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--30a59788f805213b58655398.md) | 106 | `result-track:30a59788f805213b58655398951d5d23409a29ef9e652020b6ac8ba1c9e129da` |
| 11 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/exists-isregular-of-finrank-le-card--7fdf8436229c8e942a6486a6.md) | 115 | `result-track:7fdf8436229c8e942a6486a6dac5b54a15d5dd474880fb69ef540b0109257483` |
| 12 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/exists-isregular--0feef4b5461ba3d2224b13ea.md) | 119 | `result-track:0feef4b5461ba3d2224b13ea310d8b32470b6d21e7d991d7e7957aeb1c1b2e7d` |
| 13 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank--fc5a106b2ca688c3657e2846.md) | 139 | `declaration-track:fc5a106b2ca688c3657e2846965b6b202efcc0071f6dd827904af2318ed0a910` |
| 14 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/polycharpoly-coeff-rank-ne-zero--8d9d606b29cf7d11ecea9175.md) | 141 | `result-track:8d9d606b29cf7d11ecea9175b01ed7988ee5cd65c8f7d98376ee0d4fb657e26d` |
| 15 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-eq-nattrailingdegree--ef74b8228c2797354d92dc29.md) | 145 | `result-track:ef74b8228c2797354d92dc29bfff537acbd8eaa476f536c127aaaa8033e7e09e` |
| 16 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-card--d848ebcf0bf473dcc016fbaa.md) | 152 | `result-track:d848ebcf0bf473dcc016fbaa3b98b7fd518062f400135dba86e3a403ff3566d1` |
| 17 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-finrank--4346ea886d96b49287668000.md) | 155 | `result-track:4346ea886d96b492876680003830e6d2a8b3b5c44f124da69a359ea27626742c` |
| 18 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--0f120753c347e998276ef31d.md) | 160 | `result-track:0f120753c347e998276ef31d1b37887686bc8f625bf813e3609a5198283b0b06` |
| 19 | `abbrev` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular--f63f3a1ab4e99985210c1396.md) | 167 | `declaration-track:f63f3a1ab4e99985210c13967d1ef02cc077ba66857abe24ac9a5eb9b990b073` |
| 20 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-def--c33a9a32165b9dcfd90fc400.md) | 169 | `result-track:c33a9a32165b9dcfd90fc400807c36214cd12adeffd9d404fdab9f906c6573c2` |
| 21 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--6141fb0e29deb73caecdfc23.md) | 172 | `result-track:6141fb0e29deb73caecdfc23d4f7a3df2d7ce16b54fb0dd7b3b710960f260ba2` |
| 22 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--e4eaab21ecf89c76349e4df8.md) | 178 | `result-track:e4eaab21ecf89c76349e4df873a37dd37b4db77d556d588affe73c3605c6e82a` |
| 23 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/exists-isregular-of-finrank-le-card--1c63a8f9fddf8966060e96c5.md) | 187 | `result-track:1c63a8f9fddf8966060e96c5c3b072d1830293677d79f4bfccdaa9425e273fce` |
| 24 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/exists-isregular--819840f346078488e460c175.md) | 191 | `result-track:819840f346078488e460c175ac3a450c6e2aacf8d8b5d63b70874bd422518e03` |
| 25 | `lemma` | [finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/finrank-engel--63cb1321485505b60c8d5fef.md) | 204 | `result-track:63cb1321485505b60c8d5fef918c4c88de2c8a17ff759564262797d2324bc020` |
| 26 | `lemma` | [rank_le_finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/rank-le-finrank-engel--83f48034cdd7112a055e7581.md) | 208 | `result-track:83f48034cdd7112a055e75814fccb8d7ba1935f967f5db527217d5fc5aa49ee6` |
| 27 | `lemma` | [isRegular_iff_finrank_engel_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta055aabc4b8bbbc7a7bed2ce231beed029d68f8a7a582b19037002aeebdfe113.lean/declarations/isregular-iff-finrank-engel-eq-rank--b858ff2b873725179cc01728.md) | 213 | `result-track:b858ff2b873725179cc01728e00caca9f88d27dac4cfa1b2c4bb2b6b21502bbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
