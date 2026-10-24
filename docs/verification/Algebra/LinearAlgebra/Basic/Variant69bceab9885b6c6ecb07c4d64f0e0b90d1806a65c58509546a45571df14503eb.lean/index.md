# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "512bed4bfea0d4a046cc9350793fcad712653801",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `512bed4bfea0d4a046cc9350793fcad712653801`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalarsEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/restrictscalarsequiv--439c0524dfc19642fae1f798.md) | 56 | `declaration-track:439c0524dfc19642fae1f7982a6096cafe9b17f1ae05f14bf884e5d5db9c8cfe` |
| 2 | `theorem` | [restrictScalarsEquiv_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/restrictscalarsequiv-mk--b6ba6b3bf6e4e3890df6b68d.md) | 63 | `result-track:b6ba6b3bf6e4e3890df6b68da085e8b799e6c180be4ecca79c23a7d5cf2b536c` |
| 3 | `theorem` | [restrictScalarsEquiv_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/restrictscalarsequiv-symm-mk--f2deb55d53e53fd22b621468.md) | 69 | `result-track:f2deb55d53e53fd22b62146860ed5797df1aca3470bb442ae6ee45fae8901a2b` |
| 4 | `theorem` | [nontrivial_of_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/nontrivial-of-lt-top--6d8f449b6ca2a5a8b524f4d7.md) | 76 | `result-track:6d8f449b6ca2a5a8b524f4d7fb60a5087f2133a2eeaf9c04cd9339d4ed048c81` |
| 5 | `instance` | [QuotientBot.infinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotientbot-infinite--5d0692dff8854b92cd962163.md) | 83 | `declaration-track:5d0692dff8854b92cd96216334d866054a20aa068192a411659d0fc0359aa153` |
| 6 | `instance` | [QuotientTop.unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotienttop-unique--10248371203b85736d8a7ad5.md) | 87 | `declaration-track:10248371203b85736d8a7ad52cd6152586dfc2e40f1a303b5c2ee9868648d2ce` |
| 7 | `instance` | [QuotientTop.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotienttop-fintype--4995741130c6783f26b6d845.md) | 92 | `declaration-track:4995741130c6783f26b6d8455545117ae0f71237d8c5e5010a9c0c6d86cb175b` |
| 8 | `theorem` | [subsingleton_quotient_iff_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/subsingleton-quotient-iff-eq-top--5c2e9c5fe68228d4507847b6.md) | 97 | `result-track:5c2e9c5fe68228d4507847b672c30d94eb586b6e7e9c9c612ff66e3ea909b3eb` |
| 9 | `theorem` | [unique_quotient_iff_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/unique-quotient-iff-eq-top--a4c28a8cbf18d951c3b02f64.md) | 106 | `result-track:a4c28a8cbf18d951c3b02f64163be7d93db1ca85eb11dbf4c8d3a64a0a6d01e1` |
| 10 | `instance` | [Quotient.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotient-fintype--3eb5b835392e8aa84143b7b5.md) | 112 | `declaration-track:3eb5b835392e8aa84143b7b5db77d2aa2a0105c336953201880b73ceed4ee795` |
| 11 | `theorem` | [card_eq_card_quotient_mul_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/card-eq-card-quotient-mul-card--fa6bef56c5c74a6bc665d639.md) | 115 | `result-track:fa6bef56c5c74a6bc665d63990bdb59cda578c29ed56491f6b162579a2628f08` |
| 12 | `theorem` | [strictMono_comap_prod_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/strictmono-comap-prod-map--ba438895c804adb1b973adcd.md) | 124 | `result-track:ba438895c804adb1b973adcdec213fb821d14d02afef6491e803cbf12feef5c0` |
| 13 | `def` | [liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/liftq--96edad8b2e4821b567f5350c.md) | 135 | `declaration-track:96edad8b2e4821b567f5350ca02bee12710649ef0bbd6bf16620183b468958e9` |
| 14 | `theorem` | [liftQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/liftq-apply--301122901f8e0390e4fdc1c8.md) | 140 | `result-track:301122901f8e0390e4fdc1c8c970d97ff93bcceae1f8ac0fff448a3a2755b880` |
| 15 | `theorem` | [liftQ_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/liftq-mkq--f7b44f274c9fdf8668a49012.md) | 144 | `result-track:f7b44f274c9fdf8668a490122c9d62d4090bdead2c98549ea95692bb0b4ad74e` |
| 16 | `theorem` | [pi_liftQ_eq_liftQ_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/pi-liftq-eq-liftq-pi--b6d3655925eca931f516df5d.md) | 146 | `result-track:b6d3655925eca931f516df5d860b66b32dd9239270d464a396925531acd633d8` |
| 17 | `def` | [liftQSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/liftqspansingleton--62fc675cac3c9e4f0d0666a6.md) | 156 | `declaration-track:62fc675cac3c9e4f0d0666a6501b9f75bc7601e51597b92bd7fc011231edc6d0` |
| 18 | `theorem` | [liftQSpanSingleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/liftqspansingleton-apply--cae0c8c055fa6d6650d51145.md) | 160 | `result-track:cae0c8c055fa6d6650d511453e44b69f7b6cf1544ccfed01d9fbe54668d97ac7` |
| 19 | `theorem` | [range_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/range-mkq--ca24b41e5616f46a4ae7807a.md) | 165 | `result-track:ca24b41e5616f46a4ae7807ab87385aea755bc773f52ab1d3b4e330a3388bc68` |
| 20 | `theorem` | [ker_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/ker-mkq--17ae91a4c95a791b81f4cde9.md) | 169 | `result-track:17ae91a4c95a791b81f4cde9b8b374398c49604cadb922f1d485385b1dc1af48` |
| 21 | `theorem` | [le_comap_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/le-comap-mkq--6ab6ffea2b0c068e7c8ab88f.md) | 171 | `result-track:6ab6ffea2b0c068e7c8ab88f2795f615b43238c2e6b15ebce2589d8c38832085` |
| 22 | `theorem` | [mkQ_map_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mkq-map-self--79780fd9fd79554ce0a69683.md) | 175 | `result-track:79780fd9fd79554ce0a69683bbc26394653c9df54cd8f1f28363d6114f2e98c2` |
| 23 | `theorem` | [comap_map_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/comap-map-mkq--b24203a63d29cf01612563d8.md) | 179 | `result-track:b24203a63d29cf01612563d8ecdb503eced22cfbabc5d687b86f982478332c2d` |
| 24 | `theorem` | [map_mkQ_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/map-mkq-eq-top--d3ad68f32c40e1441baf9daf.md) | 182 | `result-track:d3ad68f32c40e1441baf9dafc7dfbb68c95c596733dbd5d4d452bdd824b68d0f` |
| 25 | `def` | [mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq--445451800799d3d622871d74.md) | 189 | `declaration-track:445451800799d3d622871d74a1689ec2f1e426d8229bde02b13b1722d05071a3` |
| 26 | `theorem` | [mapQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq-apply--72e18ba5bbba50e3dee3f38b.md) | 193 | `result-track:72e18ba5bbba50e3dee3f38b30c8a8c7fe6ae017d56c2946ba6c524971d3d705` |
| 27 | `theorem` | [mapQ_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq-mkq--3f2f58b6392c3ff571abdb07.md) | 197 | `result-track:3f2f58b6392c3ff571abdb0741eaccdcdb77590f92730642a199adfc7f3d5447` |
| 28 | `theorem` | [mapQ_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq-zero--6bf01260b112f8b88301dc24.md) | 201 | `result-track:6bf01260b112f8b88301dc24c79fb6635c3e99141b97554556aba18892dda47f` |
| 29 | `theorem` | [mapQ_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq-comp--ec6d5d8be08adbe32b84937b.md) | 209 | `result-track:ec6d5d8be08adbe32b84937bf2234f5c96b25845a7b7a00a640adbb283048f91` |
| 30 | `theorem` | [mapQ_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq-id--35504c4163a78c2d4ddb1723.md) | 218 | `result-track:35504c4163a78c2d4ddb1723150c8b61430bae0b590dfeee615c1611d91a0004` |
| 31 | `theorem` | [mapQ_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapq-pow--55767ef17847e5c480da8f87.md) | 223 | `result-track:55767ef17847e5c480da8f878bcc13161598e6d144f298ccfdc3ca5b169dc12f` |
| 32 | `theorem` | [comap_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/comap-liftq--eb66a7e935cc43151ccb66d5.md) | 232 | `result-track:eb66a7e935cc43151ccb66d55934af43b0556617fe896544653267b4d458f40d` |
| 33 | `theorem` | [map_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/map-liftq--d6fa332e283dfe0afc739de5.md) | 236 | `result-track:d6fa332e283dfe0afc739de51d48c785023b60785891567ebb4c65d88ecfce87` |
| 34 | `theorem` | [ker_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/ker-liftq--c3aac85a059f04d1f618a443.md) | 241 | `result-track:c3aac85a059f04d1f618a443cda3db1db790ebd41e0fa022b6ba2685f697a7b7` |
| 35 | `theorem` | [range_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/range-liftq--758bf7669807e4c1a7757bc5.md) | 244 | `result-track:758bf7669807e4c1a7757bc5f7cea562e98b8a72eb1dc9270542aab47bcf503c` |
| 36 | `theorem` | [ker_liftQ_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/ker-liftq-eq-bot--7504582bcd58503a379e23f6.md) | 247 | `result-track:7504582bcd58503a379e23f6a4a1b98697109855143907b28ad4f13b9b4cd234` |
| 37 | `theorem` | [ker_liftQ_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/ker-liftq-eq-bot--3ecd0ff70646ba6246cb9932.md) | 250 | `result-track:3ecd0ff70646ba6246cb99326acff0ba0490d07eae1a783fe1cd296028f926af` |
| 38 | `abbrev` | [factor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/factor--2bc9d4d49e0718a5da192e73.md) | 264 | `declaration-track:2bc9d4d49e0718a5da192e73b0ac29b9e14775363732206d469ca7626ff3adf0` |
| 39 | `theorem` | [factor_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/factor-mk--c3f00bb55a95186c8a8878d7.md) | 268 | `result-track:c3f00bb55a95186c8a8878d7f650f7aa2b92f719a8e21e55f8b59707df59d2f6` |
| 40 | `theorem` | [factor_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/factor-comp-mk--c9d7856fe77ae5550150fc7e.md) | 272 | `result-track:c9d7856fe77ae5550150fc7eac491e2ca846458ee4124f87b335bb4215690e53` |
| 41 | `theorem` | [factor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/factor-comp--7cbe1ceadc7f475c6feeaa96.md) | 277 | `result-track:7cbe1ceadc7f475c6feeaa960453f14ddac039acf92209995d9c3d22ab9ded24` |
| 42 | `theorem` | [factor_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/factor-comp-apply--a566f9187ed58b9b474bfa50.md) | 283 | `result-track:a566f9187ed58b9b474bfa50403f136aa5a575d60374d0fd119073b6c291d5b9` |
| 43 | `lemma` | [factor_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/factor-surjective--03c437a8dad5ea0c80994a4b.md) | 288 | `result-track:03c437a8dad5ea0c80994a4bfb75e40ed84589461cad659f4b2563e4139e0216` |
| 44 | `def` | [comapMkQRelIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/comapmkqreliso--bd2b86fb034c010afbd78757.md) | 297 | `declaration-track:bd2b86fb034c010afbd787578540420362db0d8ca45359d56b90bfbe05a181cd` |
| 45 | `def` | [comapMkQOrderEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/comapmkqorderembedding--2f963fb5855f956cd9507813.md) | 306 | `declaration-track:2f963fb5855f956cd9507813d979bbddefc3fa389f60344eab13ad9cf7f4e13b` |
| 46 | `theorem` | [comapMkQOrderEmbedding_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/comapmkqorderembedding-eq--d1a383281a2b43bbad1c78a0.md) | 310 | `result-track:d1a383281a2b43bbad1c78a0f7219e9aaa14cc1b05082b2382099b5c81c34c85` |
| 47 | `theorem` | [span_preimage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/span-preimage-eq--819cdfc263175eda8e18389e.md) | 314 | `result-track:819cdfc263175eda8e18389eb494acd1c9e171e06f1800c1e4bd84fcda0d0ea4` |
| 48 | `def` | [Quotient.equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotient-equiv--19edff4698e899118c9279ef.md) | 332 | `declaration-track:19edff4698e899118c9279efbd775dff17a47503e1ea20b5a138221919e96fb3` |
| 49 | `theorem` | [Quotient.equiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotient-equiv-symm--80fa7d81a4eba45a920f4d70.md) | 345 | `result-track:80fa7d81a4eba45a920f4d70245a7af4b0df5ee4753dd19b1fb5146b940299a3` |
| 50 | `theorem` | [Quotient.equiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotient-equiv-trans--d9dbd8d7efe4224e66807b7f.md) | 353 | `result-track:d9dbd8d7efe4224e66807b7fd790c1e964177cf4851fb84506f3380715eba90b` |
| 51 | `theorem` | [range_mkQ_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/range-mkq-comp--75521e0b15b58b371a06e193.md) | 379 | `result-track:75521e0b15b58b371a06e19361681bb4179301beff5a7e22bd62885a7da1033d` |
| 52 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/ker-le-range-iff--de8cda5fd2c3fb59ae5efa1a.md) | 382 | `result-track:de8cda5fd2c3fb59ae5efa1af44df4fb3ddbd4fba0af5cc08d054885776d2421` |
| 53 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/range-eq-top-of-cancel--06ff7c6f145be90efa4d1f1b.md) | 387 | `result-track:06ff7c6f145be90efa4d1f1b925db25a683ca52050a55925b08eaca1f9b05e39` |
| 54 | `def` | [quotEquivOfEqBot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotequivofeqbot--7c6d78fae9d59d61b655eb3e.md) | 405 | `declaration-track:7c6d78fae9d59d61b655eb3e596174ceac38b2d1fb7243783321568fc9d5399d` |
| 55 | `theorem` | [quotEquivOfEqBot_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotequivofeqbot-apply-mk--6ba7483a8293b6bac9cfdb45.md) | 410 | `result-track:6ba7483a8293b6bac9cfdb452dbfefc8219e08d5bd1f13c6de878786a54324da` |
| 56 | `theorem` | [quotEquivOfEqBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotequivofeqbot-symm-apply--b44966a0228481c6f048258e.md) | 415 | `result-track:b44966a0228481c6f048258e665f3b92578c318ccf5d676d0fd4fd0d5b34dd3c` |
| 57 | `theorem` | [coe_quotEquivOfEqBot_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/coe-quotequivofeqbot-symm--a05ea3954a44eac25dcd2200.md) | 420 | `result-track:a05ea3954a44eac25dcd2200fd0cd872c749a1537ee3b17066492c3269f85883` |
| 58 | `theorem` | [Quotient.equiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/quotient-equiv-refl--f408bb2ee6939a8cbfbe35b3.md) | 425 | `result-track:f408bb2ee6939a8cbfbe35b37230053aa23a37f6fdd6ddf9cf54f18929652452` |
| 59 | `def` | [mapQLinear](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/declarations/mapqlinear--467f97790ef0c4c5b970afa6.md) | 443 | `declaration-track:467f97790ef0c4c5b970afa6f3de61def84f1212d159d97e0e85677ae6255e99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
