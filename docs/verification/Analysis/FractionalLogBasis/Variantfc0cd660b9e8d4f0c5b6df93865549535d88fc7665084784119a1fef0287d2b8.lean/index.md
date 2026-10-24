# Verification target: GRWTSK.Analysis.FractionalLogBasis.Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "163ec9b745033c6e4da2e86774bf0c6afa2fae5b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/index.md) · [Full source](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `163ec9b745033c6e4da2e86774bf0c6afa2fae5b`.

Source path: `GRWTSK/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalLogFunction](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogfunction--3a6f57e8ae053fcae589effd.md) | 14 | `declaration-track:3a6f57e8ae053fcae589effde50e42ba67bf613b4b283d70611ba84627542776` |
| 2 | `theorem` | [fractionalLogFunction_measurable](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogfunction-measurable--a97e635011aaf96f2744f35d.md) | 17 | `result-track:a97e635011aaf96f2744f35df3ed584388331dab65322a5f2e3ee016c9753e2d` |
| 3 | `theorem` | [fractionalLogFunction_sq_le_near](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogfunction-sq-le-near--39ba0e046fa8076b3eb1af96.md) | 22 | `result-track:39ba0e046fa8076b3eb1af96ab5e55ef16e055c82b4fc0d879e9383146905284` |
| 4 | `theorem` | [fractionalLogFunction_sq_le_far](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogfunction-sq-le-far--cc3719789c53e7fa54e22f87.md) | 40 | `result-track:cc3719789c53e7fa54e22f87d14f6238a343c1ac7d2455dc22101c576ba04db9` |
| 5 | `theorem` | [fractionalLogFunction_memLp](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogfunction-memlp--31ebd8c56adcd615a642b075.md) | 55 | `result-track:31ebd8c56adcd615a642b0758fd42d8164eb54a77672c6531e1f35ff280ccfdc` |
| 6 | `def` | [fractionalLogVector](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogvector--1550d7ea09f87f1ecdab487a.md) | 75 | `declaration-track:1550d7ea09f87f1ecdab487a09da444f362a6c5ac211d5fabda0bf7f8be77ba1` |
| 7 | `theorem` | [fractionalLogVector_norm_le](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogvector-norm-le--c72dfda3f991144866e6ac72.md) | 79 | `result-track:c72dfda3f991144866e6ac72bb068706a29d7bc1e63eaa72b7cce016e892bd12` |
| 8 | `theorem` | [fractionalLogVector_ae](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fractionallogvector-ae--73e0b4f5813673b870682e1b.md) | 108 | `result-track:73e0b4f5813673b870682e1b4089aae1d9446d0e8e3fcdf126f9b1d5ae96bfdc` |
| 9 | `theorem` | [sum_coe_ae](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/sum-coe-ae--f095249e5f1ca3061774e908.md) | 112 | `result-track:f095249e5f1ca3061774e9081c8d3643fa4fbc714185090c478a8f5a237d3bee` |
| 10 | `theorem` | [fullResidualVector_sub_expansion_norm](../../../../mathematics/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/declarations/fullresidualvector-sub-expansion-norm--b0359400fc7d22dd261bd234.md) | 126 | `result-track:b0359400fc7d22dd261bd2349fd10e5ac78964899a0717100bca6b7366f19e87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
