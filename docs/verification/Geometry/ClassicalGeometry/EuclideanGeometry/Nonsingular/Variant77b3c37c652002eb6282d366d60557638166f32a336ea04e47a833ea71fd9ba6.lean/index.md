# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Nonsingular.Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27570167e30476d5ca72bcef24786c992d7e57a7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27570167e30476d5ca72bcef24786c992d7e57a7`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Nonsingular](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular--a26f745e3dd55ec327426fe4.md) | 56 | `declaration-track:a26f745e3dd55ec327426fe49f710540a6930c5c2338e065e06e1126ae1237c8` |
| 2 | `lemma` | [Nonsingular.mono'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-mono--22e79ca8b02307c8e5adf0b4.md) | 61 | `result-track:22e79ca8b02307c8e5adf0b40160f25fb00baa8170a4f52b4cbcf90fec38751b` |
| 3 | `lemma` | [Nonsingular.of_mono](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-of-mono--a4bc95c65ad89a762dc29d4c.md) | 66 | `result-track:a4bc95c65ad89a762dc29d4cbbaa7349d74c7f0133718164b344165ba90d8e36` |
| 4 | `lemma` | [Nonsingular.of_iso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-of-iso--a85ef062136b3a3058584f13.md) | 75 | `result-track:a85ef062136b3a3058584f13e862dbadef88e157165e18ada8180d2c2f8729dd` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/instance--7d1e8fd9238f86aa390034b8.md) | 78 | `declaration-track:7d1e8fd9238f86aa390034b8fa6a82f03d403ae20696c4c92e4371ec68c2ef22` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/instance--9dc95e31b2ce809c5792e030.md) | 82 | `declaration-track:9dc95e31b2ce809c5792e030d86fc76254a417e773f241a7ebe343f3d6c450d5` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/instance--9ce3d140f51dfecb1ce1b580.md) | 91 | `declaration-track:9ce3d140f51dfecb1ce1b5803a7c4f908f7991e7735ec678e444fa7b73c8331c` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/instance--ac34cd301c09e03495c11852.md) | 94 | `declaration-track:ac34cd301c09e03495c118520bbece3ef186bb51e1d2d59cc3604c30083a6fb7` |
| 9 | `lemma` | [nonDegenerate_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nondegenerate--26391f9376d367bdb6b563a9.md) | 99 | `result-track:26391f9376d367bdb6b563a934d575463d77181427832c0c5d50fb5356e630c6` |
| 10 | `lemma` | [Nonsingular.δ_injective](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-injective--2902f996b492a696c792c9b7.md) | 109 | `result-track:2902f996b492a696c792c9b7fd4899e7b550be1e1087c4601194eac28c12be1c` |
| 11 | `lemma` | [Nonsingular.injective_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-injective-map--ceac6d913ca94c8aaf2c019e.md) | 117 | `result-track:ceac6d913ca94c8aaf2c019ec965daf744272cfc8ee39ea5040db23f823f0a1d` |
| 12 | `lemma` | [Nonsingular.isIso_toOfSimplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-isiso-toofsimplex--8cc83d05ced4fcf70d61efac.md) | 128 | `result-track:8cc83d05ced4fcf70d61eface2a81b8e4a61a5c7b51789f7401dde4c59726d8a` |
| 13 | `def` | [Nonsingular.iso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/nonsingular-iso--0f61ed5f1bee5ffd54ff21a2.md) | 137 | `declaration-track:0f61ed5f1bee5ffd54ff21a2ce64715c0fe81dda53989164928bbdbf415b6157` |
| 14 | `lemma` | [existsUnique_of_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/existsunique-of-le--9a7f591e0f2ab114ba4137e7.md) | 148 | `result-track:9a7f591e0f2ab114ba4137e7ec2757c7d1ba9efb3e9489e5368add8a098e766b` |
| 15 | `def` | [monoOfLE](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/monoofle--b5b67daaeee97107a8975e2e.md) | 158 | `declaration-track:b5b67daaeee97107a8975e2ee1cc7481c3b883b4f0331f73a1f6efd532bb965f` |
| 16 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/instance--ed208963fc1119f27b647d0c.md) | 161 | `declaration-track:ed208963fc1119f27b647d0c86c3bcd96fc97c230ff2a0c1a67c646eb64e4cd0` |
| 17 | `lemma` | [map_monoOfLE](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/map-monoofle--060efddd335de6fdbea58ab3.md) | 165 | `result-track:060efddd335de6fdbea58ab31f02f29e9b40fa343b96cd577a21f2165be26d31` |
| 18 | `lemma` | [stdSimplex_map_monoOfLE_yonedaEquiv_symm_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/stdsimplex-map-monoofle-yonedaequiv-symm-simplex--159f5467bdade3fa703a0cfe.md) | 169 | `result-track:159f5467bdade3fa703a0cfedca1f52d272550df7c82e51e73473494cd6b0161` |
| 19 | `lemma` | [monoOfLE_eq_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/monoofle-eq-iff--c30814d24751d75b8f34654a.md) | 174 | `result-track:c30814d24751d75b8f34654a1c75fec580ab87070da9a997a83e5111526a808b` |
| 20 | `lemma` | [monoOfLE_refl](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/monoofle-refl--6732cb7c00cc630ef41ff07a.md) | 181 | `result-track:6732cb7c00cc630ef41ff07a21714803c0d1fb489fe5f59ebf80e741851f8945` |
| 21 | `lemma` | [monoOfLE_comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant77b3c37c652002eb6282d366d60557638166f32a336ea04e47a833ea71fd9ba6.lean/declarations/monoofle-comp--8063a77ad827bf040a54e27f.md) | 185 | `result-track:8063a77ad827bf040a54e27f10f7aaede2a751e89c648087a9a82cd1877041f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
