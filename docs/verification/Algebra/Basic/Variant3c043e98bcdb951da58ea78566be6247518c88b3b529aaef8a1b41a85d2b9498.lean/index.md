# Verification target: GRWTSK.Algebra.Basic.Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb56c60131de223b4dc6123ed343581caa2254e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb56c60131de223b4dc6123ed343581caa2254e`.

Source path: `GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAlgClosed](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosed--0011c44310f6c9ba9be56fdd.md) | 59 | `declaration-track:0011c44310f6c9ba9be56fdd01cd4913bc288ad66659ef5b29e594226038d32e` |
| 2 | `theorem` | [IsAlgClosed.splits_codomain](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosed-splits-codomain--13f6469d9d80187bb1a830d5.md) | 66 | `result-track:13f6469d9d80187bb1a830d5efed5ac33d9754f9d04a2d80eb6e92511497e36e` |
| 3 | `theorem` | [IsAlgClosed.splits_domain](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosed-splits-domain--3fd6c2be20305457bb4d94ab.md) | 74 | `result-track:3fd6c2be20305457bb4d94ab8ccaac13e7e6ed4835f1039bab9d2b52da8df37d` |
| 4 | `theorem` | [exists_root](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-root--c985dfcdc503b5891e701016.md) | 86 | `result-track:c985dfcdc503b5891e701016b0df0acf6b537a12f0dd01f51619a6a1c9d264ff` |
| 5 | `theorem` | [exists_pow_nat_eq](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-pow-nat-eq--01450a1f55c73b0d57bfbacd.md) | 89 | `result-track:01450a1f55c73b0d57bfbacd80e3c5b90f6f732527acabf67ff07b7b48edb31b` |
| 6 | `theorem` | [exists_eq_mul_self](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-eq-mul-self--f9fc5782dafefd8a6168c581.md) | 98 | `result-track:f9fc5782dafefd8a6168c581325fa00326892a9de57d9a89fb964bd821cf0d8e` |
| 7 | `theorem` | [roots_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/roots-eq-zero-iff--b503621e50ee0b26d3f24eb9.md) | 102 | `result-track:b503621e50ee0b26d3f24eb9f8b235bd3a962482e9e7965c65c9572e5a5f3880` |
| 8 | `theorem` | [exists_eval₂_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-eval-eq-zero-of-injective--74d922a92f572af82f936bba.md) | 111 | `result-track:74d922a92f572af82f936bbac67e351d201cbdcf63a79f1d4775a3a483fa5baa` |
| 9 | `theorem` | [exists_eval₂_eq_zero](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-eval-eq-zero--b7f8b7afb6a531aa3cd44761.md) | 116 | `result-track:b7f8b7afb6a531aa3cd44761a5e157b235f80b2e2e1de13de7b775a21f010290` |
| 10 | `theorem` | [exists_aeval_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-aeval-eq-zero-of-injective--c15be6629bdc4138df046e15.md) | 122 | `result-track:c15be6629bdc4138df046e158a4ec98b6eedb8890a190f03421de36c9b84e114` |
| 11 | `theorem` | [exists_aeval_eq_zero](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/exists-aeval-eq-zero--2c4df4c940d5b00ce8062378.md) | 127 | `result-track:2c4df4c940d5b00ce8062378c3f631c573a114c38e427baa979c19682f4fb666` |
| 12 | `theorem` | [of_exists_root](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/of-exists-root--d22bbeca614216c4562d4807.md) | 136 | `result-track:d22bbeca614216c4562d48075a5717a58aad28dfb621c329850eea03f5a4c377` |
| 13 | `theorem` | [of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/of-ringequiv--389e29d02e7f2b42396ab730.md) | 147 | `result-track:389e29d02e7f2b42396ab730e93a7a94955a211146a7d7390c39bb8337a9a81d` |
| 14 | `theorem` | [degree_eq_one_of_irreducible](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/degree-eq-one-of-irreducible--3ced61a41fadaf1cc59f1683.md) | 166 | `result-track:3ced61a41fadaf1cc59f1683832c7ab2437ea94b320c460a1ce17f4194ebf26d` |
| 15 | `theorem` | [algebraMap_bijective_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/algebramap-bijective-of-isintegral--0d4fc811ae5495baccb3c0bf.md) | 170 | `result-track:0d4fc811ae5495baccb3c0bfd4f1f1efd344749c02e521f2eeb77c95bfc84d0a` |
| 16 | `theorem` | [ringHom_bijective_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/ringhom-bijective-of-isintegral--6e876b020873b088f380f79e.md) | 182 | `result-track:6e876b020873b088f380f79e43a9a9dc68c697c040db1d58374cc93088d2bf0c` |
| 17 | `theorem` | [algebraMap_surjective_of_isIntegral'](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/algebramap-surjective-of-isintegral--a78677f7662f45911e699c7a.md) | 189 | `result-track:a78677f7662f45911e699c7a37e7d3aba5ed22c0a1c4fa94657c5fa18592851c` |
| 18 | `theorem` | [IntermediateField.eq_bot_of_isAlgClosed_of_isAlgebraic](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/intermediatefield-eq-bot-of-isalgclosed-of-isalgebraic--62811e0e1177de2bdc7a1735.md) | 200 | `result-track:62811e0e1177de2bdc7a17351b5360facf854dca45d98a34611c145d9004bab4` |
| 19 | `lemma` | [Polynomial.isCoprime_iff_aeval_ne_zero_of_isAlgClosed](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/polynomial-iscoprime-iff-aeval-ne-zero-of-isalgclosed--205901b70af0274dc05f4593.md) | 206 | `result-track:205901b70af0274dc05f459329de06b93649cdde3e10ec1c4fc839dbf01ef4c1` |
| 20 | `class` | [IsAlgClosure](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosure--a3432d129604aa5df1b01b05.md) | 219 | `declaration-track:a3432d129604aa5df1b01b0582fb58f3ecc20c4e702f95bece71e3eb1abcbf5b` |
| 21 | `theorem` | [isAlgClosure_iff](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosure-iff--29b3fda118d9bd6c6ce469c2.md) | 226 | `result-track:29b3fda118d9bd6c6ce469c2f5b80ff81b8249d72541b01bdcaa5d13a0476bb9` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/instance--02be148cd50a841986d8244c.md) | 230 | `declaration-track:02be148cd50a841986d8244c1f3277090369911a303294d59fccf7c63ab69e16` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/instance--cc5aa109838317b098e990a8.md) | 235 | `declaration-track:cc5aa109838317b098e990a848d9b66bc1292aecd05c52bc6896a57ac1c82469` |
| 24 | `instance` | [IsAlgClosed.instIsAlgClosure](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosed-instisalgclosure--7a724fd18644ea7f74f23bf7.md) | 239 | `declaration-track:7a724fd18644ea7f74f23bf76690899c75571bcdb6a147ed51e1b8ddaaf31913` |
| 25 | `theorem` | [IsAlgClosure.of_splits](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/isalgclosure-of-splits--9169ccf1e8333409829e93ab.md) | 243 | `result-track:9169ccf1e8333409829e93ab39d055322eed1649cfe03cfe9dd74ad238bedcf6` |
| 26 | `theorem` | [surjective_restrictDomain_of_isAlgebraic](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/surjective-restrictdomain-of-isalgebraic--a4308689a45201fdc01f4af4.md) | 261 | `result-track:a4308689a45201fdc01f4af43fe50956894be0554d7d0981347199097e6ce619` |
| 27 | `instance` | [FractionRing.isAlgebraic](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/fractionring-isalgebraic--c7857a906136030a9ab140d8.md) | 284 | `declaration-track:c7857a906136030a9ab140d818b8bcab579eb09a2dcede9d6a06fb1662f15d3a` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/instance--db968ff822054a5daa795109.md) | 309 | `declaration-track:db968ff822054a5daa79510907f14e5ca86d574896b8505a66d36118fe6cffa3` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/instance--a44e4f53f64e1f821c9988a1.md) | 313 | `declaration-track:a44e4f53f64e1f821c9988a193e8891d6897a489119eb2e601620203a78ff6d5` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/instance--4ea11966ecebb75156db67b1.md) | 318 | `declaration-track:4ea11966ecebb75156db67b13a00da256d42431e54e847c73e04223c12cbbf86` |
| 31 | `def` | [equiv](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equiv--a61b0a1c653e3c87c1155e83.md) | 345 | `declaration-track:a61b0a1c653e3c87c1155e8308d4442863d37fdc853c77f7280ff22b17309a70` |
| 32 | `theorem` | [ofAlgebraic](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/ofalgebraic--972c37ed407a2a68b4c182a5.md) | 364 | `result-track:972c37ed407a2a68b4c182a532866d2d2ee0c0706e41cb9d25d3c57d80ce017f` |
| 33 | `def` | [equivOfAlgebraic'](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofalgebraic--5418bfac317c20fbaeb3deee.md) | 369 | `declaration-track:5418bfac317c20fbaeb3deee53f90a53bc6f063d6d31f5390eddd033233c32bf` |
| 34 | `def` | [equivOfAlgebraic](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofalgebraic--d2be646111c75e48a2080f1e.md) | 379 | `declaration-track:d2be646111c75e48a2080f1e400856e8b1ff5bab6f27e54a2af8fb85e6896547` |
| 35 | `def` | [equivOfEquivAux](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofequivaux--bd575e17321e3ba8ac034545.md) | 390 | `declaration-track:bd575e17321e3ba8ac034545902d25be9ed327e587c0fce39c2ce3e72c5e6048` |
| 36 | `def` | [equivOfEquiv](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofequiv--8222eabe3e47d3e1a7fd9bde.md) | 410 | `declaration-track:8222eabe3e47d3e1a7fd9bde5257b3710ba9fc05b1baf0378722779d40d19dfe` |
| 37 | `theorem` | [equivOfEquiv_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofequiv-comp-algebramap--4ac16d7de8a24cba97b2bcb3.md) | 414 | `result-track:4ac16d7de8a24cba97b2bcb3333c0a484506db050528d074874e1eef5eda1f86` |
| 38 | `theorem` | [equivOfEquiv_algebraMap](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofequiv-algebramap--422145cc32da6167647160a7.md) | 419 | `result-track:422145cc32da6167647160a75b0a46b48fba2901208d274731131d82c5a874d9` |
| 39 | `theorem` | [equivOfEquiv_symm_algebraMap](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofequiv-symm-algebramap--93b6ef51ca93479845da9db0.md) | 424 | `result-track:93b6ef51ca93479845da9db0a957cbd444dba472fbd355901dca0dbca9bfad9f` |
| 40 | `theorem` | [equivOfEquiv_symm_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/equivofequiv-symm-comp-algebramap--b81fa20e1fea02dd4402a0cf.md) | 429 | `result-track:b81fa20e1fea02dd4402a0cf04481bd06a0cd2585f18cdf913783b7d0d92cd07` |
| 41 | `theorem` | [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/algebra-isalgebraic-range-eval-eq-rootset-minpoly--c8d6cdffdd6de36ba5a795fb.md) | 446 | `result-track:c8d6cdffdd6de36ba5a795fbaf9ac484a3d546d55539e57a43ee611f679fad4c` |
| 42 | `def` | [IntermediateField.algHomEquivAlgHomOfSplits](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/intermediatefield-alghomequivalghomofsplits--e5dc8e87dbd9e97bbe18b02f.md) | 453 | `declaration-track:e5dc8e87dbd9e97bbe18b02f902841c039e113ef5a720185c01cfe5705c3611d` |
| 43 | `theorem` | [IntermediateField.algHomEquivAlgHomOfSplits_apply_apply](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/intermediatefield-alghomequivalghomofsplits-apply-apply--5a3f3d869243c8201a532e9c.md) | 463 | `result-track:5a3f3d869243c8201a532e9cd50b61ebd6894e52035e41b669bd98b5f471095c` |
| 44 | `def` | [Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/algebra-isalgebraic-alghomequivalghomofsplits--d62490b022cf149b1525a092.md) | 469 | `declaration-track:d62490b022cf149b1525a0926c89e965ccb3dec08224f912ad095792629d641c` |
| 45 | `theorem` | [Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits_apply_apply](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/algebra-isalgebraic-alghomequivalghomofsplits-apply-apply--e439b1ac54bb52a4376b42e1.md) | 477 | `result-track:e439b1ac54bb52a4376b42e12aa34f8ae62fca718028d15514ee6d4e791119a6` |
| 46 | `theorem` | [Polynomial.isRoot_of_isRoot_iff_dvd_derivative_mul](../../../../mathematics/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/declarations/polynomial-isroot-of-isroot-iff-dvd-derivative-mul--27d3c61f44ff808da74bf843.md) | 488 | `result-track:27d3c61f44ff808da74bf843aa56913ac0c0b2de63e03d5988b4e9361342feed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
