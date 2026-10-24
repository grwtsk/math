# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Torsion.Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "278325d0cceccc2d55bd8f9f68298dfdadd37234",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `278325d0cceccc2d55bd8f9f68298dfdadd37234`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MordellWeilTorsionSubgroupData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/mordellweiltorsionsubgroupdata--27f0706dfb6ebbf8e83e773d.md) | 42 | `declaration-track:27f0706dfb6ebbf8e83e773d8c65bc484fa8fc7cd743c7322c0c9d74cd171133` |
| 2 | `structure` | [MordellWeilTorsionSubgroupCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/mordellweiltorsionsubgroupcertificate--f6cc19408e035c7e181f3b55.md) | 66 | `declaration-track:f6cc19408e035c7e181f3b55930d37f9893d2f64313831eb593f82d8fef27f91` |
| 3 | `def` | [MordellWeilTorsionSubgroupCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/mordellweiltorsionsubgroupcertificate-certifiedforbsd--e645e980b4dbc9621d75a1ad.md) | 84 | `declaration-track:e645e980b4dbc9621d75a1adb12395a1ceaaa4e75a19f920bbdafa20891c7df4` |
| 4 | `theorem` | [MordellWeilTorsionSubgroupCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/mordellweiltorsionsubgroupcertificate-certifiedforbsd-of-fields--84dbfdce9947fb1aa198133f.md) | 95 | `result-track:84dbfdce9947fb1aa198133f50465536a991459952f7df370abcbd7ce1ebc93b` |
| 5 | `structure` | [MordellWeilTorsionOrderData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/mordellweiltorsionorderdata--d68556cf35a599cd52d28cbd.md) | 120 | `declaration-track:d68556cf35a599cd52d28cbd6a5074261b6ac913d12a6e904393070ae7476085` |
| 6 | `structure` | [TorsionOrderCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/torsionordercertificate--7efcc2084370482b875eb492.md) | 132 | `declaration-track:7efcc2084370482b875eb492bd9f22f1810398c1bcff6d4992dbb537eab48474` |
| 7 | `def` | [TorsionOrderCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/torsionordercertificate-certifiedforbsd--bc51ddab300a2ae18727034c.md) | 162 | `declaration-track:bc51ddab300a2ae18727034c3bf1b331a89d37a409cf3b2d28ef2fe41d129492` |
| 8 | `theorem` | [TorsionOrderCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variantb54d55d2abe3be12f5add844a1f1291c041f8a631e8200dd9b645c1629a2e9be.lean/declarations/torsionordercertificate-certifiedforbsd-of-fields--3f9abc4b28df5d4c51266539.md) | 179 | `result-track:3f9abc4b28df5d4c512665395dc2d163c671de810d9ff56a0bedce262b09c923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
