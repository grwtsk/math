# Verification target: GRWTSK.NumberTheory.AdditiveNumberTheory.PluenneckeRuzsa.Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9287c2dd07ecfe8a770ebfb7b40a6c06d4102111",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9287c2dd07ecfe8a770ebfb7b40a6c06d4102111`.

Source path: `GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ruzsa_triangle_inequality_div_div_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-div-div-div--1e91d2d127a66e3a011e01a2.md) | 58 | `result-track:1e91d2d127a66e3a011e01a26214ef5afe02c61c5c4f74b82d90565e6c2174c2` |
| 2 | `theorem` | [ruzsa_triangle_inequality_mulInv_mulInv_mulInv](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mulinv-mulinv-mulinv--a20e0b323fdf7f9172d4a169.md) | 73 | `result-track:a20e0b323fdf7f9172d4a169a7fd2dd31539b0816a7182f3fe5e998bd28c04de` |
| 3 | `theorem` | [ruzsa_triangle_inequality_invMul_invMul_invMul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-invmul-invmul-invmul--43e986e923d3e375223d5f5f.md) | 79 | `result-track:43e986e923d3e375223d5f5f2b00cc06200e79cb9d97e305a0666fd1d9374d2c` |
| 4 | `theorem` | [ruzsa_triangle_inequality_div_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-div-mul-mul--3d2edbe9c6fdfbc4a0c959c6.md) | 88 | `result-track:3d2edbe9c6fdfbc4a0c959c61ff090f93ab10a5b91f868bc4ab09d5c397b9539` |
| 5 | `theorem` | [ruzsa_triangle_inequality_mulInv_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mulinv-mul-mul--ba856858246fe71ebeadec69.md) | 94 | `result-track:ba856858246fe71ebeadec691a803050c116bc5ac2317bdc2936d62b019ec115` |
| 6 | `theorem` | [ruzsa_triangle_inequality_invMul_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-invmul-mul-mul--9c0ea510acb95eb8f55f970b.md) | 100 | `result-track:9c0ea510acb95eb8f55f970b8545be2a392bd14908f2dd1e7eab28f8565a6e1c` |
| 7 | `theorem` | [ruzsa_triangle_inequality_mul_div_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mul-div-mul--56d3a0f4541f1616c5d41d94.md) | 107 | `result-track:56d3a0f4541f1616c5d41d9410c75fcac5130fe04b7df5b4e03b6b65957c8a93` |
| 8 | `theorem` | [ruzsa_triangle_inequality_mul_mulInv_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mul-mulinv-mul--b8c3fd20eb37913aa01d1394.md) | 113 | `result-track:b8c3fd20eb37913aa01d13942f9087f4ae671669e54cba0d1c62aa288c215bc8` |
| 9 | `theorem` | [ruzsa_triangle_inequality_mul_mul_invMul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mul-mul-invmul--1599727b49cf8f465dfee504.md) | 119 | `result-track:1599727b49cf8f465dfee50433095bad9826754e132b833bbf8af7bee4980564` |
| 10 | `theorem` | [pluennecke_petridis_inequality_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/pluennecke-petridis-inequality-mul--c5ab2c1512d341041a59608c.md) | 126 | `result-track:c5ab2c1512d341041a59608c76d9494e29f984d8aad527bf3b8b94a6c04b2793` |
| 11 | `theorem` | [mul_aux](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/mul-aux--da8cf1e29d4f3afeb730edea.md) | 163 | `result-track:da8cf1e29d4f3afeb730edeada520d290280ababddb6335cc8554a36882f7575` |
| 12 | `theorem` | [ruzsa_triangle_inequality_mul_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mul-mul-mul--85fd40570250ee61b039de52.md) | 177 | `result-track:85fd40570250ee61b039de520d6e149279427c4a6ca8d85bd0db32c0c6dbe7c2` |
| 13 | `theorem` | [ruzsa_triangle_inequality_mul_div_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-mul-div-div--7ee0bba0e2e3379d24b046eb.md) | 198 | `result-track:7ee0bba0e2e3379d24b046eb4d96988d9033bcb157216713c521d270ccbf7c79` |
| 14 | `theorem` | [ruzsa_triangle_inequality_div_mul_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/ruzsa-triangle-inequality-div-mul-div--4e1f80bf098c0dc96cc68947.md) | 205 | `result-track:4e1f80bf098c0dc96cc68947b455b85b70129a2ffdebcd04d6402794e354c53f` |
| 15 | `theorem` | [card_div_mul_le_card_div_mul_card_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/card-div-mul-le-card-div-mul-card-mul--79175a4a50a2bdc339aaf881.md) | 212 | `result-track:79175a4a50a2bdc339aaf881281ef2d23272683f600ec4894fc8c72bab0a6c49` |
| 16 | `lemma` | [card_mul_pow_le](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/card-mul-pow-le--bf164cfd929f5f3f66beef5f.md) | 219 | `result-track:bf164cfd929f5f3f66beef5fa13cb391d3ba599c90285a49fbc550bbfe4dac16` |
| 17 | `theorem` | [pluennecke_ruzsa_inequality_pow_div_pow_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/pluennecke-ruzsa-inequality-pow-div-pow-mul--077014085c246126414a2e1f.md) | 238 | `result-track:077014085c246126414a2e1ffdb73f525479d5a1423a3e23289dafc28769f735` |
| 18 | `theorem` | [pluennecke_ruzsa_inequality_pow_div_pow_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/pluennecke-ruzsa-inequality-pow-div-pow-div--9ce640c0217784771a3c94aa.md) | 257 | `result-track:9ce640c0217784771a3c94aa9acdf09a42cd45a25678bb2ad8cdc60921d8d109` |
| 19 | `theorem` | [pluennecke_ruzsa_inequality_pow_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/pluennecke-ruzsa-inequality-pow-mul--e0781ca56a7565ca9da31f18.md) | 264 | `result-track:e0781ca56a7565ca9da31f18cb167f6f934fe552e620bdc0e60fdd02eaddfa62` |
| 20 | `theorem` | [pluennecke_ruzsa_inequality_pow_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/declarations/pluennecke-ruzsa-inequality-pow-div--80402cdf44c2de004c849b3e.md) | 270 | `result-track:80402cdf44c2de004c849b3ed1975d5510bd3d3ec3ca952b62713f128ae2c8e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
