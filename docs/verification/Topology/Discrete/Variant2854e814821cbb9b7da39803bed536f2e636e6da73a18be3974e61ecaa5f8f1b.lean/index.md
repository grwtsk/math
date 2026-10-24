# Verification target: GRWTSK.Topology.Discrete.Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc2ea58632e795f6e9ab23908fb3a7c864441766",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/index.md) · [Full source](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc2ea58632e795f6e9ab23908fb3a7c864441766`.

Source path: `GRWTSK/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/declarations/instance--c8206bbd375cf43b77d0be0f.md) | 40 | `declaration-track:c8206bbd375cf43b77d0be0f54c65bdf3f2ec22e0785566b0a983e0826947143` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/declarations/instance--aced2b1d90679207e448a108.md) | 44 | `declaration-track:aced2b1d90679207e448a108305f27f43e39dcd9d6a63b0ca08617040fa8ba69` |
| 3 | `theorem` | [LinearOrder.bot_topologicalSpace_eq_preorderTopology](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/declarations/linearorder-bot-topologicalspace-eq-preordertopology--e080252e97709b95e4879cd3.md) | 52 | `result-track:e080252e97709b95e4879cd3d758a52e55991df2e8d94366e88974d749d2e90f` |
| 4 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--5269eb6ea6bc13e47c1715d6.md) | 62 | `result-track:5269eb6ea6bc13e47c1715d69f72d98608c44cf931e5da627c57d004968af593` |
| 5 | `instance` | [OrderTopology.of_discreteTopology](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/declarations/ordertopology-of-discretetopology--d8a560588c4d43707565e13f.md) | 67 | `declaration-track:d8a560588c4d43707565e13f3cb43587a4304c203a1ff7e30d67f2590148987a` |
| 6 | `instance` | [OrderTopology.of_linearLocallyFinite](../../../../mathematics/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/declarations/ordertopology-of-linearlocallyfinite--c21d4f65b054235da281ac32.md) | 71 | `declaration-track:c21d4f65b054235da281ac32d8503d861cbed8c5b40f35fa47a3e1cd9f67451f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
