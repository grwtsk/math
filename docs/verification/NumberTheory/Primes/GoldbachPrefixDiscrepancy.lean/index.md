# Verification target: GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6aa8648cf25048564e228c26003a81b52d9645f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6aa8648cf25048564e228c26003a81b52d9645f`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachResidueDiscrepancyCoefficient](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresiduediscrepancycoefficient--0d676622e04bc34552502beb.md) | 33 | `declaration-track:0d676622e04bc34552502beba3d3577099ebb29cd228db180b55bb92db65d0d8` |
| 2 | `def` | [goldbachResiduePrefixDiscrepancy](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprefixdiscrepancy--67f67760f9806a3071eaec56.md) | 38 | `declaration-track:67f67760f9806a3071eaec5609344d32fc07a7cf1f80dd7bd01e4c5a735a641e` |
| 3 | `theorem` | [goldbachResidueProgressionDiscrepancy_eq_coefficient_sum](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprogressiondiscrepancy-eq-coefficient-sum--66d4e95e10e0dbf92d725e42.md) | 42 | `result-track:66d4e95e10e0dbf92d725e42800ebc30a3ca95b528738d82c1f0542e5f45885e` |
| 4 | `theorem` | [unitCharacter_argument_zero](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/unitcharacter-argument-zero--1855a64dfcc58e4d1936a3a8.md) | 56 | `result-track:1855a64dfcc58e4d1936a3a8cf001e0415b6c227522688501b1dfdb0d0a41bad` |
| 5 | `theorem` | [goldbachResiduePrefixDiscrepancy_eq_at_zero](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprefixdiscrepancy-eq-at-zero--0731c54bedba1fabd83caeeb.md) | 60 | `result-track:0731c54bedba1fabd83caeebfaab9f59c3db4f3405d254063cb16bd9dc585c5d` |
| 6 | `theorem` | [finite_abel_identity](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/finite-abel-identity--3012db2365fcf74212965919.md) | 67 | `result-track:3012db2365fcf74212965919253c775b054c6aa3513062d38a543a17a5802687` |
| 7 | `theorem` | [goldbachResidueProgressionDiscrepancy_abel](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprogressiondiscrepancy-abel--b0c33612c670544605b81cb6.md) | 82 | `result-track:b0c33612c670544605b81cb62d4e7262264bf48e34496202d96db94cfe58ec1b` |
| 8 | `theorem` | [norm_unitCharacter_adjacent_difference](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/norm-unitcharacter-adjacent-difference--0680527ca361c841a7d9c2be.md) | 94 | `result-track:0680527ca361c841a7d9c2be1ca61fa0d6504293846047d0da4c0724f6a00e4a` |
| 9 | `theorem` | [norm_one_sub_unitCharacter_one_le](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/norm-one-sub-unitcharacter-one-le--71435f305328e8c7fce75611.md) | 104 | `result-track:71435f305328e8c7fce75611ae61e00e595c594f0e137ac8f1035c32797e0118` |
| 10 | `theorem` | [norm_goldbachResidueProgressionDiscrepancy_le_of_prefix](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/norm-goldbachresidueprogressiondiscrepancy-le-of-prefix--b280a235d2951c3a7e2abd20.md) | 121 | `result-track:b280a235d2951c3a7e2abd2088e833b7088a62cbd12ca8621ddb1c968fab1756` |
| 11 | `theorem` | [norm_goldbachResidueProgressionDiscrepancy_le_of_prefix_radius](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/norm-goldbachresidueprogressiondiscrepancy-le-of-prefix-radius--a26c4c09459997daa0971fc5.md) | 154 | `result-track:a26c4c09459997daa0971fc5085a0f142a87e5189574abfc113ad0414b137cb9` |
| 12 | `theorem` | [goldbachResidueProgressionDiscrepancy_add_int](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprogressiondiscrepancy-add-int--c50fdf8ea12684018a6d6cac.md) | 173 | `result-track:c50fdf8ea12684018a6d6cacb900fe9872144ad1c4fc22e285c6637469342e4b` |
| 13 | `def` | [goldbachResiduePrimeLogTotal](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprimelogtotal--695db3094a09869edc17e3cf.md) | 181 | `declaration-track:695db3094a09869edc17e3cf15be86942d2d4fb52b52f7b9c3e070198e3fd51c` |
| 14 | `theorem` | [goldbachResiduePrimeLogTotal_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/goldbachresidueprimelogtotal-nonneg--f630702c3d87aa229c940a54.md) | 184 | `result-track:f630702c3d87aa229c940a543a4370e8d936886dd43513c9debffb3bdd8ad16b` |
| 15 | `theorem` | [norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/declarations/norm-goldbachresidueprogressiondiscrepancy-le-of-not-coprime--7a399de7f2cc392c36b5b230.md) | 189 | `result-track:7a399de7f2cc392c36b5b2300f63e481fbf9052d06a329165b960d944f4eea50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
