# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt1.Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "686c0af5342294c5b11cd2921093c7aae50aea0d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `686c0af5342294c5b11cd2921093c7aae50aea0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/p--0a5da0ec73a2ee94a11bb345.md) | 23 | `declaration-track:0a5da0ec73a2ee94a11bb345249fbc0c796d85809cdd2472476ef2436b9bb273` |
| 2 | `abbrev` | [a](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/a--754da2dd26fc4ab40c4126ba.md) | 24 | `declaration-track:754da2dd26fc4ab40c4126ba4caa0c9c49b4654b8a45c0d86a82b4e556e8989e` |
| 3 | `def` | [firstTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/firstterm--6dba358ef7a3bdf42c3d27a6.md) | 26 | `declaration-track:6dba358ef7a3bdf42c3d27a6ab140aba1d7ee05ed32f7c704970c74a74fbdfeb` |
| 4 | `def` | [secondTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/secondterm--0be6876966e51f94181ab69d.md) | 28 | `declaration-track:0be6876966e51f94181ab69d645101c8f13920dce695cec09d80a9541dcb9c28` |
| 5 | `def` | [firstSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/firstseries--1d63ed7a511abcb392e6244c.md) | 30 | `declaration-track:1d63ed7a511abcb392e6244ce6737ff8010c3e1c782479fee2568dfff9fe41ba` |
| 6 | `def` | [secondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/secondseries--e7f8717afc89103604a72d38.md) | 32 | `declaration-track:e7f8717afc89103604a72d3883d5a0d6df20d6c4dc28c2c65cd090a7e162eb22` |
| 7 | `def` | [weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/weight--76164626d25bd40247cf3483.md) | 34 | `declaration-track:76164626d25bd40247cf3483f4ca8291178075bb536239ad6466be020793efa7` |
| 8 | `theorem` | [weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/weight-eq--83baaf0d9fb223d8d62b54b2.md) | 36 | `result-track:83baaf0d9fb223d8d62b54b225dae38d9114ef8b9f5a0e267bd17173bd8e0902` |
| 9 | `theorem` | [weight_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/weight-summable--a61515f21226eb0cc2309196.md) | 41 | `result-track:a61515f21226eb0cc23091968cb94f28c761f893d7e2c9b1f77f2d7ec40b5d5d` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/pairedterm-hasderivat--028e33ceec24a69c2dfebdb2.md) | 44 | `result-track:028e33ceec24a69c2dfebdb28999f98916500d64c184fad26c21421e84d530f4` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/firstterm-hasderivat--50068383419b645c2a1b4c38.md) | 57 | `result-track:50068383419b645c2a1b4c38c5a212430ad64a3a9f5887af6e730f243f6e66ce` |
| 12 | `def` | [lowerCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/lowercoefficient--c6ef5b3db2f82be4d716ffe4.md) | 73 | `declaration-track:c6ef5b3db2f82be4d716ffe4bcd0555f1004ded5f528eaa24b0b50853f50f5b9` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/lowercoefficient-pos--06a88216d666015b94c9deec.md) | 75 | `result-track:06a88216d666015b94c9deec663f7fb190f70fc5342e1d3fa2699b60af80f842` |
| 14 | `theorem` | [rate_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/rate-lower--ed6313e5482922201f553fd3.md) | 78 | `result-track:ed6313e5482922201f553fd3213dbf96543c0777a74832933a12d0d6929a6db9` |
| 15 | `theorem` | [firstTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/firstterm-bound--1274172cc5b6840bc04491cd.md) | 87 | `result-track:1274172cc5b6840bc04491cdbef968d575fa878adf539055c9be4862c5d09655` |
| 16 | `theorem` | [secondTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/secondterm-bound--e4c838926349256a58b78596.md) | 115 | `result-track:e4c838926349256a58b78596e64b845b3ead633ed5e8c60729b1243ef96ff5e4` |
| 17 | `theorem` | [firstTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/firstterm-summable--f9b6c7c60d427b859de976ad.md) | 131 | `result-track:f9b6c7c60d427b859de976ad5397fc758c53bccb907b79d7a31a5fce0ccf174b` |
| 18 | `theorem` | [secondTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/secondterm-summable--9a671b0043b52c971621439e.md) | 138 | `result-track:9a671b0043b52c971621439eb0f559d1a3406fb7a150ba64ab33ba0e63d1a1da` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/actualprofile-hasderivat--c32ff35d26c3b25a523a41d4.md) | 144 | `result-track:c32ff35d26c3b25a523a41d47158869d008c3a8957dfc1dd387902f7a6b750ea` |
| 20 | `theorem` | [actualProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/actualprofile-deriv--076edfb850c79eddeb7fa1ac.md) | 160 | `result-track:076edfb850c79eddeb7fa1ac1ba173b7a8983bd13c703b03b44d555ca57fa4e7` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/firstseries-hasderivat--27c76cb205456b1431f7a593.md) | 163 | `result-track:27c76cb205456b1431f7a593dbd61d3464f7f150cb070fb00b874d9d096838e2` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/actualprofile-second-hasderivat--e00cd4d6df4ae637678a58f1.md) | 175 | `result-track:e00cd4d6df4ae637678a58f1d38b55db9546efc5d9afb853cb7f0072145ba372` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variantb03de592143a3ec30b4fd705d6b43398c891bac99c9fb87e50cde16183c5f2be.lean/declarations/actualprofile-second-deriv--a293f54a9fd250301b206f56.md) | 182 | `result-track:a293f54a9fd250301b206f56869a2fb3e54f6aed250fc1fb9726807103854896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
