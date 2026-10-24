# Verification target: GRWTSK.Algebra.GroupTheory.Transitive.Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "769cfe7b2aebb4f6159f4653097af35c8bd45f3f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `769cfe7b2aebb4f6159f4653097af35c8bd45f3f`.

Source path: `GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isPretransitive_iff_base](../../../../../mathematics/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/declarations/ispretransitive-iff-base--70cb0109a2021206e45b04ac.md) | 47 | `result-track:70cb0109a2021206e45b04acf3e62acfbdf71c248eb67d4b16324331c2cf650c` |
| 2 | `theorem` | [isPretransitive_iff_orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/declarations/ispretransitive-iff-orbit-eq-univ--73c0970afbb56d419745ead4.md) | 58 | `result-track:73c0970afbb56d419745ead4687499f2d5ac8464d9fe892aaf35619385556d89` |
| 3 | `theorem` | [IsPretransitive.of_surjective_map](../../../../../mathematics/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/declarations/ispretransitive-of-surjective-map--9806d62ed7777bd3b6ac9ce0.md) | 68 | `result-track:9806d62ed7777bd3b6ac9ce07558726b23342d27c7a918fc6335bc45ee5345df` |
| 4 | `theorem` | [isPretransitive_congr](../../../../../mathematics/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/declarations/ispretransitive-congr--81ef18f33313f40071123b3e.md) | 79 | `result-track:81ef18f33313f40071123b3e26c53e73207176bf391857055319ca137289c93b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
