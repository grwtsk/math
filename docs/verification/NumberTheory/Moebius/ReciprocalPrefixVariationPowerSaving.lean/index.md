# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a33c8dc857f4ab2859f3830f9313611613d83604",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a33c8dc857f4ab2859f3830f9313611613d83604`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixDensityAdapter.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocalPrefixVariationSquare_le_four_mul](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/declarations/reciprocalprefixvariationsquare-le-four-mul--730fcb5b6fb80d1571c018f3.md) | 33 | `result-track:730fcb5b6fb80d1571c018f38d2af139c859c1b60bf58e3b94369637c9a0d3cf` |
| 2 | `def` | [ReciprocalVariationPowerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/declarations/reciprocalvariationpowersaving--a9acf565b19e3cab1771ac49.md) | 57 | `declaration-track:a9acf565b19e3cab1771ac49bfe54d07b4a231da82c627491b02520fd791efe8` |
| 3 | `theorem` | [reciprocalLogVariationMajorant_le_of_powerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/declarations/reciprocallogvariationmajorant-le-of-powersaving--ca6effc55775262a7da6bb87.md) | 64 | `result-track:ca6effc55775262a7da6bb873eb5174f9ac05ce897dd79c97823f97c1495dbfc` |
| 4 | `theorem` | [reciprocalLogVariationSummable_of_powerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/declarations/reciprocallogvariationsummable-of-powersaving--a419f3bcdda9c711b7ec30ec.md) | 124 | `result-track:a419f3bcdda9c711b7ec30ec6fd8ede91cf2c5d4bbb8da14227b55469a14b76a` |
| 5 | `theorem` | [criticalBoundary_of_reciprocalPrefixVariationPowerSaving](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/declarations/criticalboundary-of-reciprocalprefixvariationpowersaving--93ca4c731277cf5ebf762268.md) | 137 | `result-track:93ca4c731277cf5ebf762268930202982c83877a637d58d9a6c23ab721c542d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
