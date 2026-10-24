# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Tripartite.Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9995c77567f208759a87bce53bd7417b2569062",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9995c77567f208759a87bce53bd7417b2569062`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Triangle.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/rel--86bd5fe77d1f568ed2e37a4e.md) | 49 | `declaration-track:86bd5fe77d1f568ed2e37a4e8fa16f139e69e9605f2cd56e50c2ca6d86860b03` |
| 2 | `lemma` | [rel_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/rel-irrefl--808ec874e69a520bd78b2b3c.md) | 59 | `result-track:808ec874e69a520bd78b2b3c137ba57e3b30158ed31a74c86c3b7ec535d3f966` |
| 3 | `lemma` | [rel_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/rel-symm--26c4443e1521a3ecb6b6639d.md) | 60 | `result-track:26c4443e1521a3ecb6b6639d507967c8c1d1211e85f4b3592297a53a5b4c9447` |
| 4 | `def` | [graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/graph--d2dbf904cdaaa824451e6326.md) | 64 | `declaration-track:d2dbf904cdaaa824451e63267b5bf673333a0fe7f977fca4dceeb96114c9f73f` |
| 5 | `lemma` | [not_in₀₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/not-in--9f4217bdc71b187e9e4ff9ca.md) | 68 | `result-track:9f4217bdc71b187e9e4ff9ca0beb51f567bfae4bc1a83dc9d14a1f4215a229d9` |
| 6 | `lemma` | [not_in₁₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/not-in--411c7110dbb641ba30111477.md) | 69 | `result-track:411c7110dbb641ba30111477cef0653b2b208281ab27e537a1e05e6c48ae8f61` |
| 7 | `lemma` | [not_in₂₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/not-in--cb641693e069d2cf93a3dcc6.md) | 70 | `result-track:cb641693e069d2cf93a3dcc6a85b87dc07259d1a1b35ffabeaf7c62498f722ff` |
| 8 | `lemma` | [in₀₁_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--e43b0b7c766bfc46527a8933.md) | 72 | `result-track:e43b0b7c766bfc46527a8933db9985d87718c7efa595ad6f55e99beb9b316507` |
| 9 | `lemma` | [in₁₀_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--3ac37529d4e4ac8a1edb82a0.md) | 74 | `result-track:3ac37529d4e4ac8a1edb82a072047238ec1c8b48ba5383b0e6a40cce3a3232c8` |
| 10 | `lemma` | [in₀₂_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--9df8b31708b1bd3ac9a0b1ac.md) | 76 | `result-track:9df8b31708b1bd3ac9a0b1ac9190641754d676aa3470880ed9cd42c5bc991b8c` |
| 11 | `lemma` | [in₂₀_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--47797ce5dbf3a36f09849c54.md) | 78 | `result-track:47797ce5dbf3a36f09849c541d158697e93e65f2263068febda9b953d0038b77` |
| 12 | `lemma` | [in₁₂_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--ec2cd8b17aa02d03ad6c7279.md) | 80 | `result-track:ec2cd8b17aa02d03ad6c72795c261e3912a4bbb8b8b999f90a5a72e59e09d3e5` |
| 13 | `lemma` | [in₂₁_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--bd6355a77768ef953b673183.md) | 82 | `result-track:bd6355a77768ef953b6731835afb42f26bbcb9f55bd19be1f24a2486fbb67205` |
| 14 | `lemma` | [in₀₁_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--8704595a79ea9a53f4024a02.md) | 85 | `result-track:8704595a79ea9a53f4024a02ad2eafbf4374f6c0ac07b8ebec0517ea22f80a99` |
| 15 | `lemma` | [in₁₀_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--f6ace85446307b5475c2cbbc.md) | 89 | `result-track:f6ace85446307b5475c2cbbcd86561fd22b85c0070041c477c8d9fe77b1570e5` |
| 16 | `lemma` | [in₀₂_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--5ce6c4e0587a82f465599935.md) | 93 | `result-track:5ce6c4e0587a82f465599935331803251c99d4aeeb6b0a72f755da92988b61f5` |
| 17 | `lemma` | [in₂₀_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--6f5b7025914a61d424583110.md) | 97 | `result-track:6f5b7025914a61d424583110c22a5c61a2598f5357c8fcec3b742a37ce868fbb` |
| 18 | `lemma` | [in₁₂_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--857b30a5fdfe4f818b64338e.md) | 101 | `result-track:857b30a5fdfe4f818b64338eda25b2c3eaf995e09fa9d10818d6c550bf982275` |
| 19 | `lemma` | [in₂₁_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/in-iff--e270bf34f7cb2194370d15f6.md) | 105 | `result-track:e270bf34f7cb2194370d15f684c03880625b0d7a201e312ded880c6b35195e3a` |
| 20 | `class` | [ExplicitDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/explicitdisjoint--a1b4646388ce5047510c32c2.md) | 115 | `declaration-track:a1b4646388ce5047510c32c2861251ae3a2c7f85ea5b846b2430bac9a6529c83` |
| 21 | `class` | [NoAccidental](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/noaccidental--dbe8a364e1fd5b6efd6503b9.md) | 125 | `declaration-track:dbe8a364e1fd5b6efd6503b961f2ade829d4b53a0e25432cb7a48a2318d1eb0a` |
| 22 | `instance` | [graph.instDecidableRelAdj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/graph-instdecidablereladj--50fdb636a634578976d05fb5.md) | 132 | `declaration-track:50fdb636a634578976d05fb554308593825633e617d15ac01cc722880cab3cc9` |
| 23 | `lemma` | [graph_triple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/graph-triple--3e3512ac5ee402060077b10b.md) | 145 | `result-track:3e3512ac5ee402060077b10ba97d9240a8d39291ca231a78cdbab1e0616a4119` |
| 24 | `def` | [toTriangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/totriangle--1442f40e99fc35880e20e6b7.md) | 154 | `declaration-track:1442f40e99fc35880e20e6b752bbe413019b948a561ad2fd243e409b51b867cc` |
| 25 | `lemma` | [toTriangle_is3Clique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/totriangle-is3clique--b64c9be050707afda981d0fa.md) | 160 | `result-track:b64c9be050707afda981d0fad489ff1f4220915a8fed7dec4ba0c4494e1bfe8d` |
| 26 | `lemma` | [exists_mem_toTriangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/exists-mem-totriangle--173f88319f7de0ea9af7ca75.md) | 164 | `result-track:173f88319f7de0ea9af7ca75dac1f7fd20687c02bf656132e22aa0c7819e3cd2` |
| 27 | `lemma` | [is3Clique_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/is3clique-iff--d03a3b98c7e545d4c7487574.md) | 167 | `result-track:d03a3b98c7e545d4c748757418e2d4684b67a29abba2fec9dd570474655cc5dc` |
| 28 | `lemma` | [toTriangle_surjOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/totriangle-surjon--56c061ba5d1b6d63548e3f2c.md) | 181 | `result-track:56c061ba5d1b6d63548e3f2c95241d833eeafb6a0fde52a99d66d8ec28ac0283` |
| 29 | `lemma` | [map_toTriangle_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/map-totriangle-disjoint--e2c62537ff98e8126404a0f9.md) | 186 | `result-track:e2c62537ff98e8126404a0f98c329d2075da7a727da8c7b31c3ccb2717442607` |
| 30 | `lemma` | [cliqueSet_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/cliqueset-eq-image--4bd94e2b5fd44c83586ca111.md) | 207 | `result-track:4bd94e2b5fd44c83586ca1113884dab69803de012074b9b01f72f270d840bd7e` |
| 31 | `lemma` | [cliqueFinset_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/cliquefinset-eq-image--433dfa5c3f5253a370cba637.md) | 213 | `result-track:433dfa5c3f5253a370cba6377a803f817f357f5015e4d23e23be0ef59ddb59f7` |
| 32 | `lemma` | [cliqueFinset_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/cliquefinset-eq-map--3f46bf1c856efc87db7d2799.md) | 216 | `result-track:3f46bf1c856efc87db7d279939dd5ff617d9e901e75697fc7188dea0834bf126` |
| 33 | `lemma` | [card_triangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/card-triangles--fe258c7739100d4bcf44b064.md) | 219 | `result-track:fe258c7739100d4bcf44b0649d8012a103e27b0c3bc42d685d42b515a8e1642c` |
| 34 | `lemma` | [farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/farfromtrianglefree--52194de44bc17d86dffbc620.md) | 222 | `result-track:52194de44bc17d86dffbc620225e7aa19d31450d02c86a54745b8b7aa26651c2` |
| 35 | `lemma` | [locallyLinear](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/declarations/locallylinear--3d15d93d3d56eff4f462913d.md) | 234 | `result-track:3d15d93d3d56eff4f462913d8d742cc56faacf018f00792175e197bd3350846f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
