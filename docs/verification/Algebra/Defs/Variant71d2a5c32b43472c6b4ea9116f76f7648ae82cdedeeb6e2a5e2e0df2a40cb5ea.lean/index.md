# Verification target: GRWTSK.Algebra.Defs.Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8383d6c41507ab2e60035f1c788e9f485adda0",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8383d6c41507ab2e60035f1c788e9f485adda0`.

Source path: `GRWTSK/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasQuotient](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/insthasquotient--6d5efdad0215675577874f87.md) | 47 | `declaration-track:6d5efdad0215675577874f879eed5cb8f94c8b1076559056c1ec5716ff93757a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/instance--192d3a0e0d7e552190407421.md) | 50 | `declaration-track:192d3a0e0d7e552190407421cf9feaec00ba97c13c8e0698855ec75e8c4b188e` |
| 3 | `instance` | [one](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/one--87ad0810d247c37133cf624f.md) | 56 | `declaration-track:87ad0810d247c37133cf624fccfb429876d12cc539b9f2f9a7367b3da7bfd171` |
| 4 | `def` | [ringCon](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/ringcon--78e8ea190b62a70c43799e0a.md) | 60 | `declaration-track:78e8ea190b62a70c43799e0a28a2079619da67032ec111e08ea309f01cd56334` |
| 5 | `instance` | [ring](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/ring--b50559d2ff66b936cd851a91.md) | 66 | `declaration-track:b50559d2ff66b936cd851a917b678a59f372801dea9db2c38205794c7514c1ad` |
| 6 | `instance` | [commRing](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/commring--1e857d00bb23f99f14fe60e0.md) | 70 | `declaration-track:1e857d00bb23f99f14fe60e04d6e48a4ad642b02e5ac9fdda4f71415a0e02f5a` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/instance--f275ec13ae5e4fdfc91aef06.md) | 73 | `declaration-track:f275ec13ae5e4fdfc91aef061912dd5e5bd6749ee55b6240a2ef3f52b86f7ebd` |
| 8 | `instance` | [commSemiring](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/commsemiring--89352f8bbf7432cf250e0dfb.md) | 74 | `declaration-track:89352f8bbf7432cf250e0dfb2061ed10a083ce6189fc62f45221e12f2d0d6e6d` |
| 9 | `instance` | [semiring](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/semiring--a576e7b1eb13bc7606ed9b14.md) | 76 | `declaration-track:a576e7b1eb13bc7606ed9b14b88359ae66ddb4b0b691e7489277bea311723d95` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/example--e70d9f4bd4159f00712a2c25.md) | 81 | `declaration-track:e70d9f4bd4159f00712a2c250c4cd7b232ae56fb4c631f60a330b242c976845c` |
| 11 | `def` | [mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/mk--106d133891f1e39ee208e0b0.md) | 85 | `declaration-track:106d133891f1e39ee208e0b0711052aea4ff20ecf820a569411ac5b249a62f0d` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/instance--43ae4c6bb0083119f3d0d280.md) | 92 | `declaration-track:43ae4c6bb0083119f3d0d280fb8da1be16ba7e3b9f03aa994fda471dc1a01f2c` |
| 13 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/ringhom-ext--75eb9c28076e73ed09414e58.md) | 100 | `result-track:75eb9c28076e73ed09414e585e582bf075a342244df57fb84c5319cb41b19b9a` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/instance--7d45ce7597892eee98244cff.md) | 104 | `declaration-track:7d45ce7597892eee98244cff3c6f6fa3f86062b4b715ff0af38a00e3aef3078e` |
| 15 | `theorem` | [eq](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/eq--4ae14ba833c475af68efb440.md) | 107 | `result-track:4ae14ba833c475af68efb4407ef31520c2e49310024ce3762a12bb33d21feef4` |
| 16 | `theorem` | [mk_eq_mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/mk-eq-mk--0bdd3a015edfd41f77d63b62.md) | 111 | `result-track:0bdd3a015edfd41f77d63b620146ec93508da6d59fa41f13a67e96005b9cb47f` |
| 17 | `theorem` | [eq_zero_iff_mem](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/eq-zero-iff-mem--febeed5d43adbf673cc6b593.md) | 113 | `result-track:febeed5d43adbf673cc6b593d253477deb7fd044f01334226f868832dd5a6f8d` |
| 18 | `theorem` | [mk_eq_mk_iff_sub_mem](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/mk-eq-mk-iff-sub-mem--1bfeabe1b6592d077689dccc.md) | 116 | `result-track:1bfeabe1b6592d077689dcccc788a2e15a2d4d750c7ba90c66c2617e6853d6ec` |
| 19 | `theorem` | [mk_out](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/mk-out--30de73f28eb3b900d974fa78.md) | 120 | `result-track:30de73f28eb3b900d974fa7864193d0046148089640bea6e9be531df3ef0a395` |
| 20 | `theorem` | [mk_surjective](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/mk-surjective--aefd3ac81392187da8a3bdc7.md) | 123 | `result-track:aefd3ac81392187da8a3bdc767bdac2caab15ce505ad3462fe830d9b3cd8ca2a` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/instance--f588e232fae57c4b965d7318.md) | 126 | `declaration-track:f588e232fae57c4b965d73182ae5f4492d8f6d71bb61eda3d46f91f72ede2b7a` |
| 22 | `theorem` | [quotient_ring_saturate](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/quotient-ring-saturate--c3c8b82078d6c736d2aab5c9.md) | 131 | `result-track:c3c8b82078d6c736d2aab5c9c07fa9c95891879c4378152b0c22b143d47a9fdc` |
| 23 | `def` | [lift](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/lift--03ce9ff2364dabc9680ead0f.md) | 143 | `declaration-track:03ce9ff2364dabc9680ead0fd346c4ea17b1f08c50f96e43131fab35e5bf00a3` |
| 24 | `theorem` | [lift_mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/lift-mk--4278729a60cfbba098de38b3.md) | 149 | `result-track:4278729a60cfbba098de38b35d9e1aa3e2476b1dde0add997b4365ec2193e236` |
| 25 | `lemma` | [lift_comp_mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/lift-comp-mk--f63b9e77d4d96e53433ecf92.md) | 153 | `result-track:f63b9e77d4d96e53433ecf9248977a602d10e40630b107fc3cdffed2b63824db` |
| 26 | `theorem` | [lift_surjective_of_surjective](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/lift-surjective-of-surjective--936a3f13c9e496c08a5abcb4.md) | 156 | `result-track:936a3f13c9e496c08a5abcb42bd492662eb3e2b40d6875649c9ee80a552c498e` |
| 27 | `def` | [factor](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor--d5a4487cf3ab198c81b38e75.md) | 171 | `declaration-track:d5a4487cf3ab198c81b38e750197fb5ac7e614dd57efa4834387ab3504bfde01` |
| 28 | `theorem` | [factor_mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor-mk--6b574c53c3fc982c837556d2.md) | 175 | `result-track:6b574c53c3fc982c837556d2b2d44c19f9ee2134f8138188b77109a9275f3d68` |
| 29 | `theorem` | [factor_eq](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor-eq--34c81a0b365aebf08ea29f3a.md) | 179 | `result-track:34c81a0b365aebf08ea29f3a6bae830cf7c0391c8d4ff16bfdfc7185a696714d` |
| 30 | `theorem` | [factor_comp_mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor-comp-mk--d1f433c1ebb3ce8dbc97a26f.md) | 184 | `result-track:d1f433c1ebb3ce8dbc97a26f11adac8793ae6b88bbe8d638ff11ecca194e6ed1` |
| 31 | `theorem` | [factor_comp](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor-comp--c93bf6d3c656fdd9ba93954f.md) | 189 | `result-track:c93bf6d3c656fdd9ba93954f5af28b803f1e57d349aec1f8794b275b888bf196` |
| 32 | `theorem` | [factor_comp_apply](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor-comp-apply--91c56ec4f324c71f0c351135.md) | 195 | `result-track:91c56ec4f324c71f0c351135b27a4009abe41df3d7116f16976af8f0fc038d2f` |
| 33 | `lemma` | [factor_surjective](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/factor-surjective--1524bb5b0e86c17a73b56ec1.md) | 200 | `result-track:1524bb5b0e86c17a73b56ec15aa1c5270683dda564b273fb6c7af26757351d63` |
| 34 | `def` | [quotEquivOfEq](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/quotequivofeq--1d209154d7e6d4741efba502.md) | 211 | `declaration-track:1d209154d7e6d4741efba502c203f1f3164c0e3ed053fc1318eb003fd6cd2e49` |
| 35 | `theorem` | [quotEquivOfEq_mk](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/quotequivofeq-mk--6293578c56c15e1af0128b5e.md) | 218 | `result-track:6293578c56c15e1af0128b5e753a78c124aa6cf3d53b1e4eda373af1752e52f3` |
| 36 | `theorem` | [quotEquivOfEq_symm](../../../../mathematics/Algebra/Defs/Variant71d2a5c32b43472c6b4ea9116f76f7648ae82cdedeeb6e2a5e2e0df2a40cb5ea.lean/declarations/quotequivofeq-symm--ef71e0b6742298b3f0996f19.md) | 223 | `result-track:ef71e0b6742298b3f0996f191171aa720acec131533317ac2429c4bc1bfdcc38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
