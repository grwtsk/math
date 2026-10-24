# Verification target: GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientBoundaryWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d7ea2678100bb1389cc940388bbf7c6ac1bd52",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d7ea2678100bb1389cc940388bbf7c6ac1bd52`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientMass`](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftCoefficientDepths_card](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/declarations/leftcoefficientdepths-card--8d1be88851c7e0a8e8507f0a.md) | 20 | `result-track:8d1be88851c7e0a8e8507f0a944ec389c383af0f72c383326c63cdaeffc662ab` |
| 2 | `theorem` | [leftLengthCoefficientMass_at_leftScale](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/declarations/leftlengthcoefficientmass-at-leftscale--893ce7f81b706e1b04716735.md) | 37 | `result-track:893ce7f81b706e1b047167354b7be402a12b675245ad27816e7d90fb3b6d1f5a` |
| 3 | `theorem` | [leftLengthCoefficientMass_at_leftScale_le_inv](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/declarations/leftlengthcoefficientmass-at-leftscale-le-inv--466c53eb8bd97a8891f65415.md) | 88 | `result-track:466c53eb8bd97a8891f654156b32bd32a705b452ffdd3249502e078792e3c2be` |
| 4 | `def` | [PiecewiseReciprocalLengthCoefficientMassBound](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/declarations/piecewisereciprocallengthcoefficientmassbound--3eba6c7b6458cd9602c2e757.md) | 117 | `declaration-track:3eba6c7b6458cd9602c2e7571cb7c0251cf3db74e1be17b9c889a7925dd1cb4a` |
| 5 | `structure` | [CoefficientMassBoundaryWitness](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/declarations/coefficientmassboundarywitness--e889e8b28a9df1cdd8e7421b.md) | 129 | `declaration-track:e889e8b28a9df1cdd8e7421bdcb1310837839c6a2173b481b88fa7c7cf560053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
