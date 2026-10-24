# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeGain.Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7cb1f851a951a1d387349e282f3b3d0fc4bfc6c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7cb1f851a951a1d387349e282f3b3d0fc4bfc6c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Residual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivativeGainCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/derivativegaincertificate--ab4912cbb6360c0464646d21.md) | 15 | `declaration-track:ab4912cbb6360c0464646d21b08d11cb2df0980fd5740a6d7779bcb100e92c37` |
| 2 | `theorem` | [derivative_gain_bounds_one_step](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/derivative-gain-bounds-one-step--bd1e2aa269b4ddd26d0523bf.md) | 28 | `result-track:bd1e2aa269b4ddd26d0523bf84ca80b6bf3ccfccba8b6f174f4d9956834115fc` |
| 3 | `structure` | [ScaledDerivativeGainCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/scaledderivativegaincertificate--d867b8a28df7190d52ba2bb4.md) | 47 | `declaration-track:d867b8a28df7190d52ba2bb4e88bb9ed58adc05b68f59e7904252350d8f0935f` |
| 4 | `theorem` | [scaled_derivative_gain_bounds_one_step](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/scaled-derivative-gain-bounds-one-step--f339c225ed8ff49ce75be9b4.md) | 63 | `result-track:f339c225ed8ff49ce75be9b4a20a06624262feb208f538aed5d258e5fe55eebd` |
| 5 | `structure` | [GainInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/gaininterval--63a8a95e28d00c6bde585725.md) | 78 | `declaration-track:63a8a95e28d00c6bde5857258613c0b3846b7aa0835c10a95c4ec7a8e59ff9fb` |
| 6 | `inductive` | [StabilityRegime](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/stabilityregime--bb1ef217beb09dd77480ef70.md) | 83 | `declaration-track:bb1ef217beb09dd77480ef70b9b9369d88636607a308c2c5e1dd173605faf8f1` |
| 7 | `def` | [classifyGain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/classifygain--de39c015f99a7f69d7f3b9e6.md) | 95 | `declaration-track:de39c015f99a7f69d7f3b9e6ac57cf74d93f154ca98d65db7a4aa418eef661de` |
| 8 | `theorem` | [strict_upper_bound_classifies_contractive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/strict-upper-bound-classifies-contractive--4e0ef24014a4d2c14edeb139.md) | 104 | `result-track:4e0ef24014a4d2c14edeb139c71997e82f9db4042d13f2e89468b19f3508a3d3` |
| 9 | `theorem` | [unresolved_unit_intersection_is_critical](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/declarations/unresolved-unit-intersection-is-critical--5660fbfce088004e1f0ff9c5.md) | 111 | `result-track:5660fbfce088004e1f0ff9c542abeb875e60ddca8b0877a0c40dccb9a1a7f036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
