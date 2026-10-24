# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFrequencyClassification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd73b3780e35f13c7bdf4d03c8a7d8306a552e21",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd73b3780e35f13c7bdf4d03c8a7d8306a552e21`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalResidue`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GreenFrequencyClass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/greenfrequencyclass--210e3f7ab9a61514e2ea5bf2.md) | 14 | `declaration-track:210e3f7ab9a61514e2ea5bf27c90c22f5607020caf285b06a67b94d4f2ced87c` |
| 2 | `def` | [greenFrequencyClass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/greenfrequencyclass--4206638e322b3871765e71fb.md) | 20 | `declaration-track:4206638e322b3871765e71fb9761c3544b4d840b72bb9cd960173f641052850c` |
| 3 | `theorem` | [greenFrequencyClass_alias_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/greenfrequencyclass-alias-iff--bb374cad46a0915273bec671.md) | 27 | `result-track:bb374cad46a0915273bec671e6f4394f08314ac60c59c09a60b7d49c39eaeec3` |
| 4 | `theorem` | [greenFrequencyClass_low_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/greenfrequencyclass-low-iff--bb3c51a15bdffb62096de6e2.md) | 34 | `result-track:bb3c51a15bdffb62096de6e2a1dba0f1e044e5f0f0bbb0c9c924e5c4fe3cc777` |
| 5 | `theorem` | [greenFrequencyClass_high_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/greenfrequencyclass-high-iff--cd05444579c9db3cf0123681.md) | 43 | `result-track:cd05444579c9db3cf01236812034010cc8763dba9f7c436a7da657c615e1bf65` |
| 6 | `theorem` | [canonicalResidue_zero_iff_alias](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/canonicalresidue-zero-iff-alias--a205d9f289481924859c94d2.md) | 53 | `result-track:a205d9f289481924859c94d27e7097a1051ab75758bb05cc653ea71845e613a5` |
| 7 | `theorem` | [canonical_low_eq_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/canonical-low-eq-residue--7adc644faa492a5398040904.md) | 74 | `result-track:7adc644faa492a5398040904206576b02028248b0e2dcdfb3e1424deda69976f` |
| 8 | `theorem` | [canonical_high_positive_quotient_parameterization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/canonical-high-positive-quotient-parameterization--95659746c7e76f53ece1d06b.md) | 84 | `result-track:95659746c7e76f53ece1d06b377fcbafec63248102cfefd5272283dd505fb8ed` |
| 9 | `theorem` | [canonical_high_negative_quotient_parameterization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/declarations/canonical-high-negative-quotient-parameterization--16670e6c4ad143447e420519.md) | 132 | `result-track:16670e6c4ad143447e4205193ffa501d15c64091af3a1344c2585f261fb76981` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
