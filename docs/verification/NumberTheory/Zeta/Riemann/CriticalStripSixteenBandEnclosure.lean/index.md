# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ee4e40b06ae8952b19c8082061dabbf4ac3664",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ee4e40b06ae8952b19c8082061dabbf4ac3664`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [band_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/band-geometry--e634663c423fd5cf42ee10fb.md) | 21 | `result-track:e634663c423fd5cf42ee10fb53edaa556944f1abae2e126d33a8e615486eac75` |
| 2 | `lemma` | [band_shift_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/band-shift-norm--ab581da4d39233674f5e7799.md) | 36 | `result-track:ab581da4d39233674f5e77997a8b35730de641c0741acc62295849163ddda9cc` |
| 3 | `lemma` | [band_last_shift_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/band-last-shift-norm--1e8be8ed693132cae271ced7.md) | 49 | `result-track:1e8be8ed693132cae271ced7a9200344f327d27f39f23438f041788caa1c582c` |
| 4 | `lemma` | [parameter_products](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/parameter-products--161a60f640e32b1283f6542d.md) | 62 | `result-track:161a60f640e32b1283f6542dd64a7491eb6dc038c1ea85bf95974c9223ddbc65` |
| 5 | `lemma` | [weight_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/weight-norm-le--edffaf5fa8d7a27274db6ae3.md) | 92 | `result-track:edffaf5fa8d7a27274db6ae38a7adc4dbe7c118a9bb982617344b8bf0ddac9e8` |
| 6 | `lemma` | [finiteModel_jet_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/finitemodel-jet-error--3de91d1016c98fbe7c2f62cf.md) | 122 | `result-track:3de91d1016c98fbe7c2f62cf8fc04491a4aa7798a62b2cca5caa29ed6be2f704` |
| 7 | `lemma` | [actual_tail_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/actual-tail-error--a5ada381dd306de7fb29bb8a.md) | 146 | `result-track:a5ada381dd306de7fb29bb8a1c43c271a8d71d2b56584d88818eb0eeaa7e83b4` |
| 8 | `theorem` | [source_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/declarations/source-enclosed--a9c6a9d3db2f33fec7e78f10.md) | 160 | `result-track:a9c6a9d3db2f33fec7e78f101f4b85008f91c4b38498ba82dd0f081a6e49c38c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
