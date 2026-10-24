# Verification target: GRWTSK.Algebra.Basic.Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6a8ef4e8b67895b50b1dff9e537d53d8b67c83",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6a8ef4e8b67895b50b1dff9e537d53d8b67c83`.

Source path: `GRWTSK/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Radical` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.KrullDimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringKrullDim](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim--c80fae8cc9153873a286ce8c.md) | 27 | `declaration-track:c80fae8cc9153873a286ce8cc63f6b5e26e69d85b976e65587070dba97f83a36` |
| 2 | `abbrev` | [Ring.KrullDimLE](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle--0f93f2358589508933a0712e.md) | 31 | `declaration-track:0f93f2358589508933a0712e793e145680a80f04d11bf1a5d9113f8f4d9f7b00` |
| 3 | `lemma` | [ringKrullDim_eq_bot_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-eq-bot-of-subsingleton--cd353bb8daf6e24c351b8d02.md) | 37 | `result-track:cd353bb8daf6e24c351b8d02b706e13e2d38ddfbdd975fff1679ab487f29dea4` |
| 4 | `lemma` | [ringKrullDim_nonneg_of_nontrivial](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-nonneg-of-nontrivial--81cf9d941d6f00ebc5a1e9fe.md) | 41 | `result-track:81cf9d941d6f00ebc5a1e9fe45df5d52c6955b5bd96d627496666612d3fd2815` |
| 5 | `theorem` | [ringKrullDim_le_of_surjective](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-le-of-surjective--efd80fa2b87b07849d7516ec.md) | 46 | `result-track:efd80fa2b87b07849d7516ec3a41b88753b8f0eaa3e24432ef9f3df2a55b1489` |
| 6 | `theorem` | [ringKrullDim_quotient_le](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-quotient-le--a99be2058ea29e8a82373043.md) | 54 | `result-track:a99be2058ea29e8a823730432296dc004776a3d641e59c60073fc38953863e29` |
| 7 | `theorem` | [ringKrullDim_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-eq-of-ringequiv--22517424c1629b5975dc718b.md) | 59 | `result-track:22517424c1629b5975dc718b3f79321afc74f9cacf8ff771b3e990e4c13bea60` |
| 8 | `abbrev` | [FiniteRingKrullDim](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/finiteringkrulldim--3c5f7c560ec49e9fdd5dedb2.md) | 68 | `declaration-track:3c5f7c560ec49e9fdd5dedb288bc6402ba3ca7881000438972a4d07c22245731` |
| 9 | `lemma` | [ringKrullDim_ne_top](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-ne-top--54953de3b1ca160bbe047c3c.md) | 71 | `result-track:54953de3b1ca160bbe047c3c4742764e4ea8d5e64d510c03fcb299f39f737f8a` |
| 10 | `lemma` | [ringKrullDim_lt_top](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ringkrulldim-lt-top--f548896768fb6955b0ee8712.md) | 75 | `result-track:f548896768fb6955b0ee871261b010c2b31ac0598952c44c6a2445af3aa49651` |
| 11 | `lemma` | [finiteRingKrullDim_iff_ne_bot_and_top](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/finiteringkrulldim-iff-ne-bot-and-top--8f016e2ae779131aa0a70e39.md) | 78 | `result-track:8f016e2ae779131aa0a70e3988aaa1a409c12521f5950af707749d93421780bd` |
| 12 | `lemma` | [Ring.krullDimLE_zero_iff](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-zero-iff--d0a89283d8debd73b8c5f9c4.md) | 93 | `result-track:d0a89283d8debd73b8c5f9c46b405f18ede196fd171ce72022eda83d42c9e35f` |
| 13 | `lemma` | [Ring.KrullDimLE.mk₀](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-mk--98f87a8709a804d60c1c6920.md) | 99 | `result-track:98f87a8709a804d60c1c6920687e1ef95466b87ce1879225965edfbfbe3417b8` |
| 14 | `lemma` | [Ideal.isMaximal_of_isPrime](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ideal-ismaximal-of-isprime--9144dcfa52f5df2318dd4e8f.md) | 102 | `result-track:9144dcfa52f5df2318dd4e8f06fd3caee789e221ddd9203658d5f301e8a2f9ce` |
| 15 | `lemma` | [Ideal.IsPrime.isMaximal'](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ideal-isprime-ismaximal--3e048de49ed7a75100886dde.md) | 106 | `result-track:3e048de49ed7a75100886ddeeadfc5993d860d856eea956d60ca55f9c4724648` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/instance--a01bd59197d1be88070aca06.md) | 109 | `declaration-track:a01bd59197d1be88070aca06802dd68a7543f07228da010d3c4ee2039c5df248` |
| 17 | `lemma` | [Ideal.isMaximal_iff_isPrime](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ideal-ismaximal-iff-isprime--bbb38160a03a094c2f15d5de.md) | 112 | `result-track:bbb38160a03a094c2f15d5de03d6657646299cd675013ca9a7399254bd3f6a9f` |
| 18 | `lemma` | [Ideal.mem_minimalPrimes_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ideal-mem-minimalprimes-of-krulldimle-zero--10d972e7917a5c8a510943fd.md) | 115 | `result-track:10d972e7917a5c8a510943fd7f47866a9e2edf07e488ab49521346ea934763ac` |
| 19 | `lemma` | [Ideal.mem_minimalPrimes_iff_isPrime](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ideal-mem-minimalprimes-iff-isprime--ded7756d46bfc796c5200068.md) | 120 | `result-track:ded7756d46bfc796c52000687175edd70e2130be676be79b012af5e985d1b1b1` |
| 20 | `theorem` | [nilradical_le_jacobson](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/nilradical-le-jacobson--e5ab2f30b1eb7b0d6c6199c3.md) | 124 | `result-track:e5ab2f30b1eb7b0d6c6199c375e7a0596f900224348d7da7887eacb9e08e3007` |
| 21 | `theorem` | [Ring.jacobson_eq_nilradical_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-jacobson-eq-nilradical-of-krulldimle-zero--2ebc75e126318d0a243112bc.md) | 127 | `result-track:2ebc75e126318d0a243112bc734ac8f7b01abc56110d7796dde07b38b31d83ff` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/instance--f55ba82e9d28221768ee4059.md) | 137 | `declaration-track:f55ba82e9d28221768ee4059eebd942746bb6245f5699e2dc5ac94aad8a306f5` |
| 23 | `lemma` | [Ring.krullDimLE_one_iff](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-one-iff--0866007b8e6fabaeed03542f.md) | 139 | `result-track:0866007b8e6fabaeed03542f52b90b394464d4c5f259dc3c8a9da5df12ec8086` |
| 24 | `lemma` | [Ring.KrullDimLE.mk₁](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-mk--547bb348031f6a3ea57e4abc.md) | 146 | `result-track:547bb348031f6a3ea57e4abc569bae5275c303c4e59cf8ae980998e07c488478` |
| 25 | `lemma` | [Ring.krullDimLE_one_iff_of_isPrime_bot](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-one-iff-of-isprime-bot--4055a4b67151f181223b3cfc.md) | 150 | `result-track:4055a4b67151f181223b3cfc24be330995ed6e35ac6794eb0508eb93cda82677` |
| 26 | `lemma` | [Ring.krullDimLE_one_iff_of_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-one-iff-of-nozerodivisors--ba4e14564131df2997b914e1.md) | 159 | `result-track:ba4e14564131df2997b914e1758ae8cc620a882d4cabd2e0893f63f8526306cc` |
| 27 | `lemma` | [Ring.KrullDimLE.mk₁'](../../../../mathematics/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean/declarations/ring-krulldimle-mk--d79441a69d970ae21d6543e6.md) | 167 | `result-track:d79441a69d970ae21d6543e60aded4ae0ecb3ad5484c758dd06788f8d92eecfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
