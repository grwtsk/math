# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.VertexCover.Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eb89d082e2da05fa13a3a3d3d45e1735feb066e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eb89d082e2da05fa13a3a3d3d45e1735feb066e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ENatToNat` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVertexCover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover--d41f3dd5f56dbc24a26e3c41.md) | 44 | `declaration-track:d41f3dd5f56dbc24a26e3c41b1fc32e2a2daeac8c1977931ef828794d76f1e55` |
| 2 | `theorem` | [isVertexCover_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-empty--027c4a0049866961481ec5bb.md) | 48 | `result-track:027c4a0049866961481ec5bbab0819aedb605389f047fab99aa259b7dc963144` |
| 3 | `theorem` | [isVertexCover_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-univ--d3d15ae150c7529480bdc703.md) | 52 | `result-track:d3d15ae150c7529480bdc7032e8a0d8e38b78b2ead5596d916b026298da3be1a` |
| 4 | `theorem` | [isVertexCover_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-bot--a05c7106d1dfb7731f6c6159.md) | 56 | `result-track:a05c7106d1dfb7731f6c6159d50ebea122e90cc0c9e5af7686d3c474c7a3d172` |
| 5 | `theorem` | [IsVertexCover.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-subset--21f5ece147254922665f2c71.md) | 59 | `result-track:21f5ece147254922665f2c716851cb204a2f5293e42405a03d1d9379b26005cf` |
| 6 | `theorem` | [IsVertexCover.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-mono--32bab19ee15a4a2d440c35f6.md) | 63 | `result-track:32bab19ee15a4a2d440c35f6f3e992072453a493d30cfbc61b1dcba5b554e91f` |
| 7 | `theorem` | [isIndepSet_compl_iff_isVertexCover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isindepset-compl-iff-isvertexcover--04f497acc5e1febfb933b263.md) | 69 | `result-track:04f497acc5e1febfb933b2631db7a4ae2a02cc59ccb294057b12797ddb7a4f88` |
| 8 | `theorem` | [isVertexCover_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-compl--efe31a1188cc72bf96298b7c.md) | 75 | `result-track:efe31a1188cc72bf96298b7c0a33867484cb051131ef90452829cf09c2bf28e7` |
| 9 | `theorem` | [IsVertexCover.preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-preimage--f500f15449b938d5692cee4b.md) | 78 | `result-track:f500f15449b938d5692cee4b23e1c4384e16abfe42db560f9bcade6753d6382e` |
| 10 | `theorem` | [isVertexCover_preimage_iso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-preimage-iso--dd852616543c638ca42e1fe7.md) | 84 | `result-track:dd852616543c638ca42e1fe72d977d7b67fc9f5e598cfb680996892bc2b0f58b` |
| 11 | `theorem` | [isVertexCover_image_iso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-image-iso--3b2f2f5f912ce0727bc72ce9.md) | 92 | `result-track:3b2f2f5f912ce0727bc72ce95f92d1880d0ac5164471afa66730036bb486ce71` |
| 12 | `def` | [vertexCoverNum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum--6a5b6a246a1a00a24bf74fa2.md) | 101 | `declaration-track:6a5b6a246a1a00a24bf74fa25f8d3c5b1b0f2a25c7c7f338af757471b3479a1d` |
| 13 | `theorem` | [vertexCoverNum_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-le-iff--7f6dcb6904a7220676cd49e2.md) | 104 | `result-track:7f6dcb6904a7220676cd49e2fd29764666628bfd8174f587692b3414fe72c1b9` |
| 14 | `theorem` | [IsVertexCover.vertexCoverNum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/isvertexcover-vertexcovernum-le--ef877516881ee38f3804e643.md) | 108 | `result-track:ef877516881ee38f3804e64331c8b80245e5100b280f715f17b0d8f1fb60ea37` |
| 15 | `theorem` | [vertexCoverNum_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-exists--6b3be8aa6c269e392abe4541.md) | 112 | `result-track:6b3be8aa6c269e392abe4541eedb00c339d26b91948b148b428dfd7934fd097d` |
| 16 | `theorem` | [exists_of_le_vertexCoverNum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/exists-of-le-vertexcovernum--6cf963d1d0def7125864301b.md) | 118 | `result-track:6cf963d1d0def7125864301b049a03dc68153101bc0a640edf34e9b9febae515` |
| 17 | `theorem` | [vertexCoverNum_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-bot--fa3eb6961aa59852c66ad27b.md) | 126 | `result-track:fa3eb6961aa59852c66ad27bd5eadfe8146ca24884520b72c6bb9dd126257fb7` |
| 18 | `theorem` | [vertexCoverNum_of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-of-subsingleton--fcf27d234a02a0f48ac8830f.md) | 130 | `result-track:fcf27d234a02a0f48ac8830ff079dc7586248eace58e46549c753beb1cd62a1f` |
| 19 | `theorem` | [vertexCoverNum_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-eq-zero--9bde9f2fd41642d2b7299aa3.md) | 134 | `result-track:9bde9f2fd41642d2b7299aa398923bc25ab6d4f1c05880902034fa1a09326913` |
| 20 | `theorem` | [vertexCoverNum_le_card_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-le-card-sub-one--880c8b8b407053e99c969527.md) | 138 | `result-track:880c8b8b407053e99c9695271291207f9aed5c9a412e3af024c0f898cb4c10e6` |
| 21 | `theorem` | [vertexCoverNum_ne_top_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-ne-top-of-finite--fb3ceeb09de4fbe86fc692f9.md) | 147 | `result-track:fb3ceeb09de4fbe86fc692f9b93d619f4c78e1a335dcb73d868aa4b2b1f956b5` |
| 22 | `theorem` | [vertexCoverNum_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-lt-card--22be91e9ae316593aab064ce.md) | 150 | `result-track:22be91e9ae316593aab064ce3da08b44bd5a71fc0df40a66f8288b8960215f48` |
| 23 | `theorem` | [vertexCoverNum_le_encard_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-le-encard-edgeset--dc293f2e887448cfe1e396f2.md) | 156 | `result-track:dc293f2e887448cfe1e396f2e706714d986b7582a85abfa32fc3f4344441901a` |
| 24 | `theorem` | [vertexCoverNum_ne_top_of_finite_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-ne-top-of-finite-edgeset--0108d9d1d4499870026090c1.md) | 166 | `result-track:0108d9d1d4499870026090c1c1ef19ecf93e08851af41a3772d3d5501806cf32` |
| 25 | `theorem` | [vertexCoverNum_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-top--1a074c8abe317dcae349e4be.md) | 170 | `result-track:1a074c8abe317dcae349e4be03f6cd73d6fc837b31c9970a8bb953105e7b1e04` |
| 26 | `theorem` | [IsContained.vertexCoverNum_le_vertexCoverNum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/iscontained-vertexcovernum-le-vertexcovernum--4b473924744e6d070246e182.md) | 190 | `result-track:4b473924744e6d070246e18216cf6caee6b4b8f177f8008879e9dc0517d4e37b` |
| 27 | `theorem` | [vertexCoverNum_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-mono--d358b8d8fb166e42d8e97396.md) | 202 | `result-track:d358b8d8fb166e42d8e97396b4db8d4830d97a57148d48f4777e22ae205afa95` |
| 28 | `theorem` | [vertexCoverNum_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean/declarations/vertexcovernum-congr--43e15dd7579c575a31978240.md) | 205 | `result-track:43e15dd7579c575a31978240558ce4409eaf13245e4cf19218faa28bf20cf01d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
