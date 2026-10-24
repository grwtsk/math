# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt04.Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9b7fbf2c7cdec6da9cc7836ac87719d040e5503",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9b7fbf2c7cdec6da9cc7836ac87719d040e5503`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/mangoldtlogprefix-measurable--b97eee00cf682592a1db2d2f.md) | 26 | `result-track:b97eee00cf682592a1db2d2f92c3ca9df92517b923547da28db56fedc8c8e2e1` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/mangoldtlogerror-measurable--cdad029692d4358161ac94cf.md) | 30 | `result-track:cdad029692d4358161ac94cf4ed833c5c0487063efe75f2a9d089a46818df379` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/centeredmangoldterror-measurable--02eab8a0f910942e25289a40.md) | 34 | `result-track:02eab8a0f910942e25289a40144d8694f5a8841a9120b7aa2cc6cf739c6206ac` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/centeredmangoldterror-bound--973b774fccccd691f4fccf7d.md) | 39 | `result-track:973b774fccccd691f4fccf7d8707d6c9d435fc9f616f7844cc8732640c9d8764` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/centeredmangoldterror-laplace-integrable--33fc1df109bb5fda6a1d7720.md) | 45 | `result-track:33fc1df109bb5fda6a1d7720b31e6d5b4e2422c5e292dd851c422830a4078c52` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/mangoldtlogerror-laplace-integrable--8670342fc6ebaab81e08713d.md) | 67 | `result-track:8670342fc6ebaab81e08713d32b8a13be6b428e360bc56779393864ddedbbb4f` |
| 7 | `theorem` | [linear_exponential_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/linear-exponential-integrable--c0261935b368d21e736e4435.md) | 79 | `result-track:c0261935b368d21e736e443546e87e40a02c972ade9f39e5ce6ceed9f3dfcbea` |
| 8 | `theorem` | [linear_complex_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/linear-complex-laplace-integrable--6af51b17763c84f59780b32f.md) | 86 | `result-track:6af51b17763c84f59780b32fc0c9468b0b03a57eb8506351adf3b848f721cc4f` |
| 9 | `theorem` | [mangoldtLogPrefix_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/mangoldtlogprefix-laplace-integrable--2ffca0bfc0f0b6c2237bb906.md) | 99 | `result-track:2ffca0bfc0f0b6c2237bb9064f06c931c2a42745e5215ce4f9e230fd734bc12a` |
| 10 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba.lean/declarations/centeredmangoldterror-below-first-atom--67924290ef6e764830fc3fe2.md) | 109 | `result-track:67924290ef6e764830fc3fe29eee2c844328c425a54180f2a35e6698ff27e6ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
