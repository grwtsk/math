# Verification target: GRWTSK.Analysis.NativeOffGridDensity.Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c69b1a903328d66b3897c4fd0a18ddce2148a3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/index.md) · [Full source](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c69b1a903328d66b3897c4fd0a18ddce2148a3`.

Source path: `GRWTSK/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mode](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/mode--bf425c181f75cd6931ad86c0.md) | 24 | `declaration-track:bf425c181f75cd6931ad86c03ca944b1a4a826dca6f483534e7d86b3feeb3716` |
| 2 | `def` | [exponent](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/exponent--a2d933c5f4635a3032016366.md) | 25 | `declaration-track:a2d933c5f4635a303201636637327b84a2a8833bdb1251d09712a44389f0f457` |
| 3 | `def` | [sourceCoefficient](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/sourcecoefficient--d27698d0099176ae668647d0.md) | 26 | `declaration-track:d27698d0099176ae668647d0a25630e639743db35284341016b2abe37389b28f` |
| 4 | `def` | [phase](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/phase--0b85b35b38cb9d68b2071b60.md) | 27 | `declaration-track:0b85b35b38cb9d68b2071b60a3ef0e1cc345c85b4fe986c29c242789dcd788b1` |
| 5 | `def` | [density](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/density--a5ea71eaef4d71f9dd2bf45d.md) | 29 | `declaration-track:a5ea71eaef4d71f9dd2bf45d698153526eb4565bccce48a094959a62069e4000` |
| 6 | `theorem` | [exponent_real_part](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/exponent-real-part--07bc71adc41de1fd735f39fb.md) | 32 | `result-track:07bc71adc41de1fd735f39fb297181d9f7a17d2159bf6d598503ee23a6a42fcd` |
| 7 | `theorem` | [exponent_imaginary_part](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/exponent-imaginary-part--d4066d75023cde4d56a730f3.md) | 36 | `result-track:d4066d75023cde4d56a730f349328810efcde8afa7d323c9531090f4d6271d31` |
| 8 | `theorem` | [exponent_norm_gt_three](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/exponent-norm-gt-three--09842d6dd3bfb0cf6e9395a5.md) | 38 | `result-track:09842d6dd3bfb0cf6e9395a5af4325e758c929e35faf548fd774ad42128e13dc` |
| 9 | `theorem` | [mode_ne_zero](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/mode-ne-zero--ffc481722ed0a96762d7481a.md) | 43 | `result-track:ffc481722ed0a96762d7481a1c35f4a79197d90c855ba3df5f154b6ae0d5a720` |
| 10 | `theorem` | [source_pole_factor_ne_zero](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/source-pole-factor-ne-zero--9c677e30c2b60112aedfdee9.md) | 48 | `result-track:9c677e30c2b60112aedfdee97de67c3e56f550b8fd99b0fedf431e00c015f532` |
| 11 | `theorem` | [source_coefficient_ne_zero](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/source-coefficient-ne-zero--93a762cbee8cdcb0928a1dfe.md) | 55 | `result-track:93a762cbee8cdcb0928a1dfef66f9f927be8ccd50bb801345862cee3f271dd62` |
| 12 | `theorem` | [literal_phase_amplitude](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/literal-phase-amplitude--503d827d80693a11e2779121.md) | 60 | `result-track:503d827d80693a11e2779121789e77fef453f3da228a5f16b3b98ddb4c73bb10` |
| 13 | `theorem` | [literal_density_cpow](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/literal-density-cpow--165953bdc9569c7d2e760c2d.md) | 68 | `result-track:165953bdc9569c7d2e760c2d01793752a4e3d4c502dbb638ebe0bf1947f2bcea` |
| 14 | `theorem` | [density_oscillation_bound](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/density-oscillation-bound--ce98a2a7ea06053d3a5bfb4f.md) | 75 | `result-track:ce98a2a7ea06053d3a5bfb4f5d07b64a3f38ee36654ce5945e1e593c7a9369d6` |
| 15 | `theorem` | [literal_density_positive_bounds](../../../../mathematics/Analysis/NativeOffGridDensity/Variant8c3517835f54b60ae3c9bb1328725569c87076085af6a6b9a66fd8db0592e39b.lean/declarations/literal-density-positive-bounds--a27d3cdf97da947d996dcb4c.md) | 91 | `result-track:a27d3cdf97da947d996dcb4c21e428b79b8b6d6567726e3c128d1963d5521ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
