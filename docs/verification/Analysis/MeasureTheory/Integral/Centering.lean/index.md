# Verification target: GRWTSK.Analysis.MeasureTheory.Integral.Centering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07810ffb96cdee36436518589dcd3f49999565de",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Integral/Centering.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07810ffb96cdee36436518589dcd3f49999565de`.

Source path: `GRWTSK/Analysis/MeasureTheory/Integral/Centering.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Integral/Centering.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mean](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/mean--4af70e58a341f8c9e7ab70a0.md) | 26 | `declaration-track:4af70e58a341f8c9e7ab70a030dab120a4fde6e1d76f5dfe92fa154d571998fb` |
| 2 | `def` | [centered](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/centered--ba405ade6259ccb133f1357f.md) | 28 | `declaration-track:ba405ade6259ccb133f1357f5761a2a5eeb7b6d6b7c8b1d7b6cc706dead012e5` |
| 3 | `def` | [energy](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/energy--098e59358672a3bd59514aa7.md) | 30 | `declaration-track:098e59358672a3bd59514aa70f58b36974aeb25e74ede5e32bba88bd82c1f3a8` |
| 4 | `theorem` | [integral_centered](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/integral-centered--8d898cab90e3b70b6ea784c4.md) | 32 | `result-track:8d898cab90e3b70b6ea784c4ee310340df4a5ef6f8587a8e9f5fee32920d7e35` |
| 5 | `theorem` | [centered_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/centered-integrable--099e9b57175191623148919b.md) | 38 | `result-track:099e9b57175191623148919b65b3f439a59db632dd688d3b9a0fe26efb81eebd` |
| 6 | `theorem` | [shifted_square_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/shifted-square-integrable--df5dbc3ec3dd6dde4d26df1e.md) | 42 | `result-track:df5dbc3ec3dd6dde4d26df1e931c8b12469749ba423cb7116fd32bf0b9c20b81` |
| 7 | `theorem` | [integral_shifted_square](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/integral-shifted-square--338a687a526f23a1af9bbd75.md) | 52 | `result-track:338a687a526f23a1af9bbd75a13ccb3ee5f4ee7b0569b2c97a07b842204f5715` |
| 8 | `theorem` | [energy_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/energy-nonneg--c9e1dc77334fd4abdc7b0300.md) | 69 | `result-track:c9e1dc77334fd4abdc7b0300322783f732476f8e60ad2296fd40420ad38b12dc` |
| 9 | `theorem` | [energy_eq_second_moment_sub_mean_sq](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/energy-eq-second-moment-sub-mean-sq--ec5a7323db8033b506bd9f30.md) | 72 | `result-track:ec5a7323db8033b506bd9f30852d2e402c2a3906f03c7dfa29f67656c90d9746` |
| 10 | `theorem` | [reconstruct_second_moment](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/reconstruct-second-moment--b584b1798904b9e94d2b8245.md) | 79 | `result-track:b584b1798904b9e94d2b82459f61188106a1766f30c87a20cbe6cc3919301910` |
| 11 | `theorem` | [center_is_minimizer](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/center-is-minimizer--17914dd3ef4606586d2e12d8.md) | 85 | `result-track:17914dd3ef4606586d2e12d8e40f16dfad17778e3be2bca4bb1702dbb1acd6d6` |
| 12 | `theorem` | [center_minimal](../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/declarations/center-minimal--d90a00abdfea06e67b585a37.md) | 92 | `result-track:d90a00abdfea06e67b585a3768192b3aa0cf345c890336be0b1967154ac352c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
