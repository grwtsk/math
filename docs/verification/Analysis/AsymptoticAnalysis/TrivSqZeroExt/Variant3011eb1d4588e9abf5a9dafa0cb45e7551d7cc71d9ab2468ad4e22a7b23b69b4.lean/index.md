# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6805e43d9bed5b5a316b39f81778737ef195d71a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6805e43d9bed5b5a316b39f81778737ef195d71a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean.json)

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
| 1 | `theorem` | [fst_expSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/fst-expseries--7c1b86a27ef233884b3f9daf.md) | 72 | `result-track:7c1b86a27ef233884b3f9daf76536431d93c7f4f0e8685c1c67a3da50b6fc79f` |
| 2 | `theorem` | [snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/snd-expseries-of-smul-comm--2f29f8e4a68b1a8188931fb5.md) | 85 | `result-track:2f29f8e4a68b1a8188931fb50aad6809330f35fd208682c267351dc122bdd538` |
| 3 | `theorem` | [hasSum_snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/hassum-snd-expseries-of-smul-comm--9b3451aba2bd14705684cfe1.md) | 95 | `result-track:9b3451aba2bd14705684cfe115b66c1475b3c71c4c4c776a06a0b6cc75e0afe0` |
| 4 | `theorem` | [hasSum_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/hassum-expseries-of-smul-comm--3db81807d70b7b1722b6b384.md) | 108 | `result-track:3db81807d70b7b1722b6b384604343a9a6644b9c77f814670f07c67e893004c5` |
| 5 | `theorem` | [exp_def_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/exp-def-of-smul-comm--b498c8107fbc953431f09741.md) | 120 | `result-track:b498c8107fbc953431f097413137a897dc9f1934add35d3d05ccbe493f22f6f6` |
| 6 | `theorem` | [exp_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/exp-inl--129bfa5232a3d10598e624f7.md) | 133 | `result-track:129bfa5232a3d10598e624f7f8fae110c713d9257e70669a261f6bcaa6be4e94` |
| 7 | `theorem` | [exp_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/exp-inr--ca36d9069bb044d4908d1fc1.md) | 138 | `result-track:ca36d9069bb044d4908d1fc1fb6c9125fc1659af4d066f601f7f1e5f9bf0cb56` |
| 8 | `theorem` | [exp_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/exp-def--27f7a52011d571b647678be6.md) | 152 | `result-track:27f7a52011d571b647678be6c2814f9f773be98196d327983350c7f4ff1495c8` |
| 9 | `theorem` | [fst_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/fst-exp--1f632ff9ca78e778085a0547.md) | 156 | `result-track:1f632ff9ca78e778085a054759d4b3d9d2de69ab8ba3505823bc8ab564e8b8c2` |
| 10 | `theorem` | [snd_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/snd-exp--8f7c532f454bb67e830d233e.md) | 160 | `result-track:8f7c532f454bb67e830d233e5a7f44d043888dcc71a876a26e37f3301668bb97` |
| 11 | `theorem` | [eq_smul_exp_of_invertible](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/eq-smul-exp-of-invertible--86338385ae67a041bdbe3840.md) | 164 | `result-track:86338385ae67a041bdbe3840b651a9ed54c37c65cb91e7e4540c3239a63fada8` |
| 12 | `theorem` | [eq_smul_exp_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/eq-smul-exp-of-ne-zero--aece1b736a967468a7173caa.md) | 182 | `result-track:aece1b736a967468a7173caaaea95ce0643a5bd3f48d420ae71881e75ee94717` |
| 13 | `instance` | [instL1SeminormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1seminormedaddcommgroup--5bab7224f86ea8bbc357fc4d.md) | 202 | `declaration-track:5bab7224f86ea8bbc357fc4dd56b2429dce8df0b34e3a215ad34c912e062d671` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/example--1af010d3fe419699e4f9248f.md) | 207 | `declaration-track:1af010d3fe419699e4f9248f5ce96f997b09694e8a44981799bd2c1e14427c3a` |
| 15 | `theorem` | [norm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/norm-def--9858cb7770d259b395b817d6.md) | 212 | `result-track:9858cb7770d259b395b817d6200a0fd794c1654943064272a669141d1c5e5c20` |
| 16 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/nnnorm-def--5044795f69d4fddcf031d789.md) | 218 | `result-track:5044795f69d4fddcf031d7896876169613d6278dd61c16a7157a6bd56e3379c3` |
| 17 | `theorem` | [norm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/norm-inl--465a82a27d8e495b26352ee1.md) | 221 | `result-track:465a82a27d8e495b26352ee1cceac156d2a0f654afdd08f8daac81374a016501` |
| 18 | `theorem` | [norm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/norm-inr--10c541a9691a7363ebf00dd9.md) | 222 | `result-track:10c541a9691a7363ebf00dd9e8e3c21c7692ec1592e2ffbac1ec5b2073fc8d41` |
| 19 | `theorem` | [nnnorm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/nnnorm-inl--cb20e6feb0cb2ca9248bcaad.md) | 224 | `result-track:cb20e6feb0cb2ca9248bcaad3fa99541b1253c98fb26cd9fad1d299b33775c54` |
| 20 | `theorem` | [nnnorm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/nnnorm-inr--d3d82d8e506ee3a581c8c81b.md) | 226 | `result-track:d3d82d8e506ee3a581c8c81b8031b209adc54f0d54697d729cdb636d80ac2739` |
| 21 | `instance` | [instL1SeminormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1seminormedring--ca8b93a22d684748f6969ddf.md) | 232 | `declaration-track:ca8b93a22d684748f6969ddf8179aaff66741bb5eef26620d718f7719786668e` |
| 22 | `instance` | [instL1IsBoundedSMul](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1isboundedsmul--f33b1f6217574b4425a406d4.md) | 249 | `declaration-track:f33b1f6217574b4425a406d49af3c0a32c2e5053191e3eff8dccebdfe47cf3f7` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instance--4862945880ce60bcb7afc441.md) | 252 | `declaration-track:4862945880ce60bcb7afc44157ee9aeae5458d16d20b22e3d3eb9bc7922bcda5` |
| 24 | `instance` | [instL1SeminormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1seminormedcommring--1e69f2eecdee1d864b5476a7.md) | 263 | `declaration-track:1e69f2eecdee1d864b5476a78f6dc988ac7d1439f6176624c1d0fc639731edce` |
| 25 | `instance` | [instL1NormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1normedaddcommgroup--78e214d55d1aa86b666b6567.md) | 278 | `declaration-track:78e214d55d1aa86b666b656717778c011a4b46619b2af671612403fb640720c1` |
| 26 | `instance` | [instL1NormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1normedring--444462171c0042707c4bd218.md) | 281 | `declaration-track:444462171c0042707c4bd2183139f589ddb45ee6fd63652bf06cf1ac1b6efdce` |
| 27 | `instance` | [instL1NormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1normedcommring--660366ce1fe5be55d6b1af6d.md) | 293 | `declaration-track:660366ce1fe5be55d6b1af6d326c5832e4d33cf70d93bb6bb7798a883b171792` |
| 28 | `instance` | [instL1NormedSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1normedspace--7e08ff6d19a7f1d3d045498a.md) | 306 | `declaration-track:7e08ff6d19a7f1d3d045498a8d522f2ea2879d9d113ffc9f190b0329c84deb33` |
| 29 | `instance` | [instL1NormedAlgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/instl1normedalgebra--aa098f78cc292484d8652c65.md) | 309 | `declaration-track:aa098f78cc292484d8652c6512b2240f6335903f718d9323fc296a1a439fbb6f` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/declarations/example--54f8efa120d757e1c030b003.md) | 326 | `declaration-track:54f8efa120d757e1c030b003c14aebd4de581a380d66ef5a99f6c3af759810aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
