# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ZeroFreeHalfPlaneControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d1a0938f9650a5fede3669151eddc5164dbada",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d1a0938f9650a5fede3669151eddc5164dbada`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroFreeHalfPlaneCriterion`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [VerticalLineZero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/declarations/verticallinezero--bf7a1e26ab1adac0dc106c7e.md) | 20 | `declaration-track:bf7a1e26ab1adac0dc106c7e676c4db41516414eff82332e77223cffc2493b93` |
| 2 | `theorem` | [strict_right_half_plane_excludes_no_boundary_point](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/declarations/strict-right-half-plane-excludes-no-boundary-point--49cdb43e42a76aa713d50267.md) | 25 | `result-track:49cdb43e42a76aa713d50267ab1d0d762c7df315287827baa1cf4ab6f59faded` |
| 3 | `theorem` | [larger_threshold_does_not_imply_smaller](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/declarations/larger-threshold-does-not-imply-smaller--ca717deb27c2cafca4ab627d.md) | 37 | `result-track:ca717deb27c2cafca4ab627d8dc9e00f3b6887e521771ed4072633f2386b299f` |
| 4 | `theorem` | [half_le_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/declarations/half-le-one--023b2c18b338b92df5434731.md) | 55 | `result-track:023b2c18b338b92df5434731f722a05ef9f85e76b8000b63011d38289da9495d` |
| 5 | `theorem` | [criterion_requires_a_supplier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/declarations/criterion-requires-a-supplier--9b5641a99a81f2f5acb194bf.md) | 59 | `result-track:9b5641a99a81f2f5acb194bf2e5c3b2a723b966034abc8dce4f2d4a956825103` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
