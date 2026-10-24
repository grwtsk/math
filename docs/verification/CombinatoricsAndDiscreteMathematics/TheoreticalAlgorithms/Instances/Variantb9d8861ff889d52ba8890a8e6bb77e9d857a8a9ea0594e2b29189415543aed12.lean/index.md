# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "631434eff79edd018af7b22e0f1d53a9b24bb24d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `631434eff79edd018af7b22e0f1d53a9b24bb24d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.DList.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DList.listEquivDList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean/declarations/dlist-listequivdlist--f22bc5ad67ed6aafaf6c891d.md) | 34 | `declaration-track:f22bc5ad67ed6aafaf6c891d8009ce7736d948674bb71f61b904cdd8e7e0a744` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean/declarations/instance--6c34ea1f97ce6b29f66519e2.md) | 40 | `declaration-track:6c34ea1f97ce6b29f66519e2f3944c542fd5238106cf3cfc01146ca72f338775` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean/declarations/instance--829f7e59dc1a4883641e957c.md) | 43 | `declaration-track:829f7e59dc1a4883641e957ce2154a00326fae436ae94a46dce23687a78be0ca` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variantb9d8861ff889d52ba8890a8e6bb77e9d857a8a9ea0594e2b29189415543aed12.lean/declarations/instance--123ea3afaca6609ab36f7bfc.md) | 46 | `declaration-track:123ea3afaca6609ab36f7bfc5bd435afee997b09c976f7eca7af63d65de1d57e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
