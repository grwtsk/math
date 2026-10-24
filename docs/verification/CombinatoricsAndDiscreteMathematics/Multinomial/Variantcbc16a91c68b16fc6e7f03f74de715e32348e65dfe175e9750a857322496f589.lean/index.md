# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multinomial.Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "459526aa7fc3944046f8ef78cdcef04cf9e0f416",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `459526aa7fc3944046f8ef78cdcef04cf9e0f416`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.BigOperators` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial--383df20f00175c7f8a0d7dd1.md) | 50 | `declaration-track:383df20f00175c7f8a0d7dd1458ad8b0ce0fb9e73aa5b7a8f9cb827a6fedc096` |
| 2 | `theorem` | [multinomial_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-pos--16fea395871449840b710cdc.md) | 53 | `result-track:16fea395871449840b710cdc6245da98b50f80d545db2907e1d8d8a04de3e2a3` |
| 3 | `theorem` | [multinomial_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-spec--a370236ffe16c37bbf9b8f4d.md) | 57 | `result-track:a370236ffe16c37bbf9b8f4d38533cb263e9f97afacaa5e304802e5af89cc28a` |
| 4 | `lemma` | [multinomial_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-empty--4f5a235c6ef20b3ac7b76488.md) | 60 | `result-track:4f5a235c6ef20b3ac7b76488c6f197a400f1527036deb3a959c2591a87ec221c` |
| 5 | `lemma` | [multinomial_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-cons--6b388765b4675e9e040a68ce.md) | 64 | `result-track:6b388765b4675e9e040a68ce828b19c29400df237ecf7549d0b2be6640808350` |
| 6 | `lemma` | [multinomial_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-insert--8151a80dbb191090b7d4b719.md) | 72 | `result-track:8151a80dbb191090b7d4b719915d9c260514dbc0cfbf203dae3fcfffc31b9c8a` |
| 7 | `lemma` | [multinomial_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-singleton--d11cb9d9eed1cde5746a0ba7.md) | 76 | `result-track:d11cb9d9eed1cde5746a0ba7b65f7292ba3d95b3d2678e3e88aae59c91d2e35b` |
| 8 | `theorem` | [multinomial_insert_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-insert-one--353f323b8ada9d0b5948df6d.md) | 80 | `result-track:353f323b8ada9d0b5948df6d0a1225fb8baf8057a7bb1346c3fcdbb517c00e2c` |
| 9 | `theorem` | [multinomial_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-congr--66c1ec9e9573d4e134fd8303.md) | 87 | `result-track:66c1ec9e9573d4e134fd83034995aeababf49cec800af57d3095f15a97f0050e` |
| 10 | `theorem` | [binomial_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/binomial-eq--efe0885ad6d806b9794210f9.md) | 100 | `result-track:efe0885ad6d806b9794210f9e903b0ec5a39a4883cf9a153b5d01272f482bbdf` |
| 11 | `theorem` | [binomial_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/binomial-eq-choose--0e30875340fd3d0e77574710.md) | 104 | `result-track:0e30875340fd3d0e775747106d8d5a525a1660f6057e11d0b6dcf1d30e758e78` |
| 12 | `theorem` | [binomial_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/binomial-spec--b2e86cf0863d856cd408a5a1.md) | 108 | `result-track:b2e86cf0863d856cd408a5a170eee47ff8ed57b48b54fc3db61494c486621357` |
| 13 | `theorem` | [binomial_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/binomial-one--2ae3df673842b61ed478f913.md) | 112 | `result-track:2ae3df673842b61ed478f913867c906eb49b8cb243fec57693a694d22422b4ae` |
| 14 | `theorem` | [binomial_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/binomial-succ-succ--9e2cde91ec4c581aecbe01c3.md) | 116 | `result-track:9e2cde91ec4c581aecbe01c3ad178bc58553be109212f2ada02983011086c85c` |
| 15 | `theorem` | [succ_mul_binomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/succ-mul-binomial--d54361fb71ba0fe9772d7053.md) | 126 | `result-track:d54361fb71ba0fe9772d7053e6c9ff5adf89bb039d0e4954517037310ba3f173` |
| 16 | `theorem` | [multinomial_univ_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-univ-two--ad77aac9fc7de3dc34f11373.md) | 136 | `result-track:ad77aac9fc7de3dc34f1137312395be6e55b090632e15ba48d63cad9b3b02079` |
| 17 | `theorem` | [multinomial_univ_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-univ-three--562a0039ac033ce87a432033.md) | 141 | `result-track:562a0039ac033ce87a4320336cdc272bda067466f091fdf2a9f796231ce317e3` |
| 18 | `def` | [multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial--28121b44cb9f1ae862f3dd68.md) | 158 | `declaration-track:28121b44cb9f1ae862f3dd682a15f230d3a657dc09687e64b9e37cd0e1fea59b` |
| 19 | `theorem` | [multinomial_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-eq--e827f54d6e165d84c3a49d88.md) | 161 | `result-track:e827f54d6e165d84c3a49d88f4fc0c86a5ba4f326c8c07a54609b276772fcbfd` |
| 20 | `theorem` | [multinomial_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-update--493a22c6347e64a71038d0c6.md) | 164 | `result-track:493a22c6347e64a71038d0c603efbd9b14ed0839ddc64b50f1e723c7a9b36afc` |
| 21 | `def` | [multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial--c7df996078f92058b55b30ae.md) | 185 | `declaration-track:c7df996078f92058b55b30ae1a7cf24948c0679ac0eabd6799ecea98f8868c25` |
| 22 | `theorem` | [multinomial_filter_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-filter-ne--635ee04e8fb5e96080ce61c7.md) | 188 | `result-track:635ee04e8fb5e96080ce61c76a7a6cfed8ed55c129f0459b21ee8fb6753ab7d0` |
| 23 | `theorem` | [multinomial_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-zero--adc07fe2c8c00956bd732a7e.md) | 200 | `result-track:adc07fe2c8c00956bd732a7eb654492fe5ab14ac30628822a5fe4a4e9247a195` |
| 24 | `lemma` | [sum_pow_eq_sum_piAntidiag_of_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/sum-pow-eq-sum-piantidiag-of-commute--8c99d309e4335dc690d1f16c.md) | 219 | `result-track:8c99d309e4335dc690d1f16c33b9d1b37346f0d35568d48fdf96a751d8a93b7e` |
| 25 | `theorem` | [sum_pow_of_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/sum-pow-of-commute--f89b123d10dcd6b091447c15.md) | 259 | `result-track:f89b123d10dcd6b091447c151e67b0b345cb29feb7404ef9990f7b18f180c08c` |
| 26 | `lemma` | [sum_pow_eq_sum_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/sum-pow-eq-sum-piantidiag--869f7777082d6830a82cce12.md) | 297 | `result-track:869f7777082d6830a82cce1227b8499e20ff7923ae211a515cbb170b45bbe08f` |
| 27 | `theorem` | [sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/sum-pow--0aa66c84834efaa8a0727170.md) | 302 | `result-track:0aa66c84834efaa8a0727170c89d2b887bf344296ee712da31264ee27918e762` |
| 28 | `lemma` | [multinomial_two_mul_le_mul_multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-two-mul-le-mul-multinomial--6ed7c4ceec8ce115a94f1b03.md) | 314 | `result-track:6ed7c4ceec8ce115a94f1b03ba89a0b3a09aed39f924f7b14e76a7c05626ca85` |
| 29 | `theorem` | [multinomial_coe_fill_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/declarations/multinomial-coe-fill-of-notmem--0b3e1e8497a0c887e06d788e.md) | 337 | `result-track:0b3e1e8497a0c887e06d788e3a65ff8b976f697bb7b0aeeb1188e9c24f6599c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
