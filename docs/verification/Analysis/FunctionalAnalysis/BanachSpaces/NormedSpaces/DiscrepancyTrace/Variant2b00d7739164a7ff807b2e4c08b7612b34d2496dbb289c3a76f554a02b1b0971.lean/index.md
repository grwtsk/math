# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DiscrepancyTrace.Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15fd01e238f07dfeaafb205eade810b959f41d61",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15fd01e238f07dfeaafb205eade810b959f41d61`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.ArithmeticEnhancement` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantProjection](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/invariantprojection--23bc1204df27e278ffd5e9e6.md) | 29 | `declaration-track:23bc1204df27e278ffd5e9e668e1c9388b5a6743faf1a9d17e01135f39230d14` |
| 2 | `inductive` | [TraceFormulaKind](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/traceformulakind--a62ffc9b0c0cf13a124101da.md) | 35 | `declaration-track:a62ffc9b0c0cf13a124101daa2c555abcc0e17e8810b12d296b7ec9625c9bf2e` |
| 3 | `inductive` | [TraceFormulaAuthority](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/traceformulaauthority--bf87fafa500ecbbd8e49afb9.md) | 45 | `declaration-track:bf87fafa500ecbbd8e49afb9ed3a2601f1323e51971a948141f9a9394ee53d67` |
| 4 | `structure` | [ExactDiscrepancyTrace](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/exactdiscrepancytrace--0d445866752ea7d036171f60.md) | 65 | `declaration-track:0d445866752ea7d036171f600e28c44af0dd02acfa560061d46e4fa3e0cabaa7` |
| 5 | `def` | [invariantBias](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/invariantbias--6401facb0919dd498f4dcf52.md) | 89 | `declaration-track:6401facb0919dd498f4dcf52c33f1e0554b42e4be671405a00e8cf4930809f9d` |
| 6 | `def` | [centeredDiscrepancy](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/centereddiscrepancy--4dd8f6b739a843209f02af09.md) | 95 | `declaration-track:4dd8f6b739a843209f02af0985141b91f0d5cc3bcd9fce4f94c9ef26b239af1d` |
| 7 | `theorem` | [centered_eq_spectral_sum_add_remainder](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/centered-eq-spectral-sum-add-remainder--d18cdcfef07c4ac964f1ed9c.md) | 101 | `result-track:d18cdcfef07c4ac964f1ed9ca158517f39072dda07acf5af8f93dd3f7860d2a5` |
| 8 | `theorem` | [project_centeredDiscrepancy_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variant2b00d7739164a7ff807b2e4c08b7612b34d2496dbb289c3a76f554a02b1b0971.lean/declarations/project-centereddiscrepancy-eq-zero--6d8a8a9a41f7b67aeafd2923.md) | 129 | `result-track:6d8a8a9a41f7b67aeafd2923c8c5185b6f11c385d6261b0e729487a11c6c5afd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
