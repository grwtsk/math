# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RemovableSingularity.Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b921e7ce4b923cd0bc77e234d5176764ef768b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b921e7ce4b923cd0bc77e234d5176764ef768b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/macro-rules--00660acb27f854e79151e671.md) | 26 | `declaration-track:00660acb27f854e79151e6716fc4770e3d769ab3497e6188cedc9399a1d6981b` |
| 2 | `theorem` | [analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/analyticat-of-differentiable-on-punctured-nhds-of-continuousat--971440c4f2b277227b9c5b44.md) | 36 | `result-track:971440c4f2b277227b9c5b4441e6519cada57bcb13a67980725d732fe104b7a9` |
| 3 | `theorem` | [differentiableOn_compl_singleton_and_continuousAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/differentiableon-compl-singleton-and-continuousat-iff--312e660d135f6a53ab5acf42.md) | 48 | `result-track:312e660d135f6a53ab5acf42be7bc5a2f39fa29d5c0c71feef76752ebcd03fa0` |
| 4 | `theorem` | [differentiableOn_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/differentiableon-dslope--d3d0b5a3b34a08c2e3445ca4.md) | 62 | `result-track:d3d0b5a3b34a08c2e3445ca4d69a3760017c8e88820fea57f97bdc89f64b0511` |
| 5 | `theorem` | [differentiableOn_update_limUnder_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/differentiableon-update-limunder-of-islittleo--2b49737964c9ce131d1fc974.md) | 73 | `result-track:2b49737964c9ce131d1fc974814a6612fcff2ee474009457fabc07fdc153811b` |
| 6 | `theorem` | [differentiableOn_update_limUnder_insert_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/differentiableon-update-limunder-insert-of-islittleo--586e4b3ca5ddc8090806fafe.md) | 95 | `result-track:586e4b3ca5ddc8090806fafe4611912f8fe97ccfd8b6a103ef634221ea17245b` |
| 7 | `theorem` | [differentiableOn_update_limUnder_of_bddAbove](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/differentiableon-update-limunder-of-bddabove--f29942e4e2d4e1820d4e8871.md) | 106 | `result-track:f29942e4e2d4e1820d4e8871edb2bc4a32cdfe20051d518e7b1f2e79f1e4c120` |
| 8 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-islittleo--eaa55f3196f1c5ffbb3befd5.md) | 117 | `result-track:eaa55f3196f1c5ffbb3befd5ba5331018ec4a037a7fc3606cc9539d805ffeec6` |
| 9 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_bounded_under](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-bounded-under--c07c0b2d69acf560d7a0834c.md) | 130 | `result-track:c07c0b2d69acf560d7a0834c410478fa275199bc09e3a9ebe0ccc39c8d6c7d42` |
| 10 | `theorem` | [two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/declarations/two-pi-i-inv-smul-circleintegral-sub-sq-inv-smul-of-differentiable--ed8a77ddb8dee4b4feffc5bb.md) | 138 | `result-track:ed8a77ddb8dee4b4feffc5bb46f58e2d9f257773d43ee1c3ec21ab839586552a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
