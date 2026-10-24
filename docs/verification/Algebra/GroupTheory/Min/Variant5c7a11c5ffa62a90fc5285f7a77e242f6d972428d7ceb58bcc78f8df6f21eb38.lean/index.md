# Verification target: GRWTSK.Algebra.GroupTheory.Min.Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a068d4deef11dbb7a3b142246ca463f79cd9a29",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a068d4deef11dbb7a3b142246ca463f79cd9a29`.

Source path: `GRWTSK/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder--c7781c5d08e86e849cb6f844.md) | 47 | `declaration-track:c7781c5d08e86e849cb6f8443f5a69fc0e9808cd2e22213ee6b89a98f1b725b4` |
| 2 | `lemma` | [le_minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/le-minorder--a80ae3f66cb8e449c3b00db6.md) | 52 | `result-track:a80ae3f66cb8e449c3b00db60af497cad0bfe24f275a8a07a10a513d858e0ebd` |
| 3 | `lemma` | [minOrder_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder-le-orderof--8c8b35d5b7b13202147897c0.md) | 56 | `result-track:8c8b35d5b7b13202147897c000794999e94c20342ec49443df5024adb4821263` |
| 4 | `lemma` | [le_minOrder_iff_forall_subgroup](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/le-minorder-iff-forall-subgroup--a0dab21200b1a8cebaa290f6.md) | 65 | `result-track:a0dab21200b1a8cebaa290f674d4027aca8c2cadcd13583efff81b0d3e6bbca6` |
| 5 | `lemma` | [minOrder_le_natCard](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder-le-natcard--e862b68729633b15d307ffa3.md) | 76 | `result-track:e862b68729633b15d307ffa34d746e45b825bccf5b1dae00709fb8a4ef779cd6` |
| 6 | `lemma` | [minOrder_eq_top](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder-eq-top--894b4eabcddb887a47941efa.md) | 80 | `result-track:894b4eabcddb887a47941efa1ea0a86bf08278e2c2d4e8f87db79f516b641eea` |
| 7 | `lemma` | [minOrder_eq_top_iff](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder-eq-top-iff--11cb5a02467cac401feffa70.md) | 89 | `result-track:11cb5a02467cac401feffa70460413b21564e18380ee4e885af253142fe8f26e` |
| 8 | `lemma` | [minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder--7643614bbab3fb4b67c3ffd9.md) | 100 | `result-track:7643614bbab3fb4b67c3ffd95d9c34328ab31425ab972b65183b6b5de6645f4f` |
| 9 | `lemma` | [minOrder_of_prime](../../../../../mathematics/Algebra/GroupTheory/Min/Variant5c7a11c5ffa62a90fc5285f7a77e242f6d972428d7ceb58bcc78f8df6f21eb38.lean/declarations/minorder-of-prime--b247bc3be53a3f899c8d5cf4.md) | 116 | `result-track:b247bc3be53a3f899c8d5cf498cda0bf75ad617a42eb3f7535d6557d3a0e919a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
