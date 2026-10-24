# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1c70f50e11fb2cfab85ab8fbb90dd020c20fae6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1c70f50e11fb2cfab85ab8fbb90dd020c20fae6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.OfAlternating` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/multi--238f0cb2bf656ea2b3b2f6b5.md) | 51 | `declaration-track:238f0cb2bf656ea2b3b2f6b5dfc3ada595f2b17d3173ff1ec34b733e9a259426` |
| 2 | `lemma` | [ιMulti_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/multi-apply-coe--f72848509ab9eefb1aaf9995.md) | 55 | `result-track:f72848509ab9eefb1aaf999578a05bdfdfd2e577313b3da873d94d4db6ca58cb` |
| 3 | `def` | [ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/multi-family--1be0736072e46b2e7145e2b8.md) | 60 | `declaration-track:1be0736072e46b2e7145e2b882bc2158c83f44a360af544c228ff2b460b4921e` |
| 4 | `lemma` | [ιMulti_family_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/multi-family-apply-coe--da62577f10676492140609d4.md) | 64 | `result-track:da62577f10676492140609d42f780aa2135f1d2013ae5a0cc444cf0b4eb56161` |
| 5 | `lemma` | [ιMulti_span_fixedDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/multi-span-fixeddegree--d284661a27fb49328ac48b5e.md) | 71 | `result-track:d284661a27fb49328ac48b5e823c9318cf5223cdece2611fdf8c8aa080848722` |
| 6 | `lemma` | [ιMulti_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/multi-span--15625b0266cb716df5a9a587.md) | 76 | `result-track:15625b0266cb716df5a9a587213a7477782703eb66ab4ee9881b5c481ac41a7d` |
| 7 | `inductive` | [Rels](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/rels--3eefa664ea6aac598f359ad2.md) | 88 | `declaration-track:3eefa664ea6aac598f359ad2531fab18ee347ad1156d7db1af78dc3979fd2c97` |
| 8 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/relations--1a9154a0db64ed251cb512e2.md) | 95 | `declaration-track:1a9154a0db64ed251cb512e26a3ea90d7ac640a6c89bad6e66d60264a23ababb` |
| 9 | `def` | [relationsSolutionEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/relationssolutionequiv--b7d375de9c9a175df7a77063.md) | 112 | `declaration-track:b7d375de9c9a175df7a77063d970b8fb819c252e24878901df5f368b2e26a1cb` |
| 10 | `def` | [isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/ispresentationcore--fe95cf0407317a9252b81e33.md) | 144 | `declaration-track:fe95cf0407317a9252b81e33674694316688d679d050cb7ec62239c6fe5888eb` |
| 11 | `def` | [presentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/presentation--2a579c14c454dd4f51af08ec.md) | 158 | `declaration-track:2a579c14c454dd4f51af08eca36568fe019dce932d8303f7596699bf163844d0` |
| 12 | `lemma` | [linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/linearmap-ext--4a6fae4a5a5c972962e41042.md) | 166 | `result-track:4a6fae4a5a5c972962e4104266864276eed1e545e3987cd79e0f586dab7d6aa7` |
| 13 | `def` | [alternatingMapLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv--5242577290089cfbf9761868.md) | 172 | `declaration-track:5242577290089cfbf976186815d4764db996129561af5728e34cc0ee2abdac18` |
| 14 | `lemma` | [alternatingMapLinearEquiv_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv-comp-multi--a9a44bc126828bef0110b70a.md) | 180 | `result-track:a9a44bc126828bef0110b70a08bb8ad4a7e1f4e1ad33ebf8173c4e89b544cb2a` |
| 15 | `lemma` | [alternatingMapLinearEquiv_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv-apply-multi--c78871c5a828b413bab9df9e.md) | 188 | `result-track:c78871c5a828b413bab9df9ea090e6706d8fe469ffef974f7a39222035b3e285` |
| 16 | `lemma` | [alternatingMapLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv-symm-apply--0b79a73b34da1fba1e0f0564.md) | 193 | `result-track:0b79a73b34da1fba1e0f0564a8fbddb42ae77981946e5e2ed5371a660b4e4685` |
| 17 | `lemma` | [alternatingMapLinearEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv-multi--b1bc7832b9d9557c0321cca5.md) | 199 | `result-track:b1bc7832b9d9557c0321cca5d6b725f9e45f141fb4e4fe2dec1fd113768d8d79` |
| 18 | `lemma` | [alternatingMapLinearEquiv_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv-comp--2f3276e945ca4b53601d6146.md) | 210 | `result-track:2f3276e945ca4b53601d614655cdd9e127f75a70c5dac853fd311e660299ab24` |
| 19 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map--8082a5f131bdfb70e3fb5867.md) | 220 | `declaration-track:8082a5f131bdfb70e3fb5867dc26d02a96b1212f7853e3550b793b6ef27b4fad` |
| 20 | `lemma` | [alternatingMapLinearEquiv_symm_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/alternatingmaplinearequiv-symm-map--a4fa5a5063bd98bcb6418b5e.md) | 223 | `result-track:a4fa5a5063bd98bcb6418b5e42a5457b26b877348cfc9dab394a06276d210a94` |
| 21 | `theorem` | [map_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map-comp-multi--b500a5d0971fac10b43c07eb.md) | 228 | `result-track:b500a5d0971fac10b43c07ebfd8f945bc36c4a4c43fc20ba99be60a8ef24b02d` |
| 22 | `theorem` | [map_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map-apply-multi--3e2e2612b9934e158e2dde3f.md) | 233 | `result-track:3e2e2612b9934e158e2dde3f33936c68f050246a3ce1c3d7fe825e0aee4a9a05` |
| 23 | `lemma` | [map_comp_ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map-comp-multi-family--0747203783fba93f871af6b8.md) | 239 | `result-track:0747203783fba93f871af6b80677336104e88c33f9febfea99e87eea434af45b` |
| 24 | `lemma` | [map_apply_ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map-apply-multi-family--2dc9263e256c19c712faead5.md) | 246 | `result-track:2dc9263e256c19c712faead5452c76e91963b5420e4cc7bf9417c4701799c47c` |
| 25 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map-id--02e8d5f1974e7d367be79a36.md) | 253 | `result-track:02e8d5f1974e7d367be79a364a34ede94502cadc953d9edd480728160950caa0` |
| 26 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/map-comp--49edb33b7515a7ce1fe443f3.md) | 258 | `result-track:49edb33b7515a7ce1fe443f3f53d331cfbd2764907a511ce3876441edaeb7393` |
| 27 | `def` | [zeroEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/zeroequiv--04a2d1bcde6f895f29ef966c.md) | 267 | `declaration-track:04a2d1bcde6f895f29ef966c21348c1d10915316bdcc1c524c173c7eb4b87281` |
| 28 | `lemma` | [zeroEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/zeroequiv-multi--100ff184a6303468f5bfa641.md) | 276 | `result-track:100ff184a6303468f5bfa6415f4d454163b43a59ac78aa80bb05a6d7126bda13` |
| 29 | `lemma` | [zeroEquiv_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/zeroequiv-naturality--40487b9ec0e478b383aa232a.md) | 280 | `result-track:40487b9ec0e478b383aa232a193795a4a45eb480ed68de29eef93ce710d38d28` |
| 30 | `def` | [oneEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/oneequiv--c37aca2e110d42f08490598c.md) | 286 | `declaration-track:c37aca2e110d42f08490598cc05640a64541e404decf5c553fe377229b1ca26d` |
| 31 | `lemma` | [oneEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/oneequiv-multi--5200969a5254c2faf4670002.md) | 305 | `result-track:5200969a5254c2faf467000265440439a12bed0d25de6bf10af1df46ecc48481` |
| 32 | `lemma` | [oneEquiv_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean/declarations/oneequiv-naturality--2996b9a5fa962cf2f47efa93.md) | 309 | `result-track:2996b9a5fa962cf2f47efa93661f32e854fdd07aa97949b4ba89f028cbec533d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
