# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FundamentalTheorem.Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4be8cfbca1a6bdec3f250a361ad1bb296ad05c0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4be8cfbca1a6bdec3f250a361ad1bb296ad05c0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean.json)

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
| 1 | `def` | [accumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/accumulate--a5c4548a070bfff041433f79.md) | 75 | `declaration-track:a5c4548a070bfff041433f79e0f33ab705cd300cc36e054a94736bff47c8c1fc` |
| 2 | `def` | [invAccumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/invaccumulate--7970aa576c0a79c443795107.md) | 81 | `declaration-track:7970aa576c0a79c443795107efb6e126b31a34a53a1c48b868694b46dd225383` |
| 3 | `lemma` | [accumulate_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/accumulate-rec--bb2bfaa4f8b94393a8852a1c.md) | 84 | `result-track:bb2bfaa4f8b94393a8852a1c8217b7dcdd76735907f6af509f21f654c4cdcf54` |
| 4 | `lemma` | [accumulate_last](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/accumulate-last--f6968d1b88dffde9253c8f4c.md) | 94 | `result-track:f6968d1b88dffde9253c8f4c660502ad78b9651d698e55be013c5d41ff6e8b9b` |
| 5 | `lemma` | [accumulate_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/accumulate-injective--1bd75135b29ce77a641e12b2.md) | 104 | `result-track:1bd75135b29ce77a641e12b2677aaf5393041525ab97996de26a18c3447015d7` |
| 6 | `lemma` | [accumulate_invAccumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/accumulate-invaccumulate--e850fba1132ab097cbb782e4.md) | 113 | `result-track:e850fba1132ab097cbb782e4253b8f89f6a886cbefec500c2e6e30ba09acc691` |
| 7 | `def` | [esymmAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom--8f7ee48d6ba229c713cffc96.md) | 144 | `declaration-track:8f7ee48d6ba229c713cffc96ec8cc3e39d8b020b4e6f0ba50418c38e95160d48` |
| 8 | `lemma` | [esymmAlgHom_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-apply--95a49aa2089437483a1ffde5.md) | 148 | `result-track:95a49aa2089437483a1ffde539b759535370c247b125967c1311259b5945a72b` |
| 9 | `lemma` | [rename_esymmAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/rename-esymmalghom--9dbdf8fb7037aa752ca732e5.md) | 152 | `result-track:9dbdf8fb7037aa752ca732e57225ddedfc51f62e0ee56a42956a8cb403328be6` |
| 10 | `def` | [esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghommonomial--8bf21871fa5df0d2d79a74bd.md) | 160 | `declaration-track:8bf21871fa5df0d2d79a74bdc6d8491bfa925db01668ab0784b197a64f6ad85e` |
| 11 | `lemma` | [isSymmetric_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/issymmetric-esymmalghommonomial--f9a6ee24fa8e5efc9242b63e.md) | 165 | `result-track:f9a6ee24fa8e5efc9242b63e293f9397e61c3e9a47de202e1c726362bd58f6ff` |
| 12 | `lemma` | [esymmAlgHomMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghommonomial-single--d246503aaac6c634796315a2.md) | 168 | `result-track:d246503aaac6c634796315a2c5d9b247c6364d8de8967a0ca63ff8b5213c59e0` |
| 13 | `lemma` | [esymmAlgHomMonomial_single_one](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghommonomial-single-one--0d213aab77b7c774db16abbe.md) | 174 | `result-track:0d213aab77b7c774db16abbe288a1d246939bf88542f5e6bbbc3dcdfb7c21091` |
| 14 | `lemma` | [esymmAlgHomMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghommonomial-add--054674424249643e953b6ccc.md) | 178 | `result-track:054674424249643e953b6ccc2f337eefab047a03c4f2edbb08e5e6b19fd1b9a3` |
| 15 | `lemma` | [esymmAlgHom_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-zero--6d66d7ceeb3d307cb80f82cb.md) | 182 | `result-track:6d66d7ceeb3d307cb80f82cb5f6830e1a43f6297ad36f1fb30bc15d21b6c7015` |
| 16 | `lemma` | [supDegree_monic_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/supdegree-monic-esymm--fe63da2c51912560a845f49a.md) | 185 | `result-track:fe63da2c51912560a845f49afc582ce01fdc912a676a9eb2bdbe46dff7a90f2e` |
| 17 | `lemma` | [supDegree_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/supdegree-esymm--bdaaf560b457ce62b47d55c5.md) | 210 | `result-track:bdaaf560b457ce62b47d55c51c9d507d89845df7fc3995c41950bba3a64d1b3e` |
| 18 | `lemma` | [monic_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/monic-esymm--78a35c8bc1a5b1d8f7f999fd.md) | 217 | `result-track:78a35c8bc1a5b1d8f7f999fdc5625d37c142e1ed17d04288bf1c60c5df067b2e` |
| 19 | `lemma` | [leadingCoeff_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/leadingcoeff-esymmalghommonomial--ae268f5337deca263b0ac8e3.md) | 226 | `result-track:ae268f5337deca263b0ac8e372e956b7674b523821e726b44337929431c53888` |
| 20 | `lemma` | [supDegree_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/supdegree-esymmalghommonomial--55549de6976a8ae10ee9a556.md) | 237 | `result-track:55549de6976a8ae10ee9a556dcef4bade63bbd433b7ad1aeb1ac1998ce66de54` |
| 21 | `lemma` | [IsSymmetric.antitone_supDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/issymmetric-antitone-supdegree--bcf4054c28d118bf9b5cd3df.md) | 254 | `result-track:bcf4054c28d118bf9b5cd3dfd1b42939e55618956baf50d7a629dafbb7980a0b` |
| 22 | `lemma` | [esymmAlgHom_fin_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-fin-injective--8eba286b67cd141f87ae70af.md) | 280 | `result-track:8eba286b67cd141f87ae70af64d06b1a5fbe7e8e5081098c08ef9790943b64d0` |
| 23 | `lemma` | [esymmAlgHom_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-injective--841984dcbe7c3c0d2348ec49.md) | 296 | `result-track:841984dcbe7c3c0d2348ec491b3e94c44e2c95abb6d4362d651b604120d5a9f1` |
| 24 | `lemma` | [esymmAlgHom_fin_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-fin-bijective--00906d182798c4c58f8b854f.md) | 301 | `result-track:00906d182798c4c58f8b854f7a0b283a309baa43e451b7a2cb486c0707771829` |
| 25 | `lemma` | [esymmAlgHom_fin_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-fin-surjective--b3b01b0d0c194630fb1888a9.md) | 325 | `result-track:b3b01b0d0c194630fb1888a9fc3a5981e452bff137613439b9fdd88b4dc1fa8c` |
| 26 | `lemma` | [esymmAlgHom_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalghom-surjective--dcf5cc27bd1255e73f3f8c60.md) | 340 | `result-track:dcf5cc27bd1255e73f3f8c60175372c742f6ee826a0b5b2db5e0813f53920669` |
| 27 | `def` | [esymmAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalgequiv--fdea83041624e9deb23567f8.md) | 348 | `declaration-track:fdea83041624e9deb23567f8870c794532e14f2a4a26a8d93700a388dc66c1c3` |
| 28 | `lemma` | [esymmAlgEquiv_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/declarations/esymmalgequiv-symm-apply--d629946a5bec9609efdafd21.md) | 354 | `result-track:d629946a5bec9609efdafd2199f0af9029bf9f39320d9cf8eaa838066f2fb9fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
