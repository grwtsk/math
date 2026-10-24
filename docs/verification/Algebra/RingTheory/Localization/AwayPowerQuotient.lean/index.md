# Verification target: GRWTSK.Algebra.RingTheory.Localization.AwayPowerQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ab9ebbada0f052879b05a3f0ff28f3e91d34fbd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Localization/AwayPowerQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ab9ebbada0f052879b05a3f0ff28f3e91d34fbd`.

Source path: `GRWTSK/Algebra/RingTheory/Localization/AwayPowerQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Localization/AwayPowerQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseApprox](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/inverseapprox--bc7ed85ab09c3c50d6659fb6.md) | 24 | `declaration-track:bc7ed85ab09c3c50d6659fb69a995fcf09f23424690218862f0270712c1a1633` |
| 2 | `theorem` | [inverseApprox_product](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/inverseapprox-product--2f1068d9f7cf1ea7aa6ee239.md) | 29 | `result-track:2f1068d9f7cf1ea7aa6ee23912d0aee1514762e3f1df2a5f4c2b96433596a5dc` |
| 3 | `theorem` | [inverseApprox_product_of_nilpotent](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/inverseapprox-product-of-nilpotent--a032d60b7a0f9100c43341cf.md) | 41 | `result-track:a032d60b7a0f9100c43341cf66c646b7eda9fb5b340086e8193417a2e89608b5` |
| 4 | `theorem` | [unit_mod_power](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/unit-mod-power--e3f7acc2d723bcb81279259e.md) | 47 | `result-track:e3f7acc2d723bcb81279259e239595fed61dfc4067e6b36036488027d310586c` |
| 5 | `abbrev` | [Away](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/away--df0afe740777ff1b07ed0eab.md) | 62 | `declaration-track:df0afe740777ff1b07ed0eab7d45136d9e125c57a548fca721a6ebb12254b87c` |
| 6 | `def` | [localize](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/localize--731473cb2886777bb7d6bae5.md) | 64 | `declaration-track:731473cb2886777bb7d6bae5876dcb4d2cbfc00608028f1c3f17cede15c0bb97` |
| 7 | `def` | [toLocal](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/tolocal--c7d19cf03e9a61f82aaf312e.md) | 69 | `declaration-track:c7d19cf03e9a61f82aaf312e305322bcf72bfd6bc7666dca035176a3e340b8d7` |
| 8 | `theorem` | [toLocal_mk](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/tolocal-mk--6b8cd01c53e0d64d1b673210.md) | 76 | `result-track:6b8cd01c53e0d64d1b6732105df4b4b9c6fef1fe44b401381cb02ef49cb688b9` |
| 9 | `def` | [retract](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/retract--9c8c017588da100ceb65d114.md) | 81 | `declaration-track:9c8c017588da100ceb65d1145101278634bcaf81e888189ecb905b9e0d9bd873` |
| 10 | `theorem` | [retract_localize](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/retract-localize--2ebcb98396fd53df6eff25a2.md) | 85 | `result-track:2ebcb98396fd53df6eff25a278c7009c957cd8e9cd008dd508e5b74d626227f0` |
| 11 | `theorem` | [retract_kills](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/retract-kills--6902612510b712e46ff13e03.md) | 90 | `result-track:6902612510b712e46ff13e03e57c8dc070e75fe70c9dd0c4936fc8247f05e059` |
| 12 | `def` | [fromLocal](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/fromlocal--45f706c421714645cd0bec64.md) | 101 | `declaration-track:45f706c421714645cd0bec6443ee9b8f6f1c0fc086da0ef5baac721f24dad681` |
| 13 | `theorem` | [fromLocal_mk](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/fromlocal-mk--3cc0894e87b7f0ecb2873a77.md) | 105 | `result-track:3cc0894e87b7f0ecb2873a77e9a9303f054de17e78d0402ee3c9c247c9d0ff4e` |
| 14 | `theorem` | [fromLocal_toLocal](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/fromlocal-tolocal--57224ecb505d7d1b343581e2.md) | 110 | `result-track:57224ecb505d7d1b343581e2a123b086d88bb1cb8bbf4562b47f2304e721fdf4` |
| 15 | `theorem` | [toLocal_retract](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/tolocal-retract--f4bdd5a91005f4ed51cc93a8.md) | 117 | `result-track:f4bdd5a91005f4ed51cc93a8c37db75c695a61cdddcaa772717a1ff0a5069a2c` |
| 16 | `theorem` | [toLocal_fromLocal](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/tolocal-fromlocal--13766beb0a44885a196c08e9.md) | 128 | `result-track:13766beb0a44885a196c08e92e80ae23461110c33e0a71d19c5cfcfab5bab812` |
| 17 | `def` | [quotientEquiv](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/quotientequiv--5b90624e5ffda1e56efa3429.md) | 136 | `declaration-track:5b90624e5ffda1e56efa34290d1e4b097fe4df34d0e15c76ce0bfd8b82c6f41d` |
| 18 | `theorem` | [quotientEquiv_mk](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/quotientequiv-mk--6f4b623c206729e42de97643.md) | 145 | `result-track:6f4b623c206729e42de976439350c05c63e086f2613b09503eae9607f362953a` |
| 19 | `theorem` | [toLocal_transition](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/tolocal-transition--e4115f9b902fff57043d1bc9.md) | 151 | `result-track:e4115f9b902fff57043d1bc91d54984e848e244660140ad98f3e41850193d4ea` |
| 20 | `theorem` | [fromLocal_transition](../../../../../mathematics/Algebra/RingTheory/Localization/AwayPowerQuotient.lean/declarations/fromlocal-transition--75b95bc3a030730ddfae2b87.md) | 159 | `result-track:75b95bc3a030730ddfae2b87455df1563166797c195a14082eab7bf5296ad207` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
