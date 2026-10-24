# Verification target: GRWTSK.Algebra.Integers.Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90c379ea5a1786c4f5786791ad9cf0acc50a3835",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90c379ea5a1786c4f5786791ad9cf0acc50a3835`.

Source path: `GRWTSK/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/integer--6c98b4e6f113ed9160647527.md) | 40 | `declaration-track:6c98b4e6f113ed916064752787e95140efc817633fc11d93d1c9dcc262868aaf` |
| 2 | `lemma` | [mem_integer_iff](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/mem-integer-iff--ca63477cfd1fd7ee2d8fdf9c.md) | 48 | `result-track:ca63477cfd1fd7ee2d8fdf9caa7ff3be616d5988e315c3fb00fdbecc281dfbea` |
| 3 | `structure` | [Integers](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/integers--30c45a1e9dd7140fdeb163b9.md) | 60 | `declaration-track:30c45a1e9dd7140fdeb163b97546bfbd4c487d682c7420c45cadd4f1b9aca039` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/instance--01cca330c34bec25474c2e63.md) | 66 | `declaration-track:01cca330c34bec25474c2e6322dd7689b9c11c542b6fbfbd50c4b5883cf833a9` |
| 5 | `theorem` | [integer.integers](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/integer-integers--b05e819609f0aeb36792a6ec.md) | 69 | `result-track:b05e819609f0aeb36792a6ecaa54b0da6f26a530eb608d7233a7846b976076cd` |
| 6 | `theorem` | [one_of_isUnit'](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/one-of-isunit--c8d6b97970c748b4eb31fcfd.md) | 78 | `result-track:c8d6b97970c748b4eb31fcfd523352cf27eca5722d7fe60a5dec32a9270b806c` |
| 7 | `theorem` | [one_of_isUnit](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/one-of-isunit--fb6269c7dbdba5ff2a4d2ff9.md) | 85 | `result-track:fb6269c7dbdba5ff2a4d2ff926183a774beb2244857627073ef7793c36971ba8` |
| 8 | `theorem` | [isUnit_of_one](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/isunit-of-one--37185aa2b34ad5a47ca1c3a5.md) | 92 | `result-track:37185aa2b34ad5a47ca1c3a59f2c3adeb2b671bef49e1338e8fd82852ce31eca` |
| 9 | `theorem` | [le_of_dvd](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/le-of-dvd--b7162fedb21f98e49b51408e.md) | 104 | `result-track:b7162fedb21f98e49b51408e98f7ae282b6a24bc1b4d94c2deb5d5ca7b1e4704` |
| 10 | `lemma` | [nontrivial_iff](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/nontrivial-iff--e5af5a28ba67251bd335e86c.md) | 109 | `result-track:e5af5a28ba67251bd335e86c61b36672fea52fdf6e604ed8d98130b3918e1f9f` |
| 11 | `theorem` | [IsTrivialOn.of_le_one](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/istrivialon-of-le-one--771666e4804338f84fb36286.md) | 120 | `result-track:771666e4804338f84fb36286a4d131bfaabb4c6cceabd862eead84e2284e2e48` |
| 12 | `lemma` | [integers_nontrivial](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/integers-nontrivial--e0fd4891b3cd33feb2f4d3be.md) | 124 | `result-track:e0fd4891b3cd33feb2f4d3bee3c03bb77991b69746d5cb2cac41d3751a123beb` |
| 13 | `theorem` | [dvd_of_le](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/dvd-of-le--1036009e9e8091da12015947.md) | 137 | `result-track:1036009e9e8091da12015947b21aa635d1e18e543558b56073bacd6f93c99aa0` |
| 14 | `theorem` | [dvd_iff_le](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/dvd-iff-le--4dfc1f0546b9bdceb835143a.md) | 151 | `result-track:4dfc1f0546b9bdceb835143affbcb7b5f66039451a69c79fb30b198498190605` |
| 15 | `theorem` | [le_iff_dvd](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/le-iff-dvd--22316ab5813d095f21916aae.md) | 155 | `result-track:22316ab5813d095f21916aaed53a951f2c6d72ec30187340c4ea5d127a683647` |
| 16 | `theorem` | [isUnit_of_one'](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/isunit-of-one--eac117c356c2ffde772eb0ae.md) | 164 | `result-track:eac117c356c2ffde772eb0ae9a543e7d756a7c6b0b56d0aac4902e7cc960c8bb` |
| 17 | `lemma` | [isUnit_iff_valuation_eq_one](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/isunit-iff-valuation-eq-one--4e3421977c3270f49deb6800.md) | 168 | `result-track:4e3421977c3270f49deb680083a158f7742a1545a264f4858df7502b341d15b8` |
| 18 | `lemma` | [valuation_irreducible_lt_one](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/valuation-irreducible-lt-one--24a25ea8f54c08a49c55a8a2.md) | 172 | `result-track:24a25ea8f54c08a49c55a8a2f0e8246f7b50e5c183b3aae2781e34e5f017187f` |
| 19 | `lemma` | [valuation_unit](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/valuation-unit--84467572ac606738b6921db8.md) | 176 | `result-track:84467572ac606738b6921db8151130b27ae50e036935b2b7476640638422d854` |
| 20 | `lemma` | [valuation_pos_iff_ne_zero](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/valuation-pos-iff-ne-zero--7246344d8429bfc3e15153e0.md) | 180 | `result-track:7246344d8429bfc3e15153e0d50a2f6032b97ee77ebca0058fbbd0c9599e94ca` |
| 21 | `lemma` | [valuation_irreducible_pos](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/valuation-irreducible-pos--e9e96f7956c874165d3835b8.md) | 186 | `result-track:e9e96f7956c874165d3835b8e557be687ca30e42ba1ab37f41b8fddaa4f3e2a7` |
| 22 | `theorem` | [dvdNotUnit_iff_lt](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/dvdnotunit-iff-lt--a2395319f9569b7da616fea2.md) | 190 | `result-track:a2395319f9569b7da616fea2dfc2cacb5162de4f14c08105654fa84e31941aa2` |
| 23 | `theorem` | [eq_algebraMap_or_inv_eq_algebraMap](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/eq-algebramap-or-inv-eq-algebramap--cf8914fd441577821d543c96.md) | 203 | `result-track:cf8914fd441577821d543c9644b261ab00fea3b10709d7c1a1b6e5230e1da85f` |
| 24 | `lemma` | [coe_span_singleton_eq_setOfPred_le_v_algebraMap](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/coe-span-singleton-eq-setofpred-le-v-algebramap--fc9272a737bd59e3dfb223ab.md) | 209 | `result-track:fc9272a737bd59e3dfb223ab4b4ad6fdc9bffa7f486e88baa954c5ada5e37825` |
| 25 | `lemma` | [bijective_algebraMap_of_subsingleton_units_mrange](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/bijective-algebramap-of-subsingleton-units-mrange--15021dbb69b261a0312955aa.md) | 219 | `result-track:15021dbb69b261a0312955aa94ced4fb761317653323c5dffa3c9931be982adb` |
| 26 | `lemma` | [isPrincipal_iff_exists_isGreatest](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/isprincipal-iff-exists-isgreatest--fb3e6507f62ffb2e6d3e9f94.md) | 228 | `result-track:fb3e6507f62ffb2e6d3e9f948f62c7f058e4574fbd584965c9089677683701b1` |
| 27 | `lemma` | [isPrincipal_iff_exists_eq_setOfPred_valuation_le](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/isprincipal-iff-exists-eq-setofpred-valuation-le--cdc6a879ef15f5d8cc7c2482.md) | 245 | `result-track:cdc6a879ef15f5d8cc7c2482e3a12eb16419c5406f72534fffd752a7eb3dba0b` |
| 28 | `lemma` | [not_denselyOrdered_of_isPrincipalIdealRing](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/not-denselyordered-of-isprincipalidealring--b397ab3149b1c78f4205bb41.md) | 265 | `result-track:b397ab3149b1c78f4205bb41517d4c94534a016f0da39f2dfbda7f5e70bcd1cf` |
| 29 | `theorem` | [Integer.not_isUnit_iff_valuation_lt_one](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/integer-not-isunit-iff-valuation-lt-one--dfa43f1d30ce8084bcd0a274.md) | 296 | `result-track:dfa43f1d30ce8084bcd0a27492f14c521b7ac8841e9d3ae97174ac63013d27d4` |
| 30 | `lemma` | [v_irreducible_lt_one](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/v-irreducible-lt-one--47784d117611652467d926ae.md) | 303 | `result-track:47784d117611652467d926ae9d3d7be40f1b13a3cb10c7c3507f9e337abb44d0` |
| 31 | `lemma` | [v_irreducible_pos](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/v-irreducible-pos--d271f6077766021ea9de15db.md) | 307 | `result-track:d271f6077766021ea9de15dbd5fe50dae0374e8ae4bb79877f96047476762a12` |
| 32 | `lemma` | [coe_span_singleton_eq_setOfPred_le_v_coe](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/coe-span-singleton-eq-setofpred-le-v-coe--b466832a2b166bddf743793c.md) | 310 | `result-track:b466832a2b166bddf743793c0342a28c3f9344db6feaa50540566f8a3e86cbae` |
| 33 | `def` | [leSubmodule](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/lesubmodule--0a9b698ba45e69285ceb40f0.md) | 329 | `declaration-track:0a9b698ba45e69285ceb40f06a1819855000a801be0ab3a9c4c1f1656ba08a2e` |
| 34 | `def` | [ltSubmodule](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltsubmodule--b52b27a92b12dda494e3165e.md) | 335 | `declaration-track:b52b27a92b12dda494e3165e3e90e4a39d123b0fa7c61d34f0844ba3d17a3d77` |
| 35 | `lemma` | [leSubmodule_monotone](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/lesubmodule-monotone--14f24c943b64817f0ed89059.md) | 340 | `result-track:14f24c943b64817f0ed890599d5f5c4402c788bc383658f0c0e7f5e5e04947d0` |
| 36 | `lemma` | [ltSubmodule_monotone](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltsubmodule-monotone--6af0d14c092fed4c9ad5decb.md) | 343 | `result-track:6af0d14c092fed4c9ad5decbae0ba841191d01a028f1d06a0e9f8c7b10864d14` |
| 37 | `lemma` | [ltSubmodule_le_leSubmodule](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltsubmodule-le-lesubmodule--7423aff33be4cfe50be06d0b.md) | 346 | `result-track:7423aff33be4cfe50be06d0b19c73f2c80b43adc57645246fb1cf255a0d18898` |
| 38 | `lemma` | [mem_leSubmodule_iff](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/mem-lesubmodule-iff--4f61fb69d61e10f898a5eb86.md) | 352 | `result-track:4f61fb69d61e10f898a5eb86dab0ea0522cceb96df5b8f996d0ccd18f692abea` |
| 39 | `lemma` | [mem_ltSubmodule_iff](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/mem-ltsubmodule-iff--73ac5c6bfc0eebe2bf125bf6.md) | 358 | `result-track:73ac5c6bfc0eebe2bf125bf63faafe7d6e703b6ed497948b1fc856aa75c476a2` |
| 40 | `lemma` | [leSubmodule_zero](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/lesubmodule-zero--319b1c7aad578ec2354a77b7.md) | 363 | `result-track:319b1c7aad578ec2354a77b7b0c0428c48b444ed5bbc94c3640ee50af8db1325` |
| 41 | `lemma` | [leSubmodule_v_le_of_mem](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/lesubmodule-v-le-of-mem--eaec96cf748bf1892ac3eb44.md) | 367 | `result-track:eaec96cf748bf1892ac3eb445aec1d4d6ec6f392272fc339b718312a4af7daf2` |
| 42 | `lemma` | [ltSubmodule_v_le_of_mem](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltsubmodule-v-le-of-mem--71467fddd7b23d796ab678b5.md) | 376 | `result-track:71467fddd7b23d796ab678b56dd4288bc97c34a6f6e19dc1e695a92a3ffa246b` |
| 43 | `def` | [leIdeal](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/leideal--5a7db51bc7db1829e301a33b.md) | 386 | `declaration-track:5a7db51bc7db1829e301a33b76a1857bd99f3d5c0d5b86bb00fdcd8382b04272` |
| 44 | `def` | [ltIdeal](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltideal--c950428c558ff783ff3095c3.md) | 394 | `declaration-track:c950428c558ff783ff3095c3b6d070f5f382d3ec9266d280e299892a907a2a9a` |
| 45 | `lemma` | [leIdeal_mono](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/leideal-mono--7c7027f39feab068b5dbb21e.md) | 401 | `result-track:7c7027f39feab068b5dbb21e463efced6105a6e7529f6800005c702ead010dac` |
| 46 | `lemma` | [ltIdeal_mono](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltideal-mono--4e771e15fab335b2ba0e86eb.md) | 404 | `result-track:4e771e15fab335b2ba0e86ebdb4364ad660b4d785d8e6049117c44f97315dc10` |
| 47 | `lemma` | [ltIdeal_le_leIdeal](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltideal-le-leideal--7577a83bdc61f1b557162c43.md) | 407 | `result-track:7577a83bdc61f1b557162c439e2681c708512585ba3126abc83a4cebfb55d267` |
| 48 | `lemma` | [mem_leIdeal_iff](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/mem-leideal-iff--77b76489a2079338fbe27606.md) | 413 | `result-track:77b76489a2079338fbe2760687355c1ec64a9e90ab31a4941d28aa4fc628771b` |
| 49 | `lemma` | [mem_ltIdeal_iff](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/mem-ltideal-iff--67b348e373cec9b87b3eec42.md) | 419 | `result-track:67b348e373cec9b87b3eec421fc1c27a0e12e6c575c9c2677050cc1ff064cef4` |
| 50 | `lemma` | [leIdeal_zero](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/leideal-zero--9326f2c4aa284cd9851aa268.md) | 424 | `result-track:9326f2c4aa284cd9851aa2686c290d9a755b3357c9ead0642666bc97a3ac03d6` |
| 51 | `lemma` | [leSubmodule_comap_algebraMap_eq_leIdeal](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/lesubmodule-comap-algebramap-eq-leideal--f8529caf0af4a57c2cf03eea.md) | 428 | `result-track:f8529caf0af4a57c2cf03eeab739c544589c7f25e1595f77124a37066c5e3a42` |
| 52 | `lemma` | [leIdeal_map_algebraMap_eq_leSubmodule_min](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/leideal-map-algebramap-eq-lesubmodule-min--879e756a394c3bc4df0d7546.md) | 432 | `result-track:879e756a394c3bc4df0d75464b803f177b37be553a09248bf0f135e95b6a3c44` |
| 53 | `lemma` | [leIdeal_v_le_of_mem](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/leideal-v-le-of-mem--a117495305a02f1e99cab421.md) | 450 | `result-track:a117495305a02f1e99cab4213f08bb7eafe3aa76dd33e6e9510687dab8d2637d` |
| 54 | `lemma` | [ltIdeal_v_le_of_mem](../../../../mathematics/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/declarations/ltideal-v-le-of-mem--d053bc56a4d2966f3e411635.md) | 460 | `result-track:d053bc56a4d2966f3e41163591beddac3ab4bc33781a82923afc628ec2078c09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
