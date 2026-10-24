# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Simplex.Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8964997ca5e9dd86ff6139b4c6d5eb3c582a1c51",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8964997ca5e9dd86ff6139b4c6d5eb3c582a1c51`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.Simplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Equilateral.angle_eq_pi_div_three](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/declarations/equilateral-angle-eq-pi-div-three--a8b1b3c0fa2567b8abb19c83.md) | 33 | `result-track:a8b1b3c0fa2567b8abb19c835152fc7de52425e36f7ef61767456aaf32f4da4a` |
| 2 | `def` | [AcuteAngled](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/declarations/acuteangled--7a8df48f4c74ad1b53d16772.md) | 50 | `declaration-track:7a8df48f4c74ad1b53d16772909e5c70ad585e9e59ffe2705dce8e338fdbf951` |
| 3 | `lemma` | [acuteAngled_reindex_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/declarations/acuteangled-reindex-iff--390cd2364ef06b923f2367e9.md) | 54 | `result-track:390cd2364ef06b923f2367e9f5eb4ef9a984c41a7f5015625fc65e444043cdc0` |
| 4 | `lemma` | [Equilateral.acuteAngled](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/declarations/equilateral-acuteangled--50a6832d89efdcd362a3239f.md) | 60 | `result-track:50a6832d89efdcd362a3239f5e6a87be85943870152f1081a8d0725d0c2e80c9` |
| 5 | `lemma` | [acuteAngled_iff_angle_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/declarations/acuteangled-iff-angle-lt--5b5aa1de6482219e4ae0ce90.md) | 69 | `result-track:5b5aa1de6482219e4ae0ce9082674647033ff2db68506e4548d08613a05fcab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
