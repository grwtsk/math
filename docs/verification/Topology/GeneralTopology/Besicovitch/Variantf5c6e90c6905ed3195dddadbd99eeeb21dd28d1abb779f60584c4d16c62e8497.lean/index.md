# Verification target: GRWTSK.Topology.GeneralTopology.Besicovitch.Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "999c868f4720485989fcdd7dda1ab5b4cb7b5af4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `999c868f4720485989fcdd7dda1ab5b4cb7b5af4`.

Source path: `GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Besicovitch.SatelliteConfig](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/besicovitch-satelliteconfig--6a609768603f5136b8099c78.md) | 135 | `declaration-track:6a609768603f5136b8099c78802cb75057a7b301de17b3ca10613941e1e0b1ff` |
| 2 | `class` | [HasBesicovitchCovering](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/hasbesicovitchcovering--765bca580b083911a3157da9.md) | 154 | `declaration-track:765bca580b083911a3157da92cf7537f63fc1adf93483bcdc729af47ced83071` |
| 3 | `instance` | [Besicovitch.SatelliteConfig.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/besicovitch-satelliteconfig-instinhabited--aa7983e7042e5686c573e7db.md) | 160 | `declaration-track:aa7983e7042e5686c573e7db098ee566a82b258942b6039c1500692d58f54e6f` |
| 4 | `theorem` | [inter'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/inter--812c3a9db4af5552563eaa51.md) | 178 | `result-track:812c3a9db4af5552563eaa51b7cb71fff12bf64ebdc7f6137e713d5e2d17cf9f` |
| 5 | `theorem` | [hlast'](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/hlast--02095b6ac52a75eefc7523ae.md) | 186 | `result-track:02095b6ac52a75eefc7523ae85bfad122882ed4e9098eec247b2f24baf308939` |
| 6 | `structure` | [BallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/ballpackage--4473e2d25295e2e859f4f46b.md) | 200 | `declaration-track:4473e2d25295e2e859f4f46b1ae5d580d35e0dcc493426329d23312ab0f3b29f` |
| 7 | `def` | [unitBallPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/unitballpackage--d689d679a5142ed04fc53a17.md) | 214 | `declaration-track:d689d679a5142ed04fc53a17a258f56cdf7b9532bfc9bab805ba5c8fcbf7054d` |
| 8 | `instance` | [BallPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/ballpackage-instinhabited--9508640129d88c3165fbfa60.md) | 222 | `declaration-track:9508640129d88c3165fbfa602870a01c2cf13786de6c04de4fbfefae364c7d6b` |
| 9 | `structure` | [TauPackage](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/taupackage--93c5cebdbc31fda616d09d9e.md) | 230 | `declaration-track:93c5cebdbc31fda616d09d9e055ab366af3b6c9d46e91764efc68426d260cc3f` |
| 10 | `instance` | [TauPackage.instInhabited](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/taupackage-instinhabited--9b3e27d316d09f8eb4eb0522.md) | 237 | `declaration-track:9b3e27d316d09f8eb4eb05226391d32cf33f96e433901c077b6690e870862b85` |
| 11 | `def` | [index](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/index--9256e255e7c4b56770d6452f.md) | 251 | `declaration-track:9256e255e7c4b56770d6452f975ece148eaf4b131fadd360d0a9dfefcb9acc35` |
| 12 | `def` | [iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/iunionupto--599667beeab903ef478c4c45.md) | 265 | `declaration-track:599667beeab903ef478c4c4502b9619b7ea75510bf09bc1f9c2e1c40edae0287` |
| 13 | `theorem` | [monotone_iUnionUpTo](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/monotone-iunionupto--af5f896b6fe5766141f7b423.md) | 269 | `result-track:af5f896b6fe5766141f7b42338f4b0ae822411b5da8c0fce653a269abaee0b5a` |
| 14 | `def` | [R](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/r--d3b83b27f41d7c95be02657d.md) | 276 | `declaration-track:d3b83b27f41d7c95be02657dca1f8aeda9d8bee86944c8fc9086905857ce598a` |
| 15 | `def` | [color](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/color--5feae7852b888b30b6240196.md) | 283 | `declaration-track:5feae7852b888b30b6240196d7aa7bca31f9912f9256f92dc4136e5c1cdc8a55` |
| 16 | `def` | [lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/laststep--e54fed1d03d0de5495d46a12.md) | 296 | `declaration-track:e54fed1d03d0de5495d46a12e7f2662d6e95cbfcf29c31a9a398cdf8fd3ddfb2` |
| 17 | `theorem` | [lastStep_nonempty](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/laststep-nonempty--39d4cef9bbe6d471eb71f93a.md) | 300 | `result-track:39d4cef9bbe6d471eb71f93add83a2184a05739a2f502485d9b873b1d02beb8d` |
| 18 | `theorem` | [mem_iUnionUpTo_lastStep](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/mem-iunionupto-laststep--5f1f205559e6afc42b849ffa.md) | 326 | `result-track:5f1f205559e6afc42b849ffaacebc6d1932e692518e32cb9899c5e9d1cde767c` |
| 19 | `theorem` | [color_lt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/color-lt--8840f5053247716e445e8913.md) | 354 | `result-track:8840f5053247716e445e8913ac16b3f7956926d06cd250dd65bde58749859125` |
| 20 | `theorem` | [exist_disjoint_covering_families](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/exist-disjoint-covering-families--2970597b86bf99b8bf662f42.md) | 479 | `result-track:2970597b86bf99b8bf662f4229b33101bd26a4f83e843f2e998ae7e8f799e445` |
| 21 | `theorem` | [exist_finset_disjoint_balls_large_measure](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/exist-finset-disjoint-balls-large-measure--21073994caeb0948cd43f82c.md) | 554 | `result-track:21073994caeb0948cd43f82cc8a718504e330fe06756e21d3f7d13c29721533e` |
| 22 | `theorem` | [exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/exists-disjoint-closedball-covering-ae-of-finitemeasure-aux--bf89a33ba818cdd9441102b0.md) | 694 | `result-track:bf89a33ba818cdd9441102b04d684ff3182e9fa18dc3f9ea99afa7797293dc55` |
| 23 | `theorem` | [exists_disjoint_closedBall_covering_ae_aux](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/exists-disjoint-closedball-covering-ae-aux--09ba3c0703e5a956014383f2.md) | 840 | `result-track:09ba3c0703e5a956014383f2a51e121d927124520714b08c9173b3f91016bc40` |
| 24 | `theorem` | [exists_disjoint_closedBall_covering_ae](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/exists-disjoint-closedball-covering-ae--a8faa4e80fcf151edeb12ccf.md) | 862 | `result-track:a8faa4e80fcf151edeb12ccfa53a2e3e8ebdb856a9292240d7feaf7d64b8cb37` |
| 25 | `theorem` | [exists_closedBall_covering_tsum_measure_le](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/exists-closedball-covering-tsum-measure-le--b9cb0b90f759fd513cefbd5f.md) | 925 | `result-track:b9cb0b90f759fd513cefbd5f68953beac65fa4b95008adf6635c476857fc7905` |
| 26 | `def` | [vitaliFamily](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/vitalifamily--b309bdad7fd6f4695b250e43.md) | 1098 | `declaration-track:b309bdad7fd6f4695b250e437ec6c68a39b1cef9336744e26ad4bc0ee07d5277` |
| 27 | `theorem` | [tendsto_filterAt](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/tendsto-filterat--0bdd3e5461c2c6be8a79fe18.md) | 1146 | `result-track:0bdd3e5461c2c6be8a79fe18415a31e4daf9f48f426cbe2cdd64bb97219a420d` |
| 28 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/ae-tendsto-rnderiv--d45e3ee05434d1355e093cd5.md) | 1166 | `result-track:d45e3ee05434d1355e093cd5bfad0b957438eece8bd9f05443ef0b9c58664902` |
| 29 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--826a97e854c7cd3e74175973.md) | 1178 | `result-track:826a97e854c7cd3e74175973402680a8e4815360dec20facd6516624d24dd958` |
| 30 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/declarations/ae-tendsto-measure-inter-div--49dae36a0c6c7cd9270de8cb.md) | 1195 | `result-track:49dae36a0c6c7cd9270de8cb5d3744058e789cfe953fe62642901b32c60162b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
