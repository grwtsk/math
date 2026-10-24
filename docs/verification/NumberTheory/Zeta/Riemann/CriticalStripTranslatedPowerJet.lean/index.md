# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTranslatedPowerJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f0f9d4865816456615a9d30d698f7c6c2c26c26",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f0f9d4865816456615a9d30d698f7c6c2c26c26`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Fin.VecNotation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/center--1f0bd33446a784628f12acfa.md) | 24 | `declaration-track:1f0bd33446a784628f12acfaad07f05f5e2e9cdb201862d4d45841889d306258` |
| 2 | `def` | [base](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/base--7032d4b0a23edc7b55056c68.md) | 25 | `declaration-track:7032d4b0a23edc7b55056c683d3e3228a967f91776ffcceaf65e3dbbcb827de0` |
| 3 | `def` | [logCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/logcenter--b7dba78b471fdaab2d2bba28.md) | 27 | `declaration-track:b7dba78b471fdaab2d2bba28d253cf4eb18572ab67622cb7b9f0d4fcb3ab3ad0` |
| 4 | `def` | [sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/sample--f4de070595c7da0ee002a940.md) | 28 | `declaration-track:f4de070595c7da0ee002a940fefb5ffb986f05dfd81a5afdbad11bb829ef1f47` |
| 5 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/coefficients--bb15f5b66b16b7c6c17b65ab.md) | 29 | `declaration-track:bb15f5b66b16b7c6c17b65ab6dbab6ce477732e524e5c6921b7de71f93e144f3` |
| 6 | `lemma` | [base_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/base-bounds--77c48c7d5652ecb3dd9b8089.md) | 32 | `result-track:77c48c7d5652ecb3dd9b808976bb093423f98d55a0f4363156a23905e85bd81b` |
| 7 | `lemma` | [center_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/center-norm--83fa2241df303b37dc45e598.md) | 35 | `result-track:83fa2241df303b37dc45e59821e9c9e7c15e6747fcd21894d95b417eb5660453` |
| 8 | `lemma` | [norm_sub_triangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/norm-sub-triangle--c3129bb0ccbb37d677d59da9.md) | 38 | `result-track:c3129bb0ccbb37d677d59da98558a8db7cb78ba5ce3d09b7b4768df154bdd223` |
| 9 | `lemma` | [log_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/log-rounding--d5e6780f3b67786456df0629.md) | 44 | `result-track:d5e6780f3b67786456df0629a181f6a5c1f5585215e5dcb36c46e74ea99f8880` |
| 10 | `lemma` | [log_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/log-encloses--bc537fc22489de21e193421e.md) | 52 | `result-track:bc537fc22489de21e193421ec9431ef0314cbebf23f192c5d435e1bebf4c6ba1` |
| 11 | `def` | [logRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/logrecord--e29f0008b086e0159d8925f1.md) | 61 | `declaration-track:e29f0008b086e0159d8925f1ffd8cac7085d17647ff052f51279e0ca24f949a7` |
| 12 | `lemma` | [logCenter_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/logcenter-bound--ec7037409b69c3f2cead4b31.md) | 67 | `result-track:ec7037409b69c3f2cead4b31338b4c1baba2188886171a32b67d02afc79e88e3` |
| 13 | `lemma` | [sample_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/sample-rounding--4d87706b53c1ce61f37e112f.md) | 72 | `result-track:4d87706b53c1ce61f37e112fb25b6e35fcb1760959ac521a0fbe0420d06218a0` |
| 14 | `lemma` | [sample_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/sample-encloses--cf1e36ae2cf87c78b7c78727.md) | 81 | `result-track:cf1e36ae2cf87c78b7c7872722435c254f9ebe50302f205544107fc1244495d5` |
| 15 | `def` | [rawCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/rawcoefficient--d4060ae4fed92253acad5e6c.md) | 99 | `declaration-track:d4060ae4fed92253acad5e6c1a29a9d4af1b8a996cbe4e390cd4357b6c0bb7c8` |
| 16 | `def` | [jet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/jet--8b50324736bd224e07f1ef42.md) | 102 | `declaration-track:8b50324736bd224e07f1ef42b7cc05d7840b6cd4f25a80e997983c5f6bb0c865` |
| 17 | `lemma` | [coefficient_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/coefficient-rounding--add94f4cd267f11cb76355ca.md) | 106 | `result-track:add94f4cd267f11cb76355ca5299b0889f04807f9f12b11e9987cc11961cf25b` |
| 18 | `lemma` | [raw_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/raw-identity--df04d43810d9f76ae5b503d0.md) | 113 | `result-track:df04d43810d9f76ae5b503d081ef057eec9190b9e10766803bab61862678bd69` |
| 19 | `lemma` | [rounded_jet_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/rounded-jet-error--d3939bbc7513df7c82957853.md) | 119 | `result-track:d3939bbc7513df7c829578539e1aada3fb637edcda108852770d1c8c591ff06e` |
| 20 | `lemma` | [taylor_norm_le_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/taylor-norm-le-four--b226b4484ecfd2ff19a59041.md) | 135 | `result-track:b226b4484ecfd2ff19a59041da0ef6eb1089ba87fae00545e2afdc092a7a1c65` |
| 21 | `theorem` | [jet_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/declarations/jet-encloses--fb1ada7f8a3a14aadb76c956.md) | 148 | `result-track:fb1ada7f8a3a14aadb76c9565e1a6916670fd3baffdeac5ecaebeb142ea00209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
