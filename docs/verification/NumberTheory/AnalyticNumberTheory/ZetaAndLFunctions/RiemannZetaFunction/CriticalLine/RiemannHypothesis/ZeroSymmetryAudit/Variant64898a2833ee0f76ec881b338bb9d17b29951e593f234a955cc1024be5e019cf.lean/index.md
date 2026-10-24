# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroSymmetryAudit.Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52ed15d09638b2a782a6dc8e0513ff2de57f820a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52ed15d09638b2a782a6dc8e0513ff2de57f820a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_conjugate_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/zero-conjugate-involutive--0583c1d1e05a81ee5594ba60.md) | 20 | `result-track:0583c1d1e05a81ee5594ba60d250b9f7256d86d839e8810b616e2dc91d8a24a3` |
| 2 | `theorem` | [zero_reflect_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/zero-reflect-involutive--cadab55efa22cb7e01fa8042.md) | 24 | `result-track:cadab55efa22cb7e01fa8042300b2fb2a89cacb2060985e2ff3053f8d5bc0c86` |
| 3 | `theorem` | [zero_conjugate_reflect_commute](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/zero-conjugate-reflect-commute--844b57f5df45608e175d31f7.md) | 27 | `result-track:844b57f5df45608e175d31f7dce0779679b8ae4e91c229b001b2c3f98cb3452f` |
| 4 | `theorem` | [critical_reflection_eq_composite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/critical-reflection-eq-composite--4fa2288c2c68998416b3dd62.md) | 31 | `result-track:4fa2288c2c68998416b3dd629f5cb8356711b79be0921b8f57ce9dcbd295e318` |
| 5 | `theorem` | [critical_reflection_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/critical-reflection-involutive--772419e9478b69d0eb3fe50a.md) | 35 | `result-track:772419e9478b69d0eb3fe50a51fdc87be2c660af0d0ed182b0b3ce14c28403b5` |
| 6 | `theorem` | [NontrivialZetaZero.ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivialzetazero-ne-zero--c420706c5376347fc4d9c355.md) | 40 | `result-track:c420706c5376347fc4d9c3552114af37063d53e913ef41f23d3f05deb3216ce5` |
| 7 | `theorem` | [NontrivialZetaZero.gamma_real_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivialzetazero-gamma-real-ne-zero--38afff80c0183c9be1f33a0f.md) | 47 | `result-track:38afff80c0183c9be1f33a0f9d256a09367e8e8bab9ec0304945bd1ceeffe0a2` |
| 8 | `theorem` | [NontrivialZetaZero.conjugate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivialzetazero-conjugate--f9694b01ed73b62167bb8a64.md) | 60 | `result-track:f9694b01ed73b62167bb8a64c12b070308c6ae0bd341ba0c0a9567425a9a4147` |
| 9 | `theorem` | [NontrivialZetaZero.reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivialzetazero-reflect--159a01ec03096fe28991735a.md) | 76 | `result-track:159a01ec03096fe28991735a5bfd2904cf1076e4a2d808a21bc9551a604f92c0` |
| 10 | `theorem` | [NontrivialZetaZero.critical_reflection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivialzetazero-critical-reflection--d661299765c5d6ce349bebb8.md) | 100 | `result-track:d661299765c5d6ce349bebb8e64b46f30268c10483958a7a5673481994352a44` |
| 11 | `theorem` | [NontrivialZetaZero.mem_critical_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivialzetazero-mem-critical-strip--c172c5a8580669b0ef05050f.md) | 105 | `result-track:c172c5a8580669b0ef05050f4c08dd5ef3e29b82798ed4cf596784ebddba1405` |
| 12 | `theorem` | [nontrivial_zero_conjugate_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivial-zero-conjugate-iff--dac15f9017b6e95739f29a19.md) | 115 | `result-track:dac15f9017b6e95739f29a19589d96eb3b770d5f700122bdf3787edad1fe4770` |
| 13 | `theorem` | [nontrivial_zero_reflect_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivial-zero-reflect-iff--ca90b4a1e5b09da126970b8f.md) | 123 | `result-track:ca90b4a1e5b09da126970b8f47b3b4cc7d6710dbe5ccd7b85e9d0fef38779f50` |
| 14 | `theorem` | [nontrivial_zero_critical_reflection_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant64898a2833ee0f76ec881b338bb9d17b29951e593f234a955cc1024be5e019cf.lean/declarations/nontrivial-zero-critical-reflection-iff--d00cf9f4e573549ecb39e700.md) | 131 | `result-track:d00cf9f4e573549ecb39e7005eba0c3e7b6d171b89e36c5aef40f6915efd73fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
