# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "751e319f042c0a3ff77272fb3e13b8472aad6489",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `751e319f042c0a3ff77272fb3e13b8472aad6489`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean.json)

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
| 1 | `theorem` | [infinite_setOfPred_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/infinite-setofpred-prime--9a0209336c3a1d9361d82bca.md) | 27 | `result-track:9a0209336c3a1d9361d82bcabb7a44921637507264681e6bbbd5b032f7d8cf72` |
| 2 | `instance` | [Primes.infinite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primes-infinite--a3c14d524320bb4247509be6.md) | 32 | `declaration-track:a3c14d524320bb4247509be648aded56f43e1ff8b164c3e39e736cccb83c0ab0` |
| 3 | `instance` | [Primes.countable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primes-countable--76adcbc94c5239c60e050c53.md) | 34 | `declaration-track:76adcbc94c5239c60e050c530c53f31ef45658f2882eb2b853942bcf888530cf` |
| 4 | `def` | [primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors--56d03e84b7ef98064483c17e.md) | 37 | `declaration-track:56d03e84b7ef98064483c17ee697cbe88caa8923e6e2025a28a77cce853633b3` |
| 5 | `lemma` | [toFinset_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/tofinset-factors--715bbe52ba39447c3d0b8004.md) | 39 | `result-track:715bbe52ba39447c3d0b8004646899fdce41ce4bc50dec7ce672407d9855d184` |
| 6 | `lemma` | [mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/mem-primefactors--395efa3d647285130d095551.md) | 41 | `result-track:395efa3d647285130d0955516f4f6fc2f790eb9c57244d80e9187ebb5a91d559` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/mem-primefactors-of-ne-zero--2af3e4cdf3e6f1b0fe27a6f8.md) | 44 | `result-track:2af3e4cdf3e6f1b0fe27a6f862253f7d1f13cda7d96bd2d584bdf9730132ad05` |
| 8 | `lemma` | [Prime.mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/prime-mem-primefactors--37de40502271f03622733318.md) | 47 | `result-track:37de40502271f0362273331873fd22846f886173b75d0e5b0fde0af6eec99590` |
| 9 | `lemma` | [Prime.mem_primeFactors'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/prime-mem-primefactors--f741289c994084765cf8d28a.md) | 51 | `result-track:f741289c994084765cf8d28ab92c9a5cf417ef7afea5e1b2016d414edd4ffe91` |
| 10 | `lemma` | [Prime.mem_primeFactors_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/prime-mem-primefactors-self--3feb8b813111e045325b5b37.md) | 54 | `result-track:3feb8b813111e045325b5b37eeedd2ecf85534b395d80db8d927a416c1fbb5ce` |
| 11 | `lemma` | [primeFactors_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-mono--6e3bb99f19bb0da15a3377b1.md) | 57 | `result-track:6e3bb99f19bb0da15a3377b1807bbd139b788092482affd74f6c88dafa9f4a97` |
| 12 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/mem-primefactors-iff-mem-primefactorslist--9b2388d2dd735e291df8fca7.md) | 61 | `result-track:9b2388d2dd735e291df8fca77fdf7aa8d7d59c493f95eba46748b9be3b07a30e` |
| 13 | `lemma` | [prime_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/prime-of-mem-primefactors--102dc23f37d1cd10fad5507e.md) | 64 | `result-track:102dc23f37d1cd10fad5507ed0fa5b6719b7c90f7f4bb2be7cb13bd8310a67a9` |
| 14 | `lemma` | [dvd_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/dvd-of-mem-primefactors--a783f7be1d27fe3af77d5d70.md) | 65 | `result-track:a783f7be1d27fe3af77d5d70c45a98eeb796ee7c51b28cecf52d0ea1f4411116` |
| 15 | `lemma` | [pos_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/pos-of-mem-primefactors--613e727777b89507df6e93c3.md) | 67 | `result-track:613e727777b89507df6e93c32482ae2e3f0d0ff4e1c716751a8adba8b315dd2c` |
| 16 | `lemma` | [le_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/le-of-mem-primefactors--69464dd7bb55b1c34ec06c6d.md) | 70 | `result-track:69464dd7bb55b1c34ec06c6d880fcf2308224636685fbdaf157da76d1e3ff774` |
| 17 | `lemma` | [primeFactors_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-zero--027532f246a0b9e6575a8173.md) | 73 | `result-track:027532f246a0b9e6575a8173604c0ce0eb9eac68c460b85353b582ac5675c291` |
| 18 | `lemma` | [primeFactors_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-one--adfc15d3b0debf9e6099f0d0.md) | 77 | `result-track:adfc15d3b0debf9e6099f0d0879369dce7846e5a95145b09d26d28d57577346f` |
| 19 | `lemma` | [primeFactors_eq_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-eq-empty--c519fdbf5478fce70f9b07e7.md) | 81 | `result-track:c519fdbf5478fce70f9b07e724825f9847f72e811730be8a06157a3afc98c02d` |
| 20 | `lemma` | [nonempty_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/nonempty-primefactors--a76c4ab82720a113e0f48fa0.md) | 90 | `result-track:a76c4ab82720a113e0f48fa002c13f9db508a443f496e9eb184102139bcdf754` |
| 21 | `lemma` | [Prime.primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/prime-primefactors--ebcb981738d661326854cfb0.md) | 94 | `result-track:ebcb981738d661326854cfb0b1b2451b1bc2adc3290bbcffa3ee8d94cbceb893` |
| 22 | `lemma` | [primeFactors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-mul--4ed4767fbcc5622f55700033.md) | 97 | `result-track:4ed4767fbcc5622f557000339472ff3619a71c0a482bdf53b352ef08fcfc4fbe` |
| 23 | `lemma` | [Coprime.primeFactors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/coprime-primefactors-mul--f55edfb55b31854b82423bc6.md) | 102 | `result-track:f55edfb55b31854b82423bc69f699bb7beb13313d491592c673fe0dbc24cb841` |
| 24 | `lemma` | [primeFactors_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-gcd--b7eb10772e6e54bf946c2d7f.md) | 106 | `result-track:b7eb10772e6e54bf946c2d7f54d7cad93b8786120028b05178f5c11522b441cf` |
| 25 | `lemma` | [disjoint_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/disjoint-primefactors--b559282dc6f04117207b0632.md) | 110 | `result-track:b559282dc6f04117207b063200a629869f65f15e137ccda4b834dc428782f47a` |
| 26 | `lemma` | [Coprime.disjoint_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/coprime-disjoint-primefactors--c8ec515f42235e7df033c133.md) | 115 | `result-track:c8ec515f42235e7df033c1330302ec1e2fa2d4c427fd91e1e54e5950b91a06c4` |
| 27 | `lemma` | [primeFactors_pow_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-pow-succ--75bc9c956e4c0cbae449d886.md) | 119 | `result-track:75bc9c956e4c0cbae449d8868b26610b8244ba76a5e7c97df16d09162ee86587` |
| 28 | `lemma` | [primeFactors_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-pow--5ca225da4a97e9ed4616a2de.md) | 126 | `result-track:5ca225da4a97e9ed4616a2debb58b29ebef0966bd4aee684649eeb8f5875611d` |
| 29 | `lemma` | [primeFactors_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant92a5630a19bff74ade4088f1253cf75b0ac8143c002e6b604ac0b77a39c9ecf6.lean/declarations/primefactors-prime-pow--79da73f7c88c6bca0581eea8.md) | 132 | `result-track:79da73f7c88c6bca0581eea847a6dd85dde04e39ff37767d12f135e64bd37742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
