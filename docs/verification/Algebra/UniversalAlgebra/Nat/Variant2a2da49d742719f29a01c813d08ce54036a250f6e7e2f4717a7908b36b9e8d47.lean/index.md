# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa378a5bf96eed77910be15f1fa7aca582618372",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa378a5bf96eed77910be15f1fa7aca582618372`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/instance--4680fe414413d4e6850dc869.md) | 33 | `declaration-track:4680fe414413d4e6850dc8694d175664dcf7a082e30cf500e65abf6349e63aeb` |
| 2 | `theorem` | [gcd_eq_nat_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/gcd-eq-nat-gcd--763b4128ac942cb7076e4038.md) | 43 | `result-track:763b4128ac942cb7076e403825378de5dc4bcbda8a6acc01801b8926e5135e81` |
| 3 | `theorem` | [lcm_eq_nat_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/lcm-eq-nat-lcm--63f7c47b5351f2e472566fa8.md) | 46 | `result-track:63f7c47b5351f2e472566fa83e46da4aace5c2c38c7a84b108a417aa17343bd3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/instance--dea27e61d7672ec4b0d9b707.md) | 49 | `declaration-track:dea27e61d7672ec4b0d9b70780310a45eb2b9061b66d18c392be726a6bcfd262` |
| 5 | `instance` | [strongNormalizationMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/strongnormalizationmonoid--e0192d17f7f50e81252c5d68.md) | 59 | `declaration-track:e0192d17f7f50e81252c5d68a911c75d0ab2c8c0536a6c0789cec6d574234146` |
| 6 | `theorem` | [normUnit_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/normunit-eq--bcf96e5d09b1141ccd1cef30.md) | 72 | `result-track:bcf96e5d09b1141ccd1cef30a19026160e8f04946f770fcab534ec2f3f895566` |
| 7 | `theorem` | [normalize_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/normalize-of-nonneg--769b8ae4120eff98107bd6d1.md) | 74 | `result-track:769b8ae4120eff98107bd6d1135e7bc1166732d412dfb890e01e17d68c37c19b` |
| 8 | `theorem` | [normalize_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/normalize-of-nonpos--afde87d69fda7c4074cd4d4e.md) | 77 | `result-track:afde87d69fda7c4074cd4d4e28b64adbfc458044b067b17001046ffe9bb68708` |
| 9 | `theorem` | [normalize_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/normalize-coe-nat--877fd360b395d959d3d92f71.md) | 83 | `result-track:877fd360b395d959d3d92f711fc24d820ff368096ba680c6f94d2324c35aa0fb` |
| 10 | `theorem` | [abs_eq_normalize](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/abs-eq-normalize--6249ddff26461bcdf0d8400c.md) | 86 | `result-track:6249ddff26461bcdf0d8400cc38fdd2ab4d416c311481a98ffe68315d99a146c` |
| 11 | `theorem` | [nonneg_of_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/nonneg-of-normalize-eq-self--d6681721a699633fb5aaa9c2.md) | 90 | `result-track:d6681721a699633fb5aaa9c248d7ed59a04150f562988b00f4447cf46e1e61c8` |
| 12 | `theorem` | [nonneg_iff_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/nonneg-iff-normalize-eq-self--87ad9e595778f17cc4b6d03c.md) | 96 | `result-track:87ad9e595778f17cc4b6d03cb480991a147e4a62e850c09b9191f6d6ae7ced83` |
| 13 | `theorem` | [eq_of_associated_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/eq-of-associated-of-nonneg--ebd5441d6550ab3c3cbcaf1c.md) | 99 | `result-track:ebd5441d6550ab3c3cbcaf1cf28d8d9a9c1fc447b78ad9f2fcb7f20a31174774` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/instance--f85a420fa5aff3a1d9e14743.md) | 107 | `declaration-track:f85a420fa5aff3a1d9e1474367f2666c3799727bb0fc2959333280ba6aea306e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/instance--13e3c2f75bab2a4393c6ccbd.md) | 119 | `declaration-track:13e3c2f75bab2a4393c6ccbdc27a742d48e76bb39d8c45d0df71e2d585ff8400` |
| 16 | `theorem` | [coe_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/coe-gcd--6cdac1c053fc290153a7c50b.md) | 125 | `result-track:6cdac1c053fc290153a7c50bdf16d495f6e7497da6daf805dfc945dba6d6539a` |
| 17 | `theorem` | [coe_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/coe-lcm--3bf48b04c2dfc1e1a2e1af2e.md) | 128 | `result-track:3bf48b04c2dfc1e1a2e1af2e90aa0dc47ce9fb0ce0aecabd450035549cae2cb8` |
| 18 | `theorem` | [natAbs_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/natabs-gcd--092f343bfdea3f7f9fc5c03b.md) | 131 | `result-track:092f343bfdea3f7f9fc5c03bc77c90bfbc0a74090e3d334c74c36e511b05a7b3` |
| 19 | `theorem` | [natAbs_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/natabs-lcm--e34487403e284a9f8580db78.md) | 134 | `result-track:e34487403e284a9f8580db786d2ca8c9c299289a1f9bdd318c8d52df8af44d77` |
| 20 | `lemma` | [gcd_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/gcd-nonneg--8eaa7fe358ad70678d66705a.md) | 137 | `result-track:8eaa7fe358ad70678d66705a2bfa0996d8ac0a97891e0a8037f043fac438d8a6` |
| 21 | `lemma` | [lcm_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/lcm-nonneg--3c74a428cb77b2ff505903f0.md) | 138 | `result-track:3c74a428cb77b2ff505903f0a5a07291447cfc8c8d8cc3de675f7da33fe2faf3` |
| 22 | `theorem` | [exists_unit_of_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/exists-unit-of-abs--459b842793b88d8370614259.md) | 142 | `result-track:459b842793b88d837061425985905f1b33c2e41bbde3df6fec273a78048eb397` |
| 23 | `theorem` | [gcd_eq_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/gcd-eq-natabs--df8f0f84291c9e93c19648f6.md) | 150 | `result-track:df8f0f84291c9e93c19648f60cc84fc4f83eccff402163bb3a7724b6f97ac606` |
| 24 | `def` | [associatesIntEquivNat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/associatesintequivnat--fd6c83ce38c4d509f30e7040.md) | 155 | `declaration-track:fd6c83ce38c4d509f30e70404d537a5c635a57b5ec481b638ef2d06043a0b857` |
| 25 | `theorem` | [Int.associated_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/int-associated-natabs--c6aa47ff661e728c33921585.md) | 163 | `result-track:c6aa47ff661e728c339215853111b9f56c936c3d59fe304019dff98f5998b3c1` |
| 26 | `theorem` | [Int.associated_iff_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/int-associated-iff-natabs--d15a3e05ee88852b46a6a640.md) | 166 | `result-track:d15a3e05ee88852b46a6a6408aaf00c733b2ee1a0634714f8f9a3c481e8c7c4e` |
| 27 | `theorem` | [Int.associated_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant2a2da49d742719f29a01c813d08ce54036a250f6e7e2f4717a7908b36b9e8d47.lean/declarations/int-associated-iff--a45a47340a5aeb6ba30213a6.md) | 171 | `result-track:a45a47340a5aeb6ba30213a6f21109ebe14f5c2d84288040b6177775a37d9c13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
