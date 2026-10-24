# Verification target: GRWTSK.Analysis.Complex.RationalTentEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71e536e536f05037b85728a563675bd4aeace688",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTentEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71e536e536f05037b85728a563675bd4aeace688`.

Source path: `GRWTSK/Analysis/Complex/RationalTentEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTentEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTentFamily`](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentKernelSensitivity`](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoordinateData](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/coordinatedata--ed53629e85e09a7cc9f28f36.md) | 29 | `declaration-track:ed53629e85e09a7cc9f28f36080581db8e113ee9e6381bcdea2218517df28183` |
| 2 | `def` | [radiusAt](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/radiusat--a36c34900c49567f2fac3fa7.md) | 36 | `declaration-track:a36c34900c49567f2fac3fa73574da499a9d14375cc3a099be40cce0a443e188` |
| 3 | `def` | [logUpper](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/logupper--7f85391ba1419e479b49b1cd.md) | 38 | `declaration-track:7f85391ba1419e479b49b1cd486628dfb8ef2cdbd2b223e433d2ad97b3ac5adb` |
| 4 | `def` | [coordinateBudget](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/coordinatebudget--25b4e5c2ccf9a8bb9a0896c4.md) | 42 | `declaration-track:25b4e5c2ccf9a8bb9a0896c4fd1a5e3cb711f2398be131df1780662608f97741` |
| 5 | `def` | [totalError](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/totalerror--bff43b50ce75f9882bd84b98.md) | 46 | `declaration-track:bff43b50ce75f9882bd84b988c1a8466d0256dd81d7920d32decdb70326af307` |
| 6 | `def` | [checkWithin](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/checkwithin--a3e0583233975137de56afc5.md) | 51 | `declaration-track:a3e0583233975137de56afc55a05e502a0933b3b6dfc897d6ef7a76373157183` |
| 7 | `theorem` | [checkWithin_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/checkwithin-iff--723acfce297203157d609381.md) | 59 | `result-track:723acfce297203157d60938164e8c054bffaaab53aaf020f4e1c7f186dc5a867` |
| 8 | `theorem` | [log_le_logUpper](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/log-le-logupper--c6b35f1567f22345a326a3d9.md) | 70 | `result-track:c6b35f1567f22345a326a3d995aafe717e47ba04eead37f191f4f001665ebf28` |
| 9 | `theorem` | [coordinate_error](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/coordinate-error--c8d8ae84ec89665a06612ff5.md) | 79 | `result-track:c8d8ae84ec89665a06612ff5a31d9af39961b62d14aaa8d450a7cc6b6c8a58b5` |
| 10 | `theorem` | [checkWithin_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/checkwithin-sound--694798921e390346f31669a1.md) | 107 | `result-track:694798921e390346f31669a1a46f390a3f9123dba282b7f892895678beee2146` |
| 11 | `theorem` | [reindexed_source_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/declarations/reindexed-source-sound--132062a7f1d37177fd7558dd.md) | 144 | `result-track:132062a7f1d37177fd7558ddb6b5cd24ba749e56675d0603c2d78a6524016788` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
