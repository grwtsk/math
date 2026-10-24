# Verification target: GRWTSK.Algebra.Basic.Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72b3ec682c56d747a0194d7e5f478cca49ff91c4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72b3ec682c56d747a0194d7e5f478cca49ff91c4`.

Source path: `GRWTSK/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ULift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ModEq` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.GrindInstances` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natCast_eq_natCast'](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/natcast-eq-natcast--ef3edaa08f87fca85efda667.md) | 36 | `result-track:ef3edaa08f87fca85efda66764b7fcf044395ba592124acf9def4fa976221a0d` |
| 2 | `lemma` | [natCast_eq_natCast_mod](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/natcast-eq-natcast-mod--95f89eb66fac6372ce53820d.md) | 42 | `result-track:95f89eb66fac6372ce53820d0926b2bfd8a001d47d8469a3473ba54f6cf73c0c` |
| 3 | `lemma` | [natCast_eq_natCast](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/natcast-eq-natcast--ae9f9e8fc304c2b6523f2908.md) | 47 | `result-track:ae9f9e8fc304c2b6523f2908346d3e37d6473b40f4ceb902df99db385100c46b` |
| 4 | `lemma` | [natCast_injOn_Iio](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/natcast-injon-iio--353f48129f6b84a4e8463701.md) | 54 | `result-track:353f48129f6b84a4e8463701b1856b8de174b1a81fc35ef872eb61a0ac99ce85` |
| 5 | `lemma` | [intCast_eq_intCast](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/intcast-eq-intcast--2226c340ab3b2d073ec1c8dc.md) | 62 | `result-track:2226c340ab3b2d073ec1c8dc107f286a859be4e1ca1f2c533b421f06f775357d` |
| 6 | `lemma` | [intCast_eq_intCast_mod](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/intcast-eq-intcast-mod--6d105424eb99bd635ef5e0c7.md) | 65 | `result-track:6d105424eb99bd635ef5e0c7b9b41f982f2818eb6140250bc28062449e0a89d3` |
| 7 | `lemma` | [intCast_injOn_Ico](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/intcast-injon-ico--bada940eb85ca9c42316985b.md) | 68 | `result-track:bada940eb85ca9c42316985b726a226bb344db4bd78e0f1ac546a102b55d5d35` |
| 8 | `lemma` | [cast_ne_zero_of_ne_of_prime](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/cast-ne-zero-of-ne-of-prime--98c183e2ea25b854b4463edb.md) | 87 | `result-track:98c183e2ea25b854b4463edb72b873d5cb412635485c3ca0992218c04381f4bf` |
| 9 | `lemma` | [ringChar_of_prime_eq_zero](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/ringchar-of-prime-eq-zero--5efafc0bbfe1ecb9248b3f36.md) | 95 | `result-track:5efafc0bbfe1ecb9248b3f367426e0d54815e562acd46554cca26d82cc35f997` |
| 10 | `lemma` | [charP_iff_prime_eq_zero](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/charp-iff-prime-eq-zero--acc7cf5313f7bb7e96fdd088.md) | 99 | `result-track:acc7cf5313f7bb7e96fdd0883bc0ab91887bc6f7dd1de7ae2d3919778cb064e3` |
| 11 | `lemma` | [Ring.two_ne_zero](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/ring-two-ne-zero--639fb559b9fc22e30ef3ce06.md) | 110 | `result-track:639fb559b9fc22e30ef3ce0664910caf154c99d49d4ec8bfdcc980ec9a009255` |
| 12 | `lemma` | [Ring.neg_one_ne_one_of_char_ne_two](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/ring-neg-one-ne-one-of-char-ne-two--3b5c37d48dbab3df6b2686ac.md) | 118 | `result-track:3b5c37d48dbab3df6b2686ac3c1e6be7898c2202ce11c362c71ae50fd366c6c2` |
| 13 | `lemma` | [Ring.eq_self_iff_eq_zero_of_char_ne_two](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/ring-eq-self-iff-eq-zero-of-char-ne-two--8e659d38c2e0d2e5ec25cfd5.md) | 123 | `result-track:8e659d38c2e0d2e5ec25cfd57fcd536421ff98ea69a549f628d7d41d3fb3e355` |
| 14 | `instance` | [Nat.lcm.charP](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/nat-lcm-charp--ec40362ae387c13f2c7300b7.md) | 137 | `declaration-track:ec40362ae387c13f2c7300b71e684921f5b2883fca9dfcfcd7cca9ce705c91e3` |
| 15 | `instance` | [Prod.charP](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/prod-charp--9bfc6cf7d13b150e4d501ba8.md) | 143 | `declaration-track:9bfc6cf7d13b150e4d501ba8ddd3a30d6ff85ba31aaf07c31959d57195556ac2` |
| 16 | `instance` | [Prod.charZero_of_left](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/prod-charzero-of-left--ebbc7e2b3cf740785aeee306.md) | 146 | `declaration-track:ebbc7e2b3cf740785aeee306f0b92e974d2051d80d45b4d007ee7c92b3173e44` |
| 17 | `instance` | [Prod.charZero_of_right](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/prod-charzero-of-right--d2862c08c9bf4848268722a7.md) | 149 | `declaration-track:d2862c08c9bf4848268722a743b07fda2493e790547bd213b1741b27ae96d4ea` |
| 18 | `instance` | [ULift.charP](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/ulift-charp--56a577555db8e93cedb105ac.md) | 154 | `declaration-track:56a577555db8e93cedb105acb3848a3ddbeac7836ab79b96fb07c200d7a3639d` |
| 19 | `instance` | [MulOpposite.charP](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/mulopposite-charp--db713800c5701d53344e0235.md) | 157 | `declaration-track:db713800c5701d53344e023557e87bbd6c7991a657bfce7974b5efee990c4b98` |
| 20 | `lemma` | [Int.cast_injOn_of_ringChar_ne_two](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/int-cast-injon-of-ringchar-ne-two--646ab95a98960df89734f776.md) | 164 | `result-track:646ab95a98960df89734f776a89f82d3007822e4503f28b42869b91eb0b8fc42` |
| 21 | `lemma` | [charZero_iff_forall_prime_ne_zero](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/charzero-iff-forall-prime-ne-zero--07e47747b2136497f61e5e0a.md) | 176 | `result-track:07e47747b2136497f61e5e0a66f033fca5192f6f582b3f782c5bff5c11de8864` |
| 22 | `instance` | [charP](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/charp--f76e116af8e69218229b6a97.md) | 190 | `declaration-track:f76e116af8e69218229b6a970bea05f391e60d29e876a5779054198147c88d6a` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/instance--2304b6a09994f5c7da5bbe34.md) | 197 | `declaration-track:2304b6a09994f5c7da5bbe340a30bf32952f90e4077212a622a678ee8772c3dd` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/declarations/instance--2da0fce898c1ed67bc4ce8af.md) | 213 | `declaration-track:2da0fce898c1ed67bc4ce8af93d22b2f09a56f5da369bd4ab0a8be71eef36d44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
