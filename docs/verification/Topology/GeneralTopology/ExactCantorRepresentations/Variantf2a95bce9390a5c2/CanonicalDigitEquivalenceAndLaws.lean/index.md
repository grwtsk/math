# Verification target: GRWTSK.Topology.GeneralTopology.ExactCantorRepresentations.Variantf2a95bce9390a5c2.CanonicalDigitEquivalenceAndLaws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f32e07317e2e57e564f303645820680f06a53510",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f32e07317e2e57e564f303645820680f06a53510`.

Source path: `GRWTSK/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.CantorSet` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.RealAnalysis.SequencesAndSeries.DesignatedCantorSeries.Variantf2a95bce9390a5c2.DigitsSeriesMembershipAndInjectivity`](../../../../../../mathematics/Analysis/RealAnalysis/SequencesAndSeries/DesignatedCantorSeries/Variantf2a95bce9390a5c2/DigitsSeriesMembershipAndInjectivity.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExactCantorScalar](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/declarations/exactcantorscalar--172d225b2809f55cc21370de.md) | 37 | `declaration-track:172d225b2809f55cc21370def18f0a20f1ebc867cb956eb4ed52f81e5c4d5ecd` |
| 2 | `def` | [analyticCantorRepresentation](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/declarations/analyticcantorrepresentation--753ffbed1a7c5c3794638c43.md) | 40 | `declaration-track:753ffbed1a7c5c3794638c4357a20fc6416801c45eee3a10bf39a4064088f039` |
| 3 | `theorem` | [analyticCantorRepresentation_theta_val](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/declarations/analyticcantorrepresentation-theta-val--6a3afa1c682db751a4f275dd.md) | 46 | `result-track:6a3afa1c682db751a4f275dd1cb81b3d69c22c0d3637341d9ce6d51d2edb6039` |
| 4 | `theorem` | [analyticCantorRepresentation_digits_theta](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/declarations/analyticcantorrepresentation-digits-theta--7fd2507d251fc537657cdebd.md) | 59 | `result-track:7fd2507d251fc537657cdebd8fb25cf92601954468402165c3aef0708dbb54da` |
| 5 | `theorem` | [analyticCantorRepresentation_theta_digits](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/declarations/analyticcantorrepresentation-theta-digits--36c63f63d99c447493954ff2.md) | 66 | `result-track:36c63f63d99c447493954ff25167197ae573750d1ad5efb9b77b134495819da0` |
| 6 | `theorem` | [analyticCantorRepresentation_unique](../../../../../../mathematics/Topology/GeneralTopology/ExactCantorRepresentations/Variantf2a95bce9390a5c2/CanonicalDigitEquivalenceAndLaws.lean/declarations/analyticcantorrepresentation-unique--81ebf0c3667036cf3fc5465a.md) | 72 | `result-track:81ebf0c3667036cf3fc5465a8ff15966c29b2f96d60101e5301705d65437aa8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
