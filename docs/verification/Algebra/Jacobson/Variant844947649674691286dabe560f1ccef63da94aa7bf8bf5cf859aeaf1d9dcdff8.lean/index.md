# Verification target: GRWTSK.Algebra.Jacobson.Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8468b041b4419287f77937e8b89c347f23bf87f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8468b041b4419287f77937e8b89c347f23bf87f`.

Source path: `GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.JacobsonIdeal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson--0c52c258f213bf401978181a.md) | 62 | `declaration-track:0c52c258f213bf401978181a90fd3496dcec410df003b3ed3c99a0319de7f17a` |
| 2 | `theorem` | [isJacobson_iff](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-iff--3ceb38224ce5b511564ec7cc.md) | 66 | `result-track:3ceb38224ce5b511564ec7ccdba8223894b9e521209f6ed03a4ef20a0d626807` |
| 3 | `theorem` | [IsJacobson.out](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-out--1a220ab1081357905e4a0bc0.md) | 71 | `result-track:1a220ab1081357905e4a0bc0795d8c1798ba155d612f021783543f86457712ae` |
| 4 | `theorem` | [isJacobson_iff_prime_eq](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-iff-prime-eq--da5d3e00d24dcedc870bc521.md) | 78 | `result-track:da5d3e00d24dcedc870bc5214b7317739f0856c2703e3ca12743a9848e15d88a` |
| 5 | `theorem` | [isJacobson_iff_sInf_maximal](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-iff-sinf-maximal--a8594eb9e99323f8f00c6db3.md) | 92 | `result-track:a8594eb9e99323f8f00c6db3908339d774f71d1b661624d72170fd7660373aae` |
| 6 | `theorem` | [isJacobson_iff_sInf_maximal'](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-iff-sinf-maximal--a5ac82c5fd1b5d68a7df6241.md) | 98 | `result-track:a5ac82c5fd1b5d68a7df6241329771078025f6e282b87e38be1fdb8ac05f5d2f` |
| 7 | `theorem` | [radical_eq_jacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/radical-eq-jacobson--cfa0ef2d1aef1f21492d2452.md) | 104 | `result-track:cfa0ef2d1aef1f21492d2452a6fac13f5d9388b49b16dae90b0f043d207cce00` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/instance--32d34bbaeb03cefc3039829f.md) | 110 | `declaration-track:32d34bbaeb03cefc3039829fe1d18bfc36d5feb889a2d5a51315e675af82df39` |
| 9 | `theorem` | [isJacobson_of_surjective](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-of-surjective--eda8b581e7a41bdd1043ba87.md) | 116 | `result-track:eda8b581e7a41bdd1043ba87dcf7a12e222bb717e24623e38271afbd7943d58f` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/instance--8cf01d7cc44a4ab0ea717487.md) | 128 | `declaration-track:8cf01d7cc44a4ab0ea717487a0bde6fbffc722f554e1765f12c5efe10d800c78` |
| 11 | `theorem` | [isJacobson_iso](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-iso--a0161cdada32fb13531a5316.md) | 135 | `result-track:a0161cdada32fb13531a531662ade156b4fdfa0cb8ad4e715f2cb3c776136996` |
| 12 | `theorem` | [isJacobson_of_isIntegral](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-of-isintegral--90a09e1d15b87f931bf92fcb.md) | 140 | `result-track:90a09e1d15b87f931bf92fcbd6696048b1d74a92dae8c13e661a5debb2acda1c` |
| 13 | `theorem` | [isJacobson_of_isIntegral'](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-of-isintegral--15ad33a564a270a187521b5b.md) | 159 | `result-track:15ad33a564a270a187521b5b291d51bbd4e02e116c3319d12e9450ce78b4ffe7` |
| 14 | `theorem` | [disjoint_powers_iff_not_mem](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/disjoint-powers-iff-not-mem--252f41a58e7b77f851469b10.md) | 173 | `result-track:252f41a58e7b77f851469b106dba6b385141e86df4d00be2df8e1aa0aaf9dcfd` |
| 15 | `theorem` | [isMaximal_iff_isMaximal_disjoint](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/ismaximal-iff-ismaximal-disjoint--c5727e1b53375372236aeb9a.md) | 187 | `result-track:c5727e1b53375372236aeb9a4b04d6773fa08d496da4f80d9f381066bf334194` |
| 16 | `theorem` | [isMaximal_of_isMaximal_disjoint](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/ismaximal-of-ismaximal-disjoint--609ed5fb1955f78cc716976e.md) | 222 | `result-track:609ed5fb1955f78cc716976ea280ae634f271c1945a0369b2f14135bf1ed8405` |
| 17 | `def` | [orderIsoOfMaximal](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/orderisoofmaximal--43bc4e2b5dc80c9f39534972.md) | 232 | `declaration-track:43bc4e2b5dc80c9f395349727252b6cdd21f10cc4d64b0775c34847d2c8257b8` |
| 18 | `theorem` | [isJacobson_localization](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-localization--b9d7e3ef7997ea4b545f1bba.md) | 246 | `result-track:b9d7e3ef7997ea4b545f1bba587508f5e0e29f4d53f475506ea578b694b9bfa3` |
| 19 | `lemma` | [Subring.mem_closure_image_of](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/subring-mem-closure-image-of--0376f2a2f8271e486940e8b3.md) | 285 | `result-track:0376f2a2f8271e486940e8b357b3b05e55eea827dd40eac6e16b3af685eb974b` |
| 20 | `lemma` | [mem_closure_X_union_C](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/mem-closure-x-union-c--79730c3ecf28cb686fbdffa9.md) | 295 | `result-track:79730c3ecf28cb686fbdffa97c36100f62c4a67d26596f9b4644a97dfd1d6b08` |
| 21 | `theorem` | [isIntegral_isLocalization_polynomial_quotient](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isintegral-islocalization-polynomial-quotient--934a6ffe3762a1c24a83b309.md) | 319 | `result-track:934a6ffe3762a1c24a83b30922859e67b41352243007c1ac20fecdc0ae586002` |
| 22 | `theorem` | [jacobson_bot_of_integral_localization](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/jacobson-bot-of-integral-localization--cfdea5bea7d91eb3f4314fb8.md) | 377 | `result-track:cfdea5bea7d91eb3f4314fb8f29ace177c116a0edd31c3ceea2ae9e425b513e9` |
| 23 | `theorem` | [isJacobson_polynomial_of_domain](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-polynomial-of-domain--08a4c132e8c159c0906e4b9f.md) | 423 | `result-track:08a4c132e8c159c0906e4b9f850777bf395e292f0ce365671dabbc8311976121` |
| 24 | `theorem` | [isJacobson_polynomial_of_isJacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-polynomial-of-isjacobson--fccb30b5897fea388c3b954d.md) | 445 | `result-track:fccb30b5897fea388c3b954d1cd45ec7b2b5b94a784bed8e3359e830d422c699` |
| 25 | `theorem` | [isJacobson_polynomial_iff_isJacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-polynomial-iff-isjacobson--8e7b685e8dcc9859a49feb97.md) | 474 | `result-track:8e7b685e8dcc9859a49feb97fd493d26f739b6db37ca5a8dea03546bb3f87e10` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/instance--295d602974bc9e6a470ba3a5.md) | 481 | `declaration-track:295d602974bc9e6a470ba3a53b52a85990a1eb152ac11bf88dbd2e7b423fadff` |
| 27 | `theorem` | [isMaximal_comap_C_of_isMaximal](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/ismaximal-comap-c-of-ismaximal--0657ecedff55d00555cf01e1.md) | 492 | `result-track:0657ecedff55d00555cf01e1d32c8abc4f763750bb4820347f30237d7ff4ada9` |
| 28 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--26e4babda77fbb2fa8b4e6d0.md) | 538 | `result-track:26e4babda77fbb2fa8b4e6d0615e88b5477386e6e89ca0b49c172862b1b6b672` |
| 29 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--6be967e8a3807bb2c92fb922.md) | 574 | `result-track:6be967e8a3807bb2c92fb922e8ad47e27a5b33728c4d6d73e9c6ca95f43afc71` |
| 30 | `theorem` | [isMaximal_comap_C_of_isJacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/ismaximal-comap-c-of-isjacobson--bfb62bd92b116f2a72057d2a.md) | 600 | `result-track:bfb62bd92b116f2a72057d2aaf9ef1254b4509edf55de164506cb131aea249e0` |
| 31 | `lemma` | [isMaximal_comap_C_of_isJacobson'](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/ismaximal-comap-c-of-isjacobson--e716603d6295ebd0152e2e43.md) | 607 | `result-track:e716603d6295ebd0152e2e43dd3783c5db81a37db8ef8549683faaa3de22be82` |
| 32 | `theorem` | [comp_C_integral_of_surjective_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/comp-c-integral-of-surjective-of-jacobson--6a8aa5b58744cdd3f0f0300a.md) | 612 | `result-track:6a8aa5b58744cdd3f0f0300a6a82ed763bc938b73b3ababe7c4ad6a3cfc422ba` |
| 33 | `theorem` | [isJacobson_MvPolynomial_fin](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson-mvpolynomial-fin--36ee9d3d850b93f09fada91b.md) | 634 | `result-track:36ee9d3d850b93f09fada91b3325f6f601920878d3033dcfd216282d25d02c00` |
| 34 | `instance` | [isJacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/isjacobson--5b7b55a122dfeb2829848889.md) | 646 | `declaration-track:5b7b55a122dfeb2829848889cf947bd147884c811c6a6bb6e4db13bb3cad225b` |
| 35 | `def` | [Cₐ](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/c--678c2fcd199edc07bdb0d7ad.md) | 661 | `declaration-track:678c2fcd199edc07bdb0d7ad75dc5f00e9d6996c472a68bd6b7621e89214592e` |
| 36 | `lemma` | [aux_IH](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/aux-ih--4ebe9c9dfd468c281dafc175.md) | 665 | `result-track:4ebe9c9dfd468c281dafc17553ff804c2e669d11c03aa71e5f676544257acb87` |
| 37 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--1c54a6fa9f724f8d1372503c.md) | 696 | `result-track:1c54a6fa9f724f8d1372503ceece5b4db76f326f6d43d1c5b328b1d50291f38a` |
| 38 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--2f00eb3a141c63b569e2fbb6.md) | 705 | `result-track:2f00eb3a141c63b569e2fbb6bbf142ef69314eb95c68aa1af28ae9ac1c3cf736` |
| 39 | `theorem` | [comp_C_integral_of_surjective_of_jacobson](../../../../mathematics/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/declarations/comp-c-integral-of-surjective-of-jacobson--faa0e23c43a4cd52884c4ac0.md) | 714 | `result-track:faa0e23c43a4cd52884c4ac087a9500170753972d9f2868a06c3b39a26e29ace` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
