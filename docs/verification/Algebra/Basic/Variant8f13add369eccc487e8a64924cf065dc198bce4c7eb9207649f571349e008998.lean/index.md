# Verification target: GRWTSK.Algebra.Basic.Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b88377f5bad99b18b29bef6b9834d2e5d6f0fe2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b88377f5bad99b18b29bef6b9834d2e5d6f0fe2`.

Source path: `GRWTSK/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean.json)

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
| 1 | `def` | [ringKrullDim](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim--2f8cdc2752defbda0774254c.md) | 29 | `declaration-track:2f8cdc2752defbda0774254c0d49b417738ce53d791a6ae9ffe59010ff0f7867` |
| 2 | `abbrev` | [Ring.KrullDimLE](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle--ed18dbf37bfb816671ed2d0c.md) | 33 | `declaration-track:ed18dbf37bfb816671ed2d0cc90283d26f85b04cf09070adeb02104b57342e56` |
| 3 | `lemma` | [Ring.krullDimLE_iff](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-iff--0d48c02b19a06d824ef93792.md) | 38 | `result-track:0d48c02b19a06d824ef937928bf5d265fc12d13d62e657756f999f49384d2986` |
| 4 | `lemma` | [ringKrullDim_eq_bot_iff_subsingleton](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-eq-bot-iff-subsingleton--cbe51e8eee66bdf2df322bf5.md) | 41 | `result-track:cbe51e8eee66bdf2df322bf528e52471cb9698b900747de4f10a28b6c4272760` |
| 5 | `lemma` | [ringKrullDim_eq_bot_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-eq-bot-of-subsingleton--254a300d5859dac5a0db3a69.md) | 47 | `result-track:254a300d5859dac5a0db3a6932259444475c9598fb34f63be833f789cc2d17fc` |
| 6 | `lemma` | [zero_le_ringKrullDim_iff_nontrivial](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/zero-le-ringkrulldim-iff-nontrivial--98bab10d0c6e8cdabba9cde1.md) | 50 | `result-track:98bab10d0c6e8cdabba9cde1dd72dbdb6fc6c3f188964e31eddc7ab5956fe1ac` |
| 7 | `lemma` | [ringKrullDim_nonneg_of_nontrivial](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-nonneg-of-nontrivial--176804962ee235867f2e24b0.md) | 54 | `result-track:176804962ee235867f2e24b0adaaa1fbc943aa7ea3c5345d9bbb4e1cbdde1368` |
| 8 | `theorem` | [ringKrullDim_le_of_surjective](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-le-of-surjective--0397b0cd48217afaf7c30c76.md) | 58 | `result-track:0397b0cd48217afaf7c30c7635710bc3f4387649275eef051680eb8705e1c6c6` |
| 9 | `theorem` | [ringKrullDim_quotient_le](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-quotient-le--a531ddcf6d3f33fe1c2b8823.md) | 66 | `result-track:a531ddcf6d3f33fe1c2b88235f7e6236fb203c10960b408019180788207f361a` |
| 10 | `theorem` | [ringKrullDim_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-eq-of-ringequiv--abdba356c4ca288ee7d0bf09.md) | 71 | `result-track:abdba356c4ca288ee7d0bf097e99ae90dee53953fcfda7fd429cd9cb678a05d6` |
| 11 | `abbrev` | [FiniteRingKrullDim](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/finiteringkrulldim--cefb2b985c8e2fb4f757be35.md) | 80 | `declaration-track:cefb2b985c8e2fb4f757be35f08fa2cdb3f8750456f2a02e80f4174870ee08b3` |
| 12 | `lemma` | [ringKrullDim_ne_top](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-ne-top--db32a5a53752b6df049d814a.md) | 83 | `result-track:db32a5a53752b6df049d814a490ac10575b6a1c095c756adcee925abe1c2d1e3` |
| 13 | `lemma` | [ringKrullDim_lt_top](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-lt-top--f5fa3e0e2458b82fca537eec.md) | 86 | `result-track:f5fa3e0e2458b82fca537eec79ddc000769800a9431997babea8984c2b2a5d6a` |
| 14 | `lemma` | [ringKrullDim_ne_bot](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ringkrulldim-ne-bot--8436e1be945d8518f0858919.md) | 89 | `result-track:8436e1be945d8518f0858919d2c612bfe421e120bd836b7f6230268170db9b31` |
| 15 | `lemma` | [finiteRingKrullDim_iff_ne_bot_and_top](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/finiteringkrulldim-iff-ne-bot-and-top--fe7be07affff47b8ae45f6cf.md) | 92 | `result-track:fe7be07affff47b8ae45f6cf8642ed09766d117620b4cacb2c51af3e54e19c63` |
| 16 | `lemma` | [Nontrivial.of_finiteRingKrullDim](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/nontrivial-of-finiteringkrulldim--a4663c96b0340cdf31d88df1.md) | 96 | `result-track:a4663c96b0340cdf31d88df1d8a8fc2104d5c6297fff5578f4a8561f2eb7e5e3` |
| 17 | `lemma` | [Ring.krullDimLE_zero_iff](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-zero-iff--9d9588373c1bbb3e286360d0.md) | 104 | `result-track:9d9588373c1bbb3e286360d0388fd778c8fb941e8259b74559a579b9c3548128` |
| 18 | `theorem` | [Ring.krullDimLE_zero_iff_forall_minimalPrimes_isMaximal](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-zero-iff-forall-minimalprimes-ismaximal--dfa37f84b5eaa7fef1798a90.md) | 111 | `result-track:dfa37f84b5eaa7fef1798a90a5aa2d0519084ec61bc6543e48e47edc132c69a6` |
| 19 | `lemma` | [Ring.KrullDimLE.mk₀](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-mk--3103c5f05e2351296bf38b3f.md) | 117 | `result-track:3103c5f05e2351296bf38b3f83e89d0ddebefdc9f014d982aff08a4cc900acda` |
| 20 | `lemma` | [Ideal.isMaximal_of_isPrime](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-ismaximal-of-isprime--b1c70e5360b923c33aab57f2.md) | 120 | `result-track:b1c70e5360b923c33aab57f26b2ab8ce7b6fe828ce5ef84431d128a0d7401cd6` |
| 21 | `lemma` | [Ideal.IsPrime.isMaximal'](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-isprime-ismaximal--890829b81b7609d49bca8933.md) | 124 | `result-track:890829b81b7609d49bca8933266bf85b009f473fac9a2197d22e096f71a8a6ce` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/instance--f13bb84cbdf29779e47e7b32.md) | 127 | `declaration-track:f13bb84cbdf29779e47e7b32a70d6f46dff41b5f450d012f6bed1ae33831c8bc` |
| 23 | `lemma` | [Ideal.isMaximal_iff_isPrime](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-ismaximal-iff-isprime--5dc7ea99d9690dc7d350a508.md) | 130 | `result-track:5dc7ea99d9690dc7d350a508fb75b3bf43d483d8983d99f176149067d16d5b43` |
| 24 | `lemma` | [Ideal.mem_minimalPrimes_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-mem-minimalprimes-of-krulldimle-zero--0ba07b5584426baccb83d02c.md) | 133 | `result-track:0ba07b5584426baccb83d02c0b9a1816d31c7139cfc5138166c0eb934e193e99` |
| 25 | `lemma` | [Ideal.mem_minimalPrimes_iff_isPrime](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-mem-minimalprimes-iff-isprime--17e817b16d67c5997930e30b.md) | 138 | `result-track:17e817b16d67c5997930e30bf635d902f05bcb5c3f054b2115e3b444acea8e28` |
| 26 | `theorem` | [nilradical_le_jacobson](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/nilradical-le-jacobson--68acd163030d440c16c6e2b7.md) | 142 | `result-track:68acd163030d440c16c6e2b741d06efcec7fdf64cfb589f4f2de207b445bd3de` |
| 27 | `theorem` | [Ring.jacobson_eq_nilradical_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-jacobson-eq-nilradical-of-krulldimle-zero--4c6b1af477757bec2f83f7ad.md) | 145 | `result-track:4c6b1af477757bec2f83f7ad66bb87061070b403e4185e7d0018ed98a8a0cee0` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/instance--a26c1770f8b50f52ad419095.md) | 154 | `declaration-track:a26c1770f8b50f52ad41909529d5dbd21a9898b6e5764f4aaf02acc7be9c31b4` |
| 29 | `lemma` | [Ring.krullDimLE_one_iff](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-one-iff--20ef5fbc2a5b7da8cf41f99d.md) | 156 | `result-track:20ef5fbc2a5b7da8cf41f99d159d05d921757ed3e1ae631df380913dfd49e824` |
| 30 | `lemma` | [Ring.KrullDimLE.mk₁](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-mk--9b829fdad187fe5b056edde6.md) | 163 | `result-track:9b829fdad187fe5b056edde6411b908ddf17e3a62168370fa616b76953a09e0a` |
| 31 | `lemma` | [Ring.krullDimLE_one_iff_of_isPrime_bot](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-one-iff-of-isprime-bot--9f2d78e24c9531e5af470618.md) | 167 | `result-track:9f2d78e24c9531e5af470618d399236ed81d9d8d572ae4fa8a0cf8de41ee9f94` |
| 32 | `lemma` | [Ring.krullDimLE_one_iff_of_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-one-iff-of-nozerodivisors--34bb2ace3d58510940d73c00.md) | 176 | `result-track:34bb2ace3d58510940d73c00ec25e57ce2dddb5654be957129d4bd6cd1accac1` |
| 33 | `lemma` | [Ideal.IsPrime.isMaximal_of_ne_bot](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-isprime-ismaximal-of-ne-bot--41a7230978acc864b0fd3110.md) | 182 | `result-track:41a7230978acc864b0fd311017f22522baad8a8cdcebf028e5463095088195c2` |
| 34 | `lemma` | [Ideal.isMaximal_of_isPrime_of_ne_bot](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-ismaximal-of-isprime-of-ne-bot--c1599afde355624a0b6e8821.md) | 187 | `result-track:c1599afde355624a0b6e8821bb815cf10cb7bc7f7088e24c9b27fc3fdcb2c57b` |
| 35 | `lemma` | [Ring.KrullDimLE.mk₁'](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ring-krulldimle-mk--2789110865b22803597869a8.md) | 193 | `result-track:2789110865b22803597869a8fd48f38614f7ce6a7e5babebce7fd774af1bff20` |
| 36 | `lemma` | [Prime.isMaximal_span_singleton](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/prime-ismaximal-span-singleton--5f97d3ac872e96c64dc264aa.md) | 200 | `result-track:5f97d3ac872e96c64dc264aa3c4fbbacf5401090947d8c36cf28cd9587d5b193` |
| 37 | `lemma` | [Ideal.liesOver_span_iff](../../../../mathematics/Algebra/Basic/Variant8f13add369eccc487e8a64924cf065dc198bce4c7eb9207649f571349e008998.lean/declarations/ideal-liesover-span-iff--65bd53232523437e2bc434db.md) | 204 | `result-track:65bd53232523437e2bc434dbbeb7a8b977ef45c54778e5619cb501f090859987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
