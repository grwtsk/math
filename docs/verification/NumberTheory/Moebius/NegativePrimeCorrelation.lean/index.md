# Verification target: GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3e314f6323bf623e11acf62d28597feede00b6f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3e314f6323bf623e11acf62d28597feede00b6f`.

Source path: `GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/NegativePrimeCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy`](../../../../mathematics/NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth`](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.NormNum.Prime` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source11_primes](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/source11-primes--4e3ab3af1a3a45b9518fa538.md) | 16 | `result-track:4e3ab3af1a3a45b9518fa5382310711e9a57cfc9e3ebabfcccd6dcbad0f81459` |
| 2 | `theorem` | [source11_cell](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/source11-cell--7c8cd514747635547659c527.md) | 21 | `result-track:7c8cd514747635547659c527434318ff0adb870eb471665f62418db848dddc0a` |
| 3 | `theorem` | [source11_radical_bound](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/source11-radical-bound--b573cadac92133f409b32514.md) | 72 | `result-track:b573cadac92133f409b32514d79731ecc6094ab302eaa56d3500377d3ed6d312` |
| 4 | `theorem` | [source11_negative_on_cell](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/source11-negative-on-cell--d4c83cc4641cee652c483e5e.md) | 86 | `result-track:d4c83cc4641cee652c483e5ef10f5337f5c38a7025b61107466e10e4fc51251b` |
| 5 | `theorem` | [primePrefix_eleven](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/primeprefix-eleven--369fb2ceb9015804f2698123.md) | 101 | `result-track:369fb2ceb9015804f2698123d0eb3866fe25e9e3f2496f8b35e3039f9e73e086` |
| 6 | `theorem` | [source11_shift_positive](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/source11-shift-positive--fac40b13c0219be879789f43.md) | 103 | `result-track:fac40b13c0219be879789f43f714691e34e0042f5ef814f9ab930d8432333a62` |
| 7 | `theorem` | [primePrefix_eleven_negative_correlation](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/primeprefix-eleven-negative-correlation--59bfbb6941776292f33fba3d.md) | 122 | `result-track:59bfbb6941776292f33fba3d5aad892d67a0c22222143622473b3772dd33ad3f` |
| 8 | `theorem` | [not_all_prefix_correlations_nonnegative](../../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/declarations/not-all-prefix-correlations-nonnegative--5ccd455133f97b375228f556.md) | 165 | `result-track:5ccd455133f97b375228f5562502dde993c4678cdf050969a087f04b91069ed9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
