# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02000d152845c72f3f8701d3ddef7d0d752e726f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02000d152845c72f3f8701d3ddef7d0d752e726f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Instances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/declarations/instance--91e2b6c820bd41cb78b39aec.md) | 23 | `declaration-track:91e2b6c820bd41cb78b39aec498c4a3e7edd04b570745ca3e9458b52d0640364` |
| 2 | `instance` | [orderedCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/declarations/orderedcommgroup--8eaf1083b2408460836d9e34.md) | 30 | `declaration-track:8eaf1083b2408460836d9e34ae98627cb2091d2d7f8009868ba32e238f7de68f` |
| 3 | `instance` | [linearOrderedCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/declarations/linearorderedcommgroup--92607f909ac4392b3339eaa7.md) | 35 | `declaration-track:92607f909ac4392b3339eaa7dcf769560ef0b54ed703c4c96729dbd51d601f69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
