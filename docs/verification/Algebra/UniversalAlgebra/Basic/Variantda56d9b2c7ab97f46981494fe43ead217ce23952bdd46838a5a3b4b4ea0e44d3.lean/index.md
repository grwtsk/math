# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f14e505ff639ff509e771ae6980fc1c08094994",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f14e505ff639ff509e771ae6980fc1c08094994`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.CharZero` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [linearOrderedCommRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/linearorderedcommring--5ba3b7d83359d7a0e529fc99.md) | 43 | `declaration-track:5ba3b7d83359d7a0e529fc99abc6170061bafe94b5ef20bcb3b5e0618d751a44` |
| 2 | `instance` | [orderedCommRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/orderedcommring--01313ec89599861e66b48798.md) | 52 | `declaration-track:01313ec89599861e66b48798a2ff28ec4e697bca25e8b429521d29d5ab13f4b5` |
| 3 | `instance` | [orderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/orderedring--a80f4c1cb7b2cb991e27a2ea.md) | 55 | `declaration-track:a80f4c1cb7b2cb991e27a2eab0e65e6331cf319c1fc4b21236d239a764297415` |
| 4 | `instance` | [linearOrderedAddCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/linearorderedaddcommgroup--9696c93224f0ba941b5afe3c.md) | 58 | `declaration-track:9696c93224f0ba941b5afe3ca66bd64412a5762ceba07ffc896fb77d59e5dfca` |
| 5 | `theorem` | [abs_eq_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/abs-eq-natabs--6c2a1f7d0aa0da500a693d81.md) | 64 | `result-track:6c2a1f7d0aa0da500a693d816626b4b6532fcadfb3c663c158678004db4a9c97` |
| 6 | `lemma` | [coe_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/coe-natabs--c2f5458322ba99526d7cae60.md) | 69 | `result-track:c2f5458322ba99526d7cae604dce37197dcf882253ad122a5c10fb799c3f1fd7` |
| 7 | `lemma` | [_root_.GRWTSK.Algebra.UniversalAlgebra.AbsEqNatAbs.Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.Nat.cast_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/root-grwtsk-algebra-universalalgebra-abseqnatabs-variant08514bbdf36d1528--d5f321ac01bfcc83038eb255.md) | 72 | `result-track:d5f321ac01bfcc83038eb2554a271f5accb51fd171cdb7e3d5fa088d8206cc6f` |
| 8 | `theorem` | [natAbs_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/natabs-abs--592032bccbad6911124161d7.md) | 76 | `result-track:592032bccbad6911124161d7f734bf9d0358705a820b293cd8e741812d7b8733` |
| 9 | `theorem` | [sign_mul_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/sign-mul-abs--43716f1fbd804c2ff29d509b.md) | 79 | `result-track:43716f1fbd804c2ff29d509b113ceb0215618b574ae328374e892ecf1dedbb9f` |
| 10 | `theorem` | [coe_nat_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/coe-nat-eq-zero--62487ebbfa65f3a9cf2d5e0f.md) | 83 | `result-track:62487ebbfa65f3a9cf2d5e0f80606ef785109916c16c6d8fabb1305c647d9191` |
| 11 | `theorem` | [coe_nat_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/coe-nat-ne-zero--b6a9d9c3a57feecf8b622e81.md) | 87 | `result-track:b6a9d9c3a57feecf8b622e81f6c53508a486d571f2ee4c28fab1f26bb22715e1` |
| 12 | `theorem` | [coe_nat_ne_zero_iff_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/coe-nat-ne-zero-iff-pos--3179715be4683b19b836d130.md) | 90 | `result-track:3179715be4683b19b836d1300dd88afb154b12b94536983c2e70bcc5df0eb936` |
| 13 | `lemma` | [abs_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/abs-coe-nat--f3b60bc716617393ff40c87a.md) | 95 | `result-track:f3b60bc716617393ff40c87a488f0df9642b3302a30eec8ffc2bee6d7ad2c62e` |
| 14 | `theorem` | [sign_add_eq_of_sign_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/sign-add-eq-of-sign-eq--6ca25b389260ad548724b640.md) | 98 | `result-track:6ca25b389260ad548724b64062ac2d5b56c9ac0e690ab247b95a5886a99bb758` |
| 15 | `theorem` | [lt_succ_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/lt-succ-self--00f94c7c6cfc2320c6bc503a.md) | 108 | `result-track:00f94c7c6cfc2320c6bc503a5781b35d10fdc7eee5aa8ceb6cf45d937e55ea92` |
| 16 | `theorem` | [pred_self_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/pred-self-lt--d9ed4baeffb7a5186441bc3c.md) | 112 | `result-track:d9ed4baeffb7a5186441bc3cfa778a569958081b1fd388a0d6e2db4b14591574` |
| 17 | `theorem` | [sub_one_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/sub-one-lt-iff--c2c08f5de0ccfa15a7bbf4a0.md) | 119 | `result-track:c2c08f5de0ccfa15a7bbf4a02b941bd9513a4f19b2f9e7aa0ebf291c8161a9ef` |
| 18 | `theorem` | [le_sub_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/le-sub-one-iff--a012b75c7a9f1217d5e68731.md) | 123 | `result-track:a012b75c7a9f1217d5e68731195a49c831634ff398d9ddb89f01967d47f84a7f` |
| 19 | `theorem` | [abs_lt_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/abs-lt-one-iff--e701d9f1facf1f0b610431f2.md) | 128 | `result-track:e701d9f1facf1f0b610431f2feda616b2c8ee31e404279a83a09520f2f647c1a` |
| 20 | `theorem` | [abs_le_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/abs-le-one-iff--4b48435eac861b68c2fd4a56.md) | 137 | `result-track:4b48435eac861b68c2fd4a56e1c687183c4ce67d2545f9ed3bdd79bd31d28337` |
| 21 | `theorem` | [one_le_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/one-le-abs--4fc7fb8ec0825279c049d019.md) | 141 | `result-track:4fc7fb8ec0825279c049d01997e0853974f0208d12cc1b33e75ee2cbb500a569` |
| 22 | `def` | [inductionOn'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/inductionon--923737c5905858a5ff40e61b.md) | 147 | `declaration-track:923737c5905858a5ff40e61b2c328bb4e4f3abb64fda38831c982200a8f68274` |
| 23 | `theorem` | [le_induction](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/le-induction--b5b8d5b25a06b6fbe2e12884.md) | 171 | `result-track:b5b8d5b25a06b6fbe2e12884fded44e35767056b9e5722038c548021669b9adb` |
| 24 | `theorem` | [le_induction_down](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/le-induction-down--3e4c674c36d49dcc7cb70296.md) | 184 | `result-track:3e4c674c36d49dcc7cb7029650740d8a33e9ece98daf99a4c96d38d2a4993093` |
| 25 | `theorem` | [ediv_eq_zero_of_lt_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-eq-zero-of-lt-abs--16b6999fe5700e3004c817c9.md) | 209 | `result-track:16b6999fe5700e3004c817c9fc4d842624b2cb6da8c161f9660028f5b0771166` |
| 26 | `theorem` | [emod_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/emod-abs--bae7217235326b34ad3229d6.md) | 235 | `result-track:bae7217235326b34ad3229d65800f0257d0a918027a170e5205fd393f3e6dcd8` |
| 27 | `theorem` | [emod_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/emod-lt--fcd6397c9f1a5ff24085d4fc.md) | 243 | `result-track:fcd6397c9f1a5ff24085d4fc36c6fde0636142d93d4b42351a29ebaf9d4f3088` |
| 28 | `theorem` | [add_emod_eq_add_mod_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/add-emod-eq-add-mod-right--98b1990b7c1c4965febd3c7b.md) | 261 | `result-track:98b1990b7c1c4965febd3c7bc4d0a034e2e1e0ab4e2561facc112b763276f9d6` |
| 29 | `theorem` | [neg_emod_two](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/neg-emod-two--8a9fbb75fa15d94836301ad8.md) | 296 | `result-track:8a9fbb75fa15d94836301ad808e923ce2381635da7f1552ccee8767fa4f3a44e` |
| 30 | `theorem` | [abs_ediv_le_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/abs-ediv-le-abs--803bbf0e85eca2e1b4aeba12.md) | 306 | `result-track:803bbf0e85eca2e1b4aeba12dc68563c4b6de6218d131f0c01bea566c2ef1b81` |
| 31 | `theorem` | [emod_two_eq_zero_or_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/emod-two-eq-zero-or-one--9a376d6d7f11d5d14a442872.md) | 323 | `result-track:9a376d6d7f11d5d14a442872c4197517929a57e68d61836dfeff89ad3c837a29` |
| 32 | `theorem` | [ediv_dvd_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-dvd-ediv--078df4b323db1c7f214039a0.md) | 358 | `result-track:078df4b323db1c7f214039a01905f42f1ed9f23e6b0a281576fd3f19a41c625b` |
| 33 | `theorem` | [abs_sign_of_nonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/abs-sign-of-nonzero--6722b8e52a059d60148fa36f.md) | 384 | `result-track:6722b8e52a059d60148fa36f376ef6de447a5725a70e010a0ec6e1d584d7862e` |
| 34 | `theorem` | [exists_lt_and_lt_iff_not_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/exists-lt-and-lt-iff-not-dvd--223119cf1ff820d08f91d1c1.md) | 390 | `result-track:223119cf1ff820d08f91d1c14a5d876581359fef2849029dacb4db10751672e5` |
| 35 | `theorem` | [sign_eq_ediv_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/sign-eq-ediv-abs--15776da14e3b37879b7b2a62.md) | 418 | `result-track:15776da14e3b37879b7b2a621dbecf61a4785b22162a7a36435bfdfb1228c4bc` |
| 36 | `theorem` | [ediv_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-mul-le--cd3e48b236fa73406174a1fd.md) | 426 | `result-track:cd3e48b236fa73406174a1fdb9d54e2b8859e88f554bed38233aa2ec99efaf47` |
| 37 | `theorem` | [ediv_le_of_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-le-of-le-mul--7883086a9356049ce98d3964.md) | 430 | `result-track:7883086a9356049ce98d39641c3efa2213c5f6623034300aff4a1935e28263f3` |
| 38 | `theorem` | [mul_lt_of_lt_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/mul-lt-of-lt-ediv--016ec4a10ceb2278e906c992.md) | 434 | `result-track:016ec4a10ceb2278e906c9926090ae9a25e7fc2125b790f8505c5e0fb1af2875` |
| 39 | `theorem` | [mul_le_of_le_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/mul-le-of-le-ediv--b82f035ef0837a23f6249140.md) | 438 | `result-track:b82f035ef0837a23f6249140a100cb810e4a05f69b0ccaa962acd88774f7b884` |
| 40 | `theorem` | [le_ediv_of_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/le-ediv-of-mul-le--afc8fd05a71ad34b57eca4ac.md) | 442 | `result-track:afc8fd05a71ad34b57eca4ac0c958dd3c1b390a6b438729e63468c448266d471` |
| 41 | `theorem` | [le_ediv_iff_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/le-ediv-iff-mul-le--72164cf270e6d40b5a73f2da.md) | 447 | `result-track:72164cf270e6d40b5a73f2dad54872d3e317b9f85c6362044aa2f9b3bc033efe` |
| 42 | `theorem` | [ediv_le_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-le-ediv--38cdc24b1506f36d3fa440ae.md) | 451 | `result-track:38cdc24b1506f36d3fa440ae2dd898ca8a4e139e765add88aef023d32fb8b6d7` |
| 43 | `theorem` | [ediv_lt_of_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-lt-of-lt-mul--b1d9076765723964a00a8983.md) | 455 | `result-track:b1d9076765723964a00a89838ddc5685670407ce545c8b07c4659e4145955d6d` |
| 44 | `theorem` | [lt_mul_of_ediv_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/lt-mul-of-ediv-lt--902e80bdf4a8cdcfe8bc10df.md) | 459 | `result-track:902e80bdf4a8cdcfe8bc10df45978478db6831aaee9c9aeadb7bc4dfb5a8eed5` |
| 45 | `theorem` | [ediv_lt_iff_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-lt-iff-lt-mul--75c1d1f0f3f570221704048e.md) | 463 | `result-track:75c1d1f0f3f570221704048ea1c6400132a213fc98101534d93742de2fd37725` |
| 46 | `theorem` | [le_mul_of_ediv_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/le-mul-of-ediv-le--15e52407bf2bc4be3646a331.md) | 467 | `result-track:15e52407bf2bc4be3646a331b2ad714abb9a9333ff174eb823c9d213ebbc1384` |
| 47 | `theorem` | [lt_ediv_of_mul_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/lt-ediv-of-mul-lt--7931054f6c661ba40e3bc934.md) | 471 | `result-track:7931054f6c661ba40e3bc934c66d5c47e50b588f82189de12e05ec19ee511b83` |
| 48 | `theorem` | [lt_ediv_iff_mul_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/lt-ediv-iff-mul-lt--e1c3f8325f5af7186eb1a890.md) | 476 | `result-track:e1c3f8325f5af7186eb1a89086741719a0910e5893f037f2dc03ab6f9144b00c` |
| 49 | `theorem` | [ediv_pos_of_pos_of_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-pos-of-pos-of-dvd--c0f76e666a4fc1afec31916e.md) | 481 | `result-track:c0f76e666a4fc1afec31916e7bd97beb0b06ed2292ee4933e922d92a90eacca2` |
| 50 | `theorem` | [natAbs_eq_of_dvd_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/natabs-eq-of-dvd-dvd--e9099d6359375e1060d786ad.md) | 485 | `result-track:e9099d6359375e1060d786ad0d8a1f4c0543fb3a79286a12b25d9f538e15b790` |
| 51 | `theorem` | [ediv_eq_ediv_of_mul_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-eq-ediv-of-mul-eq-mul--681b8f9867719df587138119.md) | 489 | `result-track:681b8f9867719df587138119b5b8bc2bc9f801d9807e9d3e44f14d40cc599d9d` |
| 52 | `theorem` | [ediv_dvd_of_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/ediv-dvd-of-dvd--b61c9ebd560f7d63979b20e8.md) | 495 | `result-track:b61c9ebd560f7d63979b20e83919eecf869a9af0f69a6990a2db56ff6f749ea7` |
| 53 | `theorem` | [toNat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/tonat-le--4944f3bd64cb1eb39b29ced4.md) | 506 | `result-track:4944f3bd64cb1eb39b29ced4126c45470733ef935d5c448eeac8f908c9504caf` |
| 54 | `theorem` | [lt_toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/lt-tonat--b5ac9b9706ff3f7e3aeb366c.md) | 511 | `result-track:b5ac9b9706ff3f7e3aeb366c402e0043521d5bfc43463beb98cd0cdc7ea41047` |
| 55 | `theorem` | [coe_nat_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/coe-nat-nonpos-iff--63037d32e0adc0e47e31d2c1.md) | 516 | `result-track:63037d32e0adc0e47e31d2c1fb962fd6e7fde0a46d85c7c09f7aa5e8a71e5353` |
| 56 | `theorem` | [toNat_le_toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/tonat-le-tonat--7e0d5270ffb8c23727e167dc.md) | 521 | `result-track:7e0d5270ffb8c23727e167dcda6519f86462b353b95a09feadb725612d3204a5` |
| 57 | `theorem` | [toNat_lt_toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/tonat-lt-tonat--4d6515f02ca8be0b46391d80.md) | 525 | `result-track:4d6515f02ca8be0b46391d80e0d544d34d125e2177db9124bab89ac9790b7a25` |
| 58 | `theorem` | [lt_of_toNat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/lt-of-tonat-lt--7d7bc4788ab7f3db33534761.md) | 530 | `result-track:7d7bc4788ab7f3db3353476149d0a9f109f394e1164ab0ef29ecedd0685f815b` |
| 59 | `theorem` | [toNat_pred_coe_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/tonat-pred-coe-of-pos--224dc408a75e3d922d1471a7.md) | 535 | `result-track:224dc408a75e3d922d1471a7d420ed0a11de9e13e77c0016e6362c7a3ec3c3a3` |
| 60 | `theorem` | [toNat_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/tonat-eq-zero--545bb18801f5f23d3d109d65.md) | 540 | `result-track:545bb18801f5f23d3d109d654b26f6a8f266ef0f94796c2fe135439c26ac9c0a` |
| 61 | `theorem` | [toNat_sub_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantda56d9b2c7ab97f46981494fe43ead217ce23952bdd46838a5a3b4b4ea0e44d3.lean/declarations/tonat-sub-of-le--e428988e79d9a766b6b4ee6a.md) | 555 | `result-track:e428988e79d9a766b6b4ee6ad55fe5b290255783ac6d92ca5242066bd1fe5886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
