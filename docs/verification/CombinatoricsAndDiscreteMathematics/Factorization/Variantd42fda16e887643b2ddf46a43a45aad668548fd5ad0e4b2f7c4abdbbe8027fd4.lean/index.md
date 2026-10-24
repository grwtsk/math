# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Factorization.Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbf09aa5743ce107e4aad28da94bc28d067c1970",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbf09aa5743ce107e4aad28da94bc28d067c1970`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.MPS` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SchmidtRankCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/declarations/schmidtrankcertificate--2c837bafc8cf457886224857.md) | 15 | `declaration-track:2c837bafc8cf457886224857a0924d269393feb0d789d080c92a87938c59b016` |
| 2 | `structure` | [MPSTruncationCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/declarations/mpstruncationcertificate--97f4170c45fcdc023fc42a23.md) | 24 | `declaration-track:97f4170c45fcdc023fc42a23fdb5641532b046cacccc0e62d38c8bee35497a2b` |
| 3 | `def` | [OpenMPS.storageCost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/declarations/openmps-storagecost--416cfb0f1e38c9588ca0e01d.md) | 34 | `declaration-track:416cfb0f1e38c9588ca0e01de83dbe917e40b938831cf921360aaab5bf48baa2` |
| 4 | `theorem` | [OpenMPS.storageCost_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/declarations/openmps-storagecost-le--9d47af1bd75518c4c86ee275.md) | 42 | `result-track:9d47af1bd75518c4c86ee275e2dc5c9ae28084b996883eb900c5aa13c37b2093` |
| 5 | `structure` | [MPSCostCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/declarations/mpscostcertificate--8909aa991c1abb529a661ad7.md) | 66 | `declaration-track:8909aa991c1abb529a661ad78f388cbca1b65fa052a7dcc1732f06fb53ad6209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
