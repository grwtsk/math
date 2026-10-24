# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Torsion.Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0d32c6bff8012eb26fafe59bdd9731b413721e3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0d32c6bff8012eb26fafe59bdd9731b413721e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MordellWeilTorsionSubgroupData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/mordellweiltorsionsubgroupdata--3c6c6fca7cff12bdd2d3e971.md) | 34 | `declaration-track:3c6c6fca7cff12bdd2d3e971d96dd093852b568ceb16db8f0ad2b8533df4ceed` |
| 2 | `structure` | [MordellWeilTorsionSubgroupCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/mordellweiltorsionsubgroupcertificate--bad6fd89ca82d5c541746b78.md) | 58 | `declaration-track:bad6fd89ca82d5c541746b7819d3917fcb5c945e0a2fee29946121230edbc397` |
| 3 | `def` | [MordellWeilTorsionSubgroupCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/mordellweiltorsionsubgroupcertificate-certifiedforbsd--ed26316c54d2a6849dd1e304.md) | 76 | `declaration-track:ed26316c54d2a6849dd1e304cbfe430eee17932ddac6fffa853116b0b4b11e62` |
| 4 | `theorem` | [MordellWeilTorsionSubgroupCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/mordellweiltorsionsubgroupcertificate-certifiedforbsd-of-fields--6b992683636e4041504fdd67.md) | 87 | `result-track:6b992683636e4041504fdd6730cfcfa9a47c9368f1996ca62063b155e9cc7148` |
| 5 | `structure` | [MordellWeilTorsionOrderData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/mordellweiltorsionorderdata--f4a7b2f50a8136ae7fc368da.md) | 112 | `declaration-track:f4a7b2f50a8136ae7fc368da23cf43547bc6c4c28138742d39b9679b7f63098b` |
| 6 | `structure` | [TorsionOrderCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/torsionordercertificate--d00082e45053f24f9e30cdf5.md) | 124 | `declaration-track:d00082e45053f24f9e30cdf576bc53735ad0d8d82892a4f26f8f2c6584847fdc` |
| 7 | `def` | [TorsionOrderCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/torsionordercertificate-certifiedforbsd--89c34b757129678b99b2656f.md) | 154 | `declaration-track:89c34b757129678b99b2656fc61eb5e282c603848d32c67fc194799570e12155` |
| 8 | `theorem` | [TorsionOrderCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/declarations/torsionordercertificate-certifiedforbsd-of-fields--c8e0ec6e3a2fe3600d11f112.md) | 171 | `result-track:c8e0ec6e3a2fe3600d11f11253f7a98afa80ef38a4abfa856700e5f936cf2087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
