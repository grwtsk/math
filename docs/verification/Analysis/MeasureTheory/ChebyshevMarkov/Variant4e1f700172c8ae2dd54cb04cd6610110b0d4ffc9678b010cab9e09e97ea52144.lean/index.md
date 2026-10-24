# Verification target: GRWTSK.Analysis.MeasureTheory.ChebyshevMarkov.Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "360ed8bfc9b4bb1f760ee847215ec853471318ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `360ed8bfc9b4bb1f760ee847215ec853471318ce`.

Source path: `GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_mul_meas_ge_le_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/pow-mul-meas-ge-le-elpnorm--2cc138f16323e8f6db632b00.md) | 22 | `result-track:2cc138f16323e8f6db632b006cc73302749e4eaad804213b61040f6d11951dec` |
| 2 | `theorem` | [mul_meas_ge_le_pow_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/mul-meas-ge-le-pow-elpnorm--30bb3979609098f371d11d0c.md) | 29 | `result-track:30bb3979609098f371d11d0c73e706ea9778fe79d5f705517d7e35667df7b8ba` |
| 3 | `theorem` | [mul_meas_ge_le_pow_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/mul-meas-ge-le-pow-elpnorm--1d0d39264cbe60b7613d2234.md) | 41 | `result-track:1d0d39264cbe60b7613d2234aede8df43faabe0d8aac3cddd996cc9382bec6bf` |
| 4 | `theorem` | [meas_ge_le_mul_pow_eLpNorm_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/meas-ge-le-mul-pow-elpnorm-enorm--3d3a7870411326e08360b5f3.md) | 48 | `result-track:3d3a7870411326e08360b5f355b0fa75ddd78c95e39cc2df778a3541f8a7a570` |
| 5 | `theorem` | [meas_ge_le_mul_pow_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/meas-ge-le-mul-pow-elpnorm--2b1881d80d1afb59f0288e48.md) | 63 | `result-track:2b1881d80d1afb59f0288e48d0964f5fab3ee74e983289b7fa2c8b61d1efb4f3` |
| 6 | `theorem` | [MemLp.meas_ge_lt_top'_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/memlp-meas-ge-lt-top-enorm--5386bf7ff0445ce8c2cdbd1d.md) | 68 | `result-track:5386bf7ff0445ce8c2cdbd1d1796f72d916122427f9a96183a6afdcc93382a41` |
| 7 | `theorem` | [MemLp.meas_ge_lt_top'](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/memlp-meas-ge-lt-top--f1904391b0d6edc9c0ad16a1.md) | 77 | `result-track:f1904391b0d6edc9c0ad16a16b7a48a28c80ccfea0863ac559dc6efcb315b6a6` |
| 8 | `theorem` | [MemLp.meas_ge_lt_top_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/memlp-meas-ge-lt-top-enorm--8714af69441181c6a60ba808.md) | 87 | `result-track:8714af69441181c6a60ba808c30b29dcf5a62db3e19ea28b6abc344b5259ec5b` |
| 9 | `theorem` | [MemLp.meas_ge_lt_top](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/declarations/memlp-meas-ge-lt-top--568fdf9b376187b1177af18a.md) | 92 | `result-track:568fdf9b376187b1177af18a08f6fe40112d066b4e13f3433368d1608ce4f2cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
