# Verification target: GRWTSK.Analysis.Asymptotics.FixedWidthEnergyBoundEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d37b656401485d3699f59e3eac3359e516d47be",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/FixedWidthEnergyBoundEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d37b656401485d3699f59e3eac3359e516d47be`.

Source path: `GRWTSK/Analysis/Asymptotics/FixedWidthEnergyBoundEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/FixedWidthEnergyBoundEquivalence.lean.json)

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
| 1 | `def` | [HSS](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/hss--da84bec6a3791bc731a3cb52.md) | 14 | `declaration-track:da84bec6a3791bc731a3cb52d2c583f3872dc0ab68e10176a3925383e47af826` |
| 2 | `def` | [PinnedShellWidth](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/pinnedshellwidth--4fae1d2516ba691569313e22.md) | 20 | `declaration-track:4fae1d2516ba691569313e2262c8e34c8f344624f2e2b47992c420b94135d4f8` |
| 3 | `theorem` | [HSS_implies_energy_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/hss-implies-energy-polynomial--ef8b82505126b6d89919d1d5.md) | 22 | `result-track:ef8b82505126b6d89919d1d5347be7731a72814543874f1a0778dc00504588c2` |
| 4 | `theorem` | [HSS_implies_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/hss-implies-p04--80ed7fdc3315eca5f8e71b5d.md) | 27 | `result-track:80ed7fdc3315eca5f8e71b5d31a3d9e854ab3d59f42be500944290f8f51349c3` |
| 5 | `theorem` | [P04_implies_HSS](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/p04-implies-hss--b06648b8f1e4bb4cfe785565.md) | 32 | `result-track:b06648b8f1e4bb4cfe785565bd14d40fef85f563566176c61a98bfd31f3433d7` |
| 6 | `theorem` | [HSS_iff_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/hss-iff-p04--68df93038dc6d3e3bb1382f4.md) | 39 | `result-track:68df93038dc6d3e3bb1382f4a6bdd0c19f7d75142c1b0e0ddbfb98aae348c379` |
| 7 | `theorem` | [pinned_HSS_iff_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/pinned-hss-iff-p04--48af383d92a78207fe08a499.md) | 42 | `result-track:48af383d92a78207fe08a499488ec8949d43360140429aa4f7e5500c92e0a2e4` |
| 8 | `theorem` | [HSS_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/hss-implies-literal-rh--895a6df1b9f4c74a592cee0b.md) | 46 | `result-track:895a6df1b9f4c74a592cee0b88861611a80d70304bd7fb08511b584cc310fbb1` |
| 9 | `theorem` | [pinned_HSS_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence22e89717fb8c5724f7f89631.lean/declarations/pinned-hss-implies-literal-rh--a814a65fce34a4d3d3914b46.md) | 50 | `result-track:a814a65fce34a4d3d3914b468135453bbc920bb05fef7b82bbf7ec157480e06b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
