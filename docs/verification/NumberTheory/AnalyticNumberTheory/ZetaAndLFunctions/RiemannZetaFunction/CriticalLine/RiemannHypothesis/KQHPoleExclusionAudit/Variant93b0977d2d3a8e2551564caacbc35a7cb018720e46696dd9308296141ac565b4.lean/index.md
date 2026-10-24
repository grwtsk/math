# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusionAudit.Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b99f425afb6df1b1b6847be7d636a9744fa43e1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b99f425afb6df1b1b6847be7d636a9744fa43e1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/finitetransform--b8be59938a362459c34f1f57.md) | 37 | `declaration-track:b8be59938a362459c34f1f576c6000aecf4a62abd5bef79737c8cf2ea64d55c7` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/exclusionbound--b24305400423868b622f7430.md) | 42 | `declaration-track:b24305400423868b622f743091f603185efce758661528569dfb6e2fb16b84e7` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/exclusionbound-eq--ec01160735d3619151aa6943.md) | 46 | `result-track:ec01160735d3619151aa69439b237514cd0597e256107c2570b307fc6631ff60` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/exclusionbound-pos--3c1f028fc14cb3086fb7fadc.md) | 53 | `result-track:3c1f028fc14cb3086fb7fadc80632e91a415b27d0aff3dcfedf41097abada7ee` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/regularpart-lower-bound--fd2e73ffae66545bf2c91540.md) | 65 | `result-track:fd2e73ffae66545bf2c915400760ed4fc5363a8115787f11253cd0e5ead5b368` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/finite-regularpart-bound--8e077b75a1f5ac5691b0c620.md) | 80 | `result-track:8e077b75a1f5ac5691b0c620e9004ea40517a8cb7a93c106dac5aeba104e0070` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/finitetransform-lower-bound--b2aa60bee1950739cbe86626.md) | 105 | `result-track:b2aa60bee1950739cbe86626439b70e7e0e6aa6afc432c31c73ba7930c141de6` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/finitetransform-ne-zero--447f2fe8a464b380dfdd09d6.md) | 118 | `result-track:447f2fe8a464b380dfdd09d6c8347976fcba6cc142e34e4741f76e8b69cbb221` |
| 9 | `theorem` | [finiteTransform_ne_zero_of_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/finitetransform-ne-zero-of-radius--24aeb660b40729d3c8cdd7dc.md) | 134 | `result-track:24aeb660b40729d3c8cdd7dcf99dd2f2ff363e3d93975eea25a96c540dda4ff8` |
| 10 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/perturbative-ne-zero--340bb1616f014fb0d24d9b31.md) | 151 | `result-track:340bb1616f014fb0d24d9b31570ff0d91b62d8f97411f1424ee56290d34ec370` |
| 11 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/finitetransform-comparison-ne-zero--105311f5a6f5e6db7c410f21.md) | 160 | `result-track:105311f5a6f5e6db7c410f21632fe44328e39a7192d93e764d68afeb9c9f68d2` |
| 12 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/twoatomtransform--1cc72c4d446c53bd7634e189.md) | 173 | `declaration-track:1cc72c4d446c53bd7634e1899a422be7c2b03288f17887bff76859640c8d47f6` |
| 13 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/twoatomtransform-eq--9d7181b4370a0f7992817ffd.md) | 177 | `result-track:9d7181b4370a0f7992817ffde64132f7548fca729c20c1d087239fb97cf402a0` |
| 14 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/twoatomtransform-zero--7d5d8eda44f7f5c17cdfb0af.md) | 185 | `result-track:7d5d8eda44f7f5c17cdfb0af13477a1624d119499f2806bc333e5c21b7d061fa` |
| 15 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant93b0977d2d3a8e2551564caacbc35a7cb018720e46696dd9308296141ac565b4.lean/declarations/no-gap-only-radius--835fd7e60d34308d3bc876b9.md) | 193 | `result-track:835fd7e60d34308d3bc876b93059f51e1e909c80f059a7cff6363921c1d5a318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
