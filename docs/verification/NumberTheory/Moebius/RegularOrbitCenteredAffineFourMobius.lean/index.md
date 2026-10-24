# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13aa9c8cf64916dbfca516e4126ca636dceffaa3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13aa9c8cf64916dbfca516e4126ca636dceffaa3`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingOffDiagonalCovariance`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredAffineFourMobiusCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/centeredaffinefourmobiuscoefficient--771f3987f0f7887c619df0e9.md) | 18 | `declaration-track:771f3987f0f7887c619df0e92cf782fb8ae7132d74e9aea9778f69589f54aa25` |
| 2 | `def` | [parityCenteredAffineFourMobiusAtCenterLag](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiusatcenterlag--ada7c8eb84c78d9a5bfc03f8.md) | 27 | `declaration-track:ada7c8eb84c78d9a5bfc03f8d28284ab02b4c694469fff5f05b8bff051845c3f` |
| 3 | `theorem` | [parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiusatcenterlag-eq-amplitude-mul--81cdb794772eb253f8f425d9.md) | 36 | `result-track:81cdb794772eb253f8f425d97a12658967eddb8cb9e3d8f0aa08e842e4328f55` |
| 4 | `def` | [parityCenteredAffineFourMobiusLagCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuslagcorrelation--5bef0b23c2559d52b8084250.md) | 53 | `declaration-track:5bef0b23c2559d52b8084250eb4018cc2ae5d245f84c3266f285a6f65cb6ccd5` |
| 5 | `theorem` | [parityCenteredAffineFourMobiusLagCorrelation_eq_positiveLagCovariance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuslagcorrelation-eq-positivelagcovariance--c14ceadaa52a1846c9b075dc.md) | 61 | `result-track:c14ceadaa52a1846c9b075dc60da593bafad5e453693ab3c19026377e8b35445` |
| 6 | `def` | [parityCenteredAffineFourMobiusWindingLagCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagcorrelation--9e94babadddb9a154d6da648.md) | 78 | `declaration-track:9e94babadddb9a154d6da648aede916dbcc4cd19115d2812d2455529fa866f0f` |
| 7 | `theorem` | [parityCenteredAffineFourMobiusWindingLagCorrelation_eq_covariance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagcorrelation-eq-covariance--214bd93f6a6fda5a9b1d5c25.md) | 84 | `result-track:214bd93f6a6fda5a9b1d5c2526954bcb3ffbf1f6c44fa3b2dc563bd1277156d8` |
| 8 | `def` | [parityCenteredAffineFourMobiusWindingLagSum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagsum--3aca775c1a99236035d29c7f.md) | 94 | `declaration-track:3aca775c1a99236035d29c7fa04a48b5c6e880809d4c42c84bb83bff693e0f36` |
| 9 | `theorem` | [parityCenteredAffineFourMobiusWindingLagSum_eq_covarianceLagSum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagsum-eq-covariancelagsum--e0be53f3048a75dc7257adba.md) | 100 | `result-track:e0be53f3048a75dc7257adba031f419459850d65c42272a65c8a415a3c8ed812` |
| 10 | `def` | [RegularCenteredAffineFourMobiusLagEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/regularcenteredaffinefourmobiuslagenvelope--ed6abf565b8458dd8e7a8494.md) | 113 | `declaration-track:ed6abf565b8458dd8e7a849442023ca3ee36a743403e4e6510db24ddcbadfa4f` |
| 11 | `structure` | [RegularCenteredAffineFourMobiusSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/regularcenteredaffinefourmobiussourcedata--acbb92ddc8448dde70e4a3c3.md) | 131 | `declaration-track:acbb92ddc8448dde70e4a3c3b4910c96f99c24c991c32ad82dd8319a498350b2` |
| 12 | `def` | [RegularCenteredAffineFourMobiusSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/declarations/regularcenteredaffinefourmobiussource--30ad96dcd0a5d53c3a75cb9f.md) | 147 | `declaration-track:30ad96dcd0a5d53c3a75cb9fd33a0452713b4f77f4b1a91feb8d849da7d6ae08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
