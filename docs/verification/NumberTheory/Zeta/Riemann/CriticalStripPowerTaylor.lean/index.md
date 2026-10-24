# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f8a09a1e02a58652ffa4aecef27a59df933e7a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f8a09a1e02a58652ffa4aecef27a59df933e7a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripLogEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexExpTaylor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/complexexptaylor--359cdb363cf25c9777adf255.md) | 31 | `declaration-track:359cdb363cf25c9777adf2558a7e58d7ce931dfab36ca33719c907d9bdd5f9c3` |
| 2 | `def` | [complexExpTaylorRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/complexexptaylorradius--7e482ab071418b189df0e5a8.md) | 34 | `declaration-track:7e482ab071418b189df0e5a8bdb36d6cbe44321e8d4130aaa07bf4d4e58e5dcd` |
| 3 | `lemma` | [complexExpTaylorRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/complexexptaylorradius-nonneg--d9425d53dae9f5311a0120d8.md) | 37 | `result-track:d9425d53dae9f5311a0120d8df84e0b918584d59a4256a58e7e2542335720313` |
| 4 | `theorem` | [complexExpTaylor_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/complexexptaylor-error--79f55991d265a970bfa5ed16.md) | 43 | `result-track:79f55991d265a970bfa5ed16934bc38b08b305e643126bf18eba606e1b250236` |
| 5 | `theorem` | [exp_perturbation_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/exp-perturbation-error--32fa20b045442284c80c4128.md) | 58 | `result-track:32fa20b045442284c80c41289d496021f115d4658c8542b4147d6182c1b07db8` |
| 6 | `theorem` | [positive_cpow_eq_exp_realLog](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/positive-cpow-eq-exp-reallog--21cab3f6bb65e27eefea5c1a.md) | 72 | `result-track:21cab3f6bb65e27eefea5c1a0092325075003d76155dbe181a1f668e30d4741b` |
| 7 | `theorem` | [realLog_powerTaylor_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/reallog-powertaylor-error--4c242e0dfb4389a7d2429762.md) | 78 | `result-track:4c242e0dfb4389a7d2429762d2360b0b1b2ea7c6b6e4d75df5cf2df5d143068c` |
| 8 | `structure` | [ComplexPowerEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/complexpowerenclosure--2b4abdfec0976803d5345205.md) | 104 | `declaration-track:2b4abdfec0976803d53452057bbdd252cce918ecc135f3bda81bf866c80e515c` |
| 9 | `def` | [ofLogTaylor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/oflogtaylor--c4c6b3da1da659e437de9346.md) | 112 | `declaration-track:c4c6b3da1da659e437de9346cce6fd0bf20de078d2fd018dc2313644d414f5fa` |
| 10 | `def` | [enlarge](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/enlarge--4f3265a6045e70af735bdfb5.md) | 129 | `declaration-track:4f3265a6045e70af735bdfb520e9fd26be933515c0f228089c1eae6b5e1907d1` |
| 11 | `def` | [recenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/recenter--e1d009aec431424298d15b67.md) | 137 | `declaration-track:e1d009aec431424298d15b67c1e1f1bccd032967b23a03a00ea211e4251fac06` |
| 12 | `theorem` | [positive_base_neg_power_norm_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/positive-base-neg-power-norm-le-one--2f8e20250c49e3fe31aaa3fd.md) | 153 | `result-track:2f8e20250c49e3fe31aaa3fda3c266c42e6ddff483ca4e9b60042a63579bca79` |
| 13 | `def` | [negativePowerEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/negativepowerenclosure--994e6863725f04e33e291d1b.md) | 163 | `declaration-track:994e6863725f04e33e291d1be324d148a744c9d71a5ac2b8c1f5a14e0805a4fe` |
| 14 | `def` | [negativePowerEnclosureOfBounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/negativepowerenclosureofbounds--88e2227943512c02ccca530a.md) | 174 | `declaration-track:88e2227943512c02ccca530a64637664ba115569d73b848ee7a6929aa27fd827` |
| 15 | `theorem` | [positive_base_endpoint_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/positive-base-endpoint-power--d96471cd6225ee8b75463af2.md) | 193 | `result-track:d96471cd6225ee8b75463af256b1432e568843b9d33521425914a91062f507cb` |
| 16 | `def` | [FinitePowerEnclosure.ofNegativePowerDisks](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/finitepowerenclosure-ofnegativepowerdisks--f042a029e14aed3ebad26eb1.md) | 199 | `declaration-track:f042a029e14aed3ebad26eb1c6941379ed6413c7fe6484bd0a8371200d0af15d` |
| 17 | `theorem` | [source_enclosed_by_power_disks](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/declarations/source-enclosed-by-power-disks--a1e0b5d6966730de26b7818e.md) | 226 | `result-track:a1e0b5d6966730de26b7818e88a986540d0459526b8eb39a5bcc06c38b6c24bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
