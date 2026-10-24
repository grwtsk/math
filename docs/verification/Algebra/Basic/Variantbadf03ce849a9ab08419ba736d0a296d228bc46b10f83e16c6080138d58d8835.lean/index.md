# Verification target: GRWTSK.Algebra.Basic.Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "047a73614471d777f9f5295a46d4ae82c24038be",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `047a73614471d777f9f5295a46d4ae82c24038be`.

Source path: `GRWTSK/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Radical` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.KrullDimension` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringKrullDim](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim--7a18154810d54e6fa589eb4a.md) | 35 | `declaration-track:7a18154810d54e6fa589eb4a474be17874a7513e2e7e49d4b6055c36beb49a12` |
| 2 | `abbrev` | [Ring.KrullDimLE](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle--3fc757aa2407fe6bf85cc305.md) | 39 | `declaration-track:3fc757aa2407fe6bf85cc30523ddc845083d8a20be15b878fd304de38176f8b0` |
| 3 | `lemma` | [ringKrullDim_eq_bot_of_subsingleton](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-eq-bot-of-subsingleton--c032589d08a93635fab49b7d.md) | 45 | `result-track:c032589d08a93635fab49b7d9299a50a8fbdcb54ea220796a59eb7972c47c7fe` |
| 4 | `lemma` | [ringKrullDim_nonneg_of_nontrivial](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-nonneg-of-nontrivial--4977143cfb2043abb5184b9f.md) | 49 | `result-track:4977143cfb2043abb5184b9fd3ad476f7bc36e26b377f91364cf528a8b331c89` |
| 5 | `theorem` | [ringKrullDim_le_of_surjective](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-le-of-surjective--734cd2e1a8b8f89c0fb10610.md) | 54 | `result-track:734cd2e1a8b8f89c0fb106103989e21e643f7be36bc61c6457dbd6316fed74d2` |
| 6 | `theorem` | [ringKrullDim_quotient_le](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-quotient-le--d45e3b925f220430c10633a1.md) | 62 | `result-track:d45e3b925f220430c10633a1aa95afe3ee7828444c2026e35506b6fe86c7f6a6` |
| 7 | `theorem` | [ringKrullDim_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-eq-of-ringequiv--151c88565f0442dd99431ef6.md) | 67 | `result-track:151c88565f0442dd99431ef6985ae49b38093d346c4965f38b81ccbca1ceff13` |
| 8 | `abbrev` | [FiniteRingKrullDim](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/finiteringkrulldim--ca366fba8a000d3d5207e921.md) | 76 | `declaration-track:ca366fba8a000d3d5207e92137b3b659b5cb2b799c16648febb31ec654391e81` |
| 9 | `lemma` | [ringKrullDim_ne_top](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-ne-top--a54116f126048d69f6690586.md) | 79 | `result-track:a54116f126048d69f6690586f801b8b50b823f740f23712e2041c43203b1eb9e` |
| 10 | `lemma` | [ringKrullDim_lt_top](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ringkrulldim-lt-top--42f501def3ead2b52980cb48.md) | 83 | `result-track:42f501def3ead2b52980cb4897eb7f99796e607d02ba128a74b8da2b51f8ac60` |
| 11 | `lemma` | [finiteRingKrullDim_iff_ne_bot_and_top](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/finiteringkrulldim-iff-ne-bot-and-top--147269b3ec8d05793a6731a4.md) | 86 | `result-track:147269b3ec8d05793a6731a4c26baeb6de0e84cf184890317c3ad550002dae83` |
| 12 | `lemma` | [Ring.krullDimLE_zero_iff](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-zero-iff--3dd1f23ab460850521164c3e.md) | 101 | `result-track:3dd1f23ab460850521164c3e46c42abba6d71bef83236011c8eb4cabfc40605e` |
| 13 | `lemma` | [Ring.KrullDimLE.mk₀](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-mk--32144b7759d7bc77b60913cc.md) | 107 | `result-track:32144b7759d7bc77b60913cc5ba1caa5221e2c0a3caa6b9eb8ed8e6f2e7b8bfd` |
| 14 | `lemma` | [Ideal.isMaximal_of_isPrime](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ideal-ismaximal-of-isprime--b685c667dde618eca0dada58.md) | 110 | `result-track:b685c667dde618eca0dada58949396be628dce16de3e2d6b6c132ad3634f43ff` |
| 15 | `lemma` | [Ideal.IsPrime.isMaximal'](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ideal-isprime-ismaximal--8213cb928c5d5884d1468970.md) | 114 | `result-track:8213cb928c5d5884d14689701f20d8b7b1fc37ccafff4d93343e278e6aa1b55f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/instance--6225b647e1a13d6213a7196d.md) | 117 | `declaration-track:6225b647e1a13d6213a7196dfa439509173357c53ecda2547a8d27aa783b542c` |
| 17 | `lemma` | [Ideal.isMaximal_iff_isPrime](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ideal-ismaximal-iff-isprime--5acf0d3e8eae316487bc832f.md) | 120 | `result-track:5acf0d3e8eae316487bc832f4eddcbc45f226f3228618a61961e11a2b5c02419` |
| 18 | `lemma` | [Ideal.mem_minimalPrimes_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ideal-mem-minimalprimes-of-krulldimle-zero--3e90298450b135f4db2201c4.md) | 123 | `result-track:3e90298450b135f4db2201c49637d96c605fa946a826ba82bf77d359d67cd5df` |
| 19 | `lemma` | [Ideal.mem_minimalPrimes_iff_isPrime](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ideal-mem-minimalprimes-iff-isprime--0cfdd2075bb7032cd9656f07.md) | 128 | `result-track:0cfdd2075bb7032cd9656f070b3055cb7c7bf17fd876052a8bd3eaebf158c1b1` |
| 20 | `theorem` | [nilradical_le_jacobson](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/nilradical-le-jacobson--5848de97aebc7b046ccafa56.md) | 132 | `result-track:5848de97aebc7b046ccafa56b08fae44783eb749d87f10ad1dba48167ee3e1b1` |
| 21 | `theorem` | [Ring.jacobson_eq_nilradical_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-jacobson-eq-nilradical-of-krulldimle-zero--d942be6f96804f885aa314b1.md) | 135 | `result-track:d942be6f96804f885aa314b11806d9233757e23c5aead622d3b90c22a170f179` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/instance--e096d238383947bdcd3a8816.md) | 145 | `declaration-track:e096d238383947bdcd3a88169179bd56d1588d3052a0405b156a8c95e424eb84` |
| 23 | `lemma` | [Ring.krullDimLE_one_iff](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-one-iff--14d187dcc535e42369aeb978.md) | 147 | `result-track:14d187dcc535e42369aeb9782b8c5fec183892a9a3458c15c010fae5fc2a27f5` |
| 24 | `lemma` | [Ring.KrullDimLE.mk₁](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-mk--19bbe1fc622a274b844cfe6b.md) | 154 | `result-track:19bbe1fc622a274b844cfe6bbafc267bb7d6258a3ac0ceca38fae96bd51203a4` |
| 25 | `lemma` | [Ring.krullDimLE_one_iff_of_isPrime_bot](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-one-iff-of-isprime-bot--f110a6035d237481bd40b121.md) | 158 | `result-track:f110a6035d237481bd40b121892ec4e48bd651247f7340c7716f9681d0f1fb5a` |
| 26 | `lemma` | [Ring.krullDimLE_one_iff_of_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-one-iff-of-nozerodivisors--33d16d90b0ca0bfc631212f1.md) | 167 | `result-track:33d16d90b0ca0bfc631212f1ba74493af9b23eef19a1141cb6ea2741b3f2e15e` |
| 27 | `lemma` | [Ring.KrullDimLE.mk₁'](../../../../mathematics/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/declarations/ring-krulldimle-mk--8bcf927f0544f6e89876c75c.md) | 175 | `result-track:8bcf927f0544f6e89876c75cd2a2b5be74ea976d4139b1efd0d1065a228bc230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
