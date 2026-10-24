# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db8b666d77153bf7fc137251adccd59989a8755",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db8b666d77153bf7fc137251adccd59989a8755`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticCharFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun--09c3fc112bad4dda4f82153f.md) | 41 | `declaration-track:09c3fc112bad4dda4f82153f13cf566e842a1e48efb0c6c83f3682a9667cea03` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun-eq-zero-iff--59e44ac54767acc3594b0ace.md) | 63 | `result-track:59e44ac54767acc3594b0ace3cf805c1b775f81cbf8e086646242f4433167575` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun-zero--0d022ea14fbfba639078c033.md) | 71 | `result-track:0d022ea14fbfba639078c0330f8f2a606beda88ebe12039c082ad165ef2f1b8a` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun-one--d41f5157c4b27a808331013b.md) | 75 | `result-track:d41f5157c4b27a808331013babba970ee813e60bc5b2ae6adc1adc203423942f` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun-eq-one-of-char-two--dafff2d509711ccad0b1d67c.md) | 79 | `result-track:dafff2d509711ccad0b1d67c03eeee728575a1be4adbe41643348ed78f189aed` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two--35b8fd884478232b23ece6b6.md) | 86 | `result-track:35b8fd884478232b23ece6b68723d35f568e3bee920dbf15dad3bd021f05bd0b` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticcharfun-mul--d998abb447f2d660c96ce65b.md) | 92 | `result-track:d998abb447f2d660c96ce65b7a2f39ac77d217e5e572cc0cae6d9f6fe853adff` |
| 8 | `def` | [quadraticChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar--85407ee601b63ec3bf4c5c9d.md) | 119 | `declaration-track:85407ee601b63ec3bf4c5c9d33a518a1632ed2cbe6b8a04a8246b950f26cce7d` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-eq-zero-iff--820104716114dd94149e895e.md) | 126 | `result-track:820104716114dd94149e895eb48c9d5bc6a44803188979af4add327bd42fffed` |
| 10 | `theorem` | [quadraticChar_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-zero--e4e965ad096b82422c02bf92.md) | 129 | `result-track:e4e965ad096b82422c02bf92015275366e63d5de685cf87d3bce445f8e324808` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-one-iff-issquare--5de693555d55ba97c44e14c3.md) | 133 | `result-track:5de693555d55ba97c44e14c34f83bb904881dc10cc2665ef4aa152e7e4df0630` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-sq-one--1c54bace28c8c0e461b1f43e.md) | 139 | `result-track:1c54bace28c8c0e461b1f43e81acb481714c975b84dd6962b39f3ab914b0a84e` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-sq-one--525c115dab71f1c7ecfd4e84.md) | 144 | `result-track:525c115dab71f1c7ecfd4e84393b5aead336118f67dab9e168ffcaf38ca6dc1c` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-dichotomy--be669b8b5f47f53390fb8ac1.md) | 148 | `result-track:be669b8b5f47f53390fb8ac1a8d89db78211b8e525c16c6d4ff5a128dd1f7207` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-eq-neg-one-iff-not-one--82ae8c0ba27f3d60fbef5a98.md) | 153 | `result-track:82ae8c0ba27f3d60fbef5a98efa512a93abc7efa062ba64e41f2b3dbbae20289` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-neg-one-iff-not-issquare--b70ecb097bb8efa19109fa15.md) | 158 | `result-track:b70ecb097bb8efa19109fa15bc353f2a7ab8fb964e74dcb5ee3dc9b88e7fc444` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-exists-neg-one--702b95097505ebc7daca77e2.md) | 164 | `result-track:702b95097505ebc7daca77e21866c972cf3792b7faf4d7cab5f9c032d55af8fb` |
| 18 | `lemma` | [quadraticChar_exists_neg_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-exists-neg-one--f5745deb49befa35eee65062.md) | 168 | `result-track:f5745deb49befa35eee650629fb1ad7741e0baec748b0c812df0f87b3b300deb` |
| 19 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-eq-one-of-char-two--06cc8ad45a664e6375e7d5da.md) | 174 | `result-track:06cc8ad45a664e6375e7d5dabf77c724cc659da7048bdecc8afbcba843df41d1` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--ce34867a224ecd7435d43f6b.md) | 180 | `result-track:ce34867a224ecd7435d43f6b5112ec7430d361df5563df3d58dba41d22e06bfe` |
| 21 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--24e9eb7fcdd2eb52e596ef5a.md) | 184 | `result-track:24e9eb7fcdd2eb52e596ef5a653fb1c90b7aa6e3b0f20b29e1d493714c9846fe` |
| 22 | `theorem` | [quadraticChar_isQuadratic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-isquadratic--ef7becadd7b9f12c4058e554.md) | 198 | `result-track:ef7becadd7b9f12c4058e55462dd6bc6076fd90e7bc6fe579a02c17ef6a8f105` |
| 23 | `theorem` | [quadraticChar_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-ne-one--29fc9746cb1045d659f8b87e.md) | 206 | `result-track:29fc9746cb1045d659f8b87e637e0d593a57445fb1fa87a61a1982c112a00905` |
| 24 | `theorem` | [quadraticChar_card_sqrts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-card-sqrts--5812dfaa5b883eb4d8d85b6d.md) | 213 | `result-track:5812dfaa5b883eb4d8d85b6d9f9e9bab6931b25d3b105d8d43510f686743d0b9` |
| 25 | `theorem` | [quadraticChar_sum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-sum-zero--fc9080c1e8e9566708fae1a0.md) | 238 | `result-track:fc9080c1e8e9566708fae1a0f89560661a33d2ef56d9c6ab98023ff66344eaaa` |
| 26 | `theorem` | [quadraticChar_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/quadraticchar-neg-one--1e50744610841b0a006573ee.md) | 257 | `result-track:1e50744610841b0a006573ee35a807810e2574f192f15c221eac6dc586ae16ad` |
| 27 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/declarations/finitefield-issquare-neg-one-iff--37a3737220aba53e4cb9811e.md) | 267 | `result-track:37a3737220aba53e4cb9811ea9e8a9693c52a6b7285ee45d1e34d8e191bad701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
