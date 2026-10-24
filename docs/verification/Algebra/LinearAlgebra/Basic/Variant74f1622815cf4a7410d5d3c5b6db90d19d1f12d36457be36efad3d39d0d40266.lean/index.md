# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac3a82c82b62128dd2c248938f3d544be49a992",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac3a82c82b62128dd2c248938f3d544be49a992`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-card--6342aae09903f8cb24d7e315.md) | 67 | `result-track:6342aae09903f8cb24d7e31595ec7749b10219342feb26665521550c83a81adc` |
| 2 | `instance` | [nonempty_linearIndependent_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/nonempty-linearindependent-set--64d2fc8209f67e5b889e9697.md) | 70 | `declaration-track:64d2fc8209f67e5b889e96975dbbd9c3ae91a3d7a536c0f10d8085f28be0bd15` |
| 3 | `theorem` | [cardinal_lift_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/cardinal-lift-le-rank--1fc12fc3dc0664692ae06556.md) | 80 | `result-track:1fc12fc3dc0664692ae06556665b075b3360007dd58309a7e022eab0a564a677` |
| 4 | `lemma` | [aleph0_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/aleph0-le-rank--2c9abefe93c33b78871b1753.md) | 87 | `result-track:2c9abefe93c33b78871b17533a994653b572386705ecb9be97f99de953b4abfd` |
| 5 | `theorem` | [cardinal_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/cardinal-le-rank--7431ad130c7557b8f970a543.md) | 91 | `result-track:7431ad130c7557b8f970a543edaa9f0aa3b721a858051053718464e4ae40fe53` |
| 6 | `theorem` | [cardinal_le_rank'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/cardinal-le-rank--eda82c33725d63bd80626127.md) | 95 | `result-track:eda82c33725d63bd8062612711d367dc0c8332482798fb07f2c5e197f2dbbe2a` |
| 7 | `theorem` | [_root_.LinearIndepOn.encard_le_toENat_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/root-linearindepon-encard-le-toenat-rank--c7e46dfe22544c465f1dce1c.md) | 99 | `result-track:c7e46dfe22544c465f1dce1c6ff79b4c81b674c19088a3c46c98d166177e0c6f` |
| 8 | `theorem` | [lift_rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-le-of-injective-injective--f2d53d48eb09bdbd38c7ba11.md) | 118 | `result-track:f2d53d48eb09bdbd38c7ba11eb10ce88870d20bd708f163ca1ab068d26c7e686` |
| 9 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-le-of-surjective-injective--aa06f4fad4b0a511ee159687.md) | 131 | `result-track:aa06f4fad4b0a511ee1596878fe23ef2b38620820918fb44655dfb5f9bd537bb` |
| 10 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-eq-of-equiv-equiv--25c17fac1f35b7b5c07689f2.md) | 144 | `result-track:25c17fac1f35b7b5c07689f2c78df3f3cbdbc084905bf50a39adc32a1a35d986` |
| 11 | `theorem` | [rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-of-injective-injective--c5da80ba90365f55e3e5bad0.md) | 156 | `result-track:c5da80ba90365f55e3e5bad08f38f028d4c7dfc019bb0d33ec2b000b1d308e05` |
| 12 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-of-surjective-injective--b7afc05b7ac090f0e757acb8.md) | 163 | `result-track:b7afc05b7ac090f0e757acb850f8ac11a93ce3be912b8958b4bc0fcf516fc2cc` |
| 13 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-eq-of-equiv-equiv--44b4b7f6d5b026c2ed6edaf2.md) | 170 | `result-track:44b4b7f6d5b026c2ed6edaf28bccdcf44da6721d8a402794aa43a88aae87f47e` |
| 14 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-le-of-injective-injective--a780abe2102b2ae7a023bb1f.md) | 186 | `result-track:a780abe2102b2ae7a023bb1f7258d6dd95ac5ecbcb312e2c8795efa43c89e3a2` |
| 15 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-of-injective-injective--5564761d1ddf6976e81816dd.md) | 197 | `result-track:5564761d1ddf6976e81816dd7e885207a6312b96b0f3cbc582185de39e857a81` |
| 16 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-le-of-injective-injective--cb21fcd6c90149307b750c40.md) | 213 | `result-track:cb21fcd6c90149307b750c408f2b06036fe3258251d236d262c0858fc00885a5` |
| 17 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-le-of-surjective-injective--e4d6cd164a7da9f74456010a.md) | 225 | `result-track:e4d6cd164a7da9f74456010aebd26cb529f6a8ecbb6938d9f0334df67fe9241c` |
| 18 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-eq-of-equiv-equiv--de82ed9a7110131347a6631d.md) | 237 | `result-track:de82ed9a7110131347a6631d1a16c5a0d2057612f4fb4628370e4a1075d09f0b` |
| 19 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-of-injective-injective--a0c9588c2f581d1858f18187.md) | 248 | `result-track:a0c9588c2f581d1858f18187ccf19815f067ce78271c5ba59178a50e80d7aec4` |
| 20 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-of-surjective-injective--350648dd444750e6ee33c839.md) | 255 | `result-track:350648dd444750e6ee33c83982e0e8ac6c8e65e17190df923473e2da56fa2bde` |
| 21 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-eq-of-equiv-equiv--21bf87bf96200fddd1e56b69.md) | 262 | `result-track:21bf87bf96200fddd1e56b696b5a7972ef48d825e990494a12a675cb7ee3f4f2` |
| 22 | `theorem` | [LinearMap.lift_rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearmap-lift-rank-le-of-injective--ab379c8fc2bc11e4090a30ca.md) | 277 | `result-track:ab379c8fc2bc11e4090a30caa5680c9393e6051c156842b0b4ebaaa57db66d84` |
| 23 | `theorem` | [LinearMap.rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearmap-rank-le-of-injective--8baa5d6d83fa8a42b4c9bd70.md) | 281 | `result-track:8baa5d6d83fa8a42b4c9bd7076cc654c7b44ab148981d863d5648461c2d8cff3` |
| 24 | `theorem` | [lift_rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-range-le--b622cfb64b5c22fdf22e2d1a.md) | 288 | `result-track:b622cfb64b5c22fdf22e2d1a72adbaf045d371a20dc186427b23c02690b3813a` |
| 25 | `theorem` | [rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-range-le--3621b7246c3f11222061d1fc.md) | 302 | `result-track:3621b7246c3f11222061d1fc154ca476777f13519a27297fac06ba32d0bc4d0d` |
| 26 | `theorem` | [lift_rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-map-le--0340f0ea94b51bb0d1570d9e.md) | 305 | `result-track:0340f0ea94b51bb0d1570d9e081f55bff976b1bdb50f487f9e5fd5dd6530904f` |
| 27 | `theorem` | [rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-map-le--23e3aa6cda3d15fed6d239db.md) | 310 | `result-track:23e3aa6cda3d15fed6d239db5282c1aa4c2053868e184540a9501a021c042522` |
| 28 | `lemma` | [Submodule.rank_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/submodule-rank-mono--fdf1ce370faaa06c67000648.md) | 313 | `result-track:fdf1ce370faaa06c6700064820d52b803cd399675bdb57515dfcfa8d4c803f52` |
| 29 | `theorem` | [LinearEquiv.lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearequiv-lift-rank-eq--e3aaec4e9fac9e6fbd17bf63.md) | 319 | `result-track:e3aaec4e9fac9e6fbd17bf636d43f59e0f31b2ae23fa3d0f03622cb978d81d47` |
| 30 | `theorem` | [LinearEquiv.rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearequiv-rank-eq--ac48b0617f1a19c11c05e781.md) | 326 | `result-track:ac48b0617f1a19c11c05e78158a498bb908e4df703a9fa24d3a7df8beac666f0` |
| 31 | `theorem` | [lift_rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/lift-rank-range-of-injective--1d065f4d5837c4426ac0bcee.md) | 329 | `result-track:1d065f4d5837c4426ac0bcee52e06816955bb63fd8882232f9f48a014ee1fc33` |
| 32 | `theorem` | [rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-range-of-injective--4e45383bed07fa2ae8707687.md) | 333 | `result-track:4e45383bed07fa2ae87076873b2eb00a217cd1be2d2f5cca29f0adaf775d8546` |
| 33 | `theorem` | [LinearEquiv.lift_rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearequiv-lift-rank-map-eq--17271fc92c22ce911af769e2.md) | 337 | `result-track:17271fc92c22ce911af769e2c084c7391f961aec0bc4716e69887c9144034c38` |
| 34 | `theorem` | [LinearEquiv.rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearequiv-rank-map-eq--adfa4085ce8d628ed8bd992f.md) | 342 | `result-track:adfa4085ce8d628ed8bd992f2667025c23406b351e6f59dab177dffb88d97c47` |
| 35 | `theorem` | [rank_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-top--767b6ae344cee37851425eed.md) | 349 | `result-track:767b6ae344cee37851425eed4a05a1e583f159920f4c838b4a74a11b9ca855e5` |
| 36 | `theorem` | [rank_range_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-range-of-surjective--1e4cdb7b6b20ee04a75439b8.md) | 354 | `result-track:1e4cdb7b6b20ee04a75439b88b66d3866241d2b4ef342241ef8c62f604c16bbe` |
| 37 | `theorem` | [Submodule.rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/submodule-rank-le--50ff3cc1882400ec163c90ed.md) | 358 | `result-track:50ff3cc1882400ec163c90edc11fa9720ba0351d39536833b57b9db17949b2c5` |
| 38 | `theorem` | [LinearMap.lift_rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearmap-lift-rank-le-of-surjective--c4cb36600ef8aefa6316cd7a.md) | 362 | `result-track:c4cb36600ef8aefa6316cd7a39bd4bf87532c8b165603158f03d620763129ffe` |
| 39 | `theorem` | [LinearMap.rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/linearmap-rank-le-of-surjective--bd1a3309d0744aba42e5db96.md) | 367 | `result-track:bd1a3309d0744aba42e5db9615bc955ef76a6fa724e86228aa45dc4d3cb8dbb0` |
| 40 | `lemma` | [rank_le_of_isSMulRegular](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/rank-le-of-issmulregular--0d2ce629fda96f87dcfd8beb.md) | 372 | `result-track:0d2ce629fda96f87dcfd8beb33d43b14b3ca65c128ec4a2235972fd808689f9d` |
| 41 | `lemma` | [Module.rank_top_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/module-rank-top-le-rank-of-isscalartower--378a9a7cf96618f369869a07.md) | 383 | `result-track:378a9a7cf96618f369869a0729c6d27482701ef46936b1de661c2e493a20c1bf` |
| 42 | `lemma` | [Module.lift_rank_bot_le_lift_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/module-lift-rank-bot-le-lift-rank-of-isscalartower--53f11ececa02ff1c83973310.md) | 391 | `result-track:53f11ececa02ff1c839733103f50805d8bd8dc4fc70645496dcdcad8ad1eee86` |
| 43 | `lemma` | [Module.rank_bot_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/declarations/module-rank-bot-le-rank-of-isscalartower--88cd400189c83fdbac02f845.md) | 399 | `result-track:88cd400189c83fdbac02f8454ded0ef17708aaebc64fb2a710d4607717bd3c04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
