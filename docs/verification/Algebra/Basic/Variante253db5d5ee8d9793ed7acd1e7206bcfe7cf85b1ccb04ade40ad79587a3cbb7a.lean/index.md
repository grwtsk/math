# Verification target: GRWTSK.Algebra.Basic.Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "866dc76dbc615e86e000fe7ceb7110e6570ccf75",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `866dc76dbc615e86e000fe7ceb7110e6570ccf75`.

Source path: `GRWTSK/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.PrimeMultiplicity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationRing` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/isdiscretevaluationring--c42dfdea3ee1e75ee3e3c667.md) | 50 | `declaration-track:c42dfdea3ee1e75ee3e3c667a765d6c458433c2e37b39fc80c25fe92794c20a9` |
| 2 | `theorem` | [not_a_field](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/not-a-field--2d99d3861a3c51e41aa6d964.md) | 58 | `result-track:2d99d3861a3c51e41aa6d9642313b9bd87c8754ef03f308bb44118eb9a8f584d` |
| 3 | `theorem` | [not_isField](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/not-isfield--501e74cc27448afd8a13d9fe.md) | 62 | `result-track:501e74cc27448afd8a13d9fe8e473d84c3387885c8324b82a1ee68217723287b` |
| 4 | `theorem` | [irreducible_of_span_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/irreducible-of-span-eq-maximalideal--741e7bd80bc98d7071283f09.md) | 69 | `result-track:741e7bd80bc98d7071283f09e9eca54fe00d984476886f5730a20f2179bd7c12` |
| 5 | `theorem` | [irreducible_iff_uniformizer](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/irreducible-iff-uniformizer--525ab916559b90bfce05e965.md) | 86 | `result-track:525ab916559b90bfce05e965a01cf9382e10170ba039f20e24a6b702f2f77746` |
| 6 | `theorem` | [_root_.Irreducible.maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/root-irreducible-maximalideal-eq--229a9be28f17b43666e6392a.md) | 91 | `result-track:229a9be28f17b43666e6392a5a5888b8b04c25bb41a7838d6944641f2d51ea7d` |
| 7 | `theorem` | [exists_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/exists-irreducible--fe31b22a498891f8c07b787c.md) | 98 | `result-track:fe31b22a498891f8c07b787c9c2bc360ef760e0bbf08a3046ddb576edcff1746` |
| 8 | `theorem` | [exists_prime](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/exists-prime--a4dde791705da47ac244bbb0.md) | 103 | `result-track:a4dde791705da47ac244bbb068cbce873036836ed7c7159e673c581f7334ab99` |
| 9 | `theorem` | [iff_pid_with_one_nonzero_prime](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/iff-pid-with-one-nonzero-prime--de5e4ce0b49c82e95ad8b8cc.md) | 107 | `result-track:de5e4ce0b49c82e95ad8b8cc88da9c2f30149a05251383f88ab910da95cb156e` |
| 10 | `theorem` | [associated_of_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/associated-of-irreducible--b0ff179483c1741bf7fab290.md) | 136 | `result-track:b0ff179483c1741bf7fab290551694a32cf80aee01918a02358fab57d459dac9` |
| 11 | `def` | [HasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/hasunitmulpowirreduciblefactorization--32cebd7477409e1c315b8e26.md) | 144 | `declaration-track:32cebd7477409e1c315b8e2643eedb751dd36399690742c26ea9865aff4f21b6` |
| 12 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/unique-irreducible--254c1a54747517eb78aeb6de.md) | 151 | `result-track:254c1a54747517eb78aeb6ded171ac95d5360f87d8d233ee7ff20197659625f6` |
| 13 | `theorem` | [toUniqueFactorizationMonoid](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/touniquefactorizationmonoid--03ab9bf1504dc413cbe8a5e0.md) | 180 | `result-track:03ab9bf1504dc413cbe8a5e0ebb2e8c45e91d0ddc4b4b23cf54815d3eafd4cae` |
| 14 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/of-ufd-of-unique-irreducible--07b1b11bb516eb9082becddc.md) | 209 | `result-track:07b1b11bb516eb9082becddcaf2b2f1c6eab7d82c70851c43e383352c56e375f` |
| 15 | `theorem` | [aux_pid_of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/aux-pid-of-ufd-of-unique-irreducible--bb5e18229f4e85baf68f3465.md) | 230 | `result-track:bb5e18229f4e85baf68f346566f1e5cf0276d2e5a7a24d9f3d5f521454d73e9d` |
| 16 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/of-ufd-of-unique-irreducible--4e8b7b169e8ce47ddf5ffa70.md) | 266 | `result-track:4e8b7b169e8ce47ddf5ffa707e69f31bd923827cc816129e613e5d4f774f391a` |
| 17 | `theorem` | [ofHasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/ofhasunitmulpowirreduciblefactorization--d87057b346260e488efdfd99.md) | 289 | `result-track:d87057b346260e488efdfd994b69d5837208b3fbb77ff8e17f7866d6a0a58e23` |
| 18 | `theorem` | [RingEquivClass.isDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/ringequivclass-isdiscretevaluationring--db8460d33df320095c9bee81.md) | 297 | `result-track:db8460d33df320095c9bee810ce678765e41d787ea0a7c717eeb1ba604945873` |
| 19 | `theorem` | [associated_pow_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/associated-pow-irreducible--a9243ec60930dca2e7197574.md) | 317 | `result-track:a9243ec60930dca2e7197574b77afdb8edd45cadeacde89c2a86ab9144182bff` |
| 20 | `theorem` | [eq_unit_mul_pow_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/eq-unit-mul-pow-irreducible--5ddf830a757f9caf5b2fc915.md) | 334 | `result-track:5ddf830a757f9caf5b2fc91508cc6804e97e0d84044603cebdb035d4d0cf4543` |
| 21 | `theorem` | [ideal_eq_span_pow_irreducible](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/ideal-eq-span-pow-irreducible--76d35cccbe9b6f0abac3cb39.md) | 343 | `result-track:76d35cccbe9b6f0abac3cb39f0e9107258781da74f4fd24caaf98e558585b552` |
| 22 | `theorem` | [unit_mul_pow_congr_pow](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/unit-mul-pow-congr-pow--75687b5ff00f4d3689a8eafa.md) | 354 | `result-track:75687b5ff00f4d3689a8eafa0a460b7d20b75c0f0e2cbc8807e350ada5c9f18a` |
| 23 | `theorem` | [unit_mul_pow_congr_unit](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/unit-mul-pow-congr-unit--d8213d34bbfc389346dafe84.md) | 369 | `result-track:d8213d34bbfc389346dafe84aa296f4f36938e431ce6d69c1b0173fe7b66efff` |
| 24 | `def` | [addVal](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval--a0a7b42f2cd244809501cf09.md) | 385 | `declaration-track:a0a7b42f2cd244809501cf09a0f9e9d9206bd04562b2a42ca4fbada1c17c6d14` |
| 25 | `theorem` | [addVal_def](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-def--c53769e64109f2514e608310.md) | 389 | `result-track:c53769e64109f2514e6083103151e3ff3deff11adcc392a708a1f2a79621ba07` |
| 26 | `theorem` | [addVal_def'](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-def--9a551857fa7d73228aff28b4.md) | 398 | `result-track:9a551857fa7d73228aff28b43958442cff49b80e5823053e8aee3f54dc1481ba` |
| 27 | `theorem` | [addVal_zero](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-zero--9e2b3f146458f9c7460b3d00.md) | 402 | `result-track:9e2b3f146458f9c7460b3d00769c823556788d588da96db8ed661e04408d3c7b` |
| 28 | `theorem` | [addVal_one](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-one--1a5c7e92efa5a74798f1720a.md) | 405 | `result-track:1a5c7e92efa5a74798f1720a0d445a5c551b44bc80de724420d3c1b7420b555d` |
| 29 | `theorem` | [addVal_uniformizer](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-uniformizer--5d14ddbf4c3bf02c3ff44ea4.md) | 409 | `result-track:5d14ddbf4c3bf02c3ff44ea4c87802bb08b023c7c954433c17ee7720c22b349f` |
| 30 | `theorem` | [addVal_mul](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-mul--68dd6da041d9ff71ec8bc7ee.md) | 413 | `result-track:68dd6da041d9ff71ec8bc7ee5fea7a844aa69ddb698628a68affd0611fc5baef` |
| 31 | `theorem` | [addVal_pow](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-pow--005d647f9ad74fe7708356ac.md) | 417 | `result-track:005d647f9ad74fe7708356ac8dd123d9f7e645fb94160ffb06d5068625a558bc` |
| 32 | `theorem` | [_root_.Irreducible.addVal_pow](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/root-irreducible-addval-pow--6bde2121e828c019f9973402.md) | 420 | `result-track:6bde2121e828c019f9973402a1daf9617de3fc3ff7402057dcf37c5ad6da6e56` |
| 33 | `theorem` | [addVal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-eq-top-iff--f73ddaebe1dd007edfa366c3.md) | 424 | `result-track:f73ddaebe1dd007edfa366c384cedcdef30024ca67431f127b6d2b0b1aa62c76` |
| 34 | `theorem` | [addVal_le_iff_dvd](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-le-iff-dvd--7d2931051a2ab277d5c5b6d2.md) | 436 | `result-track:7d2931051a2ab277d5c5b6d2b35d86f86fcb0b8e7c9bf3f7cefe219ae527e8db` |
| 35 | `theorem` | [addVal_add](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-add--4b46d31f90ce2ed839e562fb.md) | 451 | `result-track:4b46d31f90ce2ed839e562fbd6c68597bcbfc5bbd0ed7441af38007282ac77ea` |
| 36 | `lemma` | [addVal_eq_zero_of_unit](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-eq-zero-of-unit--6d13bdf24095b0bedd466850.md) | 455 | `result-track:6d13bdf24095b0bedd4668502e91380c57bffc56be51716accbd5bc022e35f7b` |
| 37 | `lemma` | [addVal_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/addval-eq-zero-iff--6f53271c670c46e87a238f63.md) | 461 | `result-track:6f53271c670c46e87a238f63e63f421d0b61831665835d7805ad160c4596743f` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/instance--932d605be3c931d9bfe32461.md) | 471 | `declaration-track:932d605be3c931d9bfe32461c0320c2d54817c0188bc4e7b0c04003de10b356c` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.lean/declarations/instance--9fecd3d6d8635f3e6b39dbe0.md) | 487 | `declaration-track:9fecd3d6d8635f3e6b39dbe011f32dedc34ea5b8479e56b9d1c198ed092f487f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
