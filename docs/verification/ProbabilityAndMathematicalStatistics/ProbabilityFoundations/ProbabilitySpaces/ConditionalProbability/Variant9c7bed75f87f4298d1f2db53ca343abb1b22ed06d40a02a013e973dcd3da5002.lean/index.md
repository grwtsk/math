# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ConditionalProbability.Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9ee358999cad137afb1c6dbf26538714ed4858b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9ee358999cad137afb1c6dbf26538714ed4858b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cond](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond--8ed1f4872dfabd91c3ebe44a.md) | 72 | `declaration-track:8ed1f4872dfabd91c3ebe44acbf26ac6d4b61e9b26bd5c428ac808799295b9c0` |
| 2 | `theorem` | [cond_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-isprobabilitymeasure--2fd09e58a105162b43039c0e.md) | 83 | `result-track:2fd09e58a105162b43039c0eb870bee51d9c16f66e506d104e3befdf40ce1db2` |
| 3 | `theorem` | [cond_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-empty--244a5bce0192f163efb0f638.md) | 93 | `result-track:244a5bce0192f163efb0f638fcf10bb97bb683b9b6ec3955793928dac09623f0` |
| 4 | `theorem` | [cond_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-univ--55f1aadd289dd6815fff1586.md) | 97 | `result-track:55f1aadd289dd6815fff15860de0927c78fcc1fc31f3f4e20daded76ea545c3b` |
| 5 | `theorem` | [cond_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-apply--95bedb40824943e1fa54b17f.md) | 102 | `result-track:95bedb40824943e1fa54b17fa34a2f62c86ce9243d20b0fc34db66d400c72d2b` |
| 6 | `theorem` | [cond_inter_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-inter-self--d03d867dc42bf2df6a695523.md) | 106 | `result-track:d03d867dc42bf2df6a6955231f5f18baa8950c747fe62b02f1b7a2a3f3ec9bfb` |
| 7 | `theorem` | [inter_pos_of_cond_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/inter-pos-of-cond-ne-zero--1d1b6b4bb64f42a68006064e.md) | 110 | `result-track:1d1b6b4bb64f42a68006064ec132ff1d34f4b4627d696887f5d04d253f187885` |
| 8 | `theorem` | [cond_pos_of_inter_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-pos-of-inter-ne-zero--aa13a106048c7a0afa2a3616.md) | 117 | `result-track:aa13a106048c7a0afa2a36163114c991d0c3d9a0e3ee0a37be4fbe9c6d230656` |
| 9 | `theorem` | [cond_cond_eq_cond_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-cond-eq-cond-inter--8b3379d3fe72c448925ce54b.md) | 124 | `result-track:8b3379d3fe72c448925ce54b3504b728d4e2d18af8c2a7ee6f16c8ce23288e9c` |
| 10 | `theorem` | [cond_cond_eq_cond_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-cond-eq-cond-inter--c281428f0d16bdc56f475e00.md) | 135 | `result-track:c281428f0d16bdc56f475e00b26a1fe26c3cf00627f0d3ff9576054f4cb6b467` |
| 11 | `theorem` | [cond_mul_eq_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-mul-eq-inter--fd9a44b6ebc5182440c8df35.md) | 140 | `result-track:fd9a44b6ebc5182440c8df3524aef4ceec688ab5e275371785e9ae4de0c086d9` |
| 12 | `theorem` | [cond_mul_eq_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-mul-eq-inter--698246167b634fbcb0f6f57d.md) | 145 | `result-track:698246167b634fbcb0f6f57da4551631466919346b7a2214a14534d5564b97c5` |
| 13 | `theorem` | [cond_add_cond_compl_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-add-cond-compl-eq--ec1c3da3f9ec1e64766b5bdb.md) | 151 | `result-track:ec1c3da3f9ec1e64766b5bdb01f25dfe197f3b913eea1edd6a6ddf4bf0b3b596` |
| 14 | `theorem` | [cond_eq_inv_mul_cond_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant9c7bed75f87f4298d1f2db53ca343abb1b22ed06d40a02a013e973dcd3da5002.lean/declarations/cond-eq-inv-mul-cond-mul--93ee157a694fa5f314457500.md) | 159 | `result-track:93ee157a694fa5f314457500ee75b30ef1833a8696f503c192bed8a52343fc77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
