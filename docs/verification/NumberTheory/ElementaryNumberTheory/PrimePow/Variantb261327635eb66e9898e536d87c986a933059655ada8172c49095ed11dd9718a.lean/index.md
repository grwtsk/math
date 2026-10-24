# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePow.Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60833212605b9c634a124d6937af8dc5b6d6c258",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60833212605b9c634a124d6937af8dc5b6d6c258`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Pow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPrimePow.minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-minfac-pow-factorization-eq--e0fa90bb17626243ccf5866d.md) | 18 | `result-track:e0fa90bb17626243ccf5866d2d8970be3abbcea39990893a1d7063cf09e57334` |
| 2 | `theorem` | [isPrimePow_of_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-of-minfac-pow-factorization-eq--ee6b5b508c0772796393e2f1.md) | 24 | `result-track:ee6b5b508c0772796393e2f1921d7a12bfba3e9ec1aa391a102c7cfc85114fed` |
| 3 | `theorem` | [isPrimePow_iff_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-iff-minfac-pow-factorization-eq--6572eadc7e1decd8e20237e2.md) | 32 | `result-track:6572eadc7e1decd8e20237e2a7fd69906ae953ddd1f9d9d500e6ce56d3f14a1a` |
| 4 | `theorem` | [isPrimePow_iff_factorization_eq_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-iff-factorization-eq-single--0919d41c61821900578ac498.md) | 36 | `result-track:0919d41c61821900578ac498781d840d378ff3790235c14a0c6081408a71eddc` |
| 5 | `theorem` | [isPrimePow_iff_card_primeFactors_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-iff-card-primefactors-eq-one--3485bbf2bf4a1e02f0a6a9c6.md) | 51 | `result-track:3485bbf2bf4a1e02f0a6a9c647ecbe4fea243d5b811d06464380a1220c449277` |
| 6 | `theorem` | [IsPrimePow.exists_ordCompl_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-exists-ordcompl-eq-one--d597d14f999a1bbc22d7ffe1.md) | 56 | `result-track:d597d14f999a1bbc22d7ffe1299ac9850717fd670824f9f04f9b7bb01847c38a` |
| 7 | `theorem` | [exists_ordCompl_eq_one_iff_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/exists-ordcompl-eq-one-iff-isprimepow--762c37c3712b7518529ac045.md) | 71 | `result-track:762c37c3712b7518529ac0453c970fe19bde20687b2ddc84898afa7fc9722799` |
| 8 | `theorem` | [isPrimePow_iff_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-iff-unique-prime-dvd--f8bef3ad8ebda0ced1b0e2ca.md) | 86 | `result-track:f8bef3ad8ebda0ced1b0e2cabb6f50c42c0a8a38694f4c58ea1dcc46a02b3cec` |
| 9 | `theorem` | [isPrimePow_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-pow-iff--fef0a5b594fea3375301c104.md) | 107 | `result-track:fef0a5b594fea3375301c104ce90d2b793fd2c9c20bd54ec03befcf44f9de213` |
| 10 | `theorem` | [Nat.Coprime.isPrimePow_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/nat-coprime-isprimepow-dvd-mul--7e437f6c670508ae04e5a73e.md) | 114 | `result-track:7e437f6c670508ae04e5a73e3481b53ff012f35770a8f1736aebfe4f3bc5d507` |
| 11 | `theorem` | [Nat.mul_divisors_filter_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/nat-mul-divisors-filter-prime-pow--d54476e323043863d80d8f7c.md) | 137 | `result-track:d54476e323043863d80d8f7c513cfd2ddbc3ef68c0d047bae7b6309ee8834a2f` |
| 12 | `lemma` | [IsPrimePow.factorization_minFac_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/isprimepow-factorization-minfac-ne-zero--56ce5a56f4e11efcde627a0d.md) | 150 | `result-track:56ce5a56f4e11efcde627a0d82989d58cc75246fd16f41f56fc63fe2ed2c0346` |
| 13 | `def` | [Nat.Primes.prodNatEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/nat-primes-prodnatequiv--3bebeb2cbdf6c969ddd0bfa2.md) | 158 | `declaration-track:3bebeb2cbdf6c969ddd0bfa278bfc32ffa85b7b7460d536ce9922643535eb260` |
| 14 | `lemma` | [Nat.Primes.prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/nat-primes-prodnatequiv-apply--fbd0f4ef615fcd17201189cc.md) | 173 | `result-track:fbd0f4ef615fcd17201189cc37c6f8678336d09e061e22eba01af5cc63eaf58b` |
| 15 | `lemma` | [Nat.Primes.coe_prodNatEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/nat-primes-coe-prodnatequiv-apply--0778a79eeaab67773f914505.md) | 178 | `result-track:0778a79eeaab67773f914505834e5488fdcaa6a2cf0bda7179b7cf87bcb0f850` |
| 16 | `lemma` | [Nat.Primes.prodNatEquiv_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/declarations/nat-primes-prodnatequiv-symm-apply--adf2be74495f0d5734495ba4.md) | 183 | `result-track:adf2be74495f0d5734495ba42522f2665d2c03531f9c47ac3e385e249f594396` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
