# Verification target: GRWTSK.Topology.GeneralTopology.Affine.Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13d1f5a19aa8bbad21ce8bbc2b1de648bcc88937",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13d1f5a19aa8bbad21ce8bbc2b1de648bcc88937`.

Source path: `GRWTSK/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean/declarations/continuous-iff--5aafa4f92cbd1dc8f82b53d4.md) | 42 | `result-track:5aafa4f92cbd1dc8f82b53d45984475eac8c90d249222658cbd3b2b2395b574e` |
| 2 | `theorem` | [lineMap_continuous](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean/declarations/linemap-continuous--b7e03ccc345d7e74f4d112bf.md) | 53 | `result-track:b7e03ccc345d7e74f4d112bffbf74b82c6404e83917682b908ac9c22e51770e9` |
| 3 | `theorem` | [homothety_continuous](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean/declarations/homothety-continuous--2b11c73cd749ef7e4a0d94ae.md) | 65 | `result-track:2b11c73cd749ef7e4a0d94ae8fa2d0fa2450f6edaced5294a179340b13545817` |
| 4 | `theorem` | [homothety_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Affine/Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa.lean/declarations/homothety-isopenmap--b97f2e474b5d7241dc49b733.md) | 78 | `result-track:b97f2e474b5d7241dc49b73395d87b1278766220793c857810bb90001cdd0b8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
