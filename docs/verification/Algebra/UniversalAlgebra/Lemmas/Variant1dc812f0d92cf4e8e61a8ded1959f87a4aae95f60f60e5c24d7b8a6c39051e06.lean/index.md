# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "540750542ea7b69a4d291a1aaf9e75796ce0dae1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `540750542ea7b69a4d291a1aaf9e75796ce0dae1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/castembedding--21fae7a4ad3ee3d581f614da.md) | 39 | `declaration-track:21fae7a4ad3ee3d581f614dad7c0a66c1b9d8d730d43313000af61bb50a889e8` |
| 2 | `theorem` | [cast_pow_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/cast-pow-eq-one--a02e277499cbe4f207045fcd.md) | 45 | `result-track:a02e277499cbe4f207045fcd718bae0bc333d1f035f32bf9737351fa842d74ad` |
| 3 | `theorem` | [cast_div_charZero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/cast-div-charzero--def9d366b1b07b1f00a25202.md) | 52 | `result-track:def9d366b1b07b1f00a25202b48130978af20a92b21e0ed62a220f8b95d3f639` |
| 4 | `instance` | [CharZero.NeZero.two](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/charzero-nezero-two--d8c1d3d83469a88e847e4383.md) | 65 | `declaration-track:d8c1d3d83469a88e847e4383d8568a0220dc51959440a650cdddb265bb63a6cd` |
| 5 | `theorem` | [add_self_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/add-self-eq-zero--b0ba919b043e969a3936206a.md) | 78 | `result-track:b0ba919b043e969a3936206af26e6e1f31721ac017ca0ccbe6c3f507277ed6de` |
| 6 | `theorem` | [bit0_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit0-eq-zero--dd3e63b668054c497cf23000.md) | 85 | `result-track:dd3e63b668054c497cf23000288cb2d1e3ad78d5c69bd723574c65795e05381a` |
| 7 | `theorem` | [zero_eq_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/zero-eq-bit0--40eb8e225ebcc86977f9c242.md) | 90 | `result-track:40eb8e225ebcc86977f9c2424d5f55bb5a3bd0e08304eadc5f1e4e640403c19e` |
| 8 | `theorem` | [bit0_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit0-ne-zero--8021f31b5517268f656a8bb8.md) | 95 | `result-track:8021f31b5517268f656a8bb8971bec56f45302ef0094c09122ee6107642b5f3a` |
| 9 | `theorem` | [zero_ne_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/zero-ne-bit0--a83df945c898e6d70c73e8ae.md) | 99 | `result-track:a83df945c898e6d70c73e8ae7d8ee0b1c1cbbc9246926dddd62ed35928d98607` |
| 10 | `theorem` | [neg_eq_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/neg-eq-self-iff--566cefda3ba5d599851b2479.md) | 109 | `result-track:566cefda3ba5d599851b2479f4e507b0bad1633bed81797526c84e0bc3c55f9e` |
| 11 | `theorem` | [eq_neg_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/eq-neg-self-iff--15e04ddb9527602adfc00bef.md) | 113 | `result-track:15e04ddb9527602adfc00bef7facf8be60e60dcd39670c28c61a34019a763b2a` |
| 12 | `theorem` | [nat_mul_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/nat-mul-inj--6dccd01be34e79e9f3400980.md) | 117 | `result-track:6dccd01be34e79e9f34009805050e20d739bde3a4062fc2e16955997b9190e47` |
| 13 | `theorem` | [nat_mul_inj'](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/nat-mul-inj--5ed51b3ba61494d7eedf3015.md) | 122 | `result-track:5ed51b3ba61494d7eedf3015b1a83a8cd8ef293b67e7271a14a43bece4bc4c13` |
| 14 | `theorem` | [bit0_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit0-injective--3e48338ed0e4644d58dfdaaf.md) | 128 | `result-track:3e48338ed0e4644d58dfdaafb0fe5daac2c3d2512db0ad0480af49081387eeac` |
| 15 | `theorem` | [bit1_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit1-injective--b08885abe8dbf28eb6cda6ad.md) | 135 | `result-track:b08885abe8dbf28eb6cda6ad0d47d6caa67fb16f6e4f603350750764fd525bcb` |
| 16 | `theorem` | [bit0_eq_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit0-eq-bit0--e4b78ad5004363d1897a281f.md) | 141 | `result-track:e4b78ad5004363d1897a281f5134f3d30b3a6bdd966d3be6751f7c2cc4846f08` |
| 17 | `theorem` | [bit1_eq_bit1](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit1-eq-bit1--122bec6ce54c1e96ceb4ea3a.md) | 146 | `result-track:122bec6ce54c1e96ceb4ea3a1d55ff706ac479e65ebb50136b182bd4e362e484` |
| 18 | `theorem` | [bit1_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/bit1-eq-one--912bef3a0214c923e36a6dba.md) | 151 | `result-track:912bef3a0214c923e36a6dbaa2fe0289c5683ecd2b466e01577241faea28b0d7` |
| 19 | `theorem` | [one_eq_bit1](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/one-eq-bit1--d1bc9e45c54264cf87ef367d.md) | 156 | `result-track:d1bc9e45c54264cf87ef367daf116ac411901474c4e2e53bb2b7d415c7e778b6` |
| 20 | `theorem` | [half_add_self](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/half-add-self--9809b0434d1f7137df389863.md) | 168 | `result-track:9809b0434d1f7137df389863c963b16524e33c2cd24c62b673cdf5419970f8b7` |
| 21 | `theorem` | [add_halves'](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/add-halves--574f2c30e5ee3734e76e4d3c.md) | 172 | `result-track:574f2c30e5ee3734e76e4d3caa15ab718032a4df3c82ab2f801fc20ea9187d66` |
| 22 | `theorem` | [sub_half](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/sub-half--26e6069ee5f25358625dfa3b.md) | 175 | `result-track:26e6069ee5f25358625dfa3bef63d031c500e095c388df691cd5ecc5d884cb62` |
| 23 | `theorem` | [half_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/half-sub--b420fe9bfe42a86211b4e504.md) | 178 | `result-track:b420fe9bfe42a86211b4e50448732f67a253a0cefc9f44836ee8ec10f4e01595` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/instance--aa010c0164bb8d873f1d2193.md) | 185 | `declaration-track:aa010c0164bb8d873f1d2193c6a60ed36071a8556a5f448e9d76ddba57f14027` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/instance--774ec29006db33fb0775e5a3.md) | 194 | `declaration-track:774ec29006db33fb0775e5a3d39cda8d113d9ae6f35fd39e7a6a108a46ce7a39` |
| 26 | `theorem` | [RingHom.charZero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/ringhom-charzero--5ccfa2819f810bdf24888ac6.md) | 205 | `result-track:5ccfa2819f810bdf24888ac63976eb8d32ca9300143cec6ffad9ec4c008e127a` |
| 27 | `theorem` | [RingHom.charZero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/ringhom-charzero-iff--fbb489f7884030686cf9f219.md) | 209 | `result-track:fbb489f7884030686cf9f21992b2db8b565de08afe14846736a55b7b62396f5e` |
| 28 | `theorem` | [RingHom.injective_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant1dc812f0d92cf4e8e61a8ded1959f87a4aae95f60f60e5c24d7b8a6c39051e06.lean/declarations/ringhom-injective-nat--760e52e0bd1c8d52bf8a7700.md) | 215 | `result-track:760e52e0bd1c8d52bf8a77003418acd967f3e91e0bf767b4285f8c46d8f8894e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
