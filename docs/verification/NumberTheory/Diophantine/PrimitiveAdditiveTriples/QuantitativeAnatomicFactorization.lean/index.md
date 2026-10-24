# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.QuantitativeAnatomicFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38f66b3447d2c349bebeb8c76a0cd28699e32260",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38f66b3447d2c349bebeb8c76a0cd28699e32260`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExactAnatomicFactorization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/index.md) — import line 17; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompletePartialOrder` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_le_right](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/factorization-le-right--929c9f08ab4f7b25f2a171d6.md) | 33 | `result-track:929c9f08ab4f7b25f2a171d6863fcc34a9941188a8b3462b8e3a1a3cc44c32b2` |
| 2 | `theorem` | [ceil_lt_floor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/ceil-lt-floor--aef1d26044a1b10333cb1c42.md) | 49 | `result-track:aef1d26044a1b10333cb1c4240b9e113698989fd253d51028a8434401a3d6555` |
| 3 | `class` | [ProofData](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/proofdata--be3bd80a3e679c9ec013466f.md) | 60 | `declaration-track:be3bd80a3e679c9ec013466fa72087a5f5377112b9e59b452608cb1e5cbd47ce` |
| 4 | `abbrev` | [y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/y--59439043c6c9e5f32af9c9f7.md) | 76 | `declaration-track:59439043c6c9e5f32af9c9f7c7ee3135e2e9dd2d3bb2566dcfd6d4a0425e965e` |
| 5 | `theorem` | [y_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/y-zero--b473aa2de8be16e66dd4d4c0.md) | 80 | `result-track:b473aa2de8be16e66dd4d4c0527ffde7b920d97fc8a1bae070f47d0040012a70` |
| 6 | `theorem` | [hy_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hy-pos--5aaf0c0cc71d1fc1fb88e849.md) | 83 | `result-track:5aaf0c0cc71d1fc1fb88e84946940aa79e7b7a7b7ab2212c355728e8b72db80a` |
| 7 | `theorem` | [prod_y_pow_eq_n_subset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/prod-y-pow-eq-n-subset--63104ba44801302b3044acac.md) | 86 | `result-track:63104ba44801302b3044acacc106ba7c75cd1cbb38d5fc9ca4793a77a625ea3d` |
| 8 | `theorem` | [prod_y_pow_eq_n](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/prod-y-pow-eq-n--2644b7ad9b807b30f9a78678.md) | 104 | `result-track:2644b7ad9b807b30f9a78678535a6f55406834fa950c193758297f14eb06de68` |
| 9 | `theorem` | [hy_cop](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hy-cop--b6f4c937f4dc22ecdb716d3f.md) | 120 | `result-track:b6f4c937f4dc22ecdb716d3f098e34d9ee825e0805c5c318b5b3e7ad8c36d6fa` |
| 10 | `theorem` | [y_squarefree](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/y-squarefree--288b65deed47db8b09568ecb.md) | 123 | `result-track:288b65deed47db8b09568ecbe1d4005fb614c655a5281d34f14295425d2c9a34` |
| 11 | `theorem` | [prod_y_eq_radical_n](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/prod-y-eq-radical-n--22a606b96f6e7cb7defb5f07.md) | 126 | `result-track:22a606b96f6e7cb7defb5f07f055a29687ab26694b4afa842993c5cf85c36f3d` |
| 12 | `def` | [K](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/k--e14de2b34f1771d53d0adf98.md) | 146 | `declaration-track:e14de2b34f1771d53d0adf9889dddcd4b15be8f70b714bcd687add4ddb1bfc60` |
| 13 | `theorem` | [two_lt_eps_inv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/two-lt-eps-inv--fbe997e3887fe8ce1f4e7ac6.md) | 148 | `result-track:fbe997e3887fe8ce1f4e7ac6ba1c405566511663437bb126f2579de030d69cfc` |
| 14 | `theorem` | [hK_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hk-pos--90d53152cf83b51b3aa7d326.md) | 154 | `result-track:90d53152cf83b51b3aa7d32673de1c5862e9fefa5b4fb9e69b9647e1a8628c3f` |
| 15 | `theorem` | [two_lt_K](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/two-lt-k--e35635201931ca005e6e8332.md) | 158 | `result-track:e35635201931ca005e6e83327d15cf8a36e38be9ddbc551fcdd692efdb459d85` |
| 16 | `theorem` | [K_inv_le_eps](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/k-inv-le-eps--43f2fe087e03f246ff874015.md) | 162 | `result-track:43f2fe087e03f246ff8740150cc157d048ad1298f20a213d71a1705a4e954842` |
| 17 | `theorem` | [hd_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hd-pos--af801923a357d4b89bed8196.md) | 171 | `result-track:af801923a357d4b89bed8196c44bed4b9a03e696af9736e28f7ed9c4da7c3f76` |
| 18 | `instance` | [hd_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hd-ne-zero--ab8f45593df33a63800fe829.md) | 175 | `declaration-track:ab8f45593df33a63800fe829d7d8febbeb8bbbd667774b7a89af804c19f56062` |
| 19 | `theorem` | [hKd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hkd--f9c0ad30aeee82cc533e01c9.md) | 179 | `result-track:f9c0ad30aeee82cc533e01c9e2138e3d2ac2cf0cd66936400087f9b80c3275a8` |
| 20 | `theorem` | [hK_div_d](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/hk-div-d--f251388dea677bcc3c0ccb09.md) | 187 | `result-track:f251388dea677bcc3c0ccb09fdae79b7e4d009d186e51bb26f1b43f6b46ac285` |
| 21 | `def` | [x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/x--bc5457a7d5fb61da12ddfe63.md) | 210 | `declaration-track:bc5457a7d5fb61da12ddfe63b09d4e0e564a4a11bf1aa261508752dfa2f5b20f` |
| 22 | `theorem` | [x_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/x-pos--7b5bb349377fd26b4adf60d4.md) | 216 | `result-track:7b5bb349377fd26b4adf60d4764ad4fe8e9a069583629a324b4aabcff117d7c7` |
| 23 | `theorem` | [x_pairwise_coprime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/x-pairwise-coprime--1ef968ae89d078a4d07b1120.md) | 226 | `result-track:1ef968ae89d078a4d07b1120c6bae0593874bed5f11241f398cb28143692a0f4` |
| 24 | `def` | [c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/c--4a804e0d9fd099b661f0406d.md) | 256 | `declaration-track:4a804e0d9fd099b661f0406d8638f07fb2e022cc4891d84217538150639b5f7d` |
| 25 | `theorem` | [c_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/c-pos--331d0c743d70f3bcef1bf428.md) | 259 | `result-track:331d0c743d70f3bcef1bf428b5799755fe7e10ef9af4cc247c8055a2076ffbb3` |
| 26 | `theorem` | [nat_eq_fin_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/nat-eq-fin-iff--1ee99ede4612ecec74ac909a.md) | 267 | `result-track:1ee99ede4612ecec74ac909a82574fb1beb3ee36d900a01f0516c4e0b7dd16c1` |
| 27 | `theorem` | [aux](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/aux--974d2db33f6e71c05d5b9e90.md) | 272 | `result-track:974d2db33f6e71c05d5b9e9034d65d0f6dc824d552cdc3d2dcc0302b6941006c` |
| 28 | `theorem` | [c_mul_prod_x_eq_n](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/c-mul-prod-x-eq-n--3f7be5fd8393f8cd68fa8ec5.md) | 288 | `result-track:3f7be5fd8393f8cd68fa8ec56abb9f6de31718d30e5a91ad34ee1ad18721cc5d` |
| 29 | `theorem` | [prod_y_large_le_X_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/prod-y-large-le-x-pow--ffe8bef77dcf1ec5d3172cef.md) | 309 | `result-track:ffe8bef77dcf1ec5d3172cef31ec9e6545c98dabf664bfa885765a5c1ec0b061` |
| 30 | `theorem` | [c_le_X_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/c-le-x-pow--f549cb140ee4effb7986a154.md) | 346 | `result-track:f549cb140ee4effb7986a1548bd6aafd4c0611a610d9ffbc97043d65891f3d6a` |
| 31 | `def` | [KIndex](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/kindex--7e8e2a0096a9fc58d461f863.md) | 373 | `declaration-track:7e8e2a0096a9fc58d461f8630a2b01e8cb527a996eb097c687abbf30f46535ef` |
| 32 | `theorem` | [KIndex_val_add_one](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/kindex-val-add-one--1dcec9716ea0a84021ffee85.md) | 376 | `result-track:1dcec9716ea0a84021ffee85d06f9e530f242d509372c47e2f31e4639f1adc03` |
| 33 | `theorem` | [radical_le_X_pow_mul_prod](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/radical-le-x-pow-mul-prod--bdbe3ca08fda6ae5af286105.md) | 383 | `result-track:bdbe3ca08fda6ae5af28610500f5f32262703e0f1cfcf8c10355f176a1d492ea` |
| 34 | `theorem` | [x_K_le_X_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/x-k-le-x-pow--1f00b5fdd292d7ef872339a9.md) | 416 | `result-track:1f00b5fdd292d7ef872339a95db31677f8b3643cbf5c84232e56c5c7903670bc` |
| 35 | `theorem` | [X_pow_mul_prod_le_radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/x-pow-mul-prod-le-radical--cbc0ac14811c94b3bcd94a23.md) | 475 | `result-track:cbc0ac14811c94b3bcd94a23c75775e19732ac53afa57d07384a21ef34580013` |
| 36 | `theorem` | [exists_fixed_anatomic_factorization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/exists-fixed-anatomic-factorization--a08825a55a4008df486318ae.md) | 562 | `result-track:a08825a55a4008df486318aebd30135344f4d1375e0cd1d2396c6ea8dfa24680` |
| 37 | `theorem` | [exists_fixed_anatomic_factorization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/declarations/exists-fixed-anatomic-factorization--87cb58001d1440e50f1ce5bd.md) | 577 | `result-track:87cb58001d1440e50f1ce5bd876699539129a7ce1edb07f7f03910944b17c8b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
