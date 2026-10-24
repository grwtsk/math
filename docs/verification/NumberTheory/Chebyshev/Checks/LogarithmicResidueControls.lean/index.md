# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.LogarithmicResidueControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ae85e23a32fe052a1ce9492a1ed7cb4c8f1311a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ae85e23a32fe052a1ce9492a1ed7cb4c8f1311a`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentResidueContributions`](../../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [double_zero_limit_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/double-zero-limit-control--f6d40fd621132053b5859cf9.md) | 27 | `result-track:f6d40fd621132053b5859cf947b7527f8aac9a8aeabb709fc9aa8c244f456b35` |
| 2 | `theorem` | [triple_pole_limit_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/triple-pole-limit-control--24161c89d024cc7dd82de442.md) | 35 | `result-track:24161c89d024cc7dd82de44264d236e2d50c87894812653d4736d2ef41e46007` |
| 3 | `theorem` | [unit_limit_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/unit-limit-control--9fc0694bf245bfb0e2586d60.md) | 43 | `result-track:9fc0694bf245bfb0e2586d607f9562397aa4b9280f1db081c705185503577429` |
| 4 | `theorem` | [vanishing_multiplier_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/vanishing-multiplier-control--6a4bf4db74cc9d7695276e22.md) | 51 | `result-track:6a4bf4db74cc9d7695276e22f994f91f42e65e1d5af87bc386bac086ee7568df` |
| 5 | `theorem` | [totalized_center_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/totalized-center-control--a01a1e7cb8993d194da8a933.md) | 60 | `result-track:a01a1e7cb8993d194da8a93329919aa82995747b3828011e54719b6c004324ec` |
| 6 | `theorem` | [riesz_zero_parameter_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/riesz-zero-parameter-control--4f60e9254edc7b32bedd4536.md) | 67 | `result-track:4f60e9254edc7b32bedd45362cef30f339e82b5d136ed529759ea0416217b89a` |
| 7 | `theorem` | [riesz_negative_one_parameter_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/riesz-negative-one-parameter-control--fc2bca6a717286ea5be9208c.md) | 71 | `result-track:fc2bca6a717286ea5be9208c85f80ba1c2ae9dff4a35affc615c6810b3896a3f` |
| 8 | `theorem` | [riesz_main_normalization_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/riesz-main-normalization-control--e6661c6863dee967398291a8.md) | 75 | `result-track:e6661c6863dee967398291a83635d44e204e2e50e612daf8405a7841da4530b1` |
| 9 | `theorem` | [invisible_entire_addition_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/invisible-entire-addition-control--e96496da7374f7e58160e3f3.md) | 80 | `result-track:e96496da7374f7e58160e3f3737f2008386b3de9fa31271c505780bde22922b7` |
| 10 | `theorem` | [nonzero_entire_addition_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/declarations/nonzero-entire-addition-control--80ab2cbe3bcde2d11bab7c61.md) | 93 | `result-track:80ab2cbe3bcde2d11bab7c61ec34dd46ea1bf7d910eb90bcab25ecb8c0d2de1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
