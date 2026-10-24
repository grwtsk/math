# Verification target: GRWTSK.Algebra.GroupTheory.DistribMulAction.Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d556ddd95a38f19de6e444984de18c09583cde1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d556ddd95a38f19de6e444984de18c09583cde1`.

Source path: `GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.MulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/declarations/instance--65a8af52ed351c08f8e36be5.md) | 21 | `declaration-track:65a8af52ed351c08f8e36be5309d8d87469a56080ce20a649e2b230626b1f2b2` |
| 2 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/declarations/distribmulaction--90e4b4f3c6da41ff76a5c791.md) | 26 | `declaration-track:90e4b4f3c6da41ff76a5c79138ae0481f57984cee8ebf29fcdb58ca665dd26cf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/declarations/instance--498a4af18bc4251c40323ae4.md) | 30 | `declaration-track:498a4af18bc4251c40323ae40a6b631480e4816148f7ad0439ef0e75038d80b8` |
| 4 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/declarations/muldistribmulaction--e261e4931d96e71436e51cb3.md) | 35 | `declaration-track:e261e4931d96e71436e51cb39dbca5549f24fed3bcbea6c8dcfab998feab1766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
