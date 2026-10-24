# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SurjectiveOnStalks.Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6862c8ad7c3599854a0f965dc2ec578717a1dae8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6862c8ad7c3599854a0f965dc2ec578717a1dae8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Surjective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.TensorProduct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SurjectiveOnStalks](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/surjectiveonstalks--59b4fa6b5f8edff9e95c5157.md) | 33 | `declaration-track:59b4fa6b5f8edff9e95c5157b72bc825fc050a295a1c7760dd06042ddae87190` |
| 2 | `theorem` | [Scheme.Hom.stalkMap_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/scheme-hom-stalkmap-surjective--f7f9cd9366dd951a4e8339c3.md) | 36 | `result-track:f7f9cd9366dd951a4e8339c3321fc26cbbc4016e6693878a96b74a4ab474bb91` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/instance--12fc2e7e5d71c74ac5dfb50b.md) | 42 | `declaration-track:12fc2e7e5d71c74ac5dfb50b66ce20fbc8b278f00d316ebd8b05c5885c9f59d2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/instance--2664bc12bfda3d0f80eb9dd8.md) | 45 | `declaration-track:2664bc12bfda3d0f80eb9dd85f5d0a153e7bf5226b64294816659493bc0420d9` |
| 5 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/comp--2305fa727ccb73205c4cc6b3.md) | 52 | `declaration-track:2305fa727ccb73205c4cc6b389e427ed5f4b6f697ab04d5380a28884478196af` |
| 6 | `lemma` | [eq_stalkwise](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/eq-stalkwise--a192824fd19667cbd779efea.md) | 56 | `result-track:a192824fd19667cbd779efea17662801a4907800def17157333e532f543139f5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/instance--2168ea681cf8165da348b2b7.md) | 60 | `declaration-track:2168ea681cf8165da348b2b73f22365f4a2e6a9558d24e03fe15e67e8d32cd15` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/instance--a3d58a9ff5d24481d6825f47.md) | 63 | `declaration-track:a3d58a9ff5d24481d6825f47a8c0f6b3fab40ed1be5e97c51b4c4ea38cf468c0` |
| 9 | `lemma` | [Spec_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/spec-iff--ac5f3732a95781204abd2472.md) | 66 | `result-track:ac5f3732a95781204abd24722b70a3f137cf8f545c0af7c46bc9394174002aa7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/instance--de292f9751738000da2c76f7.md) | 71 | `declaration-track:de292f9751738000da2c76f7533249481bd5fc12bde19d12f9126652f8fd33ad` |
| 11 | `lemma` | [iff_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/iff-of-isaffine--3c0e250a5a8247f835282a32.md) | 75 | `result-track:3c0e250a5a8247f835282a32f9f248213bd7e64bafeb0485d92e58d1d78124f7` |
| 12 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/of-comp--335ad0b3ef756d6103fa6286.md) | 79 | `result-track:335ad0b3ef756d6103fa6286ba56a1cdfa0212ad5c3c1ea40970e0ee42da5963` |
| 13 | `instance` | [stableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/stableunderbasechange--4afa443c26c3b24ac0ad7155.md) | 85 | `declaration-track:4afa443c26c3b24ac0ad715550fc6381fe08b4f76139f58e88ef2c584fe8b3eb` |
| 14 | `lemma` | [mono_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/mono-of-injective--755e1ac9a166d20b4a962c52.md) | 94 | `result-track:755e1ac9a166d20b4a962c52e20d4b1fff2778a1d87d22dce47d7be6a91a8e51` |
| 15 | `lemma` | [isEmbedding_pullback](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant9a14a16c9d2f22774f09ce4d05b35021ba0fe2d3aa69b2efd027ef02d89f5231.lean/declarations/isembedding-pullback--a036cb3697da75452f691868.md) | 103 | `result-track:a036cb3697da75452f691868fbdd2974235aa0f85f9e687539e9ecd9a3a82210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
