# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FinitePowerZetaJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6efc38233d9567d21957251a9a87ad84430cf46",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6efc38233d9567d21957251a9a87ad84430cf46`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCauchyBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/model--9b131803e7b354a94037819f.md) | 28 | `declaration-track:9b131803e7b354a94037819fabe3d4b648520b7a833add3a9f2add97997e04c4` |
| 2 | `theorem` | [model_eq_sum_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/model-eq-sum-endpoint--9dcbcba65241e942fd3ad920.md) | 31 | `result-track:9dcbcba65241e942fd3ad92010ce6138e1e14a36bb3077ad9d7ac4f43a6d655b` |
| 3 | `theorem` | [finitePower_differentiable](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/finitepower-differentiable--58e50d19287359dad14fc8c2.md) | 37 | `result-track:58e50d19287359dad14fc8c20846969615da3d3ab9fe70de991d55309972c61d` |
| 4 | `theorem` | [model_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/model-differentiableat--4aa8f449d1f1dcc6f777e97d.md) | 55 | `result-track:4aa8f449d1f1dcc6f777e97d572665f21e8757fbf8dc36aff9fe7993777751e1` |
| 5 | `theorem` | [source_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/source-residual--18e511dc76c2864fb258c0ab.md) | 61 | `result-track:18e511dc76c2864fb258c0ab2dc1c0d31dad7edd44295447c38b756329449595` |
| 6 | `theorem` | [source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/source-error--a01cba03a8def81c69b6ebee.md) | 75 | `result-track:a01cba03a8def81c69b6ebeed29ad250f98224cff3ed940344622b0b02604415` |
| 7 | `theorem` | [source_error_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/source-error-on-disk--c9758664b610579603913ab6.md) | 86 | `result-track:c9758664b610579603913ab6a04dd481b9c9aab49d65543d44821fc753067918` |
| 8 | `theorem` | [derivative_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/derivative-source-error--059e8be4e244ca7f5c395453.md) | 96 | `result-track:059e8be4e244ca7f5c39545310a4fb6d2660619c64a1ed86e1fdcbe2850cf7e7` |
| 9 | `theorem` | [center_jet_errors](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/declarations/center-jet-errors--e63be25ae44dea5c82b24055.md) | 108 | `result-track:e63be25ae44dea5c82b24055019f637cc249da9eccf8b7081ddd0564196e92ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
