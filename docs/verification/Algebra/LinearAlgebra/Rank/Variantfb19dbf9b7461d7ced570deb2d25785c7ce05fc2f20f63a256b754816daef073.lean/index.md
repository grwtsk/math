# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9c5877344913b63037a49a5df28b6e17fa95621",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9c5877344913b63037a49a5df28b6e17fa95621`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.EngelSubalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Zero` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank--1ff6d375ff30c58a1655efca.md) | 58 | `declaration-track:1ff6d375ff30c58a1655efca7443913d15e2ba58f7311a603c267a278368ba2e` |
| 2 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/polycharpoly-coeff-rank-ne-zero--f61335c5f0bdfa195ca38201.md) | 60 | `result-track:f61335c5f0bdfa195ca382015b977862672c393bc9bcd4dca8f466bdc9375533` |
| 3 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-eq-nattrailingdegree--bdff31a49f0cf651693437c0.md) | 64 | `result-track:bdff31a49f0cf651693437c0ae382c0c971b9565206aeddb708ae8e17f8020b5` |
| 4 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-card--db9045ca32d59e7a0540f742.md) | 71 | `result-track:db9045ca32d59e7a0540f7429e12bf942eb1322f1afeae7b7da97526496b4b30` |
| 5 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-finrank--5c684e9f4f701bab1ed8e836.md) | 75 | `result-track:5c684e9f4f701bab1ed8e836ebb1c6e38acc3e1aab10397308892d40a8d75c91` |
| 6 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--3f4d476ce06b67f961d7375c.md) | 80 | `result-track:3f4d476ce06b67f961d7375c94f920d3d54239caa88ab7a24b303452ffdd9fe7` |
| 7 | `def` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular--def4471ea9ba2ea95c2beb17.md) | 87 | `declaration-track:def4471ea9ba2ea95c2beb17009705ec7be9e974e266cad5c1fc581a094d55b0` |
| 8 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-def--dd1069e6bed4db850b6e3d35.md) | 89 | `result-track:dd1069e6bed4db850b6e3d35dbc0b99626cf2fd594ce0d380d47f551ee518fc8` |
| 9 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--db4783715619df7893183141.md) | 92 | `result-track:db4783715619df7893183141b5b8a6bfdfc41dfff8ef8e726119d96552a9ef0b` |
| 10 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--dac8e0a4872e6dd18be91b26.md) | 98 | `result-track:dac8e0a4872e6dd18be91b262b3208f3bde1099809f2e59572db4a39c9a9882a` |
| 11 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/exists-isregular-of-finrank-le-card--297213ab44ee1caf5c4a99f2.md) | 107 | `result-track:297213ab44ee1caf5c4a99f24d0a62bbdd39a425b0b2c2f72fade517b836c119` |
| 12 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/exists-isregular--7c7925d76643b67b668410ea.md) | 111 | `result-track:7c7925d76643b67b668410eac29b803779099835272e692e606d66c01f174312` |
| 13 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank--2103d105d2bbf7266b96c946.md) | 131 | `declaration-track:2103d105d2bbf7266b96c9463a717bf065ee36ec5f031dcf943a69103767971b` |
| 14 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/polycharpoly-coeff-rank-ne-zero--f39024aef5798b6e13f3d14d.md) | 133 | `result-track:f39024aef5798b6e13f3d14d197efe7b8d0776619eef2e6ff8d39755aa9a41c7` |
| 15 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-eq-nattrailingdegree--941cc8031a22713578c06c3c.md) | 137 | `result-track:941cc8031a22713578c06c3cfcf649174167f69841dcd9547de5c7fb91552361` |
| 16 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-card--04b0989f4adaa2a604d2d67d.md) | 144 | `result-track:04b0989f4adaa2a604d2d67d8f1d69ca2b6127a72a553629effad1a88c832197` |
| 17 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-finrank--1f7d243d7e03e4889df28dfa.md) | 147 | `result-track:1f7d243d7e03e4889df28dfabd2ca01e7c024a308123296bf836675d931e637f` |
| 18 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--37d88dd9423bc6af4536d8fb.md) | 152 | `result-track:37d88dd9423bc6af4536d8fbf71c93184948c4b5a502025c430241f6b8120606` |
| 19 | `abbrev` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular--e5511d0f82fd1f6e0d5cda0c.md) | 159 | `declaration-track:e5511d0f82fd1f6e0d5cda0ccec7b503d69599146c22e86794bf4dd0a3c95b2f` |
| 20 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-def--a901f0833c2f7f54e32fa5e3.md) | 161 | `result-track:a901f0833c2f7f54e32fa5e3fd024e2b4d7ce547ddda4e97d56101b536ccfb59` |
| 21 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--460f450abf0d3f4d42ed17bc.md) | 164 | `result-track:460f450abf0d3f4d42ed17bc6773ff729f04bfe52ff9d5778a787ec4c9651fba` |
| 22 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--ec5485876e2c8be7a761278e.md) | 170 | `result-track:ec5485876e2c8be7a761278e1dafb332aecda6cba9fa4c1045f926e5da975b17` |
| 23 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/exists-isregular-of-finrank-le-card--0cc20675342c115107d70dad.md) | 179 | `result-track:0cc20675342c115107d70dad0d145d74985f2b529208b8f976b34abe922feee3` |
| 24 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/exists-isregular--a7331ec561308ee1cb8bf808.md) | 183 | `result-track:a7331ec561308ee1cb8bf80848382d9aed7bc1c6b5274e351ff9393b0c356ad1` |
| 25 | `lemma` | [finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/finrank-engel--37ad855f23825e2778abf381.md) | 196 | `result-track:37ad855f23825e2778abf381cc4246860e884359504688599c7d09dd8955bd8c` |
| 26 | `lemma` | [rank_le_finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/rank-le-finrank-engel--a8b6ce0a5e3dbcfde537c059.md) | 200 | `result-track:a8b6ce0a5e3dbcfde537c0597ba8827ec533cfc4c45d0c7954f10a2b2ee83925` |
| 27 | `lemma` | [isRegular_iff_finrank_engel_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/declarations/isregular-iff-finrank-engel-eq-rank--7f14d5976f27ab393a098aad.md) | 205 | `result-track:7f14d5976f27ab393a098aad36938955d5f68347910651b6768ee8bb5258d0ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
