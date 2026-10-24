# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a64ac556ed4c85e1411d6de2971f7785a6f7635d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a64ac556ed4c85e1411d6de2971f7785a6f7635d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Option` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-bool--fb7a7f237315daba09cbab76.md) | 39 | `result-track:fb7a7f237315daba09cbab76d276e77e9120528c7ea2ad901e57757799874071` |
| 2 | `theorem` | [card_eq_sum_ones](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-eq-sum-ones--9fac8244e9b97d99abd2be12.md) | 41 | `result-track:9fac8244e9b97d99abd2be12c10d1550483294d1ba677973858097c311b064ff` |
| 3 | `theorem` | [prod_extend_by_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-extend-by-one--ec11dfa2cd60a1728fc8b8f0.md) | 51 | `result-track:ec11dfa2cd60a1728fc8b8f01b79f3bd32ec7974514c7fb64521d165dd801fca` |
| 4 | `theorem` | [prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-eq-one--ddc751cdafc8397ab0ff6467.md) | 62 | `result-track:ddc751cdafc8397ab0ff6467a9595db1f0a84362771e8b38c947c622fd96e4e8` |
| 5 | `theorem` | [prod_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-congr--db6b4af14f3f078ca426d768.md) | 66 | `result-track:db6b4af14f3f078ca426d7684ee4be07e0a17cf81d823ef1ef5f8003c4a9470b` |
| 6 | `theorem` | [prod_eq_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-eq-single--a713fa4c870e6ece8cd00a67.md) | 70 | `result-track:a713fa4c870e6ece8cd00a67a56e8065c5577978c3a9bc20a5e4c02940a2d36f` |
| 7 | `theorem` | [prod_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-eq-mul--88d5136c8f843540fd586d63.md) | 74 | `result-track:88d5136c8f843540fd586d634787756a2bc664e36bc5167d3e50308cbecbb508` |
| 8 | `theorem` | [eq_of_subsingleton_of_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/eq-of-subsingleton-of-prod-eq--54b9b4568f3a93ea5049f2e4.md) | 83 | `result-track:54b9b4568f3a93ea5049f2e4f0c60a73b00d452df9781a54463127f7e90b2d14` |
| 9 | `theorem` | [Fintype.prod_option](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-option--61d9804904be0b5c36dae4ea.md) | 98 | `result-track:61d9804904be0b5c36dae4eaaea8b718b4a8510e98dde99873ce6b36676c4450` |
| 10 | `theorem` | [Fintype.prod_eq_mul_prod_subtype_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-eq-mul-prod-subtype-ne--6dbe888e5ff8fbef66d951ac.md) | 102 | `result-track:6dbe888e5ff8fbef66d951acc20980a7ead6f31732777ffc7a08d3e7a40edc28` |
| 11 | `lemma` | [Finset.card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/finset-card-pi--ca6f583b37874e32b3e7aea8.md) | 114 | `result-track:ca6f583b37874e32b3e7aea85521ee4ad7f58643bc6c0736068a03627f54ee5c` |
| 12 | `lemma` | [card_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-pifinset--caa0ca19e436cbabd0312ac6.md) | 121 | `result-track:caa0ca19e436cbabd0312ac6fb6015a8b74753fde60fb350b9a05f7e37b26add` |
| 13 | `lemma` | [card_piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-pifinset-const--ddab3fadfa08e5e52880ad55.md) | 127 | `result-track:ddab3fadfa08e5e52880ad55446ac31f64779f6bab2fb98b1993e1c71028d5b0` |
| 14 | `lemma` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-pi--fd34b88bccbe1890282345dc.md) | 130 | `result-track:fd34b88bccbe1890282345dc7af963f9702734308e050355394a39e2c0a2dc39` |
| 15 | `lemma` | [card_pi_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-pi-const--450e65bd8bbb8b227ad776c5.md) | 136 | `result-track:450e65bd8bbb8b227ad776c539292be29eca212e9a5946b875e23fcca93ac5d9` |
| 16 | `theorem` | [prod_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-sigma--b04cad7c60ad5bc3eee85e1d.md) | 146 | `result-track:b04cad7c60ad5bc3eee85e1dc50f79ac236a3b91078749600871345258f736db` |
| 17 | `theorem` | [prod_sigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/prod-sigma--8207384b4c83962dff02324f.md) | 154 | `result-track:8207384b4c83962dff02324f937fc2be9d6d12fc42448a21309028717cb3b9b6` |
| 18 | `lemma` | [card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-sigma--2d3d66a96270e75b185a469a.md) | 158 | `result-track:2d3d66a96270e75b185a469a2678c776a59602ece50be3c41e94d190b511cb7b` |
| 19 | `lemma` | [card_filter_piFinset_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-filter-pifinset-eq-of-mem--19a6a37f04d08af00ebd9475.md) | 166 | `result-track:19a6a37f04d08af00ebd94752d65422c53935a331bf8df5df425da3a4e9390e1` |
| 20 | `lemma` | [card_filter_piFinset_const_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-filter-pifinset-const-eq-of-mem--af9208afe6644a81b2f0cde2.md) | 176 | `result-track:af9208afe6644a81b2f0cde2ff7e6ee5702f83424ceef816387a6253eff1d101` |
| 21 | `lemma` | [card_filter_piFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-filter-pifinset-eq--923fb9e961a9b33a7e9c2487.md) | 181 | `result-track:923fb9e961a9b33a7e9c2487b0cdcd0af7ebc9d8ea49136b63ea2d43f7aacce5` |
| 22 | `lemma` | [card_filter_piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-filter-pifinset-const--a4b77dc772a6f32c80e52a02.md) | 187 | `result-track:a4b77dc772a6f32c80e52a027fd328994123c5b9d5865383f4d4bfa56568d902` |
| 23 | `theorem` | [Fintype.card_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-card-fun--a1b06a045e3f85a6028af436.md) | 197 | `result-track:a1b06a045e3f85a6028af436df1d6a3864c6f720d9181afff6869d3ad045ae70` |
| 24 | `theorem` | [card_vector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/card-vector--c816d248967ab95a8baad9ad.md) | 202 | `result-track:c816d248967ab95a8baad9ad6084c6deffda4b29d44b6602bbdae105e438410e` |
| 25 | `theorem` | [Fin.prod_univ_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fin-prod-univ-eq-prod-range--648dbd774d407b77b93281b1.md) | 208 | `result-track:648dbd774d407b77b93281b1f8bc0e52d8c2b5bf224c2fa15c6f78f7b18be2a1` |
| 26 | `theorem` | [Finset.prod_fin_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/finset-prod-fin-eq-prod-range--a716da1a57f8f554d23903be.md) | 216 | `result-track:a716da1a57f8f554d23903bee25a63abab4a1cb3306b65580e0da798457ad569` |
| 27 | `theorem` | [Finset.prod_toFinset_eq_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/finset-prod-tofinset-eq-subtype--522ae13b9c5d80de2dd68617.md) | 223 | `result-track:522ae13b9c5d80de2dd686176e47f3bd54bbe103623d01e268736d2e4fe9b410` |
| 28 | `theorem` | [Fintype.prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-dite--c511085db2d1ef1c15614234.md) | 228 | `result-track:c511085db2d1ef1c15614234baf5efbec4e6dc21fdf3c4df2ea01a763f5c5f52` |
| 29 | `theorem` | [Fintype.prod_sumElim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-sumelim--3ec94647139a729716b952d0.md) | 244 | `result-track:3ec94647139a729716b952d0900e4d45e594c2891fbe39a0372be297acd2871b` |
| 30 | `theorem` | [Fintype.prod_sum_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-sum-type--91335227830739437196ffeb.md) | 252 | `result-track:91335227830739437196ffeb761cde7013f0996c3a73f8509bbc8f6fd3419133` |
| 31 | `theorem` | [Fintype.prod_prod_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-prod-type--8b2791959f3a5be1cc6162e5.md) | 260 | `result-track:8b2791959f3a5be1cc6162e5bd3146da52da23cd366096adc99e037f0c7efe07` |
| 32 | `theorem` | [Fintype.prod_prod_type'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-prod-type--67828f283e14e6d1ebf61f20.md) | 268 | `result-track:67828f283e14e6d1ebf61f209a192c806ad799ff2b515112b57d1c9164039bf2` |
| 33 | `theorem` | [Fintype.prod_prod_type_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-prod-type-right--1c85701231576e5228ce1e7c.md) | 273 | `result-track:1c85701231576e5228ce1e7c556f63c874f83d70878b9bbd11b2c84ed961dbfc` |
| 34 | `theorem` | [Fintype.prod_prod_type_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantf8cb9339d4f41d1966409d2a87e09e27bb633bbc3bc78187010588545349c122.lean/declarations/fintype-prod-prod-type-right--fe09710440ea8a4c5482f8c7.md) | 279 | `result-track:fe09710440ea8a4c5482f8c745f0eaace8859f330e77797cb881f9c5d508106d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
