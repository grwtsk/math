# Verification target: GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f219c5154bbf2a0edbdd0a412837964105cef5f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f219c5154bbf2a0edbdd0a412837964105cef5f`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff`](../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signed_minor_lower_iff_mass_lower](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/signed-minor-lower-iff-mass-lower--72f4ac905b7a8cdfab6392ef.md) | 36 | `result-track:72f4ac905b7a8cdfab6392efbfe1e88eb90f79382ee23ec7a383e1c76f3ff510` |
| 2 | `theorem` | [goldbach_signed_minor_lower_iff_logMass_lower](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/goldbach-signed-minor-lower-iff-logmass-lower--0a91b2435689c9086ac124b6.md) | 45 | `result-track:0a91b2435689c9086ac124b6baa510887fa5cf79ecd885e0b0fee856bad7eb73` |
| 3 | `theorem` | [twoArcBudget_one_percent_eq](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/twoarcbudget-one-percent-eq--4fc84b2649cf2a0348cff03f.md) | 55 | `result-track:4fc84b2649cf2a0348cff03f7ddfefd0065b9cf1e8ceae33c18b41fd37de63d2` |
| 4 | `theorem` | [twoArcBudget_one_percent_le_thirteen_thirtieths](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/twoarcbudget-one-percent-le-thirteen-thirtieths--58965f2a52eb1e2610e4e8d3.md) | 64 | `result-track:58965f2a52eb1e2610e4e8d30941e91ef76b06f3ea19e9b4742ec81a45728629` |
| 5 | `theorem` | [twoArcBudget_full_minor_margin](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/twoarcbudget-full-minor-margin--6174ff2877a37d892142e24d.md) | 75 | `result-track:6174ff2877a37d892142e24d361dcd99a1f54fb0ed79ea9cf2837382d7dd48d6` |
| 6 | `def` | [GoldbachTwoArcSignedMinorSupplier](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachtwoarcsignedminorsupplier--cfaf4a084a172c8dabedad9e.md) | 82 | `declaration-track:cfaf4a084a172c8dabedad9ebdf83fbb90468cc2fe5c23a1a35969ad570f472a` |
| 7 | `theorem` | [goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachlogmass-ge-one-ninetieth-of-two-arc-bridges--60d9268dee835ade6f3d0ce3.md) | 88 | `result-track:60d9268dee835ade6f3d0ce3e80bd865bef7eb29afcfb5c576639dab1f994705` |
| 8 | `theorem` | [goldbachCount_pos_of_relaxed_two_arc_bridges](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachcount-pos-of-relaxed-two-arc-bridges--12b4a7f63868985245af49fa.md) | 110 | `result-track:12b4a7f63868985245af49fa766926284e8769030e373d0daba96298269ea856` |
| 9 | `theorem` | [goldbachLogMass_lower_above_of_relaxed_two_arc_suppliers](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachlogmass-lower-above-of-relaxed-two-arc-suppliers--acca8eee4ea9a64cdba31c31.md) | 127 | `result-track:acca8eee4ea9a64cdba31c31edcace1a782299e3ccf6c7c639483e943d9a5ec1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
