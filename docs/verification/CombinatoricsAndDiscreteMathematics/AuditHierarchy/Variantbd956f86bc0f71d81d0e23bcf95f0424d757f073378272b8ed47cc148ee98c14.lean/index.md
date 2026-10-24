# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AuditHierarchy.Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a351c17d90040f2cc4151f2a6be14bec6885fac",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a351c17d90040f2cc4151f2a6be14bec6885fac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.MonoHierarchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.PolyHierarchy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankedAuditHierarchy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/rankedaudithierarchy--567033bd457c1e8fb5a1a1f4.md) | 30 | `declaration-track:567033bd457c1e8fb5a1a1f4b7cb2926797c39a203cc0c9ea0282f4eeae14d83` |
| 2 | `def` | [ParentStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/parentstep--429d22274264c210cc5dc786.md) | 48 | `declaration-track:429d22274264c210cc5dc78651857453eff924fe9eae2641d1acc92c31b9981c` |
| 3 | `theorem` | [unique_parent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/unique-parent--19597bc1d34e4b7a7be348a8.md) | 54 | `result-track:19597bc1d34e4b7a7be348a8f2b2a7004968ec121ed144e56138d987acdfa13a` |
| 4 | `theorem` | [root_parent_absent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/root-parent-absent--0ef3575b9844a35c27f7343d.md) | 66 | `result-track:0ef3575b9844a35c27f7343d547e7b35ea739f78fb555d5a2b95cd3b05aae74b` |
| 5 | `theorem` | [parent_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/parent-rank-lt--27b4cb8ba9d6323d84c32cbb.md) | 78 | `result-track:27b4cb8ba9d6323d84c32cbb2ba03fd3f0d36b55e5dc74fdc66275ee5824aa46` |
| 6 | `theorem` | [no_self_parent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/no-self-parent--038dda599c07f5844b8fb800.md) | 86 | `result-track:038dda599c07f5844b8fb8006ec038b41182d6350088eef617972ef366fbe79b` |
| 7 | `theorem` | [parent_wellFounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/parent-wellfounded--11d1eeb39a9bd3898970a0ac.md) | 95 | `result-track:11d1eeb39a9bd3898970a0ac06fdc92cd6e628ebf41ddcf136a966b0009327be` |
| 8 | `inductive` | [AuditNodeClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/auditnodeclass--a51732ef56101fca76db1698.md) | 105 | `declaration-track:a51732ef56101fca76db16985897a1e0f02bf07ad57079cc9412de8746167229` |
| 9 | `inductive` | [AuditRelationKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/auditrelationkind--d963c018fe0931e7c2b7b191.md) | 122 | `declaration-track:d963c018fe0931e7c2b7b19186b046b6253bc57d92c1cab38dd3b4431895006b` |
| 10 | `def` | [AuditRelationAdmissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/auditrelationadmissible--5d321f9e9858d9e366f02a82.md) | 144 | `declaration-track:5d321f9e9858d9e366f02a82de9f00fe6fe284adc8bc66d73189531908b283e0` |
| 11 | `def` | [auditRelationSignature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/auditrelationsignature--54307455bdd3606a0ebb412a.md) | 167 | `declaration-track:54307455bdd3606a0ebb412ace8b15fd9016da08d560e56b61d975aaa8f7d0e1` |
| 12 | `structure` | [AuditRelationLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/auditrelationledger--311f2814d8b5b61f98472353.md) | 183 | `declaration-track:311f2814d8b5b61f98472353f28bad1763c655e6c49beb8cee5e28be9743f650` |
| 13 | `structure` | [AuditTopology](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/audittopology--061293d6f65b106795b0d5be.md) | 196 | `declaration-track:061293d6f65b106795b0d5be46da9edd096c8ce8d6119b3900251e62bca2184b` |
| 14 | `structure` | [CanonicalParentObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/canonicalparentobservation--fed6cd67193fb958c82e731f.md) | 201 | `declaration-track:fed6cd67193fb958c82e731f0dd80989a9e3ae900f8f8c6c44f7cf83bfb7a6c3` |
| 15 | `structure` | [CrossCuttingObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/crosscuttingobservation--9ebd356ef47f92d7b647366f.md) | 209 | `declaration-track:9ebd356ef47f92d7b647366f3cddb16b9a90fa4a86f58abe4625dbfae840b588` |
| 16 | `inductive` | [AuditEdgeObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/auditedgeobservation--c68b2e4a0691dbf5e4157e96.md) | 221 | `declaration-track:c68b2e4a0691dbf5e4157e9618fb4ebeab5808344ee08994adba086312843c20` |
| 17 | `theorem` | [cross_cutting_is_not_canonical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/declarations/cross-cutting-is-not-canonical--e726584badef082802bfe0fa.md) | 232 | `result-track:e726584badef082802bfe0fabcd3db83f0aa84abf07945393e83d3d4be6a46e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
