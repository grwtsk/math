# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.RingObservation.Variantd6b2c0fed27b3c49.FullObservationCausalQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49140922477e6d24f39b0cd34c39be93c1a26a26",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49140922477e6d24f39b0cd34c39be93c1a26a26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.MatrixRing` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.PacketRing` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringSystem](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/declarations/ringsystem--ad1167b6259d3433d4d1aaf1.md) | 50 | `declaration-track:ad1167b6259d3433d4d1aaf16017a004fda585e17b9999cf42ead1edc704385f` |
| 2 | `def` | [fullObservation](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/declarations/fullobservation--bd5ad4cccd0bcf2389707aa0.md) | 60 | `declaration-track:bd5ad4cccd0bcf2389707aa0c8cd88bd4826d51ea8c1123f633bf7b0ea4c2ce1` |
| 3 | `theorem` | [fullObservation_injective](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/declarations/fullobservation-injective--81cf0bb2581bfc98cecc44bc.md) | 65 | `result-track:81cf0bb2581bfc98cecc44bc9e87a9bdd7a9954be2b66be1fa11c07cb29cf67b` |
| 4 | `theorem` | [causalEquivalent_eq_of_fullObservation](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/declarations/causalequivalent-eq-of-fullobservation--5c66755ecb4408cf880425e7.md) | 73 | `result-track:5c66755ecb4408cf880425e7ab6d44184524c038c427629c58a665f8a4cfcf4a` |
| 5 | `def` | [causalStateEquivRingState](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/RingObservation/Variantd6b2c0fed27b3c49/FullObservationCausalQuotient.lean/declarations/causalstateequivringstate--2ca9d5b5493f243d16efd9db.md) | 82 | `declaration-track:2ca9d5b5493f243d16efd9dbcdba430882251496398ce0ec9acf69d171c0e61d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
