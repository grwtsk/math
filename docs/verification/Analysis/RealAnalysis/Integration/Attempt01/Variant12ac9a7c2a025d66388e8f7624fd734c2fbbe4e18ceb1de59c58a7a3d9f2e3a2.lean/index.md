# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d2a6be8ad7548f793241fcc9d80d2d0567801e9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d2a6be8ad7548f793241fcc9d80d2d0567801e9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/mangoldterror--4484a62ccc1d1e7b50be565f.md) | 37 | `declaration-track:4484a62ccc1d1e7b50be565fc5282cc8ce039a435ab7a32db99af946db2db150` |
| 2 | `abbrev` | [primeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/primeerror--5c9db6cb1993120df183e7ab.md) | 39 | `declaration-track:5c9db6cb1993120df183e7ab74f12a4da4f3e08e48e1b51249509bf7ffbfa219` |
| 3 | `abbrev` | [E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/e--641a23e7c7fed3776a11d125.md) | 42 | `declaration-track:641a23e7c7fed3776a11d12522bea66fe4373d155684ca0484cef86e73339df4` |
| 4 | `lemma` | [E₁.summand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/e-summand-nonneg--d64165a6c29133f9f173fb59.md) | 44 | `result-track:d64165a6c29133f9f173fb59046b51423ed11a034242e822bee996bf72aba6db` |
| 5 | `theorem` | [E₁.summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/e-summable--7246115572f3c8431ce2e075.md) | 51 | `result-track:7246115572f3c8431ce2e0757ec9a66aea4824ab9da8d0ca7764b217a36555d5` |
| 6 | `lemma` | [antitoneOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/antitoneon-log-div-sq--b87e9cdd376577d704c6c7d1.md) | 75 | `result-track:b87e9cdd376577d704c6c7d1f000c15b3ca4a9b9b4a1d81549c12bf065f426d4` |
| 7 | `lemma` | [log_div_sq_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/log-div-sq-nonneg--d5fde98d9520d80bb8ab7223.md) | 96 | `result-track:d5fde98d9520d80bb8ab7223ca1327a3ace7867421a05f049c25dd9e117367e4` |
| 8 | `lemma` | [log_div_sq_is_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/log-div-sq-is-deriv--ce47e0440c4b125f97f4b134.md) | 100 | `result-track:ce47e0440c4b125f97f4b134f72147d461c4a45c79f7bf66014c42953632c1ee` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/tendsto-antideriv-log-div-sq--58f1b7054ffcfef85e03aa34.md) | 113 | `result-track:58f1b7054ffcfef85e03aa34101ccd3ca40ae49e6e043cc81e2449ad0116e7bc` |
| 10 | `lemma` | [integrableOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/integrableon-log-div-sq--53e47c516b61ccea5f7fa3fe.md) | 124 | `result-track:53e47c516b61ccea5f7fa3fefcefb1d223cd5501039da2788044c9f69d95b424` |
| 11 | `lemma` | [integral_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/integral-log-div-sq--6219d23527e35b71edd78532.md) | 128 | `result-track:6219d23527e35b71edd785322b9361d22dc310fa0954be6b829909cc6a453330` |
| 12 | `lemma` | [summable_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/summable-log-div-sq--451dc963f38628dca0e01259.md) | 133 | `result-track:451dc963f38628dca0e01259d24b003ae8a839adbe88b0d2af41ba5ea6d0c32d` |
| 13 | `lemma` | [sum_log_div_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/sum-log-div-sq-le--53bd7b8c7ad0e64e4eba1dc1.md) | 143 | `result-track:53bd7b8c7ad0e64e4eba1dc1ca3ce65e1998130f2559750e0d12df78e7360879` |
| 14 | `theorem` | [E₁.le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/e-le--899bb9efa0058f3b986e59cd.md) | 157 | `result-track:899bb9efa0058f3b986e59cd0aa3fcabbd839dd9a493cd30cd395aed63320b12` |
| 15 | `theorem` | [E₁.nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/e-nonneg--bf7976649cfe8ea6fe980732.md) | 183 | `result-track:bf7976649cfe8ea6fe9807325232e6755cafd39e2b074f3085b16c8d3be4dfc0` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant12ac9a7c2a025d66388e8f7624fd734c2fbbe4e18ceb1de59c58a7a3d9f2e3a2.lean/declarations/mangoldterror-le-primeerror-add-e--def6f1a74700160f4afa9876.md) | 186 | `result-track:def6f1a74700160f4afa9876f944e9749851fa3a6505ad11a591ee84dbbf525d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
