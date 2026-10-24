# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Small.Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2910c2ae389da3516752425d9d3369913895f2b9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2910c2ae389da3516752425d9d3369913895f2b9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean.json)

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
| 1 | `lemma` | [map_functorPullback_mem_coverings](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/map-functorpullback-mem-coverings--15bdae451b15ca210be552cd.md) | 47 | `result-track:15bdae451b15ca210be552cdd22c3a35ddb4f8b83270218cc2710e717a5273a2` |
| 2 | `def` | [Cover.toPresieveOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/cover-topresieveover--42b88c4e21d892967ccd1896.md) | 59 | `declaration-track:42b88c4e21d892967ccd1896d56e8a5b7807e651593f6ef479c4ae52525d2c03` |
| 3 | `def` | [Cover.toPresieveOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/cover-topresieveoverprop--ec3ba0623a634cdc514e7cd3.md) | 64 | `declaration-track:ec3ba0623a634cdc514e7cd3fd9fdf0f6a53639010fea1202fdfb5ab2d874b99` |
| 4 | `lemma` | [Cover.overEquiv_generate_toPresieveOver_eq_ofArrows](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/cover-overequiv-generate-topresieveover-eq-ofarrows--9393edb74ab989b29b2b08cb.md) | 69 | `result-track:9393edb74ab989b29b2b08cbc05867335621e130f2eaef501157c46c3968ced5` |
| 5 | `lemma` | [Cover.toPresieveOver_le_arrows_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/cover-topresieveover-le-arrows-iff--10190ffc6243eca93fb28d8f.md) | 84 | `result-track:10190ffc6243eca93fb28d8fea8f6e3c67a818ed0d8e6b5a7364250b5f2ff513` |
| 6 | `abbrev` | [overPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/overpretopology--3bf86f7ce5fb848b0e6993fd.md) | 97 | `declaration-track:3bf86f7ce5fb848b0e6993fd41a79a1b78f57924a0325a467951ed0f0811de8b` |
| 7 | `abbrev` | [overGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/overgrothendiecktopology--8a101612214d8cc699af2bab.md) | 103 | `declaration-track:8a101612214d8cc699af2bab15dd5437cc1fb8022fc0bda131e001649f7e4b84` |
| 8 | `lemma` | [overGrothendieckTopology_eq_toGrothendieck_overPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/overgrothendiecktopology-eq-togrothendieck-overpretopology--8c49a0354778bc12bb885070.md) | 106 | `result-track:8c49a0354778bc12bb88507046d0635cc0e9b073188133e5ca7333820bc1c459` |
| 9 | `lemma` | [mem_overGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/mem-overgrothendiecktopology--a57e78602d34427f7dd8e6c8.md) | 113 | `result-track:a57e78602d34427f7dd8e6c8866825ff0d22c2ab63fd744096023495ace5dc84` |
| 10 | `lemma` | [locallyCoverDense_of_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/locallycoverdense-of-le--6995d17f7d9066e72a5813f1.md) | 125 | `result-track:6995d17f7d9066e72a5813f16c50101b94fa238a51907dc4ecaadb5efd48c46b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/instance--076e0c6b5c7647bdcdaaac2a.md) | 132 | `declaration-track:076e0c6b5c7647bdcdaaac2a8ea789c9fe4891a074dbb80c9bd67fdd294ef4f9` |
| 12 | `abbrev` | [smallGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/smallgrothendiecktopology--7133d4abebc36982a4a48358.md) | 138 | `declaration-track:7133d4abebc36982a4a483580fef74c99127086ebd6087ad41ac59bbf54d0212` |
| 13 | `abbrev` | [smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/smallpretopology--b5b20dbcdacc4683ea59c9df.md) | 150 | `declaration-track:b5b20dbcdacc4683ea59c9dfd9f57df3816a4b95a7b964c71bfcc245aeaadcf7` |
| 14 | `lemma` | [smallGrothendieckTopology_eq_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/smallgrothendiecktopology-eq-togrothendieck-smallpretopology--4b36a49781c2419a872aa5e7.md) | 154 | `result-track:4b36a49781c2419a872aa5e7e42d0cb0cd0cc9cfa1e09bdb28e54e74a18bfbf4` |
| 15 | `lemma` | [mem_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/mem-togrothendieck-smallpretopology--1694fec86ddd7f47dc77de48.md) | 168 | `result-track:1694fec86ddd7f47dc77de48a6d421714a35070c3b9b0fa01155cffd4db91b7b` |
| 16 | `lemma` | [mem_smallGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/declarations/mem-smallgrothendiecktopology--001762a09c4079513ecb103a.md) | 179 | `result-track:001762a09c4079513ecb103a5e9179fa7204722e333b29c899a63f7e7046df3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
