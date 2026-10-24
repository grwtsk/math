# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszRealConstantCenter.Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9762de886ed3edb729e3adc401885cec4714ddb7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9762de886ed3edb729e3adc401885cec4714ddb7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean.json)

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
| 1 | `theorem` | [actualZeta_deriv_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/declarations/actualzeta-deriv-conj--013162257fc2e850b7ee4100.md) | 18 | `result-track:013162257fc2e850b7ee4100a86f1db2d31542d91a7c9a19b809b4af8e234861` |
| 2 | `theorem` | [actualZeta_logDeriv_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/declarations/actualzeta-logderiv-conj--c29ef322632b3cc933c05a35.md) | 27 | `result-track:c29ef322632b3cc933c05a3561b42e4517f030d1a020a2d38f3de7b42b26aac2` |
| 3 | `theorem` | [actualRieszCriticalNumerator_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/declarations/actualrieszcriticalnumerator-conj--da901fe37f528459cbac62f4.md) | 32 | `result-track:da901fe37f528459cbac62f4bb19aa1d7e9bbbdd9d2911f3c252fb8bcbc266f7` |
| 4 | `def` | [actualRieszRealConstantCenter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/declarations/actualrieszrealconstantcenter--75040174d5d3e24bfd75c357.md) | 40 | `declaration-track:75040174d5d3e24bfd75c35797420a79547204975c2916649eefaf843dbcd3b8` |
| 5 | `theorem` | [actualRieszLocalConstantCenter_eq_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/declarations/actualrieszlocalconstantcenter-eq-real--65cf8dfdd89eaf5027285d1b.md) | 43 | `result-track:65cf8dfdd89eaf5027285d1bffe4e04e1422ab77b95a48abec0278a45e8f4ca4` |
| 6 | `theorem` | [actualRieszCriticalRegularization_eq_real_centers](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant122c245457035fd604703414e0cb025438f718255eb20f8a4d7a1d80a27fdb22.lean/declarations/actualrieszcriticalregularization-eq-real-centers--cb556732a689c3d092c9e22b.md) | 55 | `result-track:cb556732a689c3d092c9e22bb78fca5ec8214bd7b5e61bc8f66a10380207cd7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
