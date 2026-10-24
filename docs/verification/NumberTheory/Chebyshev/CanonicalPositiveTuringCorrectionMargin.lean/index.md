# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringCorrectionMargin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecc554d89b78fa221de9c8ba44b921dc1b125761",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecc554d89b78fa221de9c8ba44b921dc1b125761`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalTentCorrectionLowerBound`](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringUpperTent`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SquarePrefixEnclosure](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/squareprefixenclosure--5a07e8c512f7258950d93b34.md) | 49 | `declaration-track:5a07e8c512f7258950d93b34ed9501e58a9821f3bb513937a8791a71228dfa86` |
| 2 | `theorem` | [squareCorrectionAdmissible](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/squarecorrectionadmissible--17bc8f7eff0efbefe4333e7f.md) | 54 | `result-track:17bc8f7eff0efbefe4333e7f6877d7ed1705ad0e5a01b43910fb3a20745b4b8f` |
| 3 | `theorem` | [verified_square_correction_lower](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/verified-square-correction-lower--c3a14d689086bb69e43b57d5.md) | 68 | `result-track:c3a14d689086bb69e43b57d58533036c5010248007d8bd5387f5036c3344f7d8` |
| 4 | `theorem` | [verified_square_correction_floor](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/verified-square-correction-floor--37788d689075ac0b359c7fe9.md) | 83 | `result-track:37788d689075ac0b359c7fe92d34935290e82110eda22a1a8ff645447c7999ff` |
| 5 | `theorem` | [prime_in_square_of_verified_claimed_endpoints](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/prime-in-square-of-verified-claimed-endpoints--b547b888e25d169ccddd0b10.md) | 96 | `result-track:b547b888e25d169ccddd0b101d74233fc2810ea8a2b608a9f9f94ba2d451535c` |
| 6 | `theorem` | [prime_in_square_of_verified_endpoint_thresholds](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/prime-in-square-of-verified-endpoint-thresholds--74bed3eb051ef72f8feffe26.md) | 130 | `result-track:74bed3eb051ef72f8feffe2677dde690ea936dcab26d3a381f8282be3856faeb` |
| 7 | `theorem` | [zero_margin_not_strict_fixture](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringCorrectionMargin.lean/declarations/zero-margin-not-strict-fixture--721f70ec5ce48b6581c82d62.md) | 162 | `result-track:721f70ec5ce48b6581c82d628afc96c9ce1624b90219c4bbd9d0d75dd618018b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
