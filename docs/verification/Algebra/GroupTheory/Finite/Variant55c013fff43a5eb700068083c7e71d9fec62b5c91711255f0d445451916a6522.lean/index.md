# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d329a188a5016f24bb8577223017c3dfca20a803",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d329a188a5016f24bb8577223017c3dfca20a803`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Rank` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [commutator_pi_pi_of_finite](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean/declarations/commutator-pi-pi-of-finite--c090ef7d087932eef098d156.md) | 28 | `result-track:c090ef7d087932eef098d156f58a842522e7621c6adbd7d65ca571169a9b2df3` |
| 2 | `instance` | [finiteIndex_center](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean/declarations/finiteindex-center--ca616b68303f29c3073d203e.md) | 47 | `declaration-track:ca616b68303f29c3073d203e061826b3f15fd62c0e72825393bdf7ca03cd4c0d` |
| 3 | `lemma` | [index_center_le_pow](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant55c013fff43a5eb700068083c7e71d9fec62b5c91711255f0d445451916a6522.lean/declarations/index-center-le-pow--4ae95e06082a79df2045905d.md) | 51 | `result-track:4ae95e06082a79df2045905d15072ae208e913722b9ec4d3dbc5bfb59e4fb204` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
