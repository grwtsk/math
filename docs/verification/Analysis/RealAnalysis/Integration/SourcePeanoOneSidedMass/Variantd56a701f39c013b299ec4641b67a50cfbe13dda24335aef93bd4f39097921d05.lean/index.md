# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePeanoOneSidedMass.Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3977e5b6e44545030bc463d0c45da8d5db51d154",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3977e5b6e44545030bc463d0c45da8d5db51d154`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePeanoPositiveWindow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalOneSidedMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/criticalonesidedmass--3f9697b6c07531cc9c08857b.md) | 16 | `declaration-track:3f9697b6c07531cc9c08857b5cfe7750b7cf50b17e98de82245ef15ba065196f` |
| 2 | `def` | [actualOneSidedPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/actualonesidedpairing--98a815947ef24d9c3b9323f6.md) | 19 | `declaration-track:98a815947ef24d9c3b9323f686660a521bc77b0a968b5805e65b4acb796f4018` |
| 3 | `theorem` | [actualOneSidedPairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/actualonesidedpairing-integrable--5a30f768f73f1d07c37249a6.md) | 23 | `result-track:5a30f768f73f1d07c37249a61d0c0d96d0813115ac5c288ffc2bea1eafa93ea0` |
| 4 | `theorem` | [oneSided_window_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/onesided-window-pointwise--c6e5b33813a8a55bba9df533.md) | 29 | `result-track:c6e5b33813a8a55bba9df5332ab05d4e5fa2cde08651d66a7c424d4f6b1e81f4` |
| 5 | `theorem` | [criticalOneSidedMass_window_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/criticalonesidedmass-window-integrable--032e9316168403d1c12aec96.md) | 42 | `result-track:032e9316168403d1c12aec968141dd07e8edc75e83d21aa586b78cd7551b9fdc` |
| 6 | `theorem` | [actualOneSidedPairing_dominates_window](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/actualonesidedpairing-dominates-window--69a502c32ca162bb97ee5061.md) | 62 | `result-track:69a502c32ca162bb97ee506105b7075bae375455deba1590cb788809fe951574` |
| 7 | `theorem` | [oneSided_spikes_transfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantd56a701f39c013b299ec4641b67a50cfbe13dda24335aef93bd4f39097921d05.lean/declarations/onesided-spikes-transfer--0e4b539d7bcf9b7b286fb91e.md) | 83 | `result-track:0e4b539d7bcf9b7b286fb91e9e8a5dcc4089fa90f1a349cf2fd9015e8954d1ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
