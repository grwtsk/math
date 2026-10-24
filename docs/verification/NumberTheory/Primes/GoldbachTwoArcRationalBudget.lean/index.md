# Verification target: GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37bca0cb5ea0f57c94742c335d7d74414460ac58",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37bca0cb5ea0f57c94742c335d7d74414460ac58`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget`](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GoldbachThetaPrefixSupplier](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/declarations/goldbachthetaprefixsupplier--f28a113f760f1495af380977.md) | 26 | `declaration-track:f28a113f760f1495af38097701d032a7d4f2238ed50a227918d5dbc17f42a050` |
| 2 | `def` | [goldbachTwoArcRationalBudget](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/declarations/goldbachtwoarcrationalbudget--6fb6f842d384a20122e048dc.md) | 32 | `declaration-track:6fb6f842d384a20122e048dc1038beb91efe2af5a4c0d57eaf821301e5a25790` |
| 3 | `theorem` | [goldbachTwoArcRationalBudget_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/declarations/goldbachtwoarcrationalbudget-nonneg--0e3ff7d150990080301c50eb.md) | 35 | `result-track:0e3ff7d150990080301c50eb21e70607f0923277a38430dd774166b072b0d4d0` |
| 4 | `theorem` | [goldbachTwoArcRationalBudget_le_half](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/declarations/goldbachtwoarcrationalbudget-le-half--645655e8d823f947935dc9e4.md) | 43 | `result-track:645655e8d823f947935dc9e426d397ece73f5f24d895689cbe4773ce1f921ef1` |
| 5 | `theorem` | [goldbachTwoArcRationalBudget_strict_margin](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/declarations/goldbachtwoarcrationalbudget-strict-margin--904b7e7f6d0b0a663497aee7.md) | 61 | `result-track:904b7e7f6d0b0a663497aee723a6a92252dab8750fbbba8c09952661415aeb20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
