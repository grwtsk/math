# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Over.Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01e5c6f0183a39947bf2f761b428cc02455cab6b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01e5c6f0183a39947bf2f761b428cc02455cab6b`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.MorphismProperty` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [asOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/asoverprop--c890d16caa5842939948f077.md) | 40 | `declaration-track:c890d16caa5842939948f0774dd6d7a59438651f171d60264715330a9aaaa776` |
| 2 | `abbrev` | [Hom.asOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/hom-asoverprop--85f672d99f3652c81ab993e1.md) | 44 | `declaration-track:85f672d99f3652c81ab993e1a018c0e9f575aa9cd71194e2e43145003fbf4b65` |
| 3 | `class` | [Cover.Over](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/cover-over--c41758765528487c5d584fc0.md) | 50 | `declaration-track:c41758765528487c5d584fc0d52c59ae709552f5879233d6cfd024ebb57b5426` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--91b2dabea141fa915e22194b.md) | 57 | `declaration-track:91b2dabea141fa915e22194b7293d0ee763178c9b714b577ad25a8c73d8d7da6` |
| 5 | `def` | [Cover.pullbackCoverOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/cover-pullbackcoverover--31e230e28d962b68dc323841.md) | 73 | `declaration-track:31e230e28d962b68dc3238417270edf14acab64b8d0de08db81f20c4d0bfa8d7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--c471b51c57bb2b2ac8505643.md) | 85 | `declaration-track:c471b51c57bb2b2ac85056439e0935e346f20f5b071e81e375b33951a543caa3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--98e2c2a075c8c23398af5934.md) | 88 | `declaration-track:98e2c2a075c8c23398af59345df3309a2383ac02a3d0df33a3ad748e2fe4ef86` |
| 8 | `def` | [Cover.pullbackCoverOver'](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/cover-pullbackcoverover--1166a6644a6837f1dfa9cb64.md) | 94 | `declaration-track:1166a6644a6837f1dfa9cb64b298e4b13b7280c584ea02d2c02514395b2d5775` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--cd0ae9d21e806561d87b97ec.md) | 106 | `declaration-track:cd0ae9d21e806561d87b97ecfdd1ca489b6c02b9a8261cc7e36520c73e6edf07` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--b07c62fe2d9e4a9090e55c2c.md) | 109 | `declaration-track:b07c62fe2d9e4a9090e55c2c59cffcb87c8ef4d9e4a518c0686c3cb974a9c5ce` |
| 11 | `def` | [Cover.pullbackCoverOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/cover-pullbackcoveroverprop--0962e6fffaa0be65ce3c882f.md) | 122 | `declaration-track:0962e6fffaa0be65ce3c882fa8d9c8518cf2f95ecf72e419c1930a6961e17ddc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--76ab6b91083b9b07fd02c356.md) | 139 | `declaration-track:76ab6b91083b9b07fd02c3566aec9b0dfef5aad92f1306367f963abe60218c0f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--ae3ab06e3bcabb9df744a837.md) | 143 | `declaration-track:ae3ab06e3bcabb9df744a837e983c67b3453eb73511b7aea6e7bf876d51138f7` |
| 14 | `def` | [Cover.pullbackCoverOverProp'](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/cover-pullbackcoveroverprop--7a36b4c8fe2aef8b066d3529.md) | 150 | `declaration-track:7a36b4c8fe2aef8b066d3529f707d423e3b3597a04303cd81a057d0a42f9ed48` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--cbe3ad375badeaf62a57c1ae.md) | 167 | `declaration-track:cbe3ad375badeaf62a57c1aefbe7c9922ba4075209255a02145e8b95e54f3906` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--1f57f8243681f2abbf38ce3c.md) | 171 | `declaration-track:1f57f8243681f2abbf38ce3c080a3ae684da36e53073f9574d921d364bb26d07` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--69185cc833b63cf44b5aa83a.md) | 181 | `declaration-track:69185cc833b63cf44b5aa83a7e32d5d29b9d071d6641f32954fe8ddb0853917f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/declarations/instance--c36191ff100ae97b5b855412.md) | 184 | `declaration-track:c36191ff100ae97b5b85541273bba943076e046aaf038cee35a8b065c850d700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
