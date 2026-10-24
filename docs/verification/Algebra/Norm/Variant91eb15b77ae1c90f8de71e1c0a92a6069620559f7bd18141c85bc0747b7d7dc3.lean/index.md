# Verification target: GRWTSK.Algebra.Norm.Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d923f2e4dd9a2557437ebe2b2d61abf55144b8e",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d923f2e4dd9a2557437ebe2b2d61abf55144b8e`.

Source path: `GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.AbsoluteValue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Associated` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Determinant` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.PID` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardQuot](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot--c7a1df99e5f4607161743dc4.md) | 73 | `declaration-track:c7a1df99e5f4607161743dc471dc8f791369d77a4944fd5c9a7a398cbfb5fb87` |
| 2 | `theorem` | [cardQuot_apply](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-apply--fa54089c6b0e441d6c8749be.md) | 78 | `result-track:fa54089c6b0e441d6c8749be081597d4e2d2b26ed54fac4aee54da3472178735` |
| 3 | `theorem` | [cardQuot_bot](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-bot--0e94f30a38af94e5ff84b663.md) | 88 | `result-track:0e94f30a38af94e5ff84b6635fe6bfdf10700766aad89188efcc8d7e45781dc5` |
| 4 | `theorem` | [cardQuot_top](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-top--8e0248307b9da484203812eb.md) | 93 | `result-track:8e0248307b9da484203812eb0df26f7d1a417032037022ed85cc9c5cecc47600` |
| 5 | `theorem` | [cardQuot_eq_one_iff](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-eq-one-iff--4b493cb73a8f999171370c5b.md) | 100 | `result-track:4b493cb73a8f999171370c5b5360752954e330aa31466ed56f69297fcebbce55` |
| 6 | `theorem` | [cardQuot_mul_of_coprime](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-mul-of-coprime--460fa087b9b2eba2bcb2855e.md) | 117 | `result-track:460fa087b9b2eba2bcb2855e1a6bcdd6c4b4f0c55df747995eaf0ae493531bdd` |
| 7 | `theorem` | [Ideal.mul_add_mem_pow_succ_inj](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/ideal-mul-add-mem-pow-succ-inj--2e347239b490246db9ae2b32.md) | 143 | `result-track:2e347239b490246db9ae2b327a8eaa2db61d3ecbf12d98467118f79684b6c94f` |
| 8 | `theorem` | [Ideal.exists_mul_add_mem_pow_succ](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/ideal-exists-mul-add-mem-pow-succ--df1b097d696a349293307868.md) | 159 | `result-track:df1b097d696a349293307868c2cc4c0091febc274cc614f9bd6ac28c4f513d0c` |
| 9 | `theorem` | [Ideal.mem_prime_of_mul_mem_pow](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/ideal-mem-prime-of-mul-mem-pow--c5c90c263875f96bd9a14a76.md) | 174 | `result-track:c5c90c263875f96bd9a14a76070210bee45346ce2da5c812584d1b5fdcdc9149` |
| 10 | `theorem` | [Ideal.mul_add_mem_pow_succ_unique](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/ideal-mul-add-mem-pow-succ-unique--32d3a53a69f16a67737ecae8.md) | 184 | `result-track:32d3a53a69f16a67737ecae89f9a1c7fdbab38d5577f699fc112d597734dbddd` |
| 11 | `theorem` | [cardQuot_pow_of_prime](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-pow-of-prime--da7da8f9af815bc15ebc9dcf.md) | 194 | `result-track:da7da8f9af815bc15ebc9dcf79046274b9e8b120db8ee3850044cbb3b3bc263b` |
| 12 | `theorem` | [cardQuot_mul](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/cardquot-mul--ac507aa2ed6739dd18ce3d6e.md) | 238 | `result-track:ac507aa2ed6739dd18ce3d6e9d43eb9696b3d6c99999768d5f113250074b8028` |
| 13 | `def` | [Ideal.absNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/ideal-absnorm--5fcda4225c8b0e61b07c4924.md) | 258 | `declaration-track:5fcda4225c8b0e61b07c492477e01fa8b36d3a40d2d6800c3d7bee5d0056a524` |
| 14 | `theorem` | [absNorm_apply](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-apply--d32c6307d0caa10c72f829ae.md) | 270 | `result-track:d32c6307d0caa10c72f829ae0cf240b5a8620f122de5fd10f3b166d7579d4041` |
| 15 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-bot--3b07becf74657c2fc0a16c4a.md) | 274 | `result-track:3b07becf74657c2fc0a16c4a67e36e020fddb164e0feee14e8dd5a95afa5ceea` |
| 16 | `theorem` | [absNorm_top](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-top--2b3e0ec32b55a0c0a871038b.md) | 278 | `result-track:2b3e0ec32b55a0c0a871038bed191c24ab96c8929cd92350dc001a08bc7790f6` |
| 17 | `theorem` | [absNorm_eq_one_iff](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-eq-one-iff--c60fc34c33af043c8c8fb175.md) | 282 | `result-track:c60fc34c33af043c8c8fb175521e7a693f8cad86bf44f5d368ba07d2d5d2ff7a` |
| 18 | `theorem` | [absNorm_ne_zero_iff](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-ne-zero-iff--7ca5e104205887413975c9e1.md) | 286 | `result-track:7ca5e104205887413975c9e13bbf157b38b037d2176d5bc90256ed3ed6aa4628` |
| 19 | `theorem` | [natAbs_det_equiv](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/natabs-det-equiv--6d6fb6eb58c215f16710bdf7.md) | 294 | `result-track:6d6fb6eb58c215f16710bdf7e42385c5d77db7307a544f0885266f1108ebec5d` |
| 20 | `theorem` | [natAbs_det_basis_change](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/natabs-det-basis-change--a96e3413206f28c0932157bd.md) | 359 | `result-track:a96e3413206f28c0932157bd5a4e6ae990e9e3eb8896ee000acfd01662318736` |
| 21 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-span-singleton--59cb4a41120b5b5031f53606.md) | 370 | `result-track:59cb4a41120b5b5031f536060ae3b2a5370c4092ed7532807009c4358ec7233d` |
| 22 | `theorem` | [absNorm_dvd_absNorm_of_le](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-dvd-absnorm-of-le--80acc1de8174a72ce2ca4cfd.md) | 384 | `result-track:80acc1de8174a72ce2ca4cfd13c79f26f4f914eb8039def184820e64cecd9dd2` |
| 23 | `theorem` | [absNorm_dvd_norm_of_mem](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-dvd-norm-of-mem--18b33aa89c003deba9c086c4.md) | 388 | `result-track:18b33aa89c003deba9c086c47ba989750710b626abd425b6f9bf948ed341ac27` |
| 24 | `theorem` | [absNorm_span_insert](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-span-insert--2ef7536125bcf0e6ee486ef8.md) | 395 | `result-track:2ef7536125bcf0e6ee486ef8366728e1dc47f19c06d1ca874a8b6b03abf1a52a` |
| 25 | `theorem` | [irreducible_of_irreducible_absNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/irreducible-of-irreducible-absnorm--b61197cb03e3caf02bcfb771.md) | 404 | `result-track:b61197cb03e3caf02bcfb771b1eabe1a55b1f7a27cdc1cd8dceaa1e363a36725` |
| 26 | `theorem` | [isPrime_of_irreducible_absNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/isprime-of-irreducible-absnorm--f803dddd681e31dbb27339c9.md) | 415 | `result-track:f803dddd681e31dbb27339c999d0596e0f1f8872c40b8f396446853b59559c32` |
| 27 | `theorem` | [prime_of_irreducible_absNorm_span](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/prime-of-irreducible-absnorm-span--101331b11b4773b4883e231b.md) | 421 | `result-track:101331b11b4773b4883e231b89cd57bde53fb5f2d0d3c324a18f0dc06b91d6d1` |
| 28 | `theorem` | [absNorm_mem](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/absnorm-mem--b454efab6a7751d31e11acfb.md) | 426 | `result-track:b454efab6a7751d31e11acfb14a4b6ccb683751d869bb3b976e3696640769dfb` |
| 29 | `theorem` | [span_singleton_absNorm_le](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/span-singleton-absnorm-le--1c4d2cab900703dda8686b27.md) | 431 | `result-track:1c4d2cab900703dda8686b276922ecd696c5aa5429235c4faffebab86b651d36` |
| 30 | `theorem` | [finite_setOf_absNorm_eq](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/finite-setof-absnorm-eq--bbbe5a0001257bfb2ea9c42d.md) | 435 | `result-track:bbbe5a0001257bfb2ea9c42dcdf41ab2f9194d8eb09b2b881569c1fda0f9a929` |
| 31 | `def` | [spanNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm--509f7439b1a751659fb778ac.md) | 470 | `declaration-track:509f7439b1a751659fb778ac80fcccdf5da4a319de62d2e759fe2bb7aabd54c5` |
| 32 | `theorem` | [spanNorm_bot](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-bot--58bc07b8fa46ec7f08049c61.md) | 475 | `result-track:58bc07b8fa46ec7f08049c61516c12bcd05675284d9d237d00d7742a86c19f31` |
| 33 | `theorem` | [spanNorm_eq_bot_iff](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-eq-bot-iff--93451c750781dab93ec6f628.md) | 482 | `result-track:93451c750781dab93ec6f6282cd7c797076d2153cbf6e84f167fe23f9174c61b` |
| 34 | `theorem` | [norm_mem_spanNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/norm-mem-spannorm--e8b18298c617c811e4d15ad2.md) | 493 | `result-track:e8b18298c617c811e4d15ad259150f4a4b35c79dca1ceafe3e8f8bbc906f4881` |
| 35 | `theorem` | [spanNorm_singleton](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-singleton--60d7adcb47c692cf3266a5db.md) | 498 | `result-track:60d7adcb47c692cf3266a5dbeb0e293787e8de9db3daa588b2b1f847c3cab1b8` |
| 36 | `theorem` | [spanNorm_top](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-top--1b181a37073fe2ab0a759645.md) | 509 | `result-track:1b181a37073fe2ab0a75964527dfe807553e65a9dbfba2e9b10a514528e8a70c` |
| 37 | `theorem` | [map_spanNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/map-spannorm--9dc78f838088da271f1e7996.md) | 516 | `result-track:9dc78f838088da271f1e7996e35c2a5325c15bdcb5d1bcf57110a063be327106` |
| 38 | `theorem` | [spanNorm_mono](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-mono--8b2b18d19b296b815c955e3a.md) | 524 | `result-track:8b2b18d19b296b815c955e3ac9a10a7c196be28ee15ac0f836f1c32a2bf9cd30` |
| 39 | `theorem` | [spanNorm_localization](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-localization--1a971734c1edea2e3851e18e.md) | 528 | `result-track:1a971734c1edea2e3851e18ee129b90a2f61c73591229b361680ce9257f1cc90` |
| 40 | `theorem` | [spanNorm_mul_spanNorm_le](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-mul-spannorm-le--b16268ca71cf5fbd0d43ab35.md) | 556 | `result-track:b16268ca71cf5fbd0d43ab35f74a883fcdde6494f169894efb022ffd1a743c1f` |
| 41 | `theorem` | [spanNorm_mul_of_bot_or_top](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-mul-of-bot-or-top--0f97acb7e0bfc9e45e001848.md) | 567 | `result-track:0f97acb7e0bfc9e45e0018484b79c7b0a18339520ff5a3cf731b77bc84892f08` |
| 42 | `theorem` | [spanNorm_mul_of_field](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-mul-of-field--5480d79888ab6ada5c355e92.md) | 582 | `result-track:5480d79888ab6ada5c355e92c39f4a5c38ee2c80df44648719f20205ac559af4` |
| 43 | `theorem` | [spanNorm_mul](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-mul--0c6a06ee0ad036f8a2cdcbf6.md) | 592 | `result-track:0c6a06ee0ad036f8a2cdcbf6cd1cbd8048861e7d8e2089038b074ecb0ab23f31` |
| 44 | `def` | [relNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm--53ebbeff263a3f18a56a25e3.md) | 628 | `declaration-track:53ebbeff263a3f18a56a25e34e4e1449cf4a021552fe6f8d7f13af854d43ee43` |
| 45 | `theorem` | [relNorm_apply](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm-apply--c710be6f813636fe1ff5d6e7.md) | 635 | `result-track:c710be6f813636fe1ff5d6e71fc1b4da7d2aca8c35a84371883fe037d63cab2a` |
| 46 | `theorem` | [spanNorm_eq](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/spannorm-eq--7bbc515566716a1a0e7ca4c3.md) | 640 | `result-track:7bbc515566716a1a0e7ca4c3a8e5c68e38162cc0db672464b6efbb26ac7d5f6f` |
| 47 | `theorem` | [relNorm_bot](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm-bot--cc34120310edfab19a6db43d.md) | 644 | `result-track:cc34120310edfab19a6db43d5b98d96a1290f0e50f139310a23ca68d4d10cf3e` |
| 48 | `theorem` | [relNorm_top](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm-top--acf55a11b76d23a586ce3747.md) | 649 | `result-track:acf55a11b76d23a586ce374733143849eff932539d8493d8eeebe27dd3c9e37d` |
| 49 | `theorem` | [relNorm_eq_bot_iff](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm-eq-bot-iff--798e90f699bb12a5f424854e.md) | 656 | `result-track:798e90f699bb12a5f424854e28f31a0bf158d5f447a0542986e43c6c333d0566` |
| 50 | `theorem` | [norm_mem_relNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/norm-mem-relnorm--68010997c9132bb69be31890.md) | 662 | `result-track:68010997c9132bb69be318907a58a706faa3174e0b987d7da82ce0ddeb12a4e6` |
| 51 | `theorem` | [relNorm_singleton](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm-singleton--e4cf56baabaed1f90ff18b45.md) | 667 | `result-track:e4cf56baabaed1f90ff18b45d54a3b0286e3a2100d467469dd27fa896ff5ecfc` |
| 52 | `theorem` | [map_relNorm](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/map-relnorm--dd08bfc38c840a4c7dd0cbe9.md) | 671 | `result-track:dd08bfc38c840a4c7dd0cbe9378c7e697aff97d1841ad306f89bdf4075e5b57d` |
| 53 | `theorem` | [relNorm_mono](../../../../mathematics/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/declarations/relnorm-mono--9ac78b19a19040dee0436620.md) | 677 | `result-track:9ac78b19a19040dee04366209aa395fe6a0d1a9ed4b059b955d65c5be4c5b9fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
