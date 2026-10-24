# Verification target: GRWTSK.NumberTheory.AdditiveNumberTheory.PluenneckeRuzsa.Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d1d7728b728d2f2abdd0705d8f26f7a316ca206",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d1d7728b728d2f2abdd0705d8f26f7a316ca206`.

Source path: `GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ruzsa_triangle_inequality_div_div_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-div-div-div--6924b3e5cb8c585a9b741cae.md) | 50 | `result-track:6924b3e5cb8c585a9b741caececaf94ad70e6191fa2b015eb10f70877ebecf38` |
| 2 | `theorem` | [ruzsa_triangle_inequality_mulInv_mulInv_mulInv](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mulinv-mulinv-mulinv--b7305a0ca483142e02e1e14a.md) | 65 | `result-track:b7305a0ca483142e02e1e14a6d8cda0dc304c0ce86c578ec5aa6f2a74acf03d5` |
| 3 | `theorem` | [ruzsa_triangle_inequality_invMul_invMul_invMul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-invmul-invmul-invmul--00575aa3c2bfc51a0cf41da0.md) | 71 | `result-track:00575aa3c2bfc51a0cf41da0204981d15c7cd2e7f7ad4690b2f29df0265cad31` |
| 4 | `theorem` | [ruzsa_triangle_inequality_div_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-div-mul-mul--9f3556d6cab3fba8ee612a87.md) | 80 | `result-track:9f3556d6cab3fba8ee612a87bd4cae9dbfa4e5ad6747202b2c32778e9b30a840` |
| 5 | `theorem` | [ruzsa_triangle_inequality_mulInv_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mulinv-mul-mul--8b137af3755617a3d10a4501.md) | 86 | `result-track:8b137af3755617a3d10a4501a5c2e5e98c055e320a1e6f0a3f1982b3851024c2` |
| 6 | `theorem` | [ruzsa_triangle_inequality_invMul_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-invmul-mul-mul--c8b3e5b83b3cb045ab085e7e.md) | 92 | `result-track:c8b3e5b83b3cb045ab085e7e8834c86a116ea8c1da97af4b95e3226fbe74eddd` |
| 7 | `theorem` | [ruzsa_triangle_inequality_mul_div_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mul-div-mul--76f52ffc51851702040220a3.md) | 99 | `result-track:76f52ffc51851702040220a30c2b7770e846dffee0b1a808aebe17690fffee49` |
| 8 | `theorem` | [ruzsa_triangle_inequality_mul_mulInv_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mul-mulinv-mul--b1b3abd353a63d39502a34f4.md) | 105 | `result-track:b1b3abd353a63d39502a34f49e5882046cdab56f011fad363dd58d8069423e0a` |
| 9 | `theorem` | [ruzsa_triangle_inequality_mul_mul_invMul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mul-mul-invmul--1df85455c54148886b37c4a0.md) | 111 | `result-track:1df85455c54148886b37c4a0c0f304c3f77db3100173f3efdd6799f2410f5efd` |
| 10 | `theorem` | [pluennecke_petridis_inequality_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/pluennecke-petridis-inequality-mul--607b97b046b8c07d7e72a435.md) | 118 | `result-track:607b97b046b8c07d7e72a4356a76a1b3fc7310dff5bea3b6887fe8d8220e573c` |
| 11 | `theorem` | [mul_aux](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/mul-aux--87995174a1022aacec28f29c.md) | 155 | `result-track:87995174a1022aacec28f29c8a5f9b3b7a26c7a0e832175ea584acb24b04bdce` |
| 12 | `theorem` | [ruzsa_triangle_inequality_mul_mul_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mul-mul-mul--905e5f3b9f4f0fce98829084.md) | 169 | `result-track:905e5f3b9f4f0fce988290844e3dfabe4ab695798ad4448152704b506a81e272` |
| 13 | `theorem` | [ruzsa_triangle_inequality_mul_div_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-mul-div-div--4ef28b5d8c58c8f73ad4ab32.md) | 190 | `result-track:4ef28b5d8c58c8f73ad4ab3236f65b5acb33e74fd8870c1b5dd6cbc6e536b33c` |
| 14 | `theorem` | [ruzsa_triangle_inequality_div_mul_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/ruzsa-triangle-inequality-div-mul-div--63391e6c133cb46cf2e0ad10.md) | 197 | `result-track:63391e6c133cb46cf2e0ad10aad05cadf94857e34c49a4c03b86207933d8009c` |
| 15 | `theorem` | [card_div_mul_le_card_div_mul_card_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/card-div-mul-le-card-div-mul-card-mul--8fb74bd55e8e1d5b28de4f3b.md) | 204 | `result-track:8fb74bd55e8e1d5b28de4f3bc7a793470eafd22de96450f8f0d49cc38f1dfff1` |
| 16 | `lemma` | [card_mul_pow_le](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/card-mul-pow-le--70cc6c9cb53dba9d802c159f.md) | 211 | `result-track:70cc6c9cb53dba9d802c159f0c910f8b88fe71b504f951319c47304eeb31c658` |
| 17 | `theorem` | [pluennecke_ruzsa_inequality_pow_div_pow_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/pluennecke-ruzsa-inequality-pow-div-pow-mul--3356e448a14808b21eabfb86.md) | 230 | `result-track:3356e448a14808b21eabfb86f187607abe7554284a619b9d8a3661dfb6c22d09` |
| 18 | `theorem` | [pluennecke_ruzsa_inequality_pow_div_pow_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/pluennecke-ruzsa-inequality-pow-div-pow-div--d423c03a1aeb1d04768d9739.md) | 249 | `result-track:d423c03a1aeb1d04768d9739933ded58d9dd447c44fd6aadb92d4ec5d67dd41c` |
| 19 | `theorem` | [pluennecke_ruzsa_inequality_pow_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/pluennecke-ruzsa-inequality-pow-mul--dce6bc4d6a19f8786a9bc63a.md) | 256 | `result-track:dce6bc4d6a19f8786a9bc63a92c7745168d409ed0a683822b583e4a0591ceaa1` |
| 20 | `theorem` | [pluennecke_ruzsa_inequality_pow_div](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/declarations/pluennecke-ruzsa-inequality-pow-div--2fa5f86e207072e8fad1a609.md) | 262 | `result-track:2fa5f86e207072e8fad1a60908bec6af6b4d882978fe3e88a695d1af1e27a51d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
