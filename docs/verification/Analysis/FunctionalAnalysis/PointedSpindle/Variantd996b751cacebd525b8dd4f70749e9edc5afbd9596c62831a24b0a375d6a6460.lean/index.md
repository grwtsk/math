# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PointedSpindle.Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db65d30678d53fb1c9f6e9178c7f038f1f417137",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db65d30678d53fb1c9f6e9178c7f038f1f417137`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.FiniteTensor` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.PointCarrier` — import line 3; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.SpectralPacket` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalOrbitVector](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/canonicalorbitvector--290a773eec9c71389d49efb7.md) | 23 | `declaration-track:290a773eec9c71389d49efb7d08f6e4cedaf57f0c8ab8e0b67f2d2141b8e7fa8` |
| 2 | `theorem` | [canonicalOrbitVector_apply_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/canonicalorbitvector-apply-zero--0c1501a47058bee5b153bd55.md) | 27 | `result-track:0c1501a47058bee5b153bd55cacb2e3824438e4d922d65acca33f5151db004e4` |
| 3 | `theorem` | [canonicalOrbitVector_apply_one](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/canonicalorbitvector-apply-one--7076d5cd589bc263d49d0b61.md) | 31 | `result-track:7076d5cd589bc263d49d0b61d1b30cf25cb387ca91084469abc830c76b75f019` |
| 4 | `theorem` | [canonicalOrbitVector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/canonicalorbitvector-norm--81c3077a1a86afe19284c941.md) | 34 | `result-track:81c3077a1a86afe19284c941abdb4640f57650631ff670c536de36be42d9d119` |
| 5 | `structure` | [PointedSpindleState](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/pointedspindlestate--7e17f6abdfee19531b43e8c1.md) | 42 | `declaration-track:7e17f6abdfee19531b43e8c19b5017b303da7513164fd830b7e6256eb2565d5c` |
| 6 | `def` | [vector](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/vector--70d29cee7aea7d7d6aa17180.md) | 58 | `declaration-track:70d29cee7aea7d7d6aa171807c4ed03fd185461410f01ebf72955cbd9a911c68` |
| 7 | `theorem` | [vector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/vector-norm--bee2907bf62dc54195b889ae.md) | 65 | `result-track:bee2907bf62dc54195b889ae9de1c094f03e86136e8572cfa41fc4449e5c5e12` |
| 8 | `def` | [vectorState](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/vectorstate--8f79f0bd41097e3e8635e4ce.md) | 71 | `declaration-track:8f79f0bd41097e3e8635e4ce81250111c654ffb83c9eb4a3a6a967a71c40b117` |
| 9 | `def` | [projection](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/projection--ae7172e9bf7dcdf24e0100cf.md) | 74 | `declaration-track:ae7172e9bf7dcdf24e0100cfb56b7ea404b40fbc110108347d4a7e322ec52a45` |
| 10 | `theorem` | [projection_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/projection-selfadjoint--fbcfd61e19139dfda01baed9.md) | 81 | `result-track:fbcfd61e19139dfda01baed97027978659d93a27d4b4247a9c399a8fc03002ab` |
| 11 | `theorem` | [projection_idempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/projection-idempotent--e1e2f40d5d2792670ee2ba57.md) | 85 | `result-track:e1e2f40d5d2792670ee2ba57cff0032c1356653e201ec5d6e3f1d42517e915eb` |
| 12 | `def` | [canonical](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/declarations/canonical--fe9ea911bb88af4e4fe5b0e6.md) | 90 | `declaration-track:fe9ea911bb88af4e4fe5b0e610b19c22e1bfbbd0abf19d7b5a08bfe7d708f8f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
