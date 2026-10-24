# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pocklington3.Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeCert.Pocklington` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.prime_iff_not_exists_mul_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/nat-prime-iff-not-exists-mul-eq--f7afbb616fa620a557c6eb6b.md) | 26 | `result-track:f7afbb616fa620a557c6eb6b84283c8e05bbce46f0074a29edd7746bd855497e` |
| 2 | `theorem` | [Nat.modEq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/nat-modeq-prod--c6a46ec40665eb78b2b05a4c.md) | 34 | `result-track:c6a46ec40665eb78b2b05a4caf509a38b0e5f8480459906a9601f71e0b1e81cc` |
| 3 | `theorem` | [Nat.modEq_one_of_dvd_of_prime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/nat-modeq-one-of-dvd-of-prime--b101213405b05359b3075a1d.md) | 40 | `result-track:b101213405b05359b3075a1dac0aaf4ff427a14b42835c7b333af64139605c55` |
| 4 | `theorem` | [Nat.modEq_iff_exists_mul_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/nat-modeq-iff-exists-mul-add--81c11879b4b8f982b634beb8.md) | 53 | `result-track:81c11879b4b8f982b634beb8854c55234cf02ec8c3d8775972954505fa686784` |
| 5 | `theorem` | [Nat.modEq_iff_exists_mul_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/nat-modeq-iff-exists-mul-add--2ec99b5a66013f2166fbc118.md) | 63 | `result-track:2ec99b5a66013f2166fbc118a5f85d4b2f5253681149f097404ef33b46aa3b1a` |
| 6 | `theorem` | [Nat.add_sq_eq_dist_sq_add_four_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/nat-add-sq-eq-dist-sq-add-four-mul--9631460bb92b09a0f662e2c0.md) | 70 | `result-track:9631460bb92b09a0f662e2c048ae58c4a69a69d2164c455c5de0d6ea8ebed4d2` |
| 7 | `def` | [Pocklington3Cert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3cert--9b13d9c438cd9f1a2c1da296.md) | 82 | `declaration-track:9b13d9c438cd9f1a2c1da2960fbbdb3725aabaf1936dd3302e7b839ff1ad7cac` |
| 8 | `theorem` | [pocklington3_test](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3-test--ec56675f36e14c8ae0a2cb1f.md) | 85 | `result-track:ec56675f36e14c8ae0a2cb1f277d61f68a0f4dcf2c55112872c65a8eb2708967` |
| 9 | `def` | [forallB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/forallb--4d818af53a0d758cdf8855c2.md) | 165 | `declaration-track:4d818af53a0d758cdf8855c2009034369825874519685f2b2216ee90489be9fb` |
| 10 | `theorem` | [forallB_iff_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/forallb-iff-range--6c53dfef72ee98e925f209ea.md) | 169 | `result-track:6c53dfef72ee98e925f209eae4a16a7385b8b8c4fa1992ab62fef7c540f6005d` |
| 11 | `theorem` | [forallB_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/forallb-iff--b93b7c99a4e8fe2dc157693c.md) | 183 | `result-track:b93b7c99a4e8fe2dc157693c8fc2d80123b3514516f40ec3369cb4dc2db96c32` |
| 12 | `theorem` | [forallB_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/forallb-iff--6ffedeb11309e054e3930a4a.md) | 187 | `result-track:6ffedeb11309e054e3930a4a7b655760448bf9ac8cf9247c38cd03c4a3d8777a` |
| 13 | `theorem` | [forallB_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/forallb-one-iff--1fc2143b30be78a11a9b9876.md) | 193 | `result-track:1fc2143b30be78a11a9b987602e35a610fcabeb0d7f2a0441bc9e994f3eea77d` |
| 14 | `theorem` | [Pocklington3Cert.of_prime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3cert-of-prime--35724a4294e73f6cdf76c03a.md) | 198 | `result-track:35724a4294e73f6cdf76c03a8830f90de8fff5d0003aca6e50ca0d9b5b999da2` |
| 15 | `inductive` | [Pocklington3CertMode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3certmode--ef1c07d491c7f2a02fca349c.md) | 219 | `declaration-track:ef1c07d491c7f2a02fca349c7626e11aec0e9a189873c36b31ce9376a4b5cb46` |
| 16 | `def` | [Pocklington3CertMode.calculate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3certmode-calculate--ab19007a92554b275a5d426a.md) | 222 | `declaration-track:ab19007a92554b275a5d426acd77c59f5872c81d52da56249e965f7ccaa32d76` |
| 17 | `theorem` | [Pocklington3CertMode.to_cert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3certmode-to-cert--5589c0efacd7d52318faf6b1.md) | 226 | `result-track:5589c0efacd7d52318faf6b1b57b9afed871eaa31c9e3465d72a8fcba800e52d` |
| 18 | `structure` | [PrimePow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/primepow--5b98b2feb83e91278e7b17c4.md) | 236 | `declaration-track:5b98b2feb83e91278e7b17c4d62668614c10f8cfb2e6233ba7421b79b2401550` |
| 19 | `def` | [PrimePow.toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/primepow-tonat--96bbdd0c5df4462fa429ea01.md) | 239 | `declaration-track:96bbdd0c5df4462fa429ea01c7250f78a9d4298fcb9b703434e15b45ee0533fc` |
| 20 | `theorem` | [PrimePow.toNat_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/primepow-tonat-def--0c6a16914ff121492c54e900.md) | 242 | `result-track:0c6a16914ff121492c54e900293160b7db6050bc6abe29ceaab5230469b6bcee` |
| 21 | `theorem` | [PrimePow.prime_dvd_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/primepow-prime-dvd-tonat--02cb65e00ff9419cdacdf6fd.md) | 244 | `result-track:02cb65e00ff9419cdacdf6fd5c412874422f3257beeaeb5c1d635b2469dde8e0` |
| 22 | `def` | [pocklington3_calculate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3-calculate--60dc6ff183d5c0c5326d7f7d.md) | 247 | `declaration-track:60dc6ff183d5c0c5326d7f7d774e43e4f8c73b12bc9e2bc3ef934ba3f1793967` |
| 23 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pocklington3CertMode.Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.List.rec_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-po--ff4f43aac6655c221d4389d8.md) | 265 | `result-track:ff4f43aac6655c221d4389d8044e828b03a34012e03ce68212a8714120a84fdf` |
| 24 | `theorem` | [mem_primeFactors_prod_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/mem-primefactors-prod-tonat--a22a33508bf89d572a19b455.md) | 272 | `result-track:a22a33508bf89d572a19b4556cc2790bf9e60d15b1aa4c876286273e88966b73` |
| 25 | `theorem` | [of_gcd_pred_mod_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/of-gcd-pred-mod-eq-one--d846e518ffd7dc62c38b07bd.md) | 289 | `result-track:d846e518ffd7dc62c38b07bd3923bccc4c494df6db1e1ee4762658d437638bb0` |
| 26 | `theorem` | [pocklington3_certKR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pocklington3-certkr--e50955493c6fae45bf6d901f.md) | 307 | `result-track:e50955493c6fae45bf6d901f2377c0f7f9ac32fc23d8df02c4d2b4f4c28cbe0e` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/syntax--7c20d810f19f4a44f243a35d.md) | 385 | `declaration-track:7c20d810f19f4a44f243a35d3e3bc1abfa5e19aa12d6b30387e5a7ff62707c74` |
| 28 | `def` | [parsePock3Mode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/parsepock3mode--aaecdde0048bffee2aea3b61.md) | 387 | `declaration-track:aaecdde0048bffee2aea3b6164536c5756103ba8b4bb88dc42914fbf5465d4dc` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/syntax--a08e65ed5692c95926583b11.md) | 416 | `declaration-track:a08e65ed5692c95926583b11db064ad781d9016907b936f03fb3bf6d28d16e3e` |
| 30 | `def` | [PrimePow.base](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/primepow-base--ccbf5bd9224485873230a1e9.md) | 418 | `declaration-track:ccbf5bd9224485873230a1e9d32662ae330c1264964c3fccf6271fcdf9e80053` |
| 31 | `def` | [parsePrimePow'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/parseprimepow--12392de4efc053add1080e05.md) | 422 | `declaration-track:12392de4efc053add1080e0553891dca64edaaeb9a8d38c768b40cbef4cf269d` |
| 32 | `def` | [parseFactored'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/parsefactored--32dea48a571ad6be2a07bd3e.md) | 435 | `declaration-track:32dea48a571ad6be2a07bd3eae27acba1219ceb5443aaafa0bb4ba2febaf0062` |
| 33 | `def` | [parsePock3Spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/parsepock3spec--c4a9418d4ecdf020d1270ad8.md) | 444 | `declaration-track:c4a9418d4ecdf020d1270ad8cef871069f5634f5dd122730eb393585a4b498c9` |
| 34 | `def` | [pock3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/declarations/pock3--9cd38604824fbacc6b1acc8d.md) | 464 | `declaration-track:9cd38604824fbacc6b1acc8d1ec9c2299389de45791cd89cb8dd4fe08366a021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
