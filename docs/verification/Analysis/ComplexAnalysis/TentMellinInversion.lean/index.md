# Verification target: GRWTSK.Analysis.Complex.TentMellinInversion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c338b95981bd643fc48488ccd539e00ecfa30c54",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentMellinInversion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c338b95981bd643fc48488ccd539e00ecfa30c54`.

Source path: `GRWTSK/Analysis/Complex/TentMellinInversion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentMellinInversion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Real.TentRationalCorrection`](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.MellinInversion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightLine](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightline--6706bc3ed46d40e4453c48b7.md) | 35 | `declaration-track:6706bc3ed46d40e4453c48b7d70f290281ee097e276b32c3a0e136e11db017df` |
| 2 | `def` | [rightLineConstant](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightlineconstant--a73add723cf5e733323b6d79.md) | 38 | `declaration-track:a73add723cf5e733323b6d79d662e9f357e2741006c9580abbf3e31ba28d50f0` |
| 3 | `theorem` | [rightLine_re](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightline-re--fe77510b607de881c54dfe25.md) | 41 | `result-track:fe77510b607de881c54dfe255fc4f092da00016d5dc75478b251e4832af08aed` |
| 4 | `theorem` | [rightLine_im](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightline-im--40753133cd2936aad6111834.md) | 43 | `result-track:40753133cd2936aad61118340090b4ce043babae5bf61e219978544b8826b6ca` |
| 5 | `theorem` | [rightLineConstant_pos](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightlineconstant-pos--cd8f25c31248d546c87e8531.md) | 45 | `result-track:cd8f25c31248d546c87e8531edbe9a413d52bda9961643e89b8a119a501b59d9` |
| 6 | `theorem` | [rightLineConstant_eq](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightlineconstant-eq--f504b93f0e360aacfbc275b0.md) | 48 | `result-track:f504b93f0e360aacfbc275b040e3548f8d32976e21d5c240fcb2b7010c9b0997` |
| 7 | `theorem` | [density_eq_cpow](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/density-eq-cpow--ccd88dd4a96aded56e40b7ce.md) | 57 | `result-track:ccd88dd4a96aded56e40b7ce27bf9813d292663350be073c82696ba998c66d98` |
| 8 | `theorem` | [weightedDensity_support](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/weighteddensity-support--bd812b27465c81c84f98cc56.md) | 64 | `result-track:bd812b27465c81c84f98cc560fae2c099cfa3ff8d5dbc4e0597b2b992fcd4144` |
| 9 | `theorem` | [weightedDensity_integrable](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/weighteddensity-integrable--5da846e8ead840378fcfc440.md) | 74 | `result-track:5da846e8ead840378fcfc440230db229e908513e9938b06a437454347be519ab` |
| 10 | `theorem` | [mellinConvergent_tent](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/mellinconvergent-tent--6b6583012e633f52775348f2.md) | 86 | `result-track:6b6583012e633f52775348f27587e4826bc17aeca0fd315641a0263155071acf` |
| 11 | `theorem` | [mellin_tent_eq](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/mellin-tent-eq--c3d12c136895111ae9a275ed.md) | 95 | `result-track:c3d12c136895111ae9a275ed95e02ffee87105f6226766936d61db05202af703` |
| 12 | `theorem` | [continuous_tentKernel](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/continuous-tentkernel--720c4a81df9a7cf81cffeaed.md) | 123 | `result-track:720c4a81df9a7cf81cffeaedf4740d8b399d340d73dba81bc8d959c6dca66533` |
| 13 | `theorem` | [norm_tentKernel_rightLine_le](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/norm-tentkernel-rightline-le--e65aaaf45810d54aad97b04f.md) | 132 | `result-track:e65aaaf45810d54aad97b04f783813265974f6c5af9afb0914d111286db007ce` |
| 14 | `theorem` | [verticalIntegrable_tentKernel](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/verticalintegrable-tentkernel--bff491603f6c1ac5966fb4d3.md) | 165 | `result-track:bff491603f6c1ac5966fb4d31a2ac25da071deeb05d5dcd8a8f2929bf6bb3aac` |
| 15 | `theorem` | [mellinInv_tentKernel](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/mellininv-tentkernel--6be1ec801f101101e6835eaf.md) | 174 | `result-track:6be1ec801f101101e6835eaffa4fa66cae06c4ea9078c8f025803331965a83bc` |
| 16 | `theorem` | [rightLine_inversion](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/declarations/rightline-inversion--4ac5e01748e4c01c5339cf27.md) | 185 | `result-track:4ac5e01748e4c01c5339cf27e68461f67f6b9f87dd943b5d5c83176857425c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
