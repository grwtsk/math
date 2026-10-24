# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualStieltjesBoundaryAttempt03.Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3233e8d2fc518d933e9e635427a2ee284efc484",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3233e8d2fc518d933e9e635427a2ee284efc484`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_termTSum_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/declarations/actual-termtsum-one--04c9d5253dbe7d260efc9520.md) | 16 | `result-track:04c9d5253dbe7d260efc95205b16e482739c577f11646e21f4429ff3dce2220e` |
| 2 | `theorem` | [actual_regular_zeta_real_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/declarations/actual-regular-zeta-real-right--1b13be937754c09ab91aeb12.md) | 20 | `result-track:1b13be937754c09ab91aeb129b6d4af3bce085e8f6e1eaab91eb0bd5f816c4b5` |
| 3 | `theorem` | [actual_real_regular_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/declarations/actual-real-regular-derivative-of-termtsum--fa32b5bd96befea94e2728d3.md) | 39 | `result-track:fa32b5bd96befea94e2728d39c059d5d25537750c083864856c6b65864e2fc8d` |
| 4 | `theorem` | [actual_regular_zeta_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/declarations/actual-regular-zeta-derivative-of-termtsum--574fc8de3fd2e18efae95521.md) | 50 | `result-track:574fc8de3fd2e18efae955210812e5136087d1baf9e34b103b490aa7bad5050b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
