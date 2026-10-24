# Verification target: GRWTSK.Algebra.Zero.Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7684adfc045f1dc4d8311b06f2461ba377baf2c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7684adfc045f1dc4d8311b06f2461ba377baf2c`.

Source path: `GRWTSK/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ring.KrullDimLE.mem_minimalPrimes_iff](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-mem-minimalprimes-iff--2e3bc69aea317ed48d73a392.md) | 22 | `result-track:2e3bc69aea317ed48d73a392e0efc33850f15f413a0399cf2d6e350cbbd3b512` |
| 2 | `lemma` | [Ring.KrullDimLE.mem_minimalPrimes_iff_le_of_isPrime](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-mem-minimalprimes-iff-le-of-isprime--8b297c6e079feacbe84b6242.md) | 26 | `result-track:8b297c6e079feacbe84b6242b649df805a3fbad1eed4d95f46319efe47a1c69a` |
| 3 | `lemma` | [Ring.KrullDimLE.minimalPrimes_eq_setOf_isPrime](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-minimalprimes-eq-setof-isprime--6ea4189c0e1072d1e04bdff2.md) | 31 | `result-track:6ea4189c0e1072d1e04bdff2d0f3d96dac7e914397654f0f1cdd097a73c0728f` |
| 4 | `lemma` | [Ring.KrullDimLE.minimalPrimes_eq_setOf_isMaximal](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-minimalprimes-eq-setof-ismaximal--d49ed04997b32fb402681f18.md) | 36 | `result-track:d49ed04997b32fb402681f18a7f4b300b2e686ed512cf9603863a71dbd9f68fd` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/example--ba71eef5c0cda0b6332cd817.md) | 41 | `declaration-track:ba71eef5c0cda0b6332cd8178309271deffc2d60d152c0f251f37a4ba7b28e2a` |
| 6 | `lemma` | [Ring.KrullDimLE.isField_of_isDomain](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-isfield-of-isdomain--418b9b4dc8ebf951df0b68c0.md) | 43 | `result-track:418b9b4dc8ebf951df0b68c0d24415491a8165479acb2a88fc1da61d5d93a799` |
| 7 | `lemma` | [ringKrullDimZero_iff_ringKrullDim_eq_zero](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ringkrulldimzero-iff-ringkrulldim-eq-zero--8be24c0a6828cf22af105d44.md) | 49 | `result-track:8be24c0a6828cf22af105d440f736ab8321e9964b2712272635c2ef370adc353` |
| 8 | `lemma` | [Ring.krullDimLE_zero_and_isLocalRing_tfae](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-zero-and-islocalring-tfae--31df950bb94be66ec44f4cb5.md) | 59 | `result-track:31df950bb94be66ec44f4cb597d468a471a977f0e711ec2c07bcbee0c6e2d186` |
| 9 | `lemma` | [le_isUnit_iff_zero_notMem](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/le-isunit-iff-zero-notmem--03bdabcd5cc38e45a06cfcc4.md) | 86 | `result-track:03bdabcd5cc38e45a06cfcc4821a5ac9906eec1a5f75675ddb28d685e3ac8ef5` |
| 10 | `theorem` | [Ring.KrullDimLE.existsUnique_isPrime](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-existsunique-isprime--95799103fed2ec1f548b352f.md) | 95 | `result-track:95799103fed2ec1f548b352ff3088bdf0db4e141663b1388d48bbb56bcff8d0c` |
| 11 | `theorem` | [Ring.KrullDimLE.eq_maximalIdeal_of_isPrime](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-eq-maximalideal-of-isprime--332812fcc925ad62eede5981.md) | 99 | `result-track:332812fcc925ad62eede59812b1b61e257c347d7eee48c4dd54b2003fcee2e96` |
| 12 | `lemma` | [Ring.KrullDimLE.radical_eq_maximalIdeal](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-radical-eq-maximalideal--2432cc0f47eb920d2811659c.md) | 104 | `result-track:2432cc0f47eb920d2811659c789f0ae6fce8144c0cfb3c7ae2ca1b3497178f5b` |
| 13 | `theorem` | [Ring.KrullDimLE.subsingleton_primeSpectrum](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-subsingleton-primespectrum--08d90b8528543b92c292faab.md) | 113 | `result-track:08d90b8528543b92c292faabe9b7e7bf77024aefcd2975e679e907dba8240609` |
| 14 | `theorem` | [Ring.KrullDimLE.isNilpotent_iff_mem_maximalIdeal](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-isnilpotent-iff-mem-maximalideal--1e63d3a59d32b5f3dbf21918.md) | 118 | `result-track:1e63d3a59d32b5f3dbf21918e7c5cea82e7198efb0f04e344f56ff6395c27a54` |
| 15 | `theorem` | [Ring.KrullDimLE.isNilpotent_iff_mem_nonunits](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-isnilpotent-iff-mem-nonunits--4c91ee0bf2d8d1a1f987b3a5.md) | 122 | `result-track:4c91ee0bf2d8d1a1f987b3a52abcdc01f3872d25bc85374b2a321c41dbb4469b` |
| 16 | `theorem` | [Ring.KrullDimLE.nilradical_eq_maximalIdeal](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-nilradical-eq-maximalideal--ed4ac0d817ec0264dcd36160.md) | 127 | `result-track:ed4ac0d817ec0264dcd3616098016f08dad59e7d001e612b5875da7a11d7d4b1` |
| 17 | `theorem` | [IsLocalRing.of_isMaximal_nilradical](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/islocalring-of-ismaximal-nilradical--70058d59e9c54a04aef5f3e2.md) | 133 | `result-track:70058d59e9c54a04aef5f3e2a88212fa666f2f62aac9bb77da1dfd586c2f50b8` |
| 18 | `theorem` | [Ring.KrullDimLE.of_isMaximal_nilradical](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-of-ismaximal-nilradical--0628a71cccd996d1dcf13a0d.md) | 139 | `result-track:0628a71cccd996d1dcf13a0d0d2fb6f471c7e5b7a1010b03625172aec1146f83` |
| 19 | `lemma` | [Ring.KrullDimLE.of_isLocalization](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-of-islocalization--82aa7df3d37236f56f8fd412.md) | 144 | `result-track:82aa7df3d37236f56f8fd412b2078235addea68705c4614002677b2775cf2f9b` |
| 20 | `lemma` | [Ring.KrullDimLE.isField_of_isReduced](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ring-krulldimle-isfield-of-isreduced--7f85c286a95d215a51068b17.md) | 150 | `result-track:7f85c286a95d215a51068b17aafb32d597b8588f151b83d027eee536ffc4ad80` |
| 21 | `instance` | [PrimeSpectrum.unique_of_ringKrullDimLE_zero](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/primespectrum-unique-of-ringkrulldimle-zero--aa7f735978809d64ff710cbd.md) | 154 | `declaration-track:aa7f735978809d64ff710cbdbfdac4988128dc6c3bacd01d0d161cc21256ec3d` |
| 22 | `lemma` | [Ideal.jacobson_eq_radical](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/ideal-jacobson-eq-radical--7cd45eb43d4a8a6dc08aee05.md) | 166 | `result-track:7cd45eb43d4a8a6dc08aee05d234f55b0481ee3ab74ebe26fa47b796d09261d4` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/instance--03b1848f56ed3819ccd85a2f.md) | 169 | `declaration-track:03b1848f56ed3819ccd85a2f0001af72b075ee3580145742fe2cfab782425876` |
| 24 | `lemma` | [_root_.IsLocalization.AtPrime.prime_unique_of_minimal](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/root-islocalization-atprime-prime-unique-of-minimal--9dca1c5209f872ecda8d2683.md) | 182 | `result-track:9dca1c5209f872ecda8d268355dff929792f5e42cc8691f2532b42d834a3251a` |
| 25 | `def` | [localizationEquivSelfOfNilradicalIsMaximal](../../../../mathematics/Algebra/Zero/Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.lean/declarations/localizationequivselfofnilradicalismaximal--55a29b5dd222cdd74cf8b885.md) | 220 | `declaration-track:55a29b5dd222cdd74cf8b8850461db55e1f6ef7f405ba7d858c956a038890a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
