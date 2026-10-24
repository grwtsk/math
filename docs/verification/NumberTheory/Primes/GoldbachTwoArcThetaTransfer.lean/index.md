# Verification target: GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b89fc582127fcf9ce729f4b394c8f0f623ed6d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b89fc582127fcf9ce729f4b394c8f0f623ed6d`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget`](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Prime.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachPrimeTwoCorrection](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachprimetwocorrection--c9935f95f5048e5cec426a94.md) | 31 | `declaration-track:c9935f95f5048e5cec426a940c44d90fabc9775ede5814501a505c4af183a8d8` |
| 2 | `theorem` | [goldbachPrimeTwoCorrection_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachprimetwocorrection-bounds--bb105006594c66269f42d82d.md) | 34 | `result-track:bb105006594c66269f42d82da43859cac4a2fd827a331c055497fb0a1fc31bea` |
| 3 | `theorem` | [primeLogWeight_even_indicator](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/primelogweight-even-indicator--0d2444ad1f3076e399f848db.md) | 41 | `result-track:0d2444ad1f3076e399f848db89a13be2e2be92b097c4a6ad14fe3e146e2c33ff` |
| 4 | `theorem` | [primeLogWeight_odd_indicator](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/primelogweight-odd-indicator--7cbcd413e803b6496909920b.md) | 53 | `result-track:7cbcd413e803b6496909920b8fbc452db8b556bbd384e4808758b8a6a3ad01c6` |
| 5 | `theorem` | [goldbachResiduePrimeLogTotal_one_zero](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachresidueprimelogtotal-one-zero--0777b909b166b48cfc6b460e.md) | 64 | `result-track:0777b909b166b48cfc6b460e854b2cae4c13e9760638bbec44720674d464c3b9` |
| 6 | `theorem` | [goldbachResiduePrimeLogTotal_two_zero](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachresidueprimelogtotal-two-zero--b2729e7b0bbd4a918a8dd10e.md) | 69 | `result-track:b2729e7b0bbd4a918a8dd10e9ac0c8622df93dca64ec0aa9a45d45103c03641d` |
| 7 | `theorem` | [goldbachResiduePrimeLogTotal_two_one](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachresidueprimelogtotal-two-one--e7357f40f5d4ca212ab18d6a.md) | 76 | `result-track:e7357f40f5d4ca212ab18d6a10c1b2a972f39a79d164f367fb54fc6121d55954` |
| 8 | `theorem` | [goldbachResiduePrefixDiscrepancy_eq_mass](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachresidueprefixdiscrepancy-eq-mass--0c121c2fe765a9a865b6704e.md) | 87 | `result-track:0c121c2fe765a9a865b6704e3ceee2fcf66a87eaf9f778f4b7c8da475747b7c9` |
| 9 | `theorem` | [goldbachResiduePrefixDiscrepancy_one_zero](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachresidueprefixdiscrepancy-one-zero--c29abd40a98d61cd7a312f6a.md) | 100 | `result-track:c29abd40a98d61cd7a312f6a18f43a7bbe550949b2e4c13a10e1ce5979530110` |
| 10 | `theorem` | [goldbachResiduePrefixDiscrepancy_two_one](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachresidueprefixdiscrepancy-two-one--c215981b6ae656f439cfbe18.md) | 108 | `result-track:c215981b6ae656f439cfbe1874e161c879eb6193b172cf2615cc707acee27208` |
| 11 | `theorem` | [norm_goldbachResiduePrefixDiscrepancy_one_zero](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/norm-goldbachresidueprefixdiscrepancy-one-zero--832a4cf7133106c7e1e582fe.md) | 119 | `result-track:832a4cf7133106c7e1e582feb9be6268a07c1d3f74e96388cfc0ba2a29f6e14e` |
| 12 | `theorem` | [norm_goldbachResiduePrefixDiscrepancy_two_one_le](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/norm-goldbachresidueprefixdiscrepancy-two-one-le--e78d6539b3a4b7997ec1d7be.md) | 124 | `result-track:e78d6539b3a4b7997ec1d7be79906c5dac8f4b0428c32df7d1a29e8947c9bf2d` |
| 13 | `def` | [goldbachTwoArcReducedPrefixBound](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachtwoarcreducedprefixbound--efeadff6c65f016f34f67f9b.md) | 141 | `declaration-track:efeadff6c65f016f34f67f9be930ba23a7a54688a1042efe1406b7a9b99f03c7` |
| 14 | `theorem` | [goldbachTwoArcReducedPrefixBounds_of_theta](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachtwoarcreducedprefixbounds-of-theta--452d3a7cfe5aed7eaba6ab00.md) | 146 | `result-track:452d3a7cfe5aed7eaba6ab00829604ea607a85e405fa8b2fd3ffb083f4c52b41` |
| 15 | `theorem` | [goldbachReducedPrefixSupplier_two_of_theta](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcThetaTransfer.lean/declarations/goldbachreducedprefixsupplier-two-of-theta--d9c037da452c221c66cf5b6c.md) | 175 | `result-track:d9c037da452c221c66cf5b6c47afa08574e68948864829d1089c425550f75051` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
