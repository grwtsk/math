# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AnalyticalPart.Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f7e8a3bed03c25336391c82b82f1376a4b8c37",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f7e8a3bed03c25336391c82b82f1376a4b8c37`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.SumIteratedDerivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_cexp_mul_sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/hasderivat-cexp-mul-sumideriv--fea56d916d4d3687607f42b3.md) | 31 | `result-track:fea56d916d4d3687607f42b37c6343e4f27cf982912273fd271ef90689ff4672` |
| 2 | `theorem` | [integral_exp_mul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/integral-exp-mul-eval--09efda4b91700e6ecd6a1533.md) | 42 | `result-track:09efda4b91700e6ecd6a15338190cad9353d0cb8a88fad6b56806ab727c05d78` |
| 3 | `def` | [P](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/p--16741b55152cd13fc0ec6c51.md) | 62 | `declaration-track:16741b55152cd13fc0ec6c513de0e067e4074d993a29b7df25dd89d49dea9ed8` |
| 4 | `theorem` | [P_eq_integral_exp_mul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/p-eq-integral-exp-mul-eval--a8575b11a5eb176264f31d3c.md) | 65 | `result-track:a8575b11a5eb176264f31d3cb3ea1339ef794483d79a8b98d507e19bbb651bc2` |
| 5 | `theorem` | [P_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/p-algebramap--74fd91f86eff442449b48ffc.md) | 70 | `result-track:74fd91f86eff442449b48ffc4f966183fdd4170587c84256625e0661b9afd3fb` |
| 6 | `theorem` | [P_le_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/p-le-aux--d61ace0aeadd60013fc7b76d.md) | 79 | `result-track:d61ace0aeadd60013fc7b76d1c5f624ca08351433d5a8ee9e64ee2c0e32a7108` |
| 7 | `theorem` | [P_le](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/p-le--5adb1e25e1e7ad66500085df.md) | 106 | `result-track:5adb1e25e1e7ad66500085dfa4897ca27eeecaf0b0ea5d50e16e204f12dbe697` |
| 8 | `theorem` | [exp_polynomial_approx_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/exp-polynomial-approx-aux--00b542d025632b07e6c473e8.md) | 128 | `result-track:00b542d025632b07e6c473e8b9671868adec5aac22fdc49303452d4e865ca128` |
| 9 | `theorem` | [exp_polynomial_approx](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/declarations/exp-polynomial-approx--3a122c1c592309b0050bf8e0.md) | 169 | `result-track:3a122c1c592309b0050bf8e07d424d0eb0b8fa8e453dff7ea14ee66f0242b362` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
