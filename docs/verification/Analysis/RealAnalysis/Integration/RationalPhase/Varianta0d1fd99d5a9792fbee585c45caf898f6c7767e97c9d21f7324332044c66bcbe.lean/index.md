# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RationalPhase.Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd0b35eb0b5b571be94a354b8c6d01d34c6d12c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd0b35eb0b5b571be94a354b8c6d01d34c6d12c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/planecode--c11a24e074527e87c615be5e.md) | 35 | `declaration-track:c11a24e074527e87c615be5e471c1a7b6c6e94b4a093cc52fd8a14a9d785440d` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/encode--f91325d5d163b19982c3887f.md) | 42 | `declaration-track:f91325d5d163b19982c3887f813dc3a5d92462fbf658ec36642f60f757043fb3` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/interpret--8c9e2b4fe8dc01ce09a62e90.md) | 46 | `declaration-track:8c9e2b4fe8dc01ce09a62e90d42b8f0708812a7d89757003aa58c95316ff1fa2` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/supported--bd1f4c50d5fbd5ebf47ec512.md) | 50 | `declaration-track:bd1f4c50d5fbd5ebf47ec5124dee2dbf1e9b2aa76935c51238bd5c21f2641322` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/coefficients--f363851c3d4eee917cd3dc83.md) | 53 | `declaration-track:f363851c3d4eee917cd3dc8314c4bee51edb30a68933a43bd465bd269ad21bf1` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/operation--8a68893be86f127521112681.md) | 57 | `declaration-track:8a68893be86f1275211126818e96d0780ccc19ff7dbe1c5740770675419adf4e` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/move--54da2b58b94a9302f0d6819d.md) | 62 | `declaration-track:54da2b58b94a9302f0d6819d0e9fe6e0d87ee811a869fb95ec6b9706b798ea63` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/operation-eq-coefficients--bd20afd0704e19127ceaf5cc.md) | 69 | `result-track:bd20afd0704e19127ceaf5cc33a5ca7d8f43f34aac7b0c7d31cfc392c50b5dd4` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/interpret-encode--beb79e4a8a0aacf985a0f3ee.md) | 78 | `result-track:beb79e4a8a0aacf985a0f3ee962a6598b14380765ee3133e9ceaaedfc1e39326` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/interpret-move--e8381d687ecbc0f51d719545.md) | 82 | `result-track:e8381d687ecbc0f51d719545eeb88d0aab40872784a87bd79d122dfd67ebf9cf` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/interpret-move-encode--2f52a93d22f0a1a41d5de354.md) | 88 | `result-track:2f52a93d22f0a1a41d5de354209965cbd3aedef297fe2edd7393ebd3dbacfc6b` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/quadratic--2948f286f15e3bce2e8a3dec.md) | 93 | `declaration-track:2948f286f15e3bce2e8a3dec2c47becac84d6b08af089b377e5f61dc375dc498` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/operation-quadratic--7fe4932be48d977faca70959.md) | 96 | `result-track:7fe4932be48d977faca709597bf61ce4074b70cc73869123992674a41d4bce67` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/move-quadratic--f735f3c14c14768433729739.md) | 104 | `result-track:f735f3c14c147684337297398453ec95380a289d37847c79eeb52f5925f55ead` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/reflection--1bbb81b02d590d9dffe4c649.md) | 109 | `declaration-track:1bbb81b02d590d9dffe4c649bf328f2fa902c368a28d6ef95645fed20301caf5` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/reflection-sq--8582cf7364ff9a8e5f048658.md) | 113 | `result-track:8582cf7364ff9a8e5f048658da9839d59d5a265027282f2a0f0eb3d4c443915e` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/reflection-reversal--c5a128930d0f9bc7c87372c8.md) | 117 | `result-track:c5a128930d0f9bc7c87372c8e95c5d7bb123d6c9edc7f90bce7d5d8beec0fa60` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/operation-inverse--80ddea69ab94208d8f64b298.md) | 123 | `result-track:80ddea69ab94208d8f64b29868cc0954aa357f6340a1566e58fc2167503f0150` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phasereflection--216aa307bd91db3b6ee4eb4c.md) | 130 | `declaration-track:216aa307bd91db3b6ee4eb4cc3aaef3a5748c2de5489b074b17cb7031b192fde` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phasereflection-sq--6ed82282aac0dcec51ab7f1a.md) | 134 | `result-track:6ed82282aac0dcec51ab7f1a5d0a5a73e6493e9e0ddb5ad7b3f681c3efe3a15b` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/coefficients-one--a82f5947143739b013cbe39f.md) | 144 | `result-track:a82f5947143739b013cbe39f485808c03b88d744d16932872b50bd949cda7500` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/operation-one--6495127a0043d41ee86792df.md) | 148 | `result-track:6495127a0043d41ee86792dfc0fb71f97768b7e1e662b558fd93aac5aa4bfe15` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/integralat--69f7011bbde208c816c30bf3.md) | 162 | `declaration-track:69f7011bbde208c816c30bf350de841180aad135543c7f73b13c1230970da595` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/integralvector--3c0ea095374354e210c8837b.md) | 166 | `declaration-track:3c0ea095374354e210c8837b2ec4dfce54f09b7054f71f1339e1f8d1300c4f40` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/operation-integral--df15ffe68262ed7e76960ea0.md) | 169 | `result-track:df15ffe68262ed7e76960ea02d9c13ab7343e5424bd37c9c7fe50e0342bc2ea6` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/integralat-iff-preserves-integral--0e738a7aa40f31508d355cfd.md) | 186 | `result-track:0e738a7aa40f31508d355cfd625ee894f972e27c7beda702a0b86ebd871e6134` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/instance--b2b6233a7758df9c5317bb4f.md) | 200 | `declaration-track:b2b6233a7758df9c5317bb4ff858842d157ff04e6780f37116697b776dd316f0` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/instance--6af1573f0b7b8d82cd2b3cbd.md) | 201 | `declaration-track:6af1573f0b7b8d82cd2b3cbd19ebea60c50d72f55df6baf8aca3b2f504ae82bd` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/coefficients-two-rat--5f322e12c3567f5a61dcb2b7.md) | 204 | `result-track:5f322e12c3567f5a61dcb2b766ffda993895c6fb3b8e8f514cc81d681ce33c0f` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-two-supported-five--1a7da8eb97441201acbad0ff.md) | 209 | `result-track:1a7da8eb97441201acbad0ff0e12ffe8330c29e529daa45653b23f33b9813bc7` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/coefficients-two-five-diagonal-norm--c372c045535a25bb45c415bf.md) | 213 | `result-track:c372c045535a25bb45c415bfcac124a597915cbfc999e54b05fa354452f4a66c` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-two-five-not-integral--0ca1c0c36586f8ff78651511.md) | 224 | `result-track:0ca1c0c36586f8ff78651511acebc3c61d0563d904d9208e3d3ba4525a88eb5c` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-two-not-supported-mod-five--86c570c74e8cd1659643aa93.md) | 231 | `result-track:86c570c74e8cd1659643aa9329c6b68f58c95a8602115767488fb79ca3256ab6` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-one-not-supported-mod-two--2d570003cebc9ed23cc02923.md) | 236 | `result-track:2d570003cebc9ed23cc02923cfe9212e1c05c78cddb05d89d103a9051edf5a81` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-one-supported-two--256c17ee7e240fdf60add69d.md) | 241 | `result-track:256c17ee7e240fdf60add69d9696d8fe19f554de758d5e6d2fbf0fd8b7820267` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-one-two-denominator-norm--318ba9872226087c730a5dce.md) | 245 | `result-track:318ba9872226087c730a5dce76f1ee3cc3792f5e91b6ef30540de76d4c4153fd` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-one-two-integral--798b032513dd237305c9cfc5.md) | 250 | `result-track:798b032513dd237305c9cfc56857b8df062152faf1db255b48eea351084ff676` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-two-five-basis-nonintegral--359ca52bb442bf5380d19152.md) | 257 | `result-track:359ca52bb442bf5380d19152cc0dde21d4bb00c4efc736b68bfb6ebf62564e77` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Varianta0d1fd99d5a9792fbee585c45caf898f6c7767e97c9d21f7324332044c66bcbe.lean/declarations/phase-one-two-preserves-integral--68a811f8749b050da1c1bb7f.md) | 263 | `result-track:68a811f8749b050da1c1bb7f37cc177981e8347d978242b39dabbb53532ab50a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
