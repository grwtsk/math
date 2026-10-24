# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LIntegral.Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e19aeec8801fd93251535ae0797e66301c45303b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e19aeec8801fd93251535ae0797e66301c45303b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_inv_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/declarations/lintegral-inv-eq-self--77dccf454ebb9ad71b4a869a.md) | 42 | `result-track:77dccf454ebb9ad71b4a869aab9f926d2be04f8e505f95186a55d714a47e1da4` |
| 2 | `theorem` | [lintegral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/declarations/lintegral-mul-left-eq-self--91167b9d91106710827c2f96.md) | 57 | `result-track:91167b9d91106710827c2f966de493581a6d6d16551662b6b8845116de4e2dbc` |
| 3 | `theorem` | [lintegral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/declarations/lintegral-mul-right-eq-self--44236f1ab31b498915c52389.md) | 67 | `result-track:44236f1ab31b498915c523892b516e7c494ffe5d43b69405c3acefafc4c9e1bc` |
| 4 | `theorem` | [lintegral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/declarations/lintegral-div-right-eq-self--ee4d6f8d69f3d1f672cc5eb0.md) | 73 | `result-track:ee4d6f8d69f3d1f672cc5eb001414625996cd938652530ba561d5fc061b9c93f` |
| 5 | `theorem` | [lintegral_div_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/declarations/lintegral-div-left-eq-self--e68f02bec046ad8a7235de51.md) | 78 | `result-track:e68f02bec046ad8a7235de51599308d942c3d06efc6c5e97c45ed061f93018dc` |
| 6 | `theorem` | [lintegral_eq_zero_of_isMulLeftInvariant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variantbb70e5845773037c935269b8f2a8ca5c159932defaad9b1ecf16326309f55e80.lean/declarations/lintegral-eq-zero-of-ismulleftinvariant--90f54ca8722f70e2afe1a72c.md) | 94 | `result-track:90f54ca8722f70e2afe1a72c5721cac58760cf4398ec66470a8695329fd9f4d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
