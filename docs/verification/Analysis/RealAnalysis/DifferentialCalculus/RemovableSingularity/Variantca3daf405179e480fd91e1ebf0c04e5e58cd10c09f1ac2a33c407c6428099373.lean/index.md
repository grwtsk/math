# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RemovableSingularity.Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04a35c71b68298502fd065199782b146800f958e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04a35c71b68298502fd065199782b146800f958e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/macro-rules--4851862a9bde0c47d1bab91d.md) | 34 | `declaration-track:4851862a9bde0c47d1bab91df30bb37394964744350db91e8c47b95cddce489c` |
| 2 | `theorem` | [analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/analyticat-of-differentiable-on-punctured-nhds-of-continuousat--9193677b213e21959d77e629.md) | 44 | `result-track:9193677b213e21959d77e62983f32b09e1e433d4044e213fa561db991e8878fa` |
| 3 | `theorem` | [differentiableOn_compl_singleton_and_continuousAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/differentiableon-compl-singleton-and-continuousat-iff--8ff232f15e5e5ee6e2dc0bdb.md) | 56 | `result-track:8ff232f15e5e5ee6e2dc0bdb04cc6747a918e854ecfa269d7a6904cedc6df4f8` |
| 4 | `theorem` | [differentiableOn_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/differentiableon-dslope--0a94fafbf873bafd2bf21ce1.md) | 70 | `result-track:0a94fafbf873bafd2bf21ce130fabaa3fafdb6139c326cea27c5440aa158fdc3` |
| 5 | `theorem` | [differentiableOn_update_limUnder_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/differentiableon-update-limunder-of-islittleo--9d6f47b7d0f0c81379817268.md) | 81 | `result-track:9d6f47b7d0f0c81379817268a324591d04cc21852cda4d3bcb562b45dc3b1a72` |
| 6 | `theorem` | [differentiableOn_update_limUnder_insert_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/differentiableon-update-limunder-insert-of-islittleo--700e1ebf774f457535b958d8.md) | 103 | `result-track:700e1ebf774f457535b958d89551adad45c095ed6a946e9c771fc4886c043ef1` |
| 7 | `theorem` | [differentiableOn_update_limUnder_of_bddAbove](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/differentiableon-update-limunder-of-bddabove--181f6fc63cd9cbca2065713e.md) | 114 | `result-track:181f6fc63cd9cbca2065713e029270f4054a0454446a9505d40957fe6aecf8ce` |
| 8 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-islittleo--427efa2f52606b6136131f42.md) | 125 | `result-track:427efa2f52606b6136131f4294f4506fcd280b50b9ad3ed88c86856aed075dda` |
| 9 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_bounded_under](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-bounded-under--c9b30bf9b2c53c0b60b6c468.md) | 138 | `result-track:c9b30bf9b2c53c0b60b6c4685361016390f3e3cf4f0f67c33e7457f2fa2fd4e5` |
| 10 | `theorem` | [two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/declarations/two-pi-i-inv-smul-circleintegral-sub-sq-inv-smul-of-differentiable--c616eed56a1a83568e7002f8.md) | 146 | `result-track:c616eed56a1a83568e7002f8b2dc98eb3e1a05f91c84edd16c5cef8ab480bfd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
