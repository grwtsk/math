# Verification target: GRWTSK.Algebra.GroupTheory.PushoutI.Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "886fd98ef9c3e064abf5fed42fbbfa9bdae022e1",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `886fd98ef9c3e064abf5fed42fbbfa9bdae022e1`.

Source path: `GRWTSK/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.CoprodI` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coprod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Complement` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PushoutI.con](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/pushouti-con--ae93b7be9437654546950899.md) | 59 | `declaration-track:ae93b7be9437654546950899f4eb2f670443504006123ac40894e86b8d814b9a` |
| 2 | `def` | [PushoutI](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/pushouti--eeb0b392fa69fd8362b8d914.md) | 66 | `declaration-track:eeb0b392fa69fd8362b8d914b073f6277f1eeaae522b54b338bc4f49e5c13b5e` |
| 3 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/mul--4a48d22162d9eb05380d9171.md) | 75 | `declaration-track:4a48d22162d9eb05380d9171caea2fd57582078c56d89ac5bf0c582ebac6c380` |
| 4 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/one--4173c235b0fd4a453d05f6e4.md) | 78 | `declaration-track:4173c235b0fd4a453d05f6e47ef566c6eb1d2491102c529f9715dc95d48d8da9` |
| 5 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/monoid--0a43670d3207892225d333f8.md) | 81 | `declaration-track:0a43670d3207892225d333f849246f4826a1a01eab5ff315926e73451ba39c12` |
| 6 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/of--e76cbf88333bafeed600c95a.md) | 87 | `declaration-track:e76cbf88333bafeed600c95a8a7485c3848af10344e2cb5a1198abdf6c8a1cf4` |
| 7 | `def` | [base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/base--0b66238cef86bf89bdc119d0.md) | 92 | `declaration-track:0b66238cef86bf89bdc119d002c1c722a2f287634c6d459becd17eb6da18083c` |
| 8 | `theorem` | [of_comp_eq_base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/of-comp-eq-base--f63f1e146b6030a44fbc7309.md) | 95 | `result-track:f63f1e146b6030a44fbc7309e4bc0aadba0b983bd9a84836452210991051d810` |
| 9 | `theorem` | [of_apply_eq_base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/of-apply-eq-base--60e4f76b7fee21c20bfd482e.md) | 103 | `result-track:60e4f76b7fee21c20bfd482e9f1eef135caac065997e5a08ad6b7170bad88abf` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/lift--8611e449f49e4d68e85a244b.md) | 108 | `declaration-track:8611e449f49e4d68e85a244ba44c739b5d96710d98d4d6c7782771816696d007` |
| 11 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/lift-of--2a6d74b35e4d11623f60b2ae.md) | 118 | `result-track:2a6d74b35e4d11623f60b2aea0a41c5911f6f084729f27b95f6c7a0a09afe0a2` |
| 12 | `theorem` | [lift_base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/lift-base--9395051808c31844be486ea2.md) | 126 | `result-track:9395051808c31844be486ea222527ca3f86070e87af627fb865d77277cc02984` |
| 13 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/hom-ext--e0d30e5d81cf562e34b5d42d.md) | 134 | `result-track:e0d30e5d81cf562e34b5d42dd442464030a76454eb43a946653116d5bc8f61c5` |
| 14 | `theorem` | [hom_ext_nonempty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/hom-ext-nonempty--2664444b72a5df834e438ff2.md) | 143 | `result-track:2664444b72a5df834e438ff2532d21c2ec0b8a8c34b91775095523b9622b216d` |
| 15 | `def` | [homEquiv](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/homequiv--47dfc8e514e39a3eb8d38126.md) | 156 | `declaration-track:47dfc8e514e39a3eb8d3812626ed4d54d0794c398d1ae8d6acaa3041d33de0ba` |
| 16 | `def` | [ofCoprodI](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/ofcoprodi--77e229ae13712bf34ee8337f.md) | 166 | `declaration-track:77e229ae13712bf34ee8337f768924522ef894935de4ed75e918941170727f45` |
| 17 | `theorem` | [ofCoprodI_of](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/ofcoprodi-of--10536a5d27b8b13b995967f8.md) | 170 | `result-track:10536a5d27b8b13b995967f89bf521f2b345f17a92b4c8630cffb005b2b28799` |
| 18 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/induction-on--640d10416cf7c1596bb3d083.md) | 174 | `result-track:640d10416cf7c1596bb3d0834cf9658d5e80ac33f949aeb06ac894b113dbaf71` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/instance--3b6bda3f4f90cea2bef8b631.md) | 197 | `declaration-track:3b6bda3f4f90cea2bef8b631281ae64ee335c8ca03b75f623eabfa69ee7ccb81` |
| 20 | `structure` | [Transversal](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/transversal--08c52400427684032313f318.md) | 228 | `declaration-track:08c52400427684032313f318364aa9cdfef43cc186a27896265f96d4d4e451ec` |
| 21 | `theorem` | [transversal_nonempty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/transversal-nonempty--31295ad022b461d54a4428db.md) | 238 | `result-track:31295ad022b461d54a4428dba602f1164b6c68347c06f1dc44943186b4859fad` |
| 22 | `structure` | [_root_.GRWTSK.Algebra.GroupTheory.Transversal.Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.Monoid.PushoutI.NormalWord](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/root-grwtsk-algebra-grouptheory-transversal-variante377c936e26bb06c4a0c8--9a7cc5f9d2684553f8ad49a4.md) | 251 | `declaration-track:9a7cc5f9d2684553f8ad49a463e7b4a2a4d3ea3b5f5d01008bdce3d59bbfaa4d` |
| 23 | `structure` | [Pair](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/pair--c8b76dc9a1ac1cd3f22c9c77.md) | 264 | `declaration-track:c8b76dc9a1ac1cd3f22c9c77a1d6079e9877263f1ae751393c413c631eba1ede` |
| 24 | `def` | [empty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/empty--1f9bde755dae528825f36306.md) | 272 | `declaration-track:1f9bde755dae528825f36306fad9b3ae538b51e7128d78613778adaf55d18493` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/instance--8bcf636d5660a695e2f6be52.md) | 274 | `declaration-track:8bcf636d5660a695e2f6be522340ce2d5eed0587f85523c935d67af536bcbe71` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/instance--157d47e7e0c30b03f1b944aa.md) | 276 | `declaration-track:157d47e7e0c30b03f1b944aa04fe9bbfa85e524c70d84fb82830dd26d99f9ce9` |
| 27 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/ext--9fb0a016683d3d12b0929560.md) | 282 | `result-track:9fb0a016683d3d12b09295608065ffba1ae4598ef2ec0927d9f06df8375e545e` |
| 28 | `instance` | [baseAction](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/baseaction--311e1aa1860d8bdb2f7a9f50.md) | 290 | `declaration-track:311e1aa1860d8bdb2f7a9f50c39431ed35cf9950237d310e4f7d7d750f9baef8` |
| 29 | `theorem` | [base_smul_def'](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/base-smul-def--d4a1b6aa4604988e5192cdfb.md) | 295 | `result-track:d4a1b6aa4604988e5192cdfb42f8211471b918c734f0b4a6ebbb5c59a6c0121b` |
| 30 | `def` | [prod](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod--6e13ec0eab907d8edfe578a9.md) | 299 | `declaration-track:6e13ec0eab907d8edfe578a95200cda7d56d3d01799e8508b046da42fa962614` |
| 31 | `theorem` | [prod_base_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-base-smul--09b7147e7cec7249bdaa4d67.md) | 303 | `result-track:09b7147e7cec7249bdaa4d6700517e887e1cda6324072e0df6cc2af37158b552` |
| 32 | `theorem` | [prod_empty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-empty--5271619dfdbe6c178879a751.md) | 308 | `result-track:5271619dfdbe6c178879a751729bfc4917d4397f1fd10e401b24acfbf0a064f3` |
| 33 | `def` | [cons](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/cons--77a6d37ad83e69751b2a1421.md) | 314 | `declaration-track:77a6d37ad83e69751b2a1421c3756e207a2f2264899292e17c759324999fcf13` |
| 34 | `theorem` | [prod_cons](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-cons--146ba69e11ede5f4902c7bf5.md) | 329 | `result-track:146ba69e11ede5f4902c7bf58d162bdbf4dae9c08fd8571b691ffaaba3ae3d5d` |
| 35 | `theorem` | [eq_one_of_smul_normalized](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/eq-one-of-smul-normalized--a8cebfc3d13008a33927fee9.md) | 338 | `result-track:a8cebfc3d13008a33927fee9835111d3b75cec20694e2df956bce1b698b5721a` |
| 36 | `theorem` | [ext_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/ext-smul--685815fb800eefe397241837.md) | 379 | `result-track:685815fb800eefe397241837cc59cebe9bf2feb3f20c6833604115c9ab783d17` |
| 37 | `def` | [rcons](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/rcons--4faf17378b0dead71559b6a0.md) | 396 | `declaration-track:4faf17378b0dead71559b6a03ff886783c3ef24fd6bf29b1b8d051552b60d482` |
| 38 | `theorem` | [rcons_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/rcons-injective--b153b463a5bf6cab479969c1.md) | 408 | `result-track:b153b463a5bf6cab479969c12a655f1bf37ca62f27ef081b7e4cb984c281ca88` |
| 39 | `def` | [equivPair](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/equivpair--0df653a7a854ff5f499867e8.md) | 422 | `declaration-track:0df653a7a854ff5f499867e8b402ad5ac0f882688184a143742527031b2ab0eb` |
| 40 | `instance` | [summandAction](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/summandaction--64560aae1e08518d1205b9df.md) | 443 | `declaration-track:64560aae1e08518d1205b9df9664bd8ce736499fd3ed8fd0a4e0852b4ff69651` |
| 41 | `theorem` | [summand_smul_def'](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/summand-smul-def--246620a37d1bf24feaf3fcee.md) | 455 | `result-track:246620a37d1bf24feaf3fcee0f82e136a6a8c57aada62e0af8d937bd44cf06c2` |
| 42 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/mulaction--bf24a47adbdf2459f527bd60.md) | 460 | `declaration-track:bf24a47adbdf2459f527bd607dfa6d789978aa6e1986a3d396d1726c4deeb6d0` |
| 43 | `theorem` | [base_smul_def](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/base-smul-def--a0bbde678055c3fa920d6974.md) | 476 | `result-track:a0bbde678055c3fa920d69745e5f3a4e78395431deb9b3509a60a5cb9177ab10` |
| 44 | `theorem` | [summand_smul_def](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/summand-smul-def--131cac73390b41f761c5d491.md) | 482 | `result-track:131cac73390b41f761c5d491e17bb4495a56dcc62f725d8ffb4e030021018a62` |
| 45 | `theorem` | [of_smul_eq_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/of-smul-eq-smul--cb3adcd74d95023ee4f27285.md) | 490 | `result-track:cb3adcd74d95023ee4f27285134fb6d8dd0434d59a0c47c63b34158b95be8962` |
| 46 | `theorem` | [base_smul_eq_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/base-smul-eq-smul--5759ffbce0de90cc0be44607.md) | 494 | `result-track:5759ffbce0de90cc0be446076c1325a0a65edbb404fe96d9896128722965ed8b` |
| 47 | `def` | [consRecOn](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/consrecon--497a67d9b398271809361a40.md) | 501 | `declaration-track:497a67d9b398271809361a40e131343ad3f7cff6e38c58d398c02fb64e31b375` |
| 48 | `theorem` | [cons_eq_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/cons-eq-smul--71a9b46e8847a5064eed289a.md) | 531 | `result-track:71a9b46e8847a5064eed289a5cfbf5b63ca48b1d84dc69e8ea50d01277cbb324` |
| 49 | `theorem` | [prod_summand_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-summand-smul--febffbc93133c9baab986e96.md) | 541 | `result-track:febffbc93133c9baab986e96e433316720b4ae7c7be4689dd8fd1ef110b6a546` |
| 50 | `theorem` | [prod_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-smul--1d76d2128c408669c3d0d01d.md) | 550 | `result-track:1d76d2128c408669c3d0d01dfaaa291545faa000925fdca0a5783a902fe40fd5` |
| 51 | `theorem` | [prod_smul_empty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-smul-empty--c1b18408f90660f52d027b06.md) | 557 | `result-track:c1b18408f90660f52d027b068106accb97d89957dd7968d26e60a9dc492660f9` |
| 52 | `def` | [equiv](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/equiv--9318d59ffb37ef4069c2ad32.md) | 566 | `declaration-track:9318d59ffb37ef4069c2ad327c95e66b4381e73101c6c26bbc987312aef5acc4` |
| 53 | `theorem` | [prod_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/prod-injective--90508749d68dbd8e3687949c.md) | 573 | `result-track:90508749d68dbd8e3687949c5124cd668d56bb8ddf3ae5c2b8e0a7103fe953a5` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/instance--b2c1fd8718bc5899ec83a295.md) | 579 | `declaration-track:b2c1fd8718bc5899ec83a295f93c0f6c8348af3170849c0bfe7e5c76dbd32ac7` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/instance--a4d99f73a7a6be5b31bb89e2.md) | 582 | `declaration-track:a4d99f73a7a6be5b31bb89e2e677ef7223c56b03d2b0ec3262bfca9abe24e7d5` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/instance--e89c95d96f2ac9350f3e99fd.md) | 585 | `declaration-track:e89c95d96f2ac9350f3e99fdc2aee1b3aaad0d999ca836ccace113dd25f8a85d` |
| 57 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/of-injective--02dda5e8c2ea994285a18a7a.md) | 596 | `result-track:02dda5e8c2ea994285a18a7ad4e90680f47d630c33a9dc8b96cbc1b03ec23b60` |
| 58 | `theorem` | [base_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/base-injective--dc745835d7330fe6cd23d1cd.md) | 607 | `result-track:dc745835d7330fe6cd23d1cdf1b26b7890c83be0b3afab1fa4f88b595cc8ea05` |
| 59 | `def` | [Reduced](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/reduced--f5894a6637961bf557cc9700.md) | 624 | `declaration-track:f5894a6637961bf557cc9700820983def58ee00a5a45c80199d71d603d3e8ac1` |
| 60 | `theorem` | [Reduced.exists_normalWord_prod_eq](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/reduced-exists-normalword-prod-eq--beba849f3ed4fe655944808e.md) | 627 | `result-track:beba849f3ed4fe655944808e9ef0ce7875ddcd49c636fcc064db6d9a1d168567` |
| 61 | `theorem` | [Reduced.eq_empty_of_mem_range](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/reduced-eq-empty-of-mem-range--aa3605de19035a4b1041d26d.md) | 644 | `result-track:aa3605de19035a4b1041d26d9a0f89544d3ad84ae148d0f8ff5d5741c8318b9d` |
| 62 | `theorem` | [inf_of_range_eq_base_range](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/declarations/inf-of-range-eq-base-range--c1b711d06955adfbb1cc5a84.md) | 663 | `result-track:c1b711d06955adfbb1cc5a840d3334f522aefa00a6deaea0104a010fd46de9f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
