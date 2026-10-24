# Verification target: GRWTSK.Analysis.Real.RationalRieszPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a8ef443abc47f9d8fe07040aaf0931880b7a8e3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/RationalRieszPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a8ef443abc47f9d8fe07040aaf0931880b7a8e3`.

Source path: `GRWTSK/Analysis/Real/RationalRieszPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/RationalRieszPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.TentRationalCorrection`](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalRieszPrimitive](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/rationalrieszprimitive--55d409a3a1b9cfeaa6b9dff5.md) | 22 | `declaration-track:55d409a3a1b9cfeaa6b9dff57f0d6681b1650543c48f509cf841ce8030cfd40a` |
| 2 | `def` | [windowPrimitive](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/windowprimitive--0b14f68fab5f13b5292eeb03.md) | 25 | `declaration-track:0b14f68fab5f13b5292eeb0365ed03064d7c0412e2155e815265ce0a86a65686` |
| 3 | `theorem` | [hinge_density_integrable](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/hinge-density-integrable--6098524a498b16495b5d3ed5.md) | 28 | `result-track:6098524a498b16495b5d3ed5ab21f4febe0b929e1e5fdbffb0bd317f052cff03` |
| 4 | `theorem` | [windowPrimitive_eq](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/windowprimitive-eq--c257230e85505dbae3d08979.md) | 34 | `result-track:c257230e85505dbae3d08979704cc3e9d4bba4e7f0b6e7167ba062bf9b2d3b98` |
| 5 | `theorem` | [integral_tent_on_window](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/integral-tent-on-window--13636c2978ce8d830c97fd7b.md) | 57 | `result-track:13636c2978ce8d830c97fd7bccafdadd51b74a093bb80785ffbe8cfd52daf776` |
| 6 | `theorem` | [windowPrimitive_second_difference](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/windowprimitive-second-difference--b9953ce9135749f59db9afae.md) | 75 | `result-track:b9953ce9135749f59db9afae800387c589246b51ee6365ae45e251b9f746afe3` |
| 7 | `theorem` | [rationalRieszPrimitive_second_difference](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/rationalrieszprimitive-second-difference--3bb70be4086e04b355205fca.md) | 102 | `result-track:3bb70be4086e04b355205fca58c0aefc50ac2e8ad5b57f93a9bf4312ef1d58e9` |
| 8 | `theorem` | [rationalRieszPrimitive_base](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/rationalrieszprimitive-base--50c7822dade12afa8d177199.md) | 112 | `result-track:50c7822dade12afa8d1771995a629484c77e911668222c997dd62f4decc00810` |
| 9 | `theorem` | [rationalRieszPrimitive_change_base](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/declarations/rationalrieszprimitive-change-base--fb44c21d6d4d389874163ec5.md) | 117 | `result-track:fb44c21d6d4d389874163ec5b644516e1011117d5847e7b121064cae1f700bb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
