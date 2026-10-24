# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4481094fcac77415b08d3599229845023722372",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4481094fcac77415b08d3599229845023722372`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalThetaGridRecurrence`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightPsiCapacityNoGoControls`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ThetaPrimeNumberTheorem](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/thetaprimenumbertheorem--3b36d2abb7aea52c7c053f8b.md) | 20 | `declaration-track:3b36d2abb7aea52c7c053f8bd828da4f30a074da862137709e2840b9907cefe2` |
| 2 | `theorem` | [index_le_dyadicScale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/index-le-dyadicscale--687e0b318f16c41ae963b880.md) | 26 | `result-track:687e0b318f16c41ae963b880910e58f43e1a399f41b2132a9de5a2c042e78e44` |
| 3 | `theorem` | [canonicalThetaGridEnvelope_sublinear_of_PNT](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/canonicalthetagridenvelope-sublinear-of-pnt--370ded8e3af24b3166c25df0.md) | 39 | `result-track:370ded8e3af24b3166c25df0bec28dc85104cd176621b66e6660eb3b5f491e13` |
| 4 | `def` | [canonicalThetaGridPNTProfile](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/canonicalthetagridpntprofile--ddc79f77ea090867c365c3f7.md) | 98 | `declaration-track:ddc79f77ea090867c365c3f701c42db5ca4b708e806f992d65669650878bb09a` |
| 5 | `theorem` | [actualIntegerPsiCapacity_to_canonicalGridRecurrence](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/actualintegerpsicapacity-to-canonicalgridrecurrence--945d6e9d230e04705a73b1dc.md) | 109 | `result-track:945d6e9d230e04705a73b1dc5b69d88d2062cd5a05c6b39e525477120b770c82` |
| 6 | `theorem` | [no_fixed_integerPsiCapacity_of_canonicalGridSublinear](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/no-fixed-integerpsicapacity-of-canonicalgridsublinear--6b78d1a0dc617d25b9ab2c70.md) | 119 | `result-track:6b78d1a0dc617d25b9ab2c70c7f7ed22fcf6b06751ae51c524a882f32ae41b91` |
| 7 | `theorem` | [no_integerPsiCapacity_of_canonicalGridSublinear](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/no-integerpsicapacity-of-canonicalgridsublinear--26584c0dc1ba3352e6084ade.md) | 131 | `result-track:26584c0dc1ba3352e6084ade7c607cca96ea6eaa1476b0a8a161ccc37d8034f4` |
| 8 | `theorem` | [no_integerPsiCapacity_of_namedPNT](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/no-integerpsicapacity-of-namedpnt--07c3411ce1fc38af6da57899.md) | 142 | `result-track:07c3411ce1fc38af6da578990bcbf50d4dddeaf17cde82baeb4dd481aa121df8` |
| 9 | `def` | [remainingCanonicalEnvelopeObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/remainingcanonicalenvelopeobligations--ac5f50954474802f990ff245.md) | 149 | `declaration-track:ac5f50954474802f990ff24550ef5d28ce81c544f39fc6208adf0ae6d4e2c0bc` |
| 10 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/declarations/prohibitedpromotions--bde95a8c6870a8498a846710.md) | 156 | `declaration-track:bde95a8c6870a8498a846710cffbcbdbcf3db0c4c974e471b4b5ebee9d20e44c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
