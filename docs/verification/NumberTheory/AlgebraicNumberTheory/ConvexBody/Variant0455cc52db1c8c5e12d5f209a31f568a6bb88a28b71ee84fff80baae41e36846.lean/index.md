# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ConvexBody.Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcde65f4321c7c9d0b30b0a7f1e30d92000fe051",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcde65f4321c7c9d0b30b0a7f1e30d92000fe051`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean.json)

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
| 1 | `abbrev` | [convexBodyLT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt--5a3cb86162a9a255a60efc3c.md) | 68 | `declaration-track:5a3cb86162a9a255a60efc3cfefbe1717d8615d1c529038b94b3957475668121` |
| 2 | `theorem` | [convexBodyLT_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-mem--98f1de37e7481bdf28e89878.md) | 72 | `result-track:98f1de37e7481bdf28e898780919ffe7441d7e0b5cec851b522be8cc2913e50a` |
| 3 | `theorem` | [convexBodyLT_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-neg-mem--4e55c83d3002c0c87871e50f.md) | 79 | `result-track:4e55c83d3002c0c87871e50f6c836fb146f3b5470a4003d2aa7227c806b69321` |
| 4 | `theorem` | [convexBodyLT_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-convex--e8d5eaff9757c71034721010.md) | 86 | `result-track:e8d5eaff9757c7103472101048781c0d831b962fc930393ee8ee8a0e160e6a4a` |
| 5 | `abbrev` | [convexBodyLTFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodyltfactor--dbeb7a3273a3940a2de88b93.md) | 94 | `declaration-track:dbeb7a3273a3940a2de88b9334b6f9973399db0a31e2a4c0bb33710c29a19567` |
| 6 | `theorem` | [convexBodyLTFactor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodyltfactor-ne-zero--b87a6176c3eab7fe49afc833.md) | 97 | `result-track:b87a6176c3eab7fe49afc833a03ab0e918bfda87ca32cbf12aab9f24e7deba6b` |
| 7 | `theorem` | [one_le_convexBodyLTFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/one-le-convexbodyltfactor--88129b58ba0b27284bcf6230.md) | 100 | `result-track:88129b58ba0b27284bcf6230c7e13580231fd786abcdb3566b63c709b5dee998` |
| 8 | `theorem` | [convexBodyLT_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-volume--f107a412bac1837691928bab.md) | 106 | `result-track:f107a412bac1837691928babae9c72a0d96b51a959446faedebac37191c4769d` |
| 9 | `theorem` | [adjust_f](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/adjust-f--138170acef552a17d94fc07f.md) | 131 | `result-track:138170acef552a17d94fc07f4ae74b15d9b8e3e5b1af01c8e14e0a5c128cb8f4` |
| 10 | `abbrev` | [convexBodyLT'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt--a5b0d0ffb8f354f1d6a80d32.md) | 160 | `declaration-track:a5b0d0ffb8f354f1d6a80d323c0f2e2c5a399b99d4bb66e8240c11ad7ae2686d` |
| 11 | `theorem` | [convexBodyLT'_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-mem--d3a3f232a7944280677a79d1.md) | 165 | `result-track:d3a3f232a7944280677a79d1bebebd5fd44227b953b116cb7ef1729aa51c555a` |
| 12 | `theorem` | [convexBodyLT'_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-neg-mem--8500c7df43ea64126920de4f.md) | 187 | `result-track:8500c7df43ea64126920de4fef1dfc69ee578dea85fa3493da7a59240ce87ba2` |
| 13 | `theorem` | [convexBodyLT'_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-convex--7d75c9fd9cfee8dee762a129.md) | 194 | `result-track:7d75c9fd9cfee8dee762a12961b5b687cb4a2943c0e90603625355aa94114e8c` |
| 14 | `abbrev` | [convexBodyLT'Factor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-factor--ee80e79a9df961ba1e4aae23.md) | 207 | `declaration-track:ee80e79a9df961ba1e4aae235e5174b5dd546a25c25b8b72b36ee2dd6656c48a` |
| 15 | `theorem` | [convexBodyLT'Factor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-factor-ne-zero--5d1a27d538345ff2f1dd15ce.md) | 210 | `result-track:5d1a27d538345ff2f1dd15ceefef7c518e88b6f43372ef53b5c40994e555871b` |
| 16 | `theorem` | [one_le_convexBodyLT'Factor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/one-le-convexbodylt-factor--a419225eec3766c0ae30ff5f.md) | 213 | `result-track:a419225eec3766c0ae30ff5ff0d6c48d1f5e0f292b66a80bb7587330e88388ae` |
| 17 | `theorem` | [convexBodyLT'_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodylt-volume--12ba9e826681f941123ef5a1.md) | 217 | `result-track:12ba9e826681f941123ef5a1207d77d49e1665216696965818f5d408fe2c77d7` |
| 18 | `abbrev` | [convexBodySumFun](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun--4646191d72110e38712778de.md) | 272 | `declaration-track:4646191d72110e38712778dedf630e4a4ff9936570face2392a175324b6d43b3` |
| 19 | `theorem` | [convexBodySumFun_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-apply--996b540b4df3a13b57687d1e.md) | 274 | `result-track:996b540b4df3a13b57687d1e4c116c7bd2e34c5a710550eb6fbe17138bc05033` |
| 20 | `theorem` | [convexBodySumFun_apply'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-apply--7b892cea9db193f56e78a12f.md) | 278 | `result-track:7b892cea9db193f56e78a12f5f56ec34e51a10ae63597d84fb74b18c2d07a8b6` |
| 21 | `theorem` | [convexBodySumFun_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-nonneg--3b814987a5edef8d5ac40931.md) | 284 | `result-track:3b814987a5edef8d5ac40931ec091413147f7848b34848473bf7c0f73f216820` |
| 22 | `theorem` | [convexBodySumFun_neg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-neg--89ce5cb67fe81d4dddbd9299.md) | 288 | `result-track:89ce5cb67fe81d4dddbd9299ca5ee124dfc17517ee9b76e9bc5751231d2dfb6d` |
| 23 | `theorem` | [convexBodySumFun_add_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-add-le--801d3f55ee8a81192e32389c.md) | 292 | `result-track:801d3f55ee8a81192e32389c84936a796249729f57d4827482fe6373d130be49` |
| 24 | `theorem` | [convexBodySumFun_smul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-smul--a5e5f753c7de6d0bbfe9aa24.md) | 298 | `result-track:a5e5f753c7de6d0bbfe9aa2462bb64ce146c268a2c0ec5b79a4c2f779dbfd4b3` |
| 25 | `theorem` | [convexBodySumFun_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-eq-zero-iff--8f764bdca28a00676647d4d4.md) | 302 | `result-track:8f764bdca28a00676647d4d449904d92000daf1065dd63caf1c86e977eff0ddb` |
| 26 | `theorem` | [norm_le_convexBodySumFun](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/norm-le-convexbodysumfun--696f8b2c6c4d412cae92e1de.md) | 309 | `result-track:696f8b2c6c4d412cae92e1de388cd79775f096aa992f4cd42089e4d80af7cfc3` |
| 27 | `theorem` | [convexBodySumFun_continuous](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfun-continuous--9a3be323d91acba9b2f2ee18.md) | 320 | `result-track:9a3be323d91acba9b2f2ee1882951793b56799618eb91a49d8448ced0ac52b0d` |
| 28 | `abbrev` | [convexBodySum](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum--05cbc38adbc411b296d79f7e.md) | 326 | `declaration-track:05cbc38adbc411b296d79f7e3dbe561816748f8f61bcff359a0d1636dae050ed` |
| 29 | `theorem` | [convexBodySum_volume_eq_zero_of_le_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-volume-eq-zero-of-le-zero--c4beb3b92dc5cc4a67acdd96.md) | 329 | `result-track:c4beb3b92dc5cc4a67acdd960071cf7002a0a6ccfea235a80f4d1e104c22b380` |
| 30 | `theorem` | [convexBodySum_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-mem--43c43368deda376f138f11d2.md) | 342 | `result-track:43c43368deda376f138f11d29320ada54335f9ab99b99673a4fb5361538440dd` |
| 31 | `theorem` | [convexBodySum_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-neg-mem--e7e1afa277ecc7b575c04b9f.md) | 348 | `result-track:e7e1afa277ecc7b575c04b9fc39ca48329627ef57040b7d4a68c6103b442616e` |
| 32 | `theorem` | [convexBodySum_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-convex--aa3e2a4748cc882373c9fede.md) | 353 | `result-track:aa3e2a4748cc882373c9fede1465035664bcbdf9be74806e52ed8465b581f133` |
| 33 | `theorem` | [convexBodySum_isBounded](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-isbounded--49145964636568a57dd70715.md) | 358 | `result-track:49145964636568a57dd70715523d89d64a017af937eb1379bbc62ef7aa383717` |
| 34 | `theorem` | [convexBodySum_compact](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-compact--3f511d2c77b082302e7c1862.md) | 366 | `result-track:3f511d2c77b082302e7c1862ac76ae65a8cd6ff65fa68b67f36e12bd9d42c5cd` |
| 35 | `abbrev` | [convexBodySumFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfactor--68695693f4378cb229ec424a.md) | 375 | `declaration-track:68695693f4378cb229ec424a914b34dfab0d54efde1605a9e2f327f8d1140246` |
| 36 | `theorem` | [convexBodySumFactor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysumfactor-ne-zero--4e6da23e43da9a211a998bf1.md) | 378 | `result-track:4e6da23e43da9a211a998bf157704ac415929061cadb2debd3460d806c8d159e` |
| 37 | `theorem` | [convexBodySum_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/convexbodysum-volume--37a8d77af19a156303407240.md) | 385 | `result-track:37a8d77af19a156303407240013b37468501d167a11566a8a85d87140b105442` |
| 38 | `def` | [minkowskiBound](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/minkowskibound--698a5647ce07ddd8589265ce.md) | 452 | `declaration-track:698a5647ce07ddd8589265ce8222484060195681517a0bbaca31e27f2ce8c911` |
| 39 | `theorem` | [volume_fundamentalDomain_fractionalIdealLatticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/volume-fundamentaldomain-fractionalideallatticebasis--4418a0d9332321357691b01c.md) | 457 | `result-track:4418a0d9332321357691b01c8b573245e535ba93835e919f6df5a255cc711353` |
| 40 | `theorem` | [minkowskiBound_lt_top](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/minkowskibound-lt-top--83405a2750e5a6889e1d203a.md) | 471 | `result-track:83405a2750e5a6889e1d203a026786755ce9ddb06c2afb963c6421f42bbc48f5` |
| 41 | `theorem` | [minkowskiBound_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/minkowskibound-pos--24f130e463a14364d1eadfce.md) | 477 | `result-track:24f130e463a14364d1eadfce1da236fc6aea557366c283a8d828e849432482d8` |
| 42 | `theorem` | [exists_ne_zero_mem_ideal_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-ne-zero-mem-ideal-lt--68f2d45947531a47c514e5ca.md) | 490 | `result-track:68f2d45947531a47c514e5ca46b690ea036787ed94195b22a81d4502786c5452` |
| 43 | `theorem` | [exists_ne_zero_mem_ideal_lt'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-ne-zero-mem-ideal-lt--57986d47c0c482d389927faf.md) | 505 | `result-track:57986d47c0c482d389927faf5eeb431b390c30cb1aa2ad481ab8d39902cea571` |
| 44 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-ne-zero-mem-ringofintegers-lt--be113302ea543ca70ee0e3cf.md) | 521 | `result-track:be113302ea543ca70ee0e3cf01835f0e579e880e8a7f385f8cac47d214cfafc3` |
| 45 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_lt'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-ne-zero-mem-ringofintegers-lt--cba9136a12d1922c214f7137.md) | 529 | `result-track:cba9136a12d1922c214f71376276fb4075add5111cfb41af0b145c24ba0391f2` |
| 46 | `theorem` | [exists_primitive_element_lt_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-primitive-element-lt-of-isreal--03d62306722284053f6ffba9.md) | 537 | `result-track:03d62306722284053f6ffba95c026ea813bb532ccab392470bc62ac2359c048c` |
| 47 | `theorem` | [exists_primitive_element_lt_of_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-primitive-element-lt-of-iscomplex--d84731afc7c68a94b6261625.md) | 554 | `result-track:d84731afc7c68a94b6261625d38a89edc9c02b8737ed98464c6211d6e4a9b9c1` |
| 48 | `theorem` | [exists_ne_zero_mem_ideal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-ne-zero-mem-ideal-of-norm-le--5a056971ec2314cb02753dc7.md) | 591 | `result-track:5a056971ec2314cb02753dc73e363b3326b783c1175ea495b442eeb66d49104b` |
| 49 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/declarations/exists-ne-zero-mem-ringofintegers-of-norm-le--b8eebfb2802c77777d3a9db9.md) | 625 | `result-track:b8eebfb2802c77777d3a9db946f278fb313635e94972fc0894b3f44f6b426234` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
