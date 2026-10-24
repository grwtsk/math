# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8234c9d41b897c7ff2edf59da86de48e429994a5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8234c9d41b897c7ff2edf59da86de48e429994a5`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/declarations/center--d7b826f762ea385d0592af20.md) | 47 | `declaration-track:d7b826f762ea385d0592af201d84ca551b5362555a71b2a2eb0bee7a4dcec9ca` |
| 2 | `instance` | [center.commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/declarations/center-commsemigroup--e51f87bdae42a13ced7e5d2e.md) | 57 | `declaration-track:e51f87bdae42a13ced7e5d2e3e51d9098ad692e42c51c2e7d5625a0c0c34b43a` |
| 3 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/declarations/mem-center-iff--998c227fbfd1ed4e916ec91e.md) | 67 | `result-track:998c227fbfd1ed4e916ec91e450a87426cf8023f9bace22318b310cf0efff19b` |
| 4 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/declarations/decidablememcenter--b914f0ea6853f96c1cd7a427.md) | 72 | `declaration-track:b914f0ea6853f96c1cd7a427c546f6de4116d2ad24ab60510b9ee073f19b3368` |
| 5 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant5743d938c2b93fa40d8a6bcf5cc72198bb245499bb760dc085a698c7c7a585eb.lean/declarations/center-eq-top--869e75dfedbde90be3f0a946.md) | 82 | `result-track:869e75dfedbde90be3f0a94619e19233221c6dc0c590f2039c8c598a1cbfc9b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
