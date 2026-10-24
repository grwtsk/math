# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9971815c9a8e9d42288036f33c1245c27a77467",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9971815c9a8e9d42288036f33c1245c27a77467`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean.json)

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
| 1 | `def` | [IsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isortho--7e488a93ac6b40719ddcd791.md) | 63 | `declaration-track:7e488a93ac6b40719ddcd79154b9a73a01874649849c7c335a7323f2c7401b44` |
| 2 | `theorem` | [isOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isortho-def--369c0339e7195c81b59858ff.md) | 67 | `result-track:369c0339e7195c81b59858ffd70ccb5cb988ac53eaf713552d875acec07b819a` |
| 3 | `theorem` | [isOrtho_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isortho-zero-left--411ce70ffc32f4cc9e67861d.md) | 71 | `result-track:411ce70ffc32f4cc9e67861d6a24b8fc3e0f4aff621e3349b9dff980f738f8ac` |
| 4 | `theorem` | [isOrtho_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isortho-zero-right--d1acb359716868d60c3ebb99.md) | 74 | `result-track:d1acb359716868d60c3ebb9995352ae787a40d0ce116a81cc00f8d7562a77731` |
| 5 | `theorem` | [ne_zero_of_not_isOrtho_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/ne-zero-of-not-isortho-self--edd02df6958300d28c891b31.md) | 77 | `result-track:edd02df6958300d28c891b316e96f662b34fa8c9acc86a9e3cea637f04524215` |
| 6 | `theorem` | [IsRefl.eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isrefl-eq-iff--35f340e0e9b0f450f93ed48d.md) | 80 | `result-track:35f340e0e9b0f450f93ed48d03a0b0200327485e030f99175baec72caee94c1b` |
| 7 | `theorem` | [IsAlt.eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isalt-eq-iff--55cce4231c0c27288e6d8cea.md) | 86 | `result-track:55cce4231c0c27288e6d8cea7c4a1289c9668921a6b4a038bbb68fa7b7c1bdef` |
| 8 | `theorem` | [IsSymm.eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/issymm-eq-iff--ea14e4d5854fd4034d08ac24.md) | 92 | `result-track:ea14e4d5854fd4034d08ac24b82882de4505c4714506b1425640361eb10dd31d` |
| 9 | `def` | [iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iisortho--af32c0318f0c3e7b60ba7702.md) | 100 | `declaration-track:af32c0318f0c3e7b60ba7702fac5d17cfad7f09903c11d2ee3c49d098ce05319` |
| 10 | `theorem` | [iIsOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iisortho-def--f57dddec4e0e81b417eb6dba.md) | 103 | `result-track:f57dddec4e0e81b417eb6dba5a5365587908155a1d6b311a4a0a66beaa6700ae` |
| 11 | `theorem` | [isOrtho_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isortho-smul-left--4b32587d1381bffed3699199.md) | 113 | `result-track:4b32587d1381bffed36991999e9d2608d15bcf23665c75b86ab6e75db9a50205` |
| 12 | `theorem` | [isOrtho_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/isortho-smul-right--0c44b70511900a0af0d33792.md) | 121 | `result-track:0c44b70511900a0af0d3379247875e146c66a1bb3b542257dfda783e1512e91d` |
| 13 | `theorem` | [linearIndependent_of_iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/linearindependent-of-iisortho--d350327d4bee3679b654d40a.md) | 130 | `result-track:d350327d4bee3679b654d40adfb8ced8c913da9bf822d5f85c68525925f83498` |
| 14 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal--83798c612ec2172826adb979.md) | 153 | `declaration-track:83798c612ec2172826adb979fb20fdee8efb87c5b5a222acaedab9c0b25f06ff` |
| 15 | `theorem` | [mem_orthogonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/mem-orthogonal-iff--7a8c3378002256c856de0430.md) | 158 | `result-track:7a8c3378002256c856de0430dbd80f1e819330dacc6cac24919c2c25f1a73633` |
| 16 | `lemma` | [orthogonal_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-bot--1ea655a89fd1488b920aeaf8.md) | 162 | `result-track:1ea655a89fd1488b920aeaf88f2fabce7495a6e58d95c3084d58761045180817` |
| 17 | `theorem` | [orthogonal_le](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-le--61e58e4d8e857b40fdf3517b.md) | 164 | `result-track:61e58e4d8e857b40fdf3517b522e07dc89971538c529c1e92d022fea95a9d6cf` |
| 18 | `theorem` | [le_orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/le-orthogonal-orthogonal--0fd9968277959d32551aaa2f.md) | 166 | `result-track:0fd9968277959d32551aaa2fafce49301a2aeb34935e12474008e9d00779a440` |
| 19 | `lemma` | [orthogonal_top_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-top-eq-ker--af74576f337cfc22f2e1e400.md) | 169 | `result-track:af74576f337cfc22f2e1e40097b8277c2ed8a3b4f149672ee3fdf3a4fef7e9ea` |
| 20 | `lemma` | [orthogonal_top_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-top-eq-bot--3cf669b071837046dee10d16.md) | 173 | `result-track:3cf669b071837046dee10d1663c558b19de10478d8503d41aab4cd8eae4f0356` |
| 21 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/span-singleton-inf-orthogonal-eq-bot--91730fda4632dbf95f8a3f5f.md) | 178 | `result-track:91730fda4632dbf95f8a3f5fda6658e229d6aad6595ebd7073e7f57e9d22778d` |
| 22 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-span-singleton-eq-tolin-ker--52288b1062547f01a35a0dcc.md) | 183 | `result-track:52288b1062547f01a35a0dccf73b5359c27bfc0ad6abe496dcbd6cd5d11927f4` |
| 23 | `theorem` | [span_singleton_sup_orthogonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/span-singleton-sup-orthogonal-eq-top--7f1b91a00dba1cc395c83bfc.md) | 187 | `result-track:7f1b91a00dba1cc395c83bfc2733f9fad090d3cb040699dbbb89b262b502d5da` |
| 24 | `theorem` | [isCompl_span_singleton_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iscompl-span-singleton-orthogonal--86b72da801336813dc382f25.md) | 193 | `result-track:86b72da801336813dc382f25229129f15dafb78345ca5750c1d05193f2b9aec9` |
| 25 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/nondegenerate-restrict-of-disjoint-orthogonal--9645720548090fd54ba4853e.md) | 201 | `result-track:9645720548090fd54ba4853e889c9d84fdc2d8d28577fd2fd00405a754990a40` |
| 26 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iisortho-not-isortho-basis-self-of-nondegenerate--2ab4520ea1d986bdeb7acdab.md) | 207 | `result-track:2ab4520ea1d986bdeb7acdab46c2350a0f9fb0be0adbba320bfd0876f5c63733` |
| 27 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iisortho-nondegenerate-iff-not-isortho-basis-self--6980960f5bb2053848b2c391.md) | 214 | `result-track:6980960f5bb2053848b2c3912d49698ae3a4e6cdaeb27e208424e8d00ee98a9a` |
| 28 | `theorem` | [toLin_restrict_ker_eq_inf_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/tolin-restrict-ker-eq-inf-ker--b1c426d9c8e422f41e31ed93.md) | 221 | `result-track:b1c426d9c8e422f41e31ed9339368336faafab5ddaa76f0efe5094bf9ee699e5` |
| 29 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/tolin-restrict-ker-eq-inf-orthogonal--9c101e8911e2201b6795234e.md) | 231 | `result-track:9c101e8911e2201b6795234ee34ecdf521578fe6880f79510d0ccb8901cfd720` |
| 30 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal--a358a342ccaf1a28e96b1f4f.md) | 236 | `result-track:a358a342ccaf1a28e96b1f4f124a579685159f432b3563091e278e50110f17f3` |
| 31 | `lemma` | [ker_restrict_eq_of_codisjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/ker-restrict-eq-of-codisjoint--be8084c507117c5ed918ddfd.md) | 247 | `result-track:be8084c507117c5ed918ddfd8f9e50fb79ffb758b0eecd59fcdd3f9d0ce55bf5` |
| 32 | `lemma` | [inf_orthogonal_self_le_ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/inf-orthogonal-self-le-ker-restrict--f7a6d32e604c07884a76b181.md) | 259 | `result-track:f7a6d32e604c07884a76b181e334b6fbb244ad05a6dc0ea845893f235dceb01f` |
| 33 | `theorem` | [finrank_add_finrank_orthogonal'](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/finrank-add-finrank-orthogonal--9a8004c6ea9de325940744b1.md) | 274 | `result-track:9a8004c6ea9de325940744b18cf867a959a7cf9c92b30ad7e40cffa319ef810f` |
| 34 | `theorem` | [finrank_add_finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/finrank-add-finrank-orthogonal--e650b68bf5e4d1a420fe7def.md) | 285 | `result-track:e650b68bf5e4d1a420fe7defd12c1a05334c365fc27a101080c4a101476c4b8c` |
| 35 | `lemma` | [finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/finrank-orthogonal--d14ae41c3d307f63131ad225.md) | 291 | `result-track:d14ae41c3d307f63131ad2252a897d481c193d37530b8d794fb3131cdb014744` |
| 36 | `lemma` | [orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-orthogonal--1dea5a0c4c51ea8f102f2323.md) | 297 | `result-track:1dea5a0c4c51ea8f102f232310a838c448c949975ad2a7e62afa2afc212886f7` |
| 37 | `lemma` | [isCompl_orthogonal_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iscompl-orthogonal-iff-disjoint--eb2bdc0dedfda21b927f7108.md) | 305 | `result-track:eb2bdc0dedfda21b927f71085298f67f159fc57cce0e1eb98615b5f98be1f9a5` |
| 38 | `theorem` | [isCompl_orthogonal_of_restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/iscompl-orthogonal-of-restrict-nondegenerate--e410daca441ce1d2c61d3b41.md) | 318 | `result-track:e410daca441ce1d2c61d3b41f1607f423225c5c21cbe8f37d7b75a4b70f3877e` |
| 39 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/restrict-nondegenerate-iff-iscompl-orthogonal--7965cafc861fd3fcfa6417ae.md) | 336 | `result-track:7965cafc861fd3fcfa6417aef686418f767848a8dbbc2ab54979113b56ff0a23` |
| 40 | `lemma` | [orthogonal_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-eq-top-iff--087f3dd94c5b96be255cf59e.md) | 341 | `result-track:087f3dd94c5b96be255cf59e03d0b05945befaa5d8caf20e803fc7fd8bf2e2b4` |
| 41 | `lemma` | [eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/eq-top-of-restrict-nondegenerate-of-orthogonal-eq-bot--1588053970834f616143f935.md) | 347 | `result-track:1588053970834f616143f935c7ccd1d6e7119ba8e24732319b2396f96bcab8fb` |
| 42 | `lemma` | [orthogonal_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/orthogonal-eq-bot-iff--e0957c857a95cec88f45c486.md) | 353 | `result-track:e0957c857a95cec88f45c4864933da0c23609308963cfd9a378421d5aa180b4c` |
| 43 | `theorem` | [restrict_nondegenerate_orthogonal_spanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantdee4542fabea8d5715def8ea8e2fca6654d4a81b943c0e03a7c724538f14b37e.lean/declarations/restrict-nondegenerate-orthogonal-spansingleton--671cce31432cd1408da84074.md) | 370 | `result-track:671cce31432cd1408da840742fecdceef8c5ea5febe9bf3b9a71c0da70bcdb90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
