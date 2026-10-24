# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Etale.Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940dfe3ad8f0186914bc6609435e200f9db27e8a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940dfe3ad8f0186914bc6609435e200f9db27e8a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Etale` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.BigZariski` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.Small` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [etalePretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/declarations/etalepretopology--0c3c0ebb8b39d7e8d15c7436.md) | 27 | `declaration-track:0c3c0ebb8b39d7e8d15c743639187e57e7679a08d2bd0d3024a853b69139f855` |
| 2 | `abbrev` | [etaleTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/declarations/etaletopology--18e06830e2efe46590d680ab.md) | 31 | `declaration-track:18e06830e2efe46590d680ab13c7d3bd08532be220a3f1dff8c0d5aeffdb2bb5` |
| 3 | `lemma` | [zariskiTopology_le_etaleTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/declarations/zariskitopology-le-etaletopology--6587cb400696bcf0336a9011.md) | 34 | `result-track:6587cb400696bcf0336a901169b5900f6900d4cc98e044b335ed8aabdc81ed1f` |
| 4 | `def` | [smallEtaleTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/declarations/smalletaletopology--a53bd8cbce60d391d5e96fb9.md) | 41 | `declaration-track:a53bd8cbce60d391d5e96fb98c23d2fb55b6fba516bc967987220edcb884cbc5` |
| 5 | `def` | [smallEtalePretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553.lean/declarations/smalletalepretopology--80f1fc45979a7e882d3c4949.md) | 45 | `declaration-track:80f1fc45979a7e882d3c49499a55221584f201c8977f5a9cadb0e1aa99b46343` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
