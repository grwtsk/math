# Verification target: GRWTSK.Topology.GeneralTopology.Affine.Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e5ebe65d6ba81e136a9b1d7f931dbe307819b5b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e5ebe65d6ba81e136a9b1d7f931dbe307819b5b`.

Source path: `GRWTSK/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/declarations/continuous-iff--2a6de3dae78056b19973f38e.md) | 34 | `result-track:2a6de3dae78056b19973f38e54e4210b949945ed764caa64d3dc88342bd1d93e` |
| 2 | `theorem` | [lineMap_continuous](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/declarations/linemap-continuous--2d2bb9e2896d2fa056cdc00d.md) | 45 | `result-track:2d2bb9e2896d2fa056cdc00de848773b17447719515f748a628abe39d4eb880e` |
| 3 | `theorem` | [homothety_continuous](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/declarations/homothety-continuous--59fa2696f93f9a6acb189c58.md) | 57 | `result-track:59fa2696f93f9a6acb189c582f4901b6aed134be1d470864f89e0bb6a34976d1` |
| 4 | `theorem` | [homothety_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/declarations/homothety-isopenmap--ad51d23ba61c0b610a0ba6eb.md) | 70 | `result-track:ad51d23ba61c0b610a0ba6eb8d950de736d9fda18391a9462d20bda32b8552d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
