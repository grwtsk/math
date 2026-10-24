# Verification target: GRWTSK.Algebra.GroupTheory.ExistsOfLE.Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e25592e58cd557aa301a2d757523c2c491e133",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e25592e58cd557aa301a2d757523c2c491e133`.

Source path: `GRWTSK/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExistsAddOfLE](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/existsaddofle--8a94eae89c382d3ead3e03b8.md) | 24 | `declaration-track:8a94eae89c382d3ead3e03b8971c46e7e2aa47ff100802c00d8334ea5beb2777` |
| 2 | `class` | [ExistsMulOfLE](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/existsmulofle--6d0ccd8da2cdc95f75f739dc.md) | 32 | `declaration-track:6d0ccd8da2cdc95f75f739dce998ecf1fb5845999069ef6b30c7c7cbff3a5887` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/instance--ff2035e261f42353f131f81c.md) | 41 | `declaration-track:ff2035e261f42353f131f81cd25983de0942ef7abd40a68c80e7668d3e96911c` |
| 4 | `lemma` | [exists_one_le_mul_of_le](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/exists-one-le-mul-of-le--cb976aebbb535956ea0df0a4.md) | 47 | `result-track:cb976aebbb535956ea0df0a4fea5b75b97e9ab80f32b2d813696f772a8b80229` |
| 5 | `lemma` | [exists_one_lt_mul_of_lt'](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/exists-one-lt-mul-of-lt--ae403c21761e13803861ab54.md) | 51 | `result-track:ae403c21761e13803861ab5495f2b28d4fc2e63b8c7e79f5d5376fd3fe6eb215` |
| 6 | `lemma` | [le_iff_exists_one_le_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/le-iff-exists-one-le-mul--ec922cd12d8d65f409868f59.md) | 55 | `result-track:ec922cd12d8d65f409868f5958d62ddcd676eff3ec097aa525d31bada52cb650` |
| 7 | `lemma` | [lt_iff_exists_one_lt_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/lt-iff-exists-one-lt-mul--7675a6380e1fd6b12aa7fae5.md) | 59 | `result-track:7675a6380e1fd6b12aa7fae50a36a607fa1bea28f6009ec8ffb9ce6416d15fff` |
| 8 | `theorem` | [le_of_forall_one_lt_le_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/le-of-forall-one-lt-le-mul--aef13ddd0fd3d4d0c565d7b4.md) | 71 | `result-track:aef13ddd0fd3d4d0c565d7b490406a0ebeab5d80ebe51e2a0734a4b970abb277` |
| 9 | `theorem` | [le_of_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/le-of-forall-one-lt-lt-mul--844ad53ede93f710866a881e.md) | 77 | `result-track:844ad53ede93f710866a881e4e39bce23c7d680fce521b15f8f157ea39ed0165` |
| 10 | `theorem` | [le_iff_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/le-iff-forall-one-lt-lt-mul--925f28d78d86cfaf37a3115f.md) | 81 | `result-track:925f28d78d86cfaf37a3115f41bc06208f933d2e9725d5f906c7d6cff3f4c491` |
| 11 | `theorem` | [le_iff_forall_one_lt_le_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/declarations/le-iff-forall-one-lt-le-mul--8c1fb6e5b86e75671602bb8e.md) | 86 | `result-track:8c1fb6e5b86e75671602bb8e5029ebb1dc57a97120c087fe0f0f500e0d57a29b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
