# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d37b656401485d3699f59e3eac3359e516d47be",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d37b656401485d3699f59e3eac3359e516d47be`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope`](../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HSS](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/hss--cf01fea157b2f19c89e97885.md) | 14 | `declaration-track:cf01fea157b2f19c89e97885f44a35d051fbb53fedba0a0cb7c5f3502d6660a8` |
| 2 | `def` | [PinnedShellWidth](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/pinnedshellwidth--2b082406f61496255b94d535.md) | 20 | `declaration-track:2b082406f61496255b94d53567a041ce3e1be29fea524cb64f8126c7f92b4b10` |
| 3 | `theorem` | [HSS_implies_energy_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/hss-implies-energy-polynomial--bfdafda0bd2c52eb74baa061.md) | 22 | `result-track:bfdafda0bd2c52eb74baa06198199abe3ce58738a492f66e235cc9a19912ab7b` |
| 4 | `theorem` | [HSS_implies_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/hss-implies-p04--44158f9f9290d86b486de6a9.md) | 27 | `result-track:44158f9f9290d86b486de6a9250c9fd248c47144c1b8a3e0fdcdd4a9b2a35aa4` |
| 5 | `theorem` | [P04_implies_HSS](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/p04-implies-hss--a24447b7758ef7e337957109.md) | 32 | `result-track:a24447b7758ef7e3379571097a69b2e488acc3492ab0a2954e72d6d3b148b9b3` |
| 6 | `theorem` | [HSS_iff_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/hss-iff-p04--9df297044abe63b8e7eed7f1.md) | 39 | `result-track:9df297044abe63b8e7eed7f12a1d67cd4327996a4330ed9b3bbb7cbd86e51aab` |
| 7 | `theorem` | [pinned_HSS_iff_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/pinned-hss-iff-p04--05515940096f6e355289fb0c.md) | 42 | `result-track:05515940096f6e355289fb0ccafd0b5202fe719e3c4d74f97178f0d1201da1e6` |
| 8 | `theorem` | [HSS_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/hss-implies-literal-rh--b0e1ff6eddacd388453a0a58.md) | 46 | `result-track:b0e1ff6eddacd388453a0a58e2d200df47fb11b90778858a8d869e538996dd30` |
| 9 | `theorem` | [pinned_HSS_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/declarations/pinned-hss-implies-literal-rh--fc8456de35ec3dd9172e1322.md) | 50 | `result-track:fc8456de35ec3dd9172e132216d128455d54dcad467834bbf2f90cdc546ebe4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
