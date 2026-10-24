# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszRealConstantCenter.Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "680ed6b8aa2c3e4acf40c71654bb3e4a9d4d8085",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `680ed6b8aa2c3e4acf40c71654bb3e4a9d4d8085`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCriticalCenter` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualZeta_deriv_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/declarations/actualzeta-deriv-conj--ebdc0b723c2c1ea5a6dcbe1d.md) | 18 | `result-track:ebdc0b723c2c1ea5a6dcbe1d6feaf4e311530f32037c27fcffb1260658d70d98` |
| 2 | `theorem` | [actualZeta_logDeriv_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/declarations/actualzeta-logderiv-conj--61c7a54ffec19d7c23d25264.md) | 27 | `result-track:61c7a54ffec19d7c23d252642c4976b016326b4a3ba1790de11847715c49b728` |
| 3 | `theorem` | [actualRieszCriticalNumerator_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/declarations/actualrieszcriticalnumerator-conj--b70a23fb5af0bc6fcbb10c40.md) | 32 | `result-track:b70a23fb5af0bc6fcbb10c4037d307ccc315e81f8c594d2c218db4cadf67927d` |
| 4 | `def` | [actualRieszRealConstantCenter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/declarations/actualrieszrealconstantcenter--6cd5dcae79c462fe8b2e24fc.md) | 41 | `declaration-track:6cd5dcae79c462fe8b2e24fc7a4a2d8f686ddf1d98c1095edf620004cf0d4c7e` |
| 5 | `theorem` | [actualRieszLocalConstantCenter_eq_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/declarations/actualrieszlocalconstantcenter-eq-real--93ca2fd88079d66d6fbcda89.md) | 44 | `result-track:93ca2fd88079d66d6fbcda89a4edf247bd76132a3cebeaed3348a85f3c974bbb` |
| 6 | `theorem` | [actualRieszCriticalRegularization_eq_real_centers](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/declarations/actualrieszcriticalregularization-eq-real-centers--9aca34444b6e77464193796b.md) | 56 | `result-track:9aca34444b6e77464193796b350ce56e2443b4d9b8dc31e3cac150b6b09d6eb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
