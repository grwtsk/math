# Verification target: GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9e9d9aaf827604a95bcba5a21e39975157ff101",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9e9d9aaf827604a95bcba5a21e39975157ff101`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicLineSectionBounded.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completeMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap--ce92d7ff949e2464c78675b1.md) | 33 | `declaration-track:ce92d7ff949e2464c78675b1ecee04ca6515b26d7bffdc754cdc2e236aea36a6` |
| 2 | `theorem` | [completeMap_toCompletion](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-tocompletion--ad196313f36dc153d8b3d833.md) | 39 | `result-track:ad196313f36dc153d8b3d83326c6abdf648d85bda057fa22795f18bf81c5304a` |
| 3 | `theorem` | [completedMap_ext](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completedmap-ext--c584462a07cb3483988d1f63.md) | 48 | `result-track:c584462a07cb3483988d1f6328f4e97dc33f38d8c71e2e6cf609d9db85be0b7b` |
| 4 | `theorem` | [completeMap_injective](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-injective--16315814d6b2fd91a2b18c5f.md) | 57 | `result-track:16315814d6b2fd91a2b18c5f1501b124f2c8fe66ea9e40d3b4ac32f99422e1b5` |
| 5 | `theorem` | [completeMap_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-zero--225d952125d2b95e8c14fb13.md) | 67 | `result-track:225d952125d2b95e8c14fb13bcdaa85260120617fc7aa1c29fac9b447f936591` |
| 6 | `theorem` | [completeMap_add](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-add--f90060c62abd9d27c3f329e4.md) | 74 | `result-track:f90060c62abd9d27c3f329e43fe2701085fae3610ea6c189be9ab7707f823334` |
| 7 | `theorem` | [completeMap_sub](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-sub--9ed2fd26a13d9d42654bb171.md) | 83 | `result-track:9ed2fd26a13d9d42654bb1718423bc59d933cf31eaf95e6f6147b49cb5afe3ae` |
| 8 | `theorem` | [completeMap_smul](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-smul--ae172c6fd134f8964dfd57ac.md) | 92 | `result-track:ae172c6fd134f8964dfd57acd8548a49d270db035d2e1a4393676a258cffeb94` |
| 9 | `theorem` | [completeMap_id](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-id--340b737179ebeb34f3c0ba12.md) | 100 | `result-track:340b737179ebeb34f3c0ba12f1497aac82bf9b904608938238e642f2fc784bef` |
| 10 | `theorem` | [completeMap_comp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-comp--b47932e2f80f83c916cbc664.md) | 109 | `result-track:b47932e2f80f83c916cbc6643fee5503eec3defc9afae4bd4f3a70fae5e747c7` |
| 11 | `theorem` | [completeMap_bound](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-bound--2f0a431d9ad33c6e24bd4404.md) | 120 | `result-track:2f0a431d9ad33c6e24bd440434b593547499dec970f33eeef056cc93ccc6336e` |
| 12 | `theorem` | [completeMap_norm](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-norm--d7a3acd630abe4d86e622c8b.md) | 132 | `result-track:d7a3acd630abe4d86e622c8b158eceb649a68d781e7073c03acec003eb265647` |
| 13 | `def` | [quotientGaugeMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/quotientgaugemap--ba1fab37e63413dea44197a4.md) | 145 | `declaration-track:ba1fab37e63413dea44197a410d50afce129a0e81280fd348fdc74c24279b723` |
| 14 | `def` | [completionGaugeMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completiongaugemap--f70a9c9af3dc8fda95fc1550.md) | 151 | `declaration-track:f70a9c9af3dc8fda95fc155014f884fda681d7f568ed9865c2bd01465a832406` |
| 15 | `theorem` | [completeMap_gauge](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-gauge--5f3da80fe02d91f19e837091.md) | 156 | `result-track:5f3da80fe02d91f19e837091bbecc5a2cf94378f0765e5b8e56e0dc3f9761d87` |
| 16 | `def` | [gaugeDefect](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/gaugedefect--d193f71c89aa6aef4d98210e.md) | 166 | `declaration-track:d193f71c89aa6aef4d98210ee24e5f5ceadc4545ba6d81e36ed99a1c3e732070` |
| 17 | `def` | [completedGaugeDefect](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completedgaugedefect--90ace776fb6906605d485bb3.md) | 173 | `declaration-track:90ace776fb6906605d485bb362245dc78e8268b4ccb7c339f648b5902c5b8801` |
| 18 | `theorem` | [completeMap_gaugeDefect](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-gaugedefect--3859611662eae2111d7380f4.md) | 182 | `result-track:3859611662eae2111d7380f41e753b8b0ced19b405ea7fe680368daff81db67f` |
| 19 | `theorem` | [completedGaugeDefect_norm](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completedgaugedefect-norm--198c24f46696b0580b280ce2.md) | 193 | `result-track:198c24f46696b0580b280ce2400394c68b8f11e691223b0656964f37102ab357` |
| 20 | `theorem` | [completedGaugeDefect_eq_zero_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completedgaugedefect-eq-zero-iff--14fbe35bbbd9399ad821e68f.md) | 201 | `result-track:14fbe35bbbd9399ad821e68f12af0c18101568d61da5698432c3bb9aea875779` |
| 21 | `theorem` | [completeMap_adjoint_of_pairing](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completemap-adjoint-of-pairing--e68fae295c92a50837b4a96e.md) | 210 | `result-track:e68fae295c92a50837b4a96e9fdd7962f2f0d0b76fa7fb8c42138884c464f075` |
| 22 | `def` | [gaugeConjugate](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/gaugeconjugate--6877cc68a8a409001ef93450.md) | 228 | `declaration-track:6877cc68a8a409001ef93450054d322f6227432c0eeba0b4ba3172cfc72add03` |
| 23 | `theorem` | [gaugeConjugate_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/gaugeconjugate-apply--f6eac5d1e39a0fc1c6f66bc4.md) | 236 | `result-track:f6eac5d1e39a0fc1c6f66bc402d6d5cc6472adc568026974fa3b2140ceee55f1` |
| 24 | `theorem` | [gaugeConjugate_adjoint](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/gaugeconjugate-adjoint--5c5e471a2eec45a73a81a9c9.md) | 244 | `result-track:5c5e471a2eec45a73a81a9c9b07f06e4870305c2b0a9e6c39c3359c0eb5de596` |
| 25 | `theorem` | [completed_conjugacy_of_defect_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completed-conjugacy-of-defect-zero--000e22b0adb3e0c05382ac50.md) | 260 | `result-track:000e22b0adb3e0c05382ac502d44e00f0f922ec8361f704b1a3a0ba1c9a6d1f1` |
| 26 | `theorem` | [completed_adjoint_of_defect_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completed-adjoint-of-defect-zero--0f700d978933ca5be2186df6.md) | 280 | `result-track:0f700d978933ca5be2186df6bc810e4d5494084edc5f56b65c2ac1ac04a19910` |
| 27 | `abbrev` | [DiracSpace](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/diracspace--425cf2bd8a133e1f42595a7e.md) | 297 | `declaration-track:425cf2bd8a133e1f42595a7e2375adc3c6ebdb02a457b6ed818444d03e98dd0b` |
| 28 | `theorem` | [diracUnit_ne_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/diracunit-ne-zero--0ccc9c3662c45dfcbd512a91.md) | 300 | `result-track:0ccc9c3662c45dfcbd512a91e974fdc9496527b0cf81d17ddae0e4aadeb7ca28` |
| 29 | `theorem` | [completedIdentity_ne_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/completedidentity-ne-zero--8572ee1477c4b109326193f2.md) | 307 | `result-track:8572ee1477c4b109326193f2375b8d5fd8846e9801e611d9b305f83c6fc78b4c` |
| 30 | `def` | [phaseOperator](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/phaseoperator--3f2d29d69fca0aff8f7e2c23.md) | 313 | `declaration-track:3f2d29d69fca0aff8f7e2c23088d3dca8eb921228c2394389682cf69c6cdc997` |
| 31 | `theorem` | [phase_is_completed_scalar](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/phase-is-completed-scalar--8d7da1916a639bdb7b8749ac.md) | 317 | `result-track:8d7da1916a639bdb7b8749acbe3ecec7a2c3f6123981892926fcc01465e967f6` |
| 32 | `theorem` | [phase_adjoint](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/phase-adjoint--681246e434d61ffebce00d78.md) | 325 | `result-track:681246e434d61ffebce00d78473cc464e10f2d47140890d8d518b22ac79660cc` |
| 33 | `theorem` | [phase_not_self_adjoint](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/declarations/phase-not-self-adjoint--3bfa7774d9c5fecf7770b798.md) | 332 | `result-track:3bfa7774d9c5fecf7770b7986ffe60e03d6a98dad3182be6e1043ee43d23dd04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
