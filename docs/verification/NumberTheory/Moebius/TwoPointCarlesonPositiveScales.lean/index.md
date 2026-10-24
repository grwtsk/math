# Verification target: GRWTSK.NumberTheory.Moebius.TwoPointCarlesonPositiveScales

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ccd823f1fa1ffc66fbea6a07bc1910a966963e4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ccd823f1fa1ffc66fbea6a07bc1910a966963e4`.

Source path: `GRWTSK/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.TwoPointCarlesonConjectureConnections`](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonConjectureConnections.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alignedDyadicPositiveScaleCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/aligneddyadicpositivescalecarlesonenergy--70e9d00430164ba37ef11249.md) | 44 | `declaration-track:70e9d00430164ba37ef1124985b298ce9323b257262d1b6be1d67ecd62ee702a` |
| 2 | `theorem` | [alignedDyadicPositiveScaleCarlesonEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/aligneddyadicpositivescalecarlesonenergy-nonneg--525f6038f472f40e1397889f.md) | 50 | `result-track:525f6038f472f40e1397889fd63f3bf0eceb5d395a0cc399d5b394e7d179443a` |
| 3 | `theorem` | [alignedDyadicCarlesonEnergy_eq_scaleZero_add_positive](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/aligneddyadiccarlesonenergy-eq-scalezero-add-positive--bb941d8ae369423c4c021077.md) | 59 | `result-track:bb941d8ae369423c4c02107720d95428202648a74e75e4eaa978435c767962b0` |
| 4 | `def` | [twoPointPositiveScaleCarlesonEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/twopointpositivescalecarlesonenergy--41f90fa1d5900f409b3490e2.md) | 77 | `declaration-track:41f90fa1d5900f409b3490e202e0e5c0398ad8b88beccc81e28b3bb00f0e34b0` |
| 5 | `def` | [twoPointPositiveScaleCarlesonEnergySum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/twopointpositivescalecarlesonenergysum--27665531b85120165bb438c5.md) | 84 | `declaration-track:27665531b85120165bb438c51cfb862500a8e22e57e84130ed1ae7b0902bf365` |
| 6 | `theorem` | [twoPointPositiveScaleCarlesonEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/twopointpositivescalecarlesonenergy-nonneg--8461a508d35688aa3c871b9c.md) | 90 | `result-track:8461a508d35688aa3c871b9cb4c3dfb9a2e68e6f7ecf8bf62d9adfb25bb0411f` |
| 7 | `theorem` | [twoPointPositiveScaleCarlesonEnergySum_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/twopointpositivescalecarlesonenergysum-nonneg--efb52bc770908b64a85e5a05.md) | 97 | `result-track:efb52bc770908b64a85e5a05a44e21ca4e86e98847900845cd055bf3e2dd3ceb` |
| 8 | `theorem` | [twoPointCarlesonEnergy_eq_scaleZero_add_positive](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/twopointcarlesonenergy-eq-scalezero-add-positive--520c259d3a16b5934fe075ae.md) | 105 | `result-track:520c259d3a16b5934fe075aec034c3ce8eea03e7bebe2a0e83eaea52edee696c` |
| 9 | `theorem` | [twoPointCarlesonEnergySum_eq_scaleZero_add_positive](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/twopointcarlesonenergysum-eq-scalezero-add-positive--ca6e9d937eb4fa8e7adf1e37.md) | 117 | `result-track:ca6e9d937eb4fa8e7adf1e3736ff4d60cef300dedafbcbdcdec18a22d20aff5c` |
| 10 | `def` | [mertensTwoPointPositiveScaleCarlesonEnergySum](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/mertenstwopointpositivescalecarlesonenergysum--62d284b69fd49c84416bbc1a.md) | 144 | `declaration-track:62d284b69fd49c84416bbc1a5bc60bcfd75762bf7833896379832f7cca8b69b6` |
| 11 | `theorem` | [mertensTwoPointCarlesonEnergySum_eq_singleton_add_positive](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/mertenstwopointcarlesonenergysum-eq-singleton-add-positive--6e06714a973757fb8f232f02.md) | 149 | `result-track:6e06714a973757fb8f232f02c40740b25ff5968906a74854f9cac2102dcde483` |
| 12 | `theorem` | [mertensTwoPointCarlesonEnergySum_le_endpoint_add_positive](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/mertenstwopointcarlesonenergysum-le-endpoint-add-positive--0e8049aaf0dacb6dfd6cb7dd.md) | 161 | `result-track:0e8049aaf0dacb6dfd6cb7ddf4c7b8b2a360401092cf2cf3346366500956b8bd` |
| 13 | `def` | [DyadicMertensPositiveScaleCarlesonBudget](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/dyadicmertenspositivescalecarlesonbudget--f8423e492bc71ac73e06dd0e.md) | 173 | `declaration-track:f8423e492bc71ac73e06dd0e0e87e7095d98b5e773a1b1668f86768577758a53` |
| 14 | `def` | [SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/subpolynomialdyadicmertenspositivescalecarlesonwithpaidsingleton--3433effd92464b95d1d8a9f2.md) | 184 | `declaration-track:3433effd92464b95d1d8a9f2c35ac76a9730ae7b4b49b12093a4626340252b1a` |
| 15 | `theorem` | [completeCarlesonBudget_of_positiveScaleBudget](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/completecarlesonbudget-of-positivescalebudget--ae093a3826be33aa0eafdfba.md) | 191 | `result-track:ae093a3826be33aa0eafdfba801ef1578ff2fa0bbde88ee1d171495f36f5731f` |
| 16 | `theorem` | [subpolynomialMertensCarlesonEnergy_of_positiveScales](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/subpolynomialmertenscarlesonenergy-of-positivescales--9e9b7a1ba1b35b58b9dcadd9.md) | 207 | `result-track:9e9b7a1ba1b35b58b9dcadd90fb8a3dd76d68f00dc357da8a1a0c9d4c982bc14` |
| 17 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_positiveScales](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-positivescales--0b56ead47333b9f1b02ede44.md) | 219 | `result-track:0b56ead47333b9f1b02ede441c89d6508cb8f4b65e883539d027e5403ef4b5b0` |
| 18 | `theorem` | [riemannHypothesis_of_mertensPositiveScaleCarleson](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean/declarations/riemannhypothesis-of-mertenspositivescalecarleson--5702c0bfcc90e4815dac917d.md) | 228 | `result-track:5702c0bfcc90e4815dac917df424dce23a72ea691321f1bbde7a895f14ddf48b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
