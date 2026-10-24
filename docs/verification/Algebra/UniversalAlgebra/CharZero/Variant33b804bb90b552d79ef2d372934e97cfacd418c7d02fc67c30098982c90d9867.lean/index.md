# Verification target: GRWTSK.Algebra.UniversalAlgebra.CharZero.Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6c2cd6b732076b2b6256fb85fa4f018f27c43b1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6c2cd6b732076b2b6256fb85fa4f018f27c43b1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-injective--d5da56365d440604a54d0eeb.md) | 21 | `result-track:d5da56365d440604a54d0eeb69950ac46c34db2bbd4f2cb2e264dd197e4f2d69` |
| 2 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-inj--0bb50d879bb68b86a80de526.md) | 32 | `result-track:0bb50d879bb68b86a80de5263829e746c39ecea5e912e4e7320e67652922e95d` |
| 3 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-eq-zero--563eb66fcfc207434b2d04aa.md) | 34 | `result-track:563eb66fcfc207434b2d04aa41be6630c4f47c1a401bbf2d84e8e3bacdb258aa` |
| 4 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-ne-zero--8f21a75f79e8c5ed8625e1a0.md) | 35 | `result-track:8f21a75f79e8c5ed8625e1a01e64c9e8f1d223711a09fa3b65d98cd26ae304fc` |
| 5 | `lemma` | [cast_add](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-add--e30fee64af8eace5f7f62293.md) | 37 | `result-track:e30fee64af8eace5f7f622935c40bcb562b9c3143144af224cc625abd7be17b1` |
| 6 | `lemma` | [cast_sub](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-sub--bbf8a57a8f73858892e64fd3.md) | 40 | `result-track:bbf8a57a8f73858892e64fd3ee84d7dc4167697943460e62b40355f59ecf3653` |
| 7 | `lemma` | [cast_mul](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-mul--54184924ecb7977ce5c55325.md) | 43 | `result-track:54184924ecb7977ce5c55325449ea35073f8608843573014ad2c1ff0da720b57` |
| 8 | `def` | [castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/casthom--bb1ea371fbc6d534b04a04d2.md) | 48 | `declaration-track:bb1ea371fbc6d534b04a04d260d923c97fde6ee672a7b92914f9bd6fa75c5f9e` |
| 9 | `lemma` | [coe_castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/coe-casthom--4379563f10bf691eefebfd5d.md) | 55 | `result-track:4379563f10bf691eefebfd5d8218e198230d38adafe8bbf281dc44be432039e6` |
| 10 | `lemma` | [cast_inv](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-inv--0656417923e470cd16b95741.md) | 57 | `result-track:0656417923e470cd16b957416031cad78cc7d47e076baf7951ee9f9034b70830` |
| 11 | `lemma` | [cast_div](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-div--21d0c8f32804b212cac9bf52.md) | 58 | `result-track:21d0c8f32804b212cac9bf524f019139e83897670d335b311939329534d3ece4` |
| 12 | `lemma` | [cast_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-zpow--413d862ec9a631d3ee96e5a2.md) | 61 | `result-track:413d862ec9a631d3ee96e5a2dd925081a5e88bbe12977d0dd5717efe7c793022` |
| 13 | `theorem` | [cast_mk](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-mk--f84596382ce856efb53c393e.md) | 64 | `result-track:f84596382ce856efb53c393e11874e3cad1e59685acebe05fa5f609375f9f02e` |
| 14 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-injective--7ed07c41581d67e90c887c83.md) | 72 | `result-track:7ed07c41581d67e90c887c8350d1f7763822d9b0e58882e59b04f5e47276c1c0` |
| 15 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-inj--a88299b5a4a4c78f9f916d8d.md) | 81 | `result-track:a88299b5a4a4c78f9f916d8d97e58ac39a1f3131a41a8abdcbd7188e7082d398` |
| 16 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-eq-zero--7e48915e0f7f71528c4aff94.md) | 83 | `result-track:7e48915e0f7f71528c4aff94d39740401795576d47028b4b224a81db4b452e93` |
| 17 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-ne-zero--1d42ff7f994e77b114ab277e.md) | 84 | `result-track:1d42ff7f994e77b114ab277e552228906ae336806f0632ee8f0505af3a510558` |
| 18 | `lemma` | [cast_add](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-add--a635090dd8fa553c4c85b08d.md) | 86 | `result-track:a635090dd8fa553c4c85b08d40088db10d996e86ec6cc4b158ff2c47fcc2ae38` |
| 19 | `lemma` | [cast_mul](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-mul--625bf636553eb98add369e1c.md) | 89 | `result-track:625bf636553eb98add369e1caa0b87e4dcb6afff29cd6bf0834329cf553be32f` |
| 20 | `def` | [castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/casthom--6bbce1eec25903e3e63630bc.md) | 94 | `declaration-track:6bbce1eec25903e3e63630bce6cae1e7f00f97f943ce919fd605071debfabe3c` |
| 21 | `lemma` | [coe_castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/coe-casthom--5454360e206500160c134cda.md) | 101 | `result-track:5454360e206500160c134cdaff8fa0a411e42da39b51ad16f4865f8a8deea328` |
| 22 | `lemma` | [cast_inv](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-inv--6047469788127127ae2b95c4.md) | 103 | `result-track:6047469788127127ae2b95c43cb1c2244921c7758e9a132836dae045cf3c1282` |
| 23 | `lemma` | [cast_div](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-div--0cc19bf93529b85493b2b9d0.md) | 104 | `result-track:0cc19bf93529b85493b2b9d05ec6d8d0127898404d0e7048639a941c7fab8323` |
| 24 | `lemma` | [cast_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-zpow--f82ced85fe64073e6eb11a85.md) | 107 | `result-track:f82ced85fe64073e6eb11a85e6549f7cf4b0edf0e4845d444bc449e670308369` |
| 25 | `lemma` | [cast_divNat](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant33b804bb90b552d79ef2d372934e97cfacd418c7d02fc67c30098982c90d9867.lean/declarations/cast-divnat--24d47f41aa1cb476cfd2dd81.md) | 110 | `result-track:24d47f41aa1cb476cfd2dd816c44cbf77ace37b7d597ed98d59b11cc86a46665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
