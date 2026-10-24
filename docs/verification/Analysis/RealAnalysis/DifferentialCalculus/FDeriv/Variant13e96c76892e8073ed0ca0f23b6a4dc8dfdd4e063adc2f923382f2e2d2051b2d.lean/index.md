# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a77667028b5501c8fcb0d247dab20a9b4e836dc8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a77667028b5501c8fcb0d247dab20a9b4e836dc8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.OfCompLeft` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [approximates_deriv_on_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/approximates-deriv-on-nhds--f587a7dcdc93a1c0c4a8af84.md) | 84 | `result-track:f587a7dcdc93a1c0c4a8af8447d46a6dd605e201c1c53cc0e491898b7546e6d3` |
| 2 | `theorem` | [map_nhds_eq_of_surj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/map-nhds-eq-of-surj--9ea2e6343026c9524d63f6ff.md) | 95 | `result-track:9ea2e6343026c9524d63f6ffcab89fb798095fd81508fb298f75bb4c5a43f286` |
| 3 | `theorem` | [approximates_deriv_on_open_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/approximates-deriv-on-open-nhds--a1f1402437e3dd369dec7038.md) | 109 | `result-track:a1f1402437e3dd369dec7038f9deac9bf5bd76eed7248f29183e7fcf30591480` |
| 4 | `def` | [toOpenPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/toopenpartialhomeomorph--5fbd673f4f5e56d8d90057c5.md) | 125 | `declaration-track:5fbd673f4f5e56d8d90057c5e7b484c06f717b853ccea248652123dc1ad4bf03` |
| 5 | `theorem` | [toOpenPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/toopenpartialhomeomorph-coe--bed45333d699b4c2339cfb29.md) | 137 | `result-track:bed45333d699b4c2339cfb29602f4ea58ee38818848e9aab1e8415ce5f6b934d` |
| 6 | `theorem` | [mem_toOpenPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/mem-toopenpartialhomeomorph-source--cccc80ca7ad76634915ac5b7.md) | 141 | `result-track:cccc80ca7ad76634915ac5b71caab50ba9ddc7de0e5d5b9d9dbd4b0359ad93a4` |
| 7 | `theorem` | [image_mem_toOpenPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/image-mem-toopenpartialhomeomorph-target--66abed5dc4c40e620be355c6.md) | 145 | `result-track:66abed5dc4c40e620be355c68efde21e8afe7c3fbbc8b2f8b8780f713c0ae735` |
| 8 | `theorem` | [map_nhds_eq_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/map-nhds-eq-of-equiv--486a810a8b9834bb7b06c9a9.md) | 149 | `result-track:486a810a8b9834bb7b06c9a93e9e47af2a110769da56e42da84af970e2ca9f24` |
| 9 | `def` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/localinverse--e51e9add759ba12ba7d95154.md) | 157 | `declaration-track:e51e9add759ba12ba7d95154195af83360e75fbab1353c2c1ad48c53489c7eb9` |
| 10 | `theorem` | [localInverse_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/localinverse-def--a0a6e9d109d7a39c4925005c.md) | 162 | `result-track:a0a6e9d109d7a39c4925005ce17afa9c72ef7861a612f73906b66c3984b35532` |
| 11 | `theorem` | [eventually_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/eventually-left-inverse--7d42109146c632903709a9f3.md) | 166 | `result-track:7d42109146c632903709a9f3294e94f572e21ae8eed468693a4964109c7777cd` |
| 12 | `theorem` | [localInverse_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/localinverse-apply-image--1e7fad7fb62856341b2d4830.md) | 171 | `result-track:1e7fad7fb62856341b2d483050f7a58aca7c89eb208b6831da81bcf2e9f38647` |
| 13 | `theorem` | [eventually_right_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/eventually-right-inverse--3cda22623037fd39da8501ca.md) | 175 | `result-track:3cda22623037fd39da8501ca7f22cd732651ce96dd569ec8e9a9590dbe13bf66` |
| 14 | `theorem` | [localInverse_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/localinverse-continuousat--b1b17beb9d1883999757ce30.md) | 179 | `result-track:b1b17beb9d1883999757ce301c73b1b19ca5166cf7ed40f1b4323965530cee35` |
| 15 | `theorem` | [localInverse_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/localinverse-tendsto--15bddaf23439e190623c8a19.md) | 183 | `result-track:15bddaf23439e190623c8a190b78c0060dc9a39ae65a956411d02a67800f580e` |
| 16 | `theorem` | [localInverse_unique](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/localinverse-unique--3fca4fa092dc920e1ea2f8a3.md) | 187 | `result-track:3fca4fa092dc920e1ea2f8a3f1b2d384f8c81ee9f77f47edd1c4e5531257996f` |
| 17 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/to-localinverse--2065a6a67d5f1407a4b9da53.md) | 194 | `result-track:2065a6a67d5f1407a4b9da53040fcf2aabaf08f427dda2828afeb09da0c09c5c` |
| 18 | `theorem` | [to_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/to-local-left-inverse--c2e55c4f19c4610fed499b18.md) | 205 | `result-track:c2e55c4f19c4610fed499b182f393a6fc5f3a9aca001f8e9d610d7f9a204d4d0` |
| 19 | `theorem` | [isOpenMap_of_hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant13e96c76892e8073ed0ca0f23b6a4dc8dfdd4e063adc2f923382f2e2d2051b2d.lean/declarations/isopenmap-of-hasstrictfderivat-equiv--51c97ef3b47cde07fc40838f.md) | 212 | `result-track:51c97ef3b47cde07fc40838fbd5e9fb2833ffb7e57244d8060b258382d3fb431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
