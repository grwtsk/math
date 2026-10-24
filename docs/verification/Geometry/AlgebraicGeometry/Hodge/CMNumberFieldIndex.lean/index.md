# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMNumberFieldIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9dbe5c48cd998a9aa118094f15c7408b3af406f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9dbe5c48cd998a9aa118094f15c7408b3af406f`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.NumberField.CMField` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [galoisComplexConj](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/galoiscomplexconj--28d2a7f0c2c0f14109e52860.md) | 32 | `declaration-track:28d2a7f0c2c0f14109e528600a51e5dd4c0021a6bb71a8201e0ef04276b692d9` |
| 2 | `theorem` | [galoisComplexConj_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/galoiscomplexconj-apply--84aedc67542a0729dd69a4a1.md) | 36 | `result-track:84aedc67542a0729dd69a4a101b3584ad08254aa7589a50b6414a0b8e6ed231d` |
| 3 | `theorem` | [galoisComplexConj_apply_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/galoiscomplexconj-apply-apply--03323a8dd6ef518a11b8b8be.md) | 41 | `result-track:03323a8dd6ef518a11b8b8be5cdee03cadfaabd05eb1cd9fadefff2db9f7d7ae` |
| 4 | `theorem` | [galoisComplexConj_commute_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/galoiscomplexconj-commute-apply--637316be321572f695842738.md) | 51 | `result-track:637316be321572f695842738ff591dadb4c1c8693bccaf8336d36fa476bc3892` |
| 5 | `def` | [centralInvolution](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/centralinvolution--26074037db739756707ad03b.md) | 72 | `declaration-track:26074037db739756707ad03b56a92079410c0c2718ffdcdcd6fc9ae5176c2e06` |
| 6 | `theorem` | [centralInvolution_conj_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/centralinvolution-conj-apply--9c0cdd1508b45dac15d51479.md) | 87 | `result-track:9c0cdd1508b45dac15d51479e50c0f42dd82190e52e384d1d8e59db491d89e24` |
| 7 | `abbrev` | [OddSignRow](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/oddsignrow--5130671c6438897c6c3878f4.md) | 93 | `declaration-track:5130671c6438897c6c3878f43a21ba97f7f1095b7eee63e81177ead92a8eaa9e` |
| 8 | `def` | [FourBalance](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/fourbalance--9a74c7d2b3a0efc06f8762f5.md) | 97 | `declaration-track:9a74c7d2b3a0efc06f8762f575c79960ccbe94a7d32a613709fbb287e8abe425` |
| 9 | `theorem` | [fourBalance_twoTwoSignProfile](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/declarations/fourbalance-twotwosignprofile--4769cc068ef65fd61648eae4.md) | 102 | `result-track:4769cc068ef65fd61648eae4ee2f4310758276259692be46ad97a740c3b7d146` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
