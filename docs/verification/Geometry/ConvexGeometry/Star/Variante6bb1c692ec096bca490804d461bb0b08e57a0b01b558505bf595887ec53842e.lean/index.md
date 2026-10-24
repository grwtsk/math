# Verification target: GRWTSK.Geometry.ConvexGeometry.Star.Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5c08774d08e306ba00681372db83124eb66868",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5c08774d08e306ba00681372db83124eb66868`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStarConvexSet](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset--68a204aff5b0a08fb9c526c3.md) | 57 | `declaration-track:68a204aff5b0a08fb9c526c3d5beccbb61f94d574d47bbe253251598b2ce9a10` |
| 2 | `lemma` | [IsStarConvexSet.empty](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-empty--b57b7458ff0159620b5fafd5.md) | 60 | `result-track:b57b7458ff0159620b5fafd565012e416061776a6a7aaa6bdbb42faba1e356c3` |
| 3 | `lemma` | [IsStarConvexSet.univ](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-univ--c14ee84ffca7b211b14c8e3d.md) | 63 | `result-track:c14ee84ffca7b211b14c8e3d1c22473976c6478531c70bf4e2fbec935a2d0555` |
| 4 | `lemma` | [IsStarConvexSet.singleton](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-singleton--e3acd2583cedb035677c345e.md) | 65 | `result-track:e3acd2583cedb035677c345e4a8efd3dc77b146508d3ddf703c91bd0690cb53b` |
| 5 | `lemma` | [IsStarConvexSet.inter](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-inter--610bd2ae8408d2d0ea96d399.md) | 69 | `result-track:610bd2ae8408d2d0ea96d399cfddf2c69969d03880c3b98550cacbe40b9e5657` |
| 6 | `lemma` | [IsStarConvexSet.union](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-union--df2ab9ef0354ef5348cb31ba.md) | 73 | `result-track:df2ab9ef0354ef5348cb31ba5b2d5f018823ca312695d7bbc2a6106cbe8de9f1` |
| 7 | `lemma` | [IsStarConvexSet.sInter](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-sinter--cf6f0e8bbbc33d4019afab90.md) | 77 | `result-track:cf6f0e8bbbc33d4019afab9065c2b66098665280ecc47778c5edde5b5444d21a` |
| 8 | `lemma` | [IsStarConvexSet.iInter](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-iinter--dd4cca2614a66a9a671d0f5f.md) | 81 | `result-track:dd4cca2614a66a9a671d0f5fa5b0dc180d21e38fd94fcd9644f787b3192bfad5` |
| 9 | `lemma` | [IsStarConvexSet.iInter₂](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-iinter--efbdd1365712696471a388cd.md) | 84 | `result-track:efbdd1365712696471a388cdf2628ae8766eed84fd08b76b26a8b463a5fb4c32` |
| 10 | `lemma` | [IsStarConvexSet.sUnion](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-sunion--8b34183cafb8dfa835501afa.md) | 88 | `result-track:8b34183cafb8dfa835501afad97a10ff30ee14d8143bdc57e24929c3b61b1223` |
| 11 | `lemma` | [IsStarConvexSet.iUnion](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-iunion--bf9ee75344acfbe78592f126.md) | 93 | `result-track:bf9ee75344acfbe78592f126c6bf86a3c817fc9c23d409e46c21517d8d754aaf` |
| 12 | `lemma` | [IsStarConvexSet.iUnion₂](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-iunion--9cf316312894ec39d789556d.md) | 96 | `result-track:9cf316312894ec39d789556dcdb9d39421f15fabba23d645855099e8139c0990` |
| 13 | `lemma` | [IsConvexSet.isStarConvexSet](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isconvexset-isstarconvexset--b003471ad248250b6975e3ca.md) | 100 | `result-track:b003471ad248250b6975e3ca822f178b7aa002325f7096ad5e1e355bf65427e2` |
| 14 | `lemma` | [IsStarConvexSet.mem](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-mem--ad7b4001a38454105eaed7d2.md) | 103 | `result-track:ad7b4001a38454105eaed7d22217ddbef41ad086ef2eb62c76a367418429002d` |
| 15 | `lemma` | [IsStarConvexSet.preimage](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-preimage--b0b9480c1dc31a99770b4c3a.md) | 107 | `result-track:b0b9480c1dc31a99770b4c3af15efc38bd2d8fb5661b8a95f6c9bc4544471003` |
| 16 | `lemma` | [IsStarConvexSet.image](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-image--b3cd19f217b25edcf98b7fad.md) | 112 | `result-track:b3cd19f217b25edcf98b7fad4af56eae0ace13f77869a7d37d093238c5fcc0d3` |
| 17 | `lemma` | [IsStarConvexSet.prod](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-prod--91bc46011dde091c36957513.md) | 117 | `result-track:91bc46011dde091c369575139ef4f3ee44a9b1ba42de9033fbae941ae0df26ca` |
| 18 | `lemma` | [IsStarConvexSet.pi](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/declarations/isstarconvexset-pi--28466edd9a016586ff87a113.md) | 122 | `result-track:28466edd9a016586ff87a11308d859fad5737e1542a757aa59dcb50045449c70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
