# Verification target: GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff57d1d94fed3bd191bcac4ab5ccf74c78f9773a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachCompositeCoefficient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff57d1d94fed3bd191bcac4ab5ccf74c78f9773a`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachCompositeCoefficient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachCompositeCoefficient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan`](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachCompositeCoefficientRational](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachcompositecoefficientrational--c1a97f34b8bf0ade2bdd6de9.md) | 45 | `declaration-track:c1a97f34b8bf0ade2bdd6de965f6cc16d71aca59a03d61c12eb2b3c2d421c451` |
| 2 | `theorem` | [goldbachProgressionDenominatorCoefficient_factor](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-factor--c5e6d889e7c3947f8bae08cc.md) | 52 | `result-track:c5e6d889e7c3947f8bae08ccd95273d62afa530a98bfb8778857f98f6640df6c` |
| 3 | `theorem` | [goldbachProgressionDenominatorCoefficient_formula](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-formula--c7b5a65a3cbc5693e018d688.md) | 86 | `result-track:c7b5a65a3cbc5693e018d68803f95c2f92298cbbad26ebb111242a411add2e03` |
| 4 | `theorem` | [goldbachProgressionDenominatorCoefficient_eq_rational](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-eq-rational--dfc0fb1046ecb3c352bbe5e4.md) | 97 | `result-track:dfc0fb1046ecb3c352bbe5e405209982dc0ab03b0d5ad67c9e9642b46d1200cc` |
| 5 | `theorem` | [goldbachProgressionDenominatorCoefficient_im_zero](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-im-zero--5a09fa3eaccc51cefbcbb91b.md) | 107 | `result-track:5a09fa3eaccc51cefbcbb91b54cc1bce130959e395da37390893d58cb91a4b6b` |
| 6 | `theorem` | [goldbachProgressionDenominatorCoefficient_re](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-re--3f2c04cca8a83afb0fc6ec88.md) | 114 | `result-track:3f2c04cca8a83afb0fc6ec88747126f400738221866bef9d137a539a694ff45f` |
| 7 | `theorem` | [goldbachProgressionDenominatorCoefficient_eq_zero_of_not_squarefree](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-eq-zero-of-not-squarefree--0cb716308761cd28714394bf.md) | 122 | `result-track:0cb716308761cd28714394bf563b0c732138605578edaa3c4b7820354fc890d5` |
| 8 | `theorem` | [goldbachProgressionDenominatorCoefficient_one](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-one--a73de7c665a7bd104109ed87.md) | 132 | `result-track:a73de7c665a7bd104109ed871389a21975116926fa1aa7b28cc26dfab45d201c` |
| 9 | `theorem` | [goldbachProgressionDenominatorCoefficient_formula_prime](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-formula-prime--0b834e307f81547eac843777.md) | 143 | `result-track:0b834e307f81547eac843777c307f2b673cb80b3b546d094f76dc4ca8c75bf99` |
| 10 | `theorem` | [goldbachProgressionDenominatorCoefficient_mul_of_coprime](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-mul-of-coprime--53135ff4771ada37bd93f417.md) | 153 | `result-track:53135ff4771ada37bd93f4177fded726f6c9472b1a1dfc0c933838caa01b0967` |
| 11 | `def` | [goldbachDenominatorCoefficientArithmeticFunction](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachdenominatorcoefficientarithmeticfunction--4f33466662f1851b447dc3fb.md) | 176 | `declaration-track:4f33466662f1851b447dc3fb8c4893f95a269c32b68ee9fc9ef69b722339a310` |
| 12 | `theorem` | [goldbachDenominatorCoefficientArithmeticFunction_apply_pos](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachdenominatorcoefficientarithmeticfunction-apply-pos--bbdeb364d73bd0e37b61624c.md) | 184 | `result-track:bbdeb364d73bd0e37b61624c3ceca7ca85b25f8912bb9a0cee92e7d6f4037934` |
| 13 | `theorem` | [isMultiplicative_goldbachDenominatorCoefficientArithmeticFunction](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/ismultiplicative-goldbachdenominatorcoefficientarithmeticfunction--88a04724dbc2b811d19d87a0.md) | 192 | `result-track:88a04724dbc2b811d19d87a0550c79ed0e55c5804e6e78c2324782e871726766` |
| 14 | `theorem` | [goldbachProgressionDenominatorCoefficient_eq_primeFactorProduct](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/goldbachprogressiondenominatorcoefficient-eq-primefactorproduct--720817f879bda0247e436cca.md) | 210 | `result-track:720817f879bda0247e436ccac002f951c561c1287d0fbad7661842b6a0ceab77` |
| 15 | `theorem` | [norm_goldbachProgressionDenominatorCoefficient_eq_primeFactorProduct](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/declarations/norm-goldbachprogressiondenominatorcoefficient-eq-primefactorproduct--66362570d9df62540868c718.md) | 242 | `result-track:66362570d9df62540868c718c36289aa4efc73a725a67d0887a7c1ad1a40462c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
