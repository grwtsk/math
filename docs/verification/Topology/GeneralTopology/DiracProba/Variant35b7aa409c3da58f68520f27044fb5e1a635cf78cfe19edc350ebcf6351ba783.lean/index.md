# Verification target: GRWTSK.Topology.GeneralTopology.DiracProba.Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95d825911a792f1459d413215d3b5c86e3ac9d56",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95d825911a792f1459d413215d3b5c86e3ac9d56`.

Source path: `GRWTSK/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.CompletelyRegular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CompletelyRegularSpace.exists_BCNN](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/completelyregularspace-exists-bcnn--ad35d592f539777ad870f373.md) | 28 | `result-track:ad35d592f539777ad870f3732b2d25b73e42121f7e55031687dc360b1e53426e` |
| 2 | `def` | [diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracproba--1c73dc087cdbaaff148d1491.md) | 48 | `declaration-track:1c73dc087cdbaaff148d14913bbe73aa8f63fd4fbc5d68b5c521760f6354caa3` |
| 3 | `lemma` | [injective_diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/injective-diracproba--ddba6c06e58f7c4cb3e986f3.md) | 52 | `result-track:ddba6c06e58f7c4cb3e986f3e9e9e6aba78f5030d88d5dd952abccd23950f263` |
| 4 | `lemma` | [diracProba_toMeasure_apply'](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracproba-tomeasure-apply--cfea062116086c3456af6f4e.md) | 58 | `result-track:cfea062116086c3456af6f4e87b38d6630b887333edcb1e1795c9dbb4a542a22` |
| 5 | `lemma` | [diracProba_toMeasure_apply_of_mem](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracproba-tomeasure-apply-of-mem--b4daf117ed3e1f8d9262023a.md) | 61 | `result-track:b4daf117ed3e1f8d9262023ab4e4da5ef2c0a19851f457e875c3aeaf9e79d563` |
| 6 | `lemma` | [diracProba_toMeasure_apply](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracproba-tomeasure-apply--e538a2ed3a1d00aecd695224.md) | 64 | `result-track:e538a2ed3a1d00aecd69522414a76bd925d705c97e117e8b646458132a1c96be` |
| 7 | `lemma` | [continuous_diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/continuous-diracproba--b5b471d0c03ced1a122aa751.md) | 70 | `result-track:b5b471d0c03ced1a122aa75113fa7b137d76a094f3b6f755de2289dee9fb3b94` |
| 8 | `lemma` | [injective_diracProba_of_T0](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/injective-diracproba-of-t0--bc801c30ef494d289c65e8d9.md) | 80 | `result-track:bc801c30ef494d289c65e8d94fcc29137c2050c0f016d8e382d5ce982aebc01e` |
| 9 | `lemma` | [not_tendsto_diracProba_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/not-tendsto-diracproba-of-not-tendsto--57dd6b893fc3ce490dd758ee.md) | 86 | `result-track:57dd6b893fc3ce490dd758ee17989b8999a15aa09cd8e2fa8f25c840c2112873` |
| 10 | `lemma` | [tendsto_diracProba_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/tendsto-diracproba-iff-tendsto--3df609e18ee0afde081157a5.md) | 110 | `result-track:3df609e18ee0afde081157a506289ff74d3960963d055139597bbf8d7ee3e35e` |
| 11 | `def` | [diracProbaInverse](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracprobainverse--bc6b32aaee2edcfe8e93046e.md) | 122 | `declaration-track:bc6b32aaee2edcfe8e93046ef1f2fd4095818fb1fcad4fd490a20acd4ae717de` |
| 12 | `lemma` | [diracProba_diracProbaInverse](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracproba-diracprobainverse--84c6114468fd818455978b52.md) | 126 | `result-track:84c6114468fd818455978b524a533bb8002b49dd3455aa584b7ef0dffd088c1f` |
| 13 | `lemma` | [diracProbaInverse_eq](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracprobainverse-eq--fd8527c50bfb8842d21efc39.md) | 130 | `result-track:fd8527c50bfb8842d21efc393869aacd627fa8d81249bc4a698136a940084dcc` |
| 14 | `def` | [diracProbaEquiv](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracprobaequiv--ea170b4fe98a3d3bed9ec99f.md) | 139 | `declaration-track:ea170b4fe98a3d3bed9ec99f455874f7c3793b79b64d97fd6c5853dd974dc845` |
| 15 | `lemma` | [diracProba_comp_diracProbaEquiv_symm_eq_val](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracproba-comp-diracprobaequiv-symm-eq-val--178e731914ce5666606ea368.md) | 146 | `result-track:178e731914ce5666606ea3686660cd92f41bdc026474b25f2747a33546871a69` |
| 16 | `lemma` | [tendsto_diracProbaEquivSymm_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/tendsto-diracprobaequivsymm-iff-tendsto--95ae0ae9af292c9e2a5b2567.md) | 150 | `result-track:95ae0ae9af292c9e2a5b2567dbe7ae6d82bc52c0958b7ccf67689eef185af062` |
| 17 | `lemma` | [continuous_diracProbaEquiv](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/continuous-diracprobaequiv--b79bae4c6cb9cab2cb176776.md) | 162 | `result-track:b79bae4c6cb9cab2cb1767763e64aba128c78d350ae7d239c4d87bc6063e12da` |
| 18 | `lemma` | [continuous_diracProbaEquivSymm](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/continuous-diracprobaequivsymm--84855cdb2b4d63b01a4174eb.md) | 167 | `result-track:84855cdb2b4d63b01a4174eb45ed3a6f2b1b48b076c3b93d714fcc6860e6d989` |
| 19 | `def` | [diracProbaHomeomorph](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/diracprobahomeomorph--a7ae8c1ce82b45102c4d6414.md) | 176 | `declaration-track:a7ae8c1ce82b45102c4d6414c238af22e521c5d0be7b497f0680cf36a52f30b1` |
| 20 | `theorem` | [isEmbedding_diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/declarations/isembedding-diracproba--9f68e76434b9f01eee874c55.md) | 183 | `result-track:9f68e76434b9f01eee874c55aee89569111e6e62d3561627f1fb8f4de73c9d56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
