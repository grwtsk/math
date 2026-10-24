# Verification target: GRWTSK.Algebra.LinearAlgebra.ProjectionDepth.Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed2e50e8c5c8ab85dc0704495ebbe465a7f7b680",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed2e50e8c5c8ab85dc0704495ebbe465a7f7b680`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.EdgeRelaxation.Continuous` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectionErrors](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionerrors--8d24b68a54938a82b806e1f9.md) | 28 | `declaration-track:8d24b68a54938a82b806e1f95c795bc2832e1a824bbb9be74acf85912c102c40` |
| 2 | `structure` | [InvariantMargins](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/invariantmargins--c3d7f78bb7c675c397c889c8.md) | 42 | `declaration-track:c3d7f78bb7c675c397c889c8c0005c931ff37c62b44b4eb27714e6b541b8e4cf` |
| 3 | `def` | [stabilityMargin](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/stabilitymargin--b64b4e4fde6b7f06c3307508.md) | 53 | `declaration-track:b64b4e4fde6b7f06c330750843d32512c807903056d41b58bb8ff89f18f607de` |
| 4 | `structure` | [DyadicErrorBound](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/dyadicerrorbound--de95a9c937c445c1ad148383.md) | 65 | `declaration-track:de95a9c937c445c1ad1483836118b78fa02cc137060be2b620fff0d4b1d8fc80` |
| 5 | `constant` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/constant--86f8f3359702b2b73eb9768c.md) | 66 | `declaration-track:86f8f3359702b2b73eb9768c65719b3c3112255c1c1f11542b68c3c3c6928b1e` |
| 6 | `structure` | [BooleanSupportWitness](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/booleansupportwitness--5c43b4ef60778c63c6201946.md) | 75 | `declaration-track:5c43b4ef60778c63c6201946ff3c94aadfcfb7c1d795c45dca898bb73e17a7e4` |
| 7 | `structure` | [DyadicObservation](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/dyadicobservation--49f0b7166db265e283760f76.md) | 84 | `declaration-track:49f0b7166db265e283760f76b2c6f1268b44faab2753fd6d1a1ae7c338d6b368` |
| 8 | `structure` | [DeterminantSurrogate](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/determinantsurrogate--c68c3a36f1829d8097e7d1bd.md) | 91 | `declaration-track:c68c3a36f1829d8097e7d1bd007cc88679ae5cd648baddf536af4aae8754cc98` |
| 9 | `structure` | [ExternalTraceSurrogate](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/externaltracesurrogate--b67d5b8fc29eec36307a4bcf.md) | 98 | `declaration-track:b67d5b8fc29eec36307a4bcf81253547780389abfae8a271f30847beba5dcde9` |
| 10 | `structure` | [AdmissibleKappa](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/admissiblekappa--d7353ee704b4f98b35bd3d2b.md) | 111 | `declaration-track:d7353ee704b4f98b35bd3d2b1de9be0885b54b4c6520da24d6d5f2a72530de43` |
| 11 | `def` | [stabilityMargin_pos_of_admissible](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/stabilitymargin-pos-of-admissible--2b9e1236fd53f9679e4cb618.md) | 124 | `declaration-track:2b9e1236fd53f9679e4cb61807bbe4ac3e3baecef97717c551aad7bb53a82d4a` |
| 12 | `def` | [no_admissible_of_zero_stabilityMargin](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/no-admissible-of-zero-stabilitymargin--a794b2709a6bcd477d812ac4.md) | 133 | `declaration-track:a794b2709a6bcd477d812ac448d5047788b66c689359dc5a4df80de3edde1623` |
| 13 | `structure` | [CertifiedProjectionDepth](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/certifiedprojectiondepth--4c8530753a32bdce72b689f4.md) | 144 | `declaration-track:4c8530753a32bdce72b689f473286146029f26ce962d9f9f779a86a11d1493cd` |
| 14 | `def` | [CertifiedProjectionDepth.admissible_at_kappa](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/certifiedprojectiondepth-admissible-at-kappa--054668adec7c92f1b8391ec1.md) | 153 | `declaration-track:054668adec7c92f1b8391ec17da68fc8465ea0b846b73cb3e95b1f938c7d2670` |
| 15 | `def` | [CertifiedProjectionDepth.not_admissible_below](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/certifiedprojectiondepth-not-admissible-below--8bdd88d05b22b303f7ec6b90.md) | 161 | `declaration-track:8bdd88d05b22b303f7ec6b906e3139d4cdcde59cbb9eeacc2c1993be3a8eed8e` |
| 16 | `structure` | [PreservesTargetInvariants](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/preservestargetinvariants--447e0bb28ecf65b8ab6b3a91.md) | 171 | `declaration-track:447e0bb28ecf65b8ab6b3a91ea744e303066973c254837d063a5dc0ffdbd9cd5` |
| 17 | `def` | [preserves_target_invariants](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/preserves-target-invariants--bd543dc2bdb01b06d84645aa.md) | 184 | `declaration-track:bd543dc2bdb01b06d84645aab2a323ff5b2f4a6b0bb9a96c495851b0e9995d23` |
| 18 | `structure` | [ProjectionZKPPublicStatement](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionzkppublicstatement--92388edd6c9b211c55f72f59.md) | 199 | `declaration-track:92388edd6c9b211c55f72f592cf81367769ceaf8f8fe480e62717915da869485` |
| 19 | `structure` | [ProjectionZKPPrivateWitness](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionzkpprivatewitness--bf0e266dfa6d9ca368636372.md) | 217 | `declaration-track:bf0e266dfa6d9ca368636372d1717a9cd6d4523781775948c26ddfa7c639e388` |
| 20 | `def` | [ProjectionZKPRelation](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionzkprelation--b3740b5aa34b32623d971174.md) | 234 | `declaration-track:b3740b5aa34b32623d97117426ddd82ce2f19eb37072ce820499455806f83ceb` |
| 21 | `def` | [ProjectionZKPRelation.admissible](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionzkprelation-admissible--cdb352e5f95a8c4a77eed2dc.md) | 248 | `declaration-track:cdb352e5f95a8c4a77eed2dcb8cd40c89a1296b9095e193063bd6cc74c87d13a` |
| 22 | `theorem` | [ProjectionZKPRelation.consumes_boundary_hashes](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionzkprelation-consumes-boundary-hashes--0014a575cf644de19bb12180.md) | 260 | `result-track:0014a575cf644de19bb1218080e48b1a2f80c513eb2cd70aad6b4cdb779546cb` |
| 23 | `def` | [ProjectionZKPRelation.preserves_target_invariants](../../../../../mathematics/Algebra/LinearAlgebra/ProjectionDepth/Variant4fe6ca37bd8d0a746564a05b8e2efaa5161a223d01b35b65bdbf6ee9d610e314.lean/declarations/projectionzkprelation-preserves-target-invariants--594e954fc9bafcb86a331dc7.md) | 272 | `declaration-track:594e954fc9bafcb86a331dc7596805dfb1acac6a953aa3338892b2140c1e1691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
