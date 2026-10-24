# Verification target: GRWTSK.Geometry.ConvexGeometry.Basic.Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7176ec68d7014b7782eb5d97dcacdfac8a6a0cac",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7176ec68d7014b7782eb5d97dcacdfac8a6a0cac`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimplicialComplex](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/simplicialcomplex--d810cf412b7a858e703e26cb.md) | 64 | `declaration-track:d810cf412b7a858e703e26cb58a31e6e99218b3d677acdd5af6d80e6457f81e8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/instance--edd207494752b49ab94655a9.md) | 85 | `declaration-track:edd207494752b49ab94655a9334786e993f956b80abc42496ae2b25c275605a9` |
| 3 | `def` | [space](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/space--b1d055f49fd0e42a73a95dae.md) | 89 | `declaration-track:b1d055f49fd0e42a73a95dae9aceda4ce85bd56e4c5de061d1a27976456d0fb5` |
| 4 | `theorem` | [mem_space_iff](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/mem-space-iff--a3640e7c6b040792ff8a8360.md) | 93 | `result-track:a3640e7c6b040792ff8a83604f55f348eb33ad9d76edec4553476daaf9b294fa` |
| 5 | `theorem` | [convexHull_subset_space](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/convexhull-subset-space--7401dc3dcf5694b8be4fe276.md) | 97 | `result-track:7401dc3dcf5694b8be4fe27630f2ab236829ad6b74ba345cbb3c9049281ffcd1` |
| 6 | `theorem` | [subset_space](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/subset-space--94e6d06fc8afc6d216c4ee4a.md) | 101 | `result-track:94e6d06fc8afc6d216c4ee4a665625d399cdce4d8280eee0b915c129f5d8fe0a` |
| 7 | `theorem` | [convexHull_inter_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/convexhull-inter-convexhull--f0146e31c242cb802fb4a4fa.md) | 104 | `result-track:f0146e31c242cb802fb4a4fa78fc1156dc9691264ea47d5033939f7149abf386` |
| 8 | `theorem` | [disjoint_or_exists_inter_eq_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/disjoint-or-exists-inter-eq-convexhull--27eb436d40852f0f3912099b.md) | 113 | `result-track:27eb436d40852f0f3912099b865002d0fb581b1c5094a7bc6c5a0b927fc5baaf` |
| 9 | `def` | [ofErase](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/oferase--9bca7dcdfecb758bf699225c.md) | 126 | `declaration-track:9bca7dcdfecb758bf699225c5edf28189c279a78564ad334dfd79d2b3e653a6b` |
| 10 | `def` | [ofSubcomplex](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/ofsubcomplex--5bbb0bdbcbeeb52d3deac2fc.md) | 139 | `declaration-track:5bbb0bdbcbeeb52d3deac2fcc163471656f8ba58a20557826a945b83850270c5` |
| 11 | `def` | [vertices](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/vertices--7d4c336340b82b26fff32779.md) | 151 | `declaration-track:7d4c336340b82b26fff327792a072d96933b5b209e20880d56007650a2eb9b43` |
| 12 | `theorem` | [mem_vertices](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/mem-vertices--528d58cbfaa706afa9b1f210.md) | 154 | `result-track:528d58cbfaa706afa9b1f21042d9a084f12ebd5077df5a7dd7c750f2fea3c256` |
| 13 | `theorem` | [vertices_eq](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/vertices-eq--c25f420b934a364430760533.md) | 156 | `result-track:c25f420b934a364430760533173094bfbe882f180af3a57cdfebd2006c1fec70` |
| 14 | `theorem` | [vertices_subset_space](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/vertices-subset-space--9e717008be5289fa8f52e115.md) | 162 | `result-track:9e717008be5289fa8f52e115d04fe205c3f2eae0a834034ad8ce039c9b9bcbfb` |
| 15 | `theorem` | [vertex_mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/vertex-mem-convexhull-iff--79d82b66ee45007af92ee84d.md) | 165 | `result-track:79d82b66ee45007af92ee84dfabaffa2f0d725b28086be361fe3e8494b0ed540` |
| 16 | `theorem` | [face_subset_face_iff](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/face-subset-face-iff--f24116413e864b191e5d146f.md) | 175 | `result-track:f24116413e864b191e5d146f5378054b022ca037def940766d733e494878f062` |
| 17 | `def` | [facets](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/facets--78b4f174ac3701078f4268f5.md) | 187 | `declaration-track:78b4f174ac3701078f4268f5ddd9d11107ac54de8fce1a4c0a481940a2a4be71` |
| 18 | `theorem` | [mem_facets](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/mem-facets--129d65d8ad3880276bd8addb.md) | 190 | `result-track:129d65d8ad3880276bd8addb5c56d09e78e80f981b1727f2c11b0f33f1f10595` |
| 19 | `theorem` | [facets_subset](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/facets-subset--5204730e1aa4f2ca7adf8e2a.md) | 193 | `result-track:5204730e1aa4f2ca7adf8e2aad441e02b4421c37b21603bb5303bc0aff414e11` |
| 20 | `theorem` | [not_facet_iff_subface](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/not-facet-iff-subface--afcceefb93ce6a108071273c.md) | 195 | `result-track:afcceefb93ce6a108071273c8d2588e5be6cca8fec0932efa253c541d0aac2ca` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/instance--f718068624767ff75aad2c41.md) | 216 | `declaration-track:f718068624767ff75aad2c41dba49e24bf8ef82377316b761a34325138476f4f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/instance--5c881a17d79768f7b8fb8500.md) | 224 | `declaration-track:5c881a17d79768f7b8fb850069f29eaf20b8f052df5454c56252e9e5537a351a` |
| 23 | `instance` | [hasBot](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/hasbot--486372e3fe20bb12f0192ee9.md) | 231 | `declaration-track:486372e3fe20bb12f0192ee932d2069c1cb366e9fa34f7dc7f4e6d9ee3f32db2` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/instance--f6cdce1b5facf25443912f69.md) | 238 | `declaration-track:f6cdce1b5facf25443912f69f845dd51d295cdefe0c3af738f9a49b38cc885ac` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/instance--cd0713a2c36cd4e35b101d25.md) | 241 | `declaration-track:cd0713a2c36cd4e35b101d251c33dc506a662a749591cf901f89fa105ef7ae49` |
| 26 | `theorem` | [faces_bot](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/faces-bot--5fdc1413ceeb4df72f75164c.md) | 246 | `result-track:5fdc1413ceeb4df72f75164c7efdc04a22db90aba2abecaddbbd4d34f36b87b8` |
| 27 | `theorem` | [space_bot](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/space-bot--3204b8d4b7a3dfe665a83b3c.md) | 248 | `result-track:3204b8d4b7a3dfe665a83b3c943ebde8eb7a4970e2eaca3a2fb9198648ed5f98` |
| 28 | `theorem` | [facets_bot](../../../../../mathematics/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/declarations/facets-bot--564f0e8119714e103596124f.md) | 251 | `result-track:564f0e8119714e103596124f70b7f055e8b0593d9c3c3290266ac3808f6e723c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
