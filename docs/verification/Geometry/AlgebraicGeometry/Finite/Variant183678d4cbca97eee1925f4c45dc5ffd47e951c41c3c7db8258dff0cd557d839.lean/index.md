# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Finite.Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02a6da9a8138f2b01e8850d9c9c8ee2d6f2c5fda",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02a6da9a8138f2b01e8850d9c9c8ee2d6f2c5fda`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Integral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Epi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFinite](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/isfinite--d4dbade4c255f430f5875cbb.md) | 42 | `declaration-track:d4dbade4c255f430f5875cbb62eed899ed9a2c5b96c0ccbd5814ef513531a53b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--7e721d46cff9117cefea3f1b.md) | 47 | `declaration-track:7e721d46cff9117cefea3f1b722902ba24494fec5462dfd4967b193e3d156c96` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--9bcfab97de9b816654fa4b19.md) | 54 | `declaration-track:9bcfab97de9b816654fa4b197941e2d0452a7ecd5b888f9739f272e323265201` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--7b6fcaac03c65f0de38dd788.md) | 58 | `declaration-track:7b6fcaac03c65f0de38dd788bbf9c7b951cba85d5f92538163b104d9f25f4cea` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--778b2e4ac06ff72a0ec6bc9e.md) | 62 | `declaration-track:778b2e4ac06ff72a0ec6bc9e0376b7cf00514d6b2228c871474fad26a403fdc9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--6f274cb09659c42091e45c3f.md) | 66 | `declaration-track:6f274cb09659c42091e45c3fcebae3458591cf7c7609cec42cbd286bef7faec2` |
| 7 | `lemma` | [SpecMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/specmap-iff--36b35f5bd2df2208e72d1f9e.md) | 68 | `result-track:36b35f5bd2df2208e72d1f9ebad7ca0d63d929de6b7d01b53821410c0e59972d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--fa6b19dcaddba86d3ea4c4b4.md) | 75 | `declaration-track:fa6b19dcaddba86d3ea4c4b4d3df2fb01f74c3ac40cbf29a2a119d66325663d5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--a1a64770a88fb08bb67b9958.md) | 77 | `declaration-track:a1a64770a88fb08bb67b9958fbf5c9aed86724b1d3d148e14106c6fb9a3f7548` |
| 10 | `lemma` | [iff_isIntegralHom_and_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/iff-isintegralhom-and-locallyoffinitetype--f2e83879e1817cac96b34ed8.md) | 80 | `result-track:f2e83879e1817cac96b34ed8e20b50b93b8d5c5e70967ec272faeb5ef8ad3f7d` |
| 11 | `lemma` | [eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/eq-inf--820c817918db423d9f3d8795.md) | 93 | `result-track:820c817918db423d9f3d87951fe43d5b2ccfb03f285cafc371fc44637a06bb50` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--8516e28af38d4f41b6a0c214.md) | 97 | `declaration-track:8516e28af38d4f41b6a0c214fa3da41134056e699af936638d9ec7242eaee4b1` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--ec5b5b4ef60565d3575f8557.md) | 100 | `declaration-track:ec5b5b4ef60565d3575f8557077881d3217e5a82869392c4d69330a9dc02237c` |
| 14 | `lemma` | [_root_.GRWTSK.Geometry.AlgebraicGeometry.IsFinite.Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.AlgebraicGeometry.IsClosedImmersion.iff_isFinite_and_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/root-grwtsk-geometry-algebraicgeometry-isfinite-variant5a6fb7e9015ebe672--82a0c711e711588e81f29057.md) | 103 | `result-track:82a0c711e711588e81f29057ee3a2ede5038cfc29e073c8ca0fefa09a3d254c3` |
| 15 | `lemma` | [_root_.GRWTSK.Geometry.AlgebraicGeometry.IsFinite.Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.AlgebraicGeometry.IsClosedImmersion.eq_isFinite_inf_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/root-grwtsk-geometry-algebraicgeometry-isfinite-variant5a6fb7e9015ebe672--455a70acfb5fc3c3abd5ec47.md) | 120 | `result-track:455a70acfb5fc3c3abd5ec47458c759df6e87649ca4a40278e4caf3c310af464` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/instance--0659cdfd02933f99fbce32c2.md) | 124 | `declaration-track:0659cdfd02933f99fbce32c2a39f872d34ab57f7a82f5aabf80904c06359016e` |
| 17 | `lemma` | [isFinite_iff_locallyOfFiniteType_of_jacobsonSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/isfinite-iff-locallyoffinitetype-of-jacobsonspace--9013bd216e2073fa14456593.md) | 132 | `result-track:9013bd216e2073fa14456593df014237b62cc14a27a8dd89fa3b1d5e271c8dfe` |
| 18 | `lemma` | [Scheme.Hom.closePoints_subset_preimage_closedPoints](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/scheme-hom-closepoints-subset-preimage-closedpoints--7a22a52f27199493b7aa59a3.md) | 163 | `result-track:7a22a52f27199493b7aa59a326d3e615cf9630ed37f380bb1ebb8655d58e3491` |
| 19 | `lemma` | [isClosed_singleton_iff_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/declarations/isclosed-singleton-iff-locallyoffinitetype--085432366aa85a6b1e0c93ac.md) | 174 | `result-track:085432366aa85a6b1e0c93ac57d32aa5c4bfd29afa7e0478248374c16994a078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
