# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinInversion.Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb753ffc08e44763cb188708127d58ae270ee0a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb753ffc08e44763cb188708127d58ae270ee0a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.Inversion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rexp_neg_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/rexp-neg-deriv-aux--2ff2675786f0b0cbbbabd2d6.md) | 32 | `result-track:2ff2675786f0b0cbbbabd2d69095c4e951c374d917dd336e70b447c517a06dc4` |
| 2 | `theorem` | [rexp_neg_image_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/rexp-neg-image-aux--44d88b58f208256865bf3010.md) | 37 | `result-track:44d88b58f208256865bf30101df2a24c6178717e0d22592c0d94236ba83750a3` |
| 3 | `theorem` | [rexp_neg_injOn_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/rexp-neg-injon-aux--d1afcb8c707ff122b7e06226.md) | 40 | `result-track:d1afcb8c707ff122b7e06226ca6daeb67ea54abdda55979aa49f0c3d85f809b4` |
| 4 | `theorem` | [rexp_cexp_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/rexp-cexp-aux--e1ba320173a479decf9c4ea5.md) | 43 | `result-track:e1ba320173a479decf9c4ea5b87970fea794997cf2209f0eebb767ce27a23843` |
| 5 | `theorem` | [mellin_eq_fourierIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/mellin-eq-fourierintegral--6a1f0ca170a5281770dee1a0.md) | 53 | `result-track:6a1f0ca170a5281770dee1a0abe595fe90d5744222a254cac1257a53c589de67` |
| 6 | `theorem` | [mellinInv_eq_fourierIntegralInv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/mellininv-eq-fourierintegralinv--4c5a6a23a1fe5a9fd5336a92.md) | 78 | `result-track:4c5a6a23a1fe5a9fd5336a92b2901e081d40af2baede341a4f214f513697d251` |
| 7 | `theorem` | [mellin_inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/declarations/mellin-inversion--eb8af22250f02c4492ad4863.md) | 98 | `result-track:eb8af22250f02c4492ad48631a31896d6f1dff7f6d4a4374056ed1e35a58c02c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
