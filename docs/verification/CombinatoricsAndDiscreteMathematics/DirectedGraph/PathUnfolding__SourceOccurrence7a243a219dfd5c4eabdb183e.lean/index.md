# Verification target: GRWTSK.Combinatorics.DirectedGraph.PathUnfolding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f0343271b35894fccb1a2abfd33a7c2e37a8eaf",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PathUnfolding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f0343271b35894fccb1a2abfd33a7c2e37a8eaf`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PathUnfolding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PathUnfolding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Arborescence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Covering` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/occurrence--a5271191a3b5142aab4c4773.md) | 41 | `declaration-track:a5271191a3b5142aab4c47738ad34b1375120a0fe9eeaf7483bcd8f0c4535a54` |
| 2 | `abbrev` | [Occurrence.endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/occurrence-endpoint--416282fc67ced147c002c7ac.md) | 47 | `declaration-track:416282fc67ced147c002c7ac88cb515c2be97064e0f653228fe86204bccd50cc` |
| 3 | `abbrev` | [Occurrence.path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/occurrence-path--36df64a82403f72918e2ec7a.md) | 50 | `declaration-track:36df64a82403f72918e2ec7a7c1d69a3e3a493b6d02dba3e0ad2a849b9d5b569` |
| 4 | `def` | [ofPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/ofpath--6009692a978bdd1529374578.md) | 55 | `declaration-track:6009692a978bdd1529374578de79a7251bc0677c3c4846c44107b4573a9bbf92` |
| 5 | `theorem` | [ofPath_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/ofpath-path--1a5d0b58a1168161f6b26ef2.md) | 58 | `result-track:1a5d0b58a1168161f6b26ef2815de18272952ce37b300eed60a9ea1703385986` |
| 6 | `def` | [origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/origin--7bf96403eab7dc50885d55ea.md) | 63 | `declaration-track:7bf96403eab7dc50885d55ea922378dacfce8c15443d1a7cc1a7d68c4d114de9` |
| 7 | `def` | [extend](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/extend--e0248f59e3a20e9b1f5903bb.md) | 66 | `declaration-track:e0248f59e3a20e9b1f5903bbcaa1a5011824d9e8f9a0017dc2ab0f1ab260014a` |
| 8 | `abbrev` | [Extension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/extension--8dbb87cc70cd10d74b42243a.md) | 70 | `declaration-track:8dbb87cc70cd10d74b42243a4bb0b439eff196e489c2915a85f843069947866b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/instance--e1656dcf9fed7c3da9ffb64c.md) | 73 | `declaration-track:e1656dcf9fed7c3da9ffb64c5b81be5ef7085b70e21eb4cd87c0b9e72cc822b8` |
| 10 | `def` | [step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/step--4c5e0634c97ea6cab846b860.md) | 76 | `declaration-track:4c5e0634c97ea6cab846b86062e02c272ee626b02085a04b3c91546a1f50646f` |
| 11 | `def` | [projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/projection--329e5ebf854c2f79c38cce81.md) | 80 | `declaration-track:329e5ebf854c2f79c38cce81ddcd980095e7980ae838bfe12a397f50e6644689` |
| 12 | `theorem` | [projection_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/projection-step--1dc22c43d0f2ac9547674c5d.md) | 85 | `result-track:1dc22c43d0f2ac9547674c5dd0bbd2c14bb7b1226d8f7a74c7293c8ea09db019` |
| 13 | `theorem` | [extension_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/extension-length--8b289467f69ef5767d207a3f.md) | 88 | `result-track:8b289467f69ef5767d207a3fa6e5150a5ae21116bf03dd2f582a815486245d23` |
| 14 | `theorem` | [extension_height_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/extension-height-lt--d8543c83f5d0b3196d5d5ed1.md) | 92 | `result-track:d8543c83f5d0b3196d5d5ed1be84cd3d540d4938ff60ebfa0fecbb3fce5fb097` |
| 15 | `theorem` | [unique_incoming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/unique-incoming--18dc7b33856947ae54f4e435.md) | 98 | `result-track:18dc7b33856947ae54f4e4352b5a6e0b41b01e39dd322cf853e8a3c01fbaede4` |
| 16 | `theorem` | [root_or_incoming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/root-or-incoming--5a195abe914da1c6fd5edce0.md) | 113 | `result-track:5a195abe914da1c6fd5edce01b0abafc1bca28cb9f0222092e2137177b9a6344` |
| 17 | `def` | [unfoldingArborescence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/unfoldingarborescence--488d8196f21acf166fb92a8c.md) | 122 | `declaration-track:488d8196f21acf166fb92a8c9625b797ac4770027aaa237e97d0d2cf376dfab7` |
| 18 | `def` | [uniqueRootPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/uniquerootpath--37bad187fa08254409eb0702.md) | 129 | `declaration-track:37bad187fa08254409eb0702fb417b3ba355c0f4dd2d23f46df976d26750f72c` |
| 19 | `def` | [liftHistory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/lifthistory--8b6ff7e469e27f59aa8a34a8.md) | 133 | `declaration-track:8b6ff7e469e27f59aa8a34a8f31e6a5ebaa7495a0450e746c7e12f6f6629ff0c` |
| 20 | `theorem` | [projection_liftHistory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/projection-lifthistory--2419a205bee38db73bfe6001.md) | 138 | `result-track:2419a205bee38db73bfe6001369913854381ecad4a7284ca0a2e662ec9b9357a` |
| 21 | `theorem` | [ofPath_comp_projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/ofpath-comp-projection--346cc51173bcee0e58f17bb0.md) | 148 | `result-track:346cc51173bcee0e58f17bb079a72c3e1f6b0dfcb5b1e65ef889f01322f72a5f` |
| 22 | `def` | [outgoingStarEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/outgoingstarequiv--52e1a2d88f98b0b3be6c6b27.md) | 160 | `declaration-track:52e1a2d88f98b0b3be6c6b276186f435b6aff1d0fca283ec2702c19ce92fb988` |
| 23 | `theorem` | [outgoing_star_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/outgoing-star-bijective--38f4374db3deb2a539793d37.md) | 173 | `result-track:38f4374db3deb2a539793d37d993176e564749e6ef9c969cc8ed394048d06004` |
| 24 | `theorem` | [path_star_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/path-star-bijective--ae1118e69ebd676b7600ffbf.md) | 177 | `result-track:ae1118e69ebd676b7600ffbfe7ace01875e454bc3ae1de5fff686577771c7b15` |
| 25 | `theorem` | [unique_finite_lift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/unique-finite-lift--9bdfc86293e6242368a3dad3.md) | 181 | `result-track:9bdfc86293e6242368a3dad3667a09e0b004185e1062f7bda31af732b416c7f5` |
| 26 | `theorem` | [endpoint_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/endpoint-range-iff--bacc0885e17819e7c72da167.md) | 186 | `result-track:bacc0885e17819e7c72da167658c312bd491c6f37e5c708187a20284d6cf216e` |
| 27 | `theorem` | [endpoint_surjective_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/endpoint-surjective-iff--deb6cee7c51868073d0620b2.md) | 194 | `result-track:deb6cee7c51868073d0620b2515c1c5affd1908d3cd4e62d709bb35e1c5f474f` |
| 28 | `theorem` | [no_arrow_into_origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/no-arrow-into-origin--3314de69bc536dfb846b3fe6.md) | 203 | `result-track:3314de69bc536dfb846b3fe69baa9099d96d96cc847e1d2d80d97eebb55d351f` |
| 29 | `theorem` | [empty_origin_costar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/empty-origin-costar--4bb5ee7fe6e7ef5cc78af081.md) | 207 | `result-track:4bb5ee7fe6e7ef5cc78af0812e57e01e833560aa87cecbf62e7d7decb4f1ba3b` |
| 30 | `theorem` | [origin_costar_not_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/origin-costar-not-surjective--93f2901ddb0299e1ebcf46da.md) | 210 | `result-track:93f2901ddb0299e1ebcf46da65f327b03605c741182788511445483f6091abfb` |
| 31 | `theorem` | [not_covering_of_incoming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/declarations/not-covering-of-incoming--ba7ae106a3be4dfa4ca660a0.md) | 217 | `result-track:ba7ae106a3be4dfa4ca660a09e32fdab1f339a3d68c2464635aba97d12f440e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
