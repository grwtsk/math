# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODE.Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52c0ef4d42afb0ac8359c65dcca3635d63ac9c6b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52c0ef4d42afb0ac8359c65dcca3635d63ac9c6b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/bumpmoment--59916c7c6a955634435d9bc3.md) | 15 | `declaration-track:59916c7c6a955634435d9bc3fa90a1a1ace16d991f0a4a98ba5b3eccd15e7051` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile--64c75e3fef67cbad6eecb4b0.md) | 18 | `declaration-track:64c75e3fef67cbad6eecb4b0ea4be3a1b8917bbac99e7828cb5d1b105434642e` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/moment-profile-continuous--2dff9a4974a0f0150ddd8d92.md) | 20 | `result-track:2dff9a4974a0f0150ddd8d9223da971c3d4bdffcfe7512aa8bc5d23ebeec429a` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/moment-profile-hascompactsupport--ea60d082d4f1a795c2140bd2.md) | 24 | `result-track:ea60d082d4f1a795c2140bd2964cf1f048f26a6af90a93b99f17bf42d86fc7b6` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/bumpmoment-integrable--856aba1a93ecee50ed79ca65.md) | 28 | `result-track:856aba1a93ecee50ed79ca65af7a3e5fa467af107e245cf30aec819ebf606bc7` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/bumpmoment-hasderivat--2a3e08e49f3f13b1aa73f098.md) | 32 | `result-track:2a3e08e49f3f13b1aa73f09847d7e77a4b4dff49646db82874a1d7d383ff6eae` |
| 7 | `theorem` | [bumpMoment_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/bumpmoment-differentiable--bf8148a09cd35f0749971a02.md) | 44 | `result-track:bf8148a09cd35f0749971a020fae2f417000901c67e1f52aba582e8ecba54b5f` |
| 8 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/bumpmoment-zero-eq-quartic--9b421b16a74932e320fb1dee.md) | 48 | `result-track:9b421b16a74932e320fb1deefebd1d9378ed0bd96c65fe59cea3ca4ad9beeea8` |
| 9 | `theorem` | [quartic_value_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/quartic-value-zero--f1200d05cf622eb85f716a93.md) | 53 | `result-track:f1200d05cf622eb85f716a9383439b11a03698a95e814518650c74246d66d1a7` |
| 10 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/quartic-hasderivat--16e926b08a5d2dba33d15c6b.md) | 70 | `result-track:16e926b08a5d2dba33d15c6b76ca9768f778d9b053094962fcd67c92861c526f` |
| 11 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/quartic-deriv--b471f6153c42438f177dd5c9.md) | 75 | `result-track:b471f6153c42438f177dd5c910eaedc21b60e2c8b69caf10c05334e49ea0f42c` |
| 12 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/quartic-second-deriv--44c8d1019b44ae0f71dd592a.md) | 78 | `result-track:44c8d1019b44ae0f71dd592a58412c8404a6aae6b374b79732250796adbd6999` |
| 13 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile-contdiff--f2b57b1af842858cb319d6f9.md) | 82 | `result-track:f2b57b1af842858cb319d6f96cfd5325e07b6a14bc29243fbe067d793fd4782b` |
| 14 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile-hascompactsupport--cf230d0c9004fe8777909a45.md) | 86 | `result-track:cf230d0c9004fe8777909a458bf2f628edce39b4ca17432970f5574b4c81d0be` |
| 15 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile-hasderivat--cb061b862fda5dce992096c7.md) | 89 | `result-track:cb061b862fda5dce992096c7a9830faa312159a4efb0182ac6f5c8280dfee0e5` |
| 16 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile-deriv--72171b3986ae2b3665cf4767.md) | 102 | `result-track:72171b3986ae2b3665cf47672d888223d48d213c482773b51a0ef10c9ce47a64` |
| 17 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile-transform--d8a9eb408f75a36166f81c88.md) | 105 | `result-track:d8a9eb408f75a36166f81c881dd151acdeddb7fb234f3a2ff27b145427435b80` |
| 18 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/fifthprofile-deriv-transform--81de84b7ce1629ead8036512.md) | 120 | `result-track:81de84b7ce1629ead8036512a8a2251a215dfb75607457d783c58a1619f099b8` |
| 19 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/declarations/literal-quartic-ode--903bd35713bde505af0ed23e.md) | 130 | `result-track:903bd35713bde505af0ed23e220de3ff579d1e72feaceb783993646c1e891b35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
