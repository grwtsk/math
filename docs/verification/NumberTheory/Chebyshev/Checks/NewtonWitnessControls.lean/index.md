# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.NewtonWitnessControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "396854d5b097018ce0f4d60b71b97ddb200ee8e9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `396854d5b097018ce0f4d60b71b97ddb200ee8e9`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalNewtonHeadBinding`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalNewtonHeadBinding.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [residual_alone_fails](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/residual-alone-fails--9033462cd04176fc1c574c76.md) | 14 | `result-track:9033462cd04176fc1c574c76c9c3209b95494684aafe83f19199ad6d4b908df2` |
| 2 | `theorem` | [zero_inverse_fixed](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/zero-inverse-fixed--f8660b3a32b8b217509948f6.md) | 19 | `result-track:f8660b3a32b8b217509948f6ecbaa7a7c5dcd4ae1c50c2ec2820d01d0044cb1f` |
| 3 | `theorem` | [zero_inverse_defect](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/zero-inverse-defect--9562f7606b34e7dd7673e4c3.md) | 22 | `result-track:9562f7606b34e7dd7673e4c3d7f5a1f319eaf7efa89eefa4f411994cc4d7e27d` |
| 4 | `theorem` | [noncontracting_threshold_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/noncontracting-threshold-rejected--464e56315e4760330cbb1db5.md) | 24 | `result-track:464e56315e4760330cbb1db5ee8ae59df014a0807c9ca5642342f868fe2d72e5` |
| 5 | `theorem` | [self_map_failure](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/self-map-failure--e5537901fc7bbc4e640b111d.md) | 26 | `result-track:e5537901fc7bbc4e640b111dbc694baa3c4b8d92100c4edcff287ce322528637` |
| 6 | `theorem` | [omitted_curvature_changes_guard](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/omitted-curvature-changes-guard--eead5fcb63beeca3490f52ed.md) | 29 | `result-track:eead5fcb63beeca3490f52ed1dfef44436e075b961faf0df56ce46b28db74c0a` |
| 7 | `theorem` | [cauchy_second_constant](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/cauchy-second-constant--aa537e353fb299169ec950ef.md) | 32 | `result-track:aa537e353fb299169ec950ef9f9fd049a18d9dc65f3e26c1323d8978746859f2` |
| 8 | `theorem` | [outer_domain_low_stage](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/outer-domain-low-stage--4b0adc597078c48b0d98a261.md) | 34 | `result-track:4b0adc597078c48b0d98a26109231173cc5df9549034e3f13fef1ffecdf7d5a9` |
| 9 | `theorem` | [negative_margin_countermodel](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/negative-margin-countermodel--099545edf2d85404aa9f3dae.md) | 37 | `result-track:099545edf2d85404aa9f3daea2b87d0d10802f5e8a0b8f65ef1f34df3cd62184` |
| 10 | `theorem` | [center_on_line_does_not_fix_point](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/center-on-line-does-not-fix-point--cbba76b179344eeb281c2cbd.md) | 41 | `result-track:cbba76b179344eeb281c2cbd87a4ee77e929e7f37bd9d395789fc59d8930e378` |
| 11 | `theorem` | [radius_cost_not_constant](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/radius-cost-not-constant--89b60754975cc5daa82ab752.md) | 45 | `result-track:89b60754975cc5daa82ab752be663cc823fe3b6c68a294114fe81dbb7cc8cbac` |
| 12 | `theorem` | [invariance_equality_allowed](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonWitnessControls.lean/declarations/invariance-equality-allowed--bbea0a811a93ac80d8038b17.md) | 48 | `result-track:bbea0a811a93ac80d8038b17b9b1350402965ffa42108eb3107bcaa2165ac5b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
