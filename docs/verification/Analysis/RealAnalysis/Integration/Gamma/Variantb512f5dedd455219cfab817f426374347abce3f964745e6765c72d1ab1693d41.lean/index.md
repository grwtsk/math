# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffe83d5ff475a8afdadffb62499859a1b782da93",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffe83d5ff475a8afdadffb62499859a1b782da93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_rpow_mul_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/integral-rpow-mul-exp-neg-rpow--2c0590319378b3f1babf0667.md) | 29 | `result-track:2c0590319378b3f1babf0667b3174ddc4f5685f7867b8b1deca39737e64c6b67` |
| 2 | `theorem` | [integral_rpow_mul_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/integral-rpow-mul-exp-neg-mul-rpow--ede2ac2cd642e9cd8f7ade37.md) | 47 | `result-track:ede2ac2cd642e9cd8f7ade375778ea2cdc03336c044f5061ad85b53e4fe0658b` |
| 3 | `theorem` | [integral_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/integral-exp-neg-rpow--6981196f66220376dc8b8a57.md) | 67 | `result-track:6981196f66220376dc8b8a57cbc27db44c59408ea7905325b3e3cca119f811fd` |
| 4 | `theorem` | [integral_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/integral-exp-neg-mul-rpow--ff51af77eaff6e0064d1fbc5.md) | 73 | `result-track:ff51af77eaff6e0064d1fbc513c3838e8c749e0ad33fc75569a1805121f08c28` |
| 5 | `theorem` | [Complex.integral_rpow_mul_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/complex-integral-rpow-mul-exp-neg-rpow--b63194a4109bb6cff675d7d6.md) | 83 | `result-track:b63194a4109bb6cff675d7d69c11e093a3e1d4978eb7d132e70911e003a69a9e` |
| 6 | `theorem` | [Complex.integral_rpow_mul_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/complex-integral-rpow-mul-exp-neg-mul-rpow--5a223a7fed65d7dc61b60880.md) | 108 | `result-track:5a223a7fed65d7dc61b60880a0d4b9af3f08f5c3c263f97c6b1fc9db693ff127` |
| 7 | `theorem` | [Complex.integral_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/complex-integral-exp-neg-rpow--01ac29c40be309ffbaa886d4.md) | 135 | `result-track:01ac29c40be309ffbaa886d4c8bad9c7cd6d2c29f67af49ea4e9d8944902c231` |
| 8 | `theorem` | [Complex.integral_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41.lean/declarations/complex-integral-exp-neg-mul-rpow--ad1904b70cbda1e55b78ca67.md) | 142 | `result-track:ad1904b70cbda1e55b78ca6796461ed9f0fa968e74e0deb4d3739ee2a02253b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
