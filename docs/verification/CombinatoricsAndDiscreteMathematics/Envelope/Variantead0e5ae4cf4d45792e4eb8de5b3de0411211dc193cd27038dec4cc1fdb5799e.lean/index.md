# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Envelope.Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a13502c5d8f80ac09daa240e5fbcf7f2c438167",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a13502c5d8f80ac09daa240e5fbcf7f2c438167`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.UniqueZero` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedOuterDisk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/declarations/certifiedouterdisk--169f978c0e6a8b734053473a.md) | 12 | `declaration-track:169f978c0e6a8b734053473afe2e992ce582d149e0d32f3597306584f0246400` |
| 2 | `structure` | [CertifiedMinimumEnclosingDisk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/declarations/certifiedminimumenclosingdisk--83344dfa37431f5044e7183e.md) | 21 | `declaration-track:83344dfa37431f5044e7183ec66035e85eb18f722a9bbce98531e932f988e273` |
| 3 | `structure` | [DiskSupportCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/declarations/disksupportcertificate--02ba28523072b1f79ea609ca.md) | 31 | `declaration-track:02ba28523072b1f79ea609ca47ace1fe62699b13db4540d145c780bdad01cc4d` |
| 4 | `theorem` | [outerDisk_contains_unique_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/declarations/outerdisk-contains-unique-zero--29bd09fb6229f46f54059444.md) | 45 | `result-track:29bd09fb6229f46f5405944452f937bcfa54b4c90040be03811ae9d41a062d04` |
| 5 | `theorem` | [minimumDisk_support_card_le_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Envelope/Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e.lean/declarations/minimumdisk-support-card-le-three--4ac1e289de39e21758b1a4c1.md) | 61 | `result-track:4ac1e289de39e21758b1a4c1bb1694557872567582ebf9990bb9436ee660c201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
