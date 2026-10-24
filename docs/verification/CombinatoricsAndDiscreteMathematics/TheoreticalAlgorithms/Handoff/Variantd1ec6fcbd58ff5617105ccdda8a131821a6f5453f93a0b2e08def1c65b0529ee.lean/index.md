# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Handoff.Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c6a67466842ebcb6fed643507c540919d820bdd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c6a67466842ebcb6fed643507c540919d820bdd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Execution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HandoffContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/declarations/handoffcontext--190ad6efebb829fc925dfe76.md) | 20 | `declaration-track:190ad6efebb829fc925dfe76423243514baf6976c92a8733e4d1d3b885333d20` |
| 2 | `def` | [HandoffContext.transferredLease](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/declarations/handoffcontext-transferredlease--d04ada570565eb0023d02f1f.md) | 29 | `declaration-track:d04ada570565eb0023d02f1ff25cf973eecdaa2c810eba3264e98f4d1e4a0b4c` |
| 3 | `theorem` | [handoff_transfers_no_lease](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/declarations/handoff-transfers-no-lease--73d3f977d09497f590934111.md) | 34 | `result-track:73d3f977d09497f590934111e30347d5570718b3620ea9c4c97ba58f3710b7b3` |
| 4 | `theorem` | [source_lease_does_not_authorize_target](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/declarations/source-lease-does-not-authorize-target--8e5c12f894cb354a0452ef25.md) | 39 | `result-track:8e5c12f894cb354a0452ef25615256dfe627f2ce409a9ca2a3760ce76b0f0937` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
