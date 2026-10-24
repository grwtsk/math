# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffFourSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7a1820ab8718eee5c0f8f3db51f16381d9804fd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7a1820ab8718eee5c0f8f3db51f16381d9804fd`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTranslatedPowerJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/band--9bdf6f83eadcc702522bc9b5.md) | 24 | `declaration-track:9bdf6f83eadcc702522bc9b5d9b41d34f7aac4ebdd7ef37efc16afa82daef5bf` |
| 2 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/coefficient--134cc9a137e36eedb14724d8.md) | 26 | `declaration-track:134cc9a137e36eedb14724d8bba1d822ce1a8d9fbdbd4e5fd5368f51824522d9` |
| 3 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/model--fb872e8ef163e2bf01313d98.md) | 30 | `declaration-track:fb872e8ef163e2bf01313d98f230c403790b4180d21607fc0fb0fbc37fee9cb3` |
| 4 | `lemma` | [negative_shift](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/negative-shift--61bc8723095c38a9350262a9.md) | 34 | `result-track:61bc8723095c38a9350262a9d4785a38061f70f51749ab78ed53db138ec9c9d9` |
| 5 | `theorem` | [finiteModel_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/finitemodel-four--9ef826d33638160fdd37e990.md) | 39 | `result-track:9ef826d33638160fdd37e99002529262e74268c0c68c38f580d94b8705dacf98` |
| 6 | `lemma` | [band_distance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/band-distance--03aba50bccee200be4a3418d.md) | 55 | `result-track:03aba50bccee200be4a3418ded1cd7c77d083c10412be34b03af68f6e28a5242` |
| 7 | `lemma` | [band_norms](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/band-norms--3ea236e89cfb042f5473dbdf.md) | 63 | `result-track:3ea236e89cfb042f5473dbdf4c584867f002b23d3cb4218c884625a5a6b388e8` |
| 8 | `lemma` | [coefficient_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/coefficient-norm--99a529837f1e9ac99a0e164a.md) | 72 | `result-track:99a529837f1e9ac99a0e164a2985d92dceab727a324b0f5971c7c269657ed3d0` |
| 9 | `theorem` | [model_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/model-error--fe1ce6f26e8566b80322654b.md) | 103 | `result-track:fe1ce6f26e8566b80322654b982d9fdebd3e2da4ce574a9b6fcb02a451a15f55` |
| 10 | `lemma` | [multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/multiplier-bound--9368b5288a3a11891b8a7243.md) | 123 | `result-track:9368b5288a3a11891b8a72438209044d8e8f54cff19a6cd8caf041f596cd8643` |
| 11 | `lemma` | [cutoff_four_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/cutoff-four-weight--6408233ca63d6b5b11540b65.md) | 164 | `result-track:6408233ca63d6b5b11540b65ed3175d8cbd77a4a9896131baaa2c441f9186c5a` |
| 12 | `theorem` | [tail_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/tail-error--93d06a9a72d366b1065e0356.md) | 174 | `result-track:93d06a9a72d366b1065e0356fc6fa41ae370e5c2800229844e1db4141bbec8f9` |
| 13 | `theorem` | [source_model_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/declarations/source-model-error--304212fb790c67a02c450333.md) | 182 | `result-track:304212fb790c67a02c450333dbfc86a9ff77f869d54381ba3e8306f06ca383a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
