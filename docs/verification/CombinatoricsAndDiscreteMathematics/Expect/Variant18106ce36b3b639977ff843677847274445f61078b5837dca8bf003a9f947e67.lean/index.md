# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Expect.Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0613fcfa4953f33b4781b58f38304e87796ab56",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0613fcfa4953f33b4781b58f38304e87796ab56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion.Field` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-eq-zero-iff-of-nonneg--7b0b8e72c8d8ab13e4e8ced0.md) | 44 | `result-track:7b0b8e72c8d8ab13e4e8ced06c8b71639b6e0b962f5ec95fb5b088c49589e3a9` |
| 2 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-eq-zero-iff-of-nonpos--52f674eddd475f76d8606cb9.md) | 48 | `result-track:52f674eddd475f76d8606cb93845c7b9426270f48574c69af8664f8d9a729928` |
| 3 | `lemma` | [expect_le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-le-expect--67eef5a80c075012a497eac5.md) | 56 | `result-track:67eef5a80c075012a497eac56c2404f83ab1b66e6d1779fac3c6abef31ee0643` |
| 4 | `lemma` | [expect_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-le--03f15549ee0ba773c4ef1403.md) | 59 | `result-track:03f15549ee0ba773c4ef14036115db55186ac807e7d7e1abb39c6a78b25d3322` |
| 5 | `lemma` | [le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/le-expect--ee2a350b73cbe726cdfa8ed9.md) | 63 | `result-track:ee2a350b73cbe726cdfa8ed999524e8d713046fc7d37f32907197fa2f4a598ad` |
| 6 | `lemma` | [expect_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-nonneg--bfeacad99294bc2d814df7ae.md) | 67 | `result-track:bfeacad99294bc2d814df7ae8650cbbad5f3cadfc1ac842000068d95746ec58e` |
| 7 | `lemma` | [le_expect_nonempty_of_subadditive_on_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/le-expect-nonempty-of-subadditive-on-pred--cf1d08e965eea77ad98fd906.md) | 81 | `result-track:cf1d08e965eea77ad98fd906cb3c8e73bdfd4f9c7416b78758aaae413602e728` |
| 8 | `lemma` | [le_expect_nonempty_of_subadditive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/le-expect-nonempty-of-subadditive--579efc2e747f2a9bc2361963.md) | 91 | `result-track:579efc2e747f2a9bc2361963c66afb04d92271cbee11aac0e433cabc48d73593` |
| 9 | `lemma` | [le_expect_of_subadditive_on_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/le-expect-of-subadditive-on-pred--f07178b8ed014068505e16c0.md) | 100 | `result-track:f07178b8ed014068505e16c0f71298088671e460c75dc12ba7cbee4743393b04` |
| 10 | `lemma` | [le_expect_of_subadditive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/le-expect-of-subadditive--c410bcd99df243256a84e6e6.md) | 111 | `result-track:c410bcd99df243256a84e6e661b28cfdb9e11e9ceb5b7c88ede58b13f8bcd56f` |
| 11 | `lemma` | [expect_lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-lt-expect--e40d46f3d6e0dbb13d1eecd4.md) | 123 | `result-track:e40d46f3d6e0dbb13d1eecd40cf00e93d5de5755e407c3a97829d34c76c9d5df` |
| 12 | `lemma` | [expect_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-lt--5dc5f69b43c50d3be4171796.md) | 128 | `result-track:5dc5f69b43c50d3be417179613aefab4ef9fd2f8618cf3d4bf5e2e41fd9284c8` |
| 13 | `lemma` | [lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/lt-expect--045de51e0ee1f280d8ace456.md) | 133 | `result-track:045de51e0ee1f280d8ace456e640a1c56464d8b826f35e678a4632c6af7760d6` |
| 14 | `lemma` | [expect_pos'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-pos--a18f0b787b872c29a130674d.md) | 138 | `result-track:a18f0b787b872c29a130674d3a34b544843ba2f9f5714dc5c27b2f097b1dcf64` |
| 15 | `lemma` | [expect_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-pos--43c88f4a6f2fd571db3fa443.md) | 141 | `result-track:43c88f4a6f2fd571db3fa443d39bc97425297c21537a1dbc73855efcf0c5c133` |
| 16 | `lemma` | [exists_lt_of_expect_lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/exists-lt-of-expect-lt-expect--06b6405bc0d34919b35eff5c.md) | 151 | `result-track:06b6405bc0d34919b35eff5cca3a927a980e6d38509513bb9cbbb33478887aa9` |
| 17 | `lemma` | [exists_lt_of_lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/exists-lt-of-lt-expect--d514142716a002a0ee9bc049.md) | 155 | `result-track:d514142716a002a0ee9bc0491bdf11eb5c917e74a2dae175ef126f3660c46256` |
| 18 | `lemma` | [exists_lt_of_expect_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/exists-lt-of-expect-lt--20c990b8c9936311e5bc8a32.md) | 158 | `result-track:20c990b8c9936311e5bc8a321b00a9d4b897632b7a15526f9a546250cf4bba60` |
| 19 | `lemma` | [exists_le_of_expect_le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/exists-le-of-expect-le-expect--1bbf09a2104e28a59a84b8b3.md) | 167 | `result-track:1bbf09a2104e28a59a84b8b362decc49d6b5eb47b2e730c1574c787ae6c4ea70` |
| 20 | `lemma` | [exists_le_of_le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/exists-le-of-le-expect--85b59ce4dabb639d026c5d26.md) | 171 | `result-track:85b59ce4dabb639d026c5d26f7c8c946118ccad6830e1958d6a968ee47001bb2` |
| 21 | `lemma` | [exists_le_of_expect_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/exists-le-of-expect-le--7d59caafa0387aa695aaf4eb.md) | 174 | `result-track:7d59caafa0387aa695aaf4ebe20e85df7b84743a9ccc524aebb4fcebd152f770` |
| 22 | `lemma` | [abs_expect_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/abs-expect-le--5ffc2bb3fe0e005fa39f0a27.md) | 182 | `result-track:5ffc2bb3fe0e005fa39f0a2743e365c65079c7bea916daf21a8fb754e834bd13` |
| 23 | `lemma` | [expect_mul_sq_le_sq_mul_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-mul-sq-le-sq-mul-sq--c46b707cf3b3a526079b735c.md) | 192 | `result-track:c46b707cf3b3a526079b735c026f513bad83cac6690f895095a6ebae2c6a8c24` |
| 24 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-eq-zero-iff-of-nonneg--19dd09e7c3837f5d403cc4e6.md) | 209 | `result-track:19dd09e7c3837f5d403cc4e6b628a40c21adc20bcc6e8d65caf9a6bdbb059f5e` |
| 25 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/expect-eq-zero-iff-of-nonpos--dd4d667fffd24d627a5fb664.md) | 213 | `result-track:dd4d667fffd24d627a5fb664438a1ed9c8599b23098e7078d72a435eb45f4a55` |
| 26 | `def` | [evalFinsetExpect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/evalfinsetexpect--7cc43d3bd87d84374c1f8258.md) | 229 | `declaration-track:7cc43d3bd87d84374c1f8258badc20da43816f128faf342970bca26c759f6efc` |
| 27 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/example--a85829a90eb5795e26fa93c6.md) | 259 | `declaration-track:a85829a90eb5795e26fa93c6b0523906b0b68f3e8b61788a75f134d6546e357a` |
| 28 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/example--bfd14b61a1d247aa4fa5844e.md) | 260 | `declaration-track:bfd14b61a1d247aa4fa5844edd8b3de3c625bc397b01cd97b20a0792ea69e0ad` |
| 29 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/example--2cd4cc4c01b9f37c6f5fa934.md) | 261 | `declaration-track:2cd4cc4c01b9f37c6f5fa934764f89529c196496e2877e904eef9e628f8d75f7` |
| 30 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/example--a09336a5cff0be3e392c091d.md) | 262 | `declaration-track:a09336a5cff0be3e392c091daf4d98579b0ebd7b4a5ebe23968a7583ff394288` |
| 31 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant18106ce36b3b639977ff843677847274445f61078b5837dca8bf003a9f947e67.lean/declarations/example--c68afcecb0ccfe7859501dda.md) | 263 | `declaration-track:c68afcecb0ccfe7859501dda4f354586bd34024f6781d5779add99ccc2286aee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
