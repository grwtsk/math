# Verification target: GRWTSK.NumberTheory.Primes.GoldbachWeighted

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16fd561be8520e94d9b040206628017b6706c3d8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachWeighted.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16fd561be8520e94d9b040206628017b6706c3d8`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachWeighted.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachWeighted.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.ConfigurationCounts`](../../../../mathematics/NumberTheory/Primes/ConfigurationCounts.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachBox](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachbox--5f646fccc0908a630d0f9c39.md) | 27 | `declaration-track:5f646fccc0908a630d0f9c39a7f04b142987e4009698debf72c22d4596e6fad3` |
| 2 | `theorem` | [mem_goldbachBox](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/mem-goldbachbox--4487d7407d51e6f5c0e8df07.md) | 31 | `result-track:4487d7407d51e6f5c0e8df076fe13a67a550b813c834d28a9e5366ae922bead7` |
| 3 | `def` | [primeLogWeight](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/primelogweight--d72f9bd2a2a10b0d79693d64.md) | 37 | `declaration-track:d72f9bd2a2a10b0d79693d6474820dea27f7e4fd352de950cd537304734aadb3` |
| 4 | `theorem` | [primeLogWeight_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/primelogweight-nonneg--12655f29bf39f80b51c8fa54.md) | 41 | `result-track:12655f29bf39f80b51c8fa54d1b79ada7784b58941cf83abae59870ebb926d25` |
| 5 | `theorem` | [primeLogWeight_pos_iff](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/primelogweight-pos-iff--83402db6cf927bcb740013f7.md) | 49 | `result-track:83402db6cf927bcb740013f72754bde0573b0b81bc2244a278b607e9427d2ae2` |
| 6 | `def` | [goldbachLogTerm](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogterm--530ed9c7963ad255db8265c9.md) | 62 | `declaration-track:530ed9c7963ad255db8265c97656c020ce315526c0471952fac6d3fb7a8578c9` |
| 7 | `theorem` | [goldbachLogTerm_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogterm-nonneg--834cafa36eaa3fb4b071554a.md) | 66 | `result-track:834cafa36eaa3fb4b071554a0c43d716566ca69ab56eaf3402e5902efcc81a6d` |
| 8 | `theorem` | [goldbachLogTerm_pos_iff](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogterm-pos-iff--ed1978d24a6d4b6980d6120e.md) | 74 | `result-track:ed1978d24a6d4b6980d6120ec46275e9284dc6d9b311c7e9dd8981734f23d25b` |
| 9 | `def` | [goldbachLogMass](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogmass--f6a56c7fbeb0d9049fd24f08.md) | 91 | `declaration-track:f6a56c7fbeb0d9049fd24f087bc6f104ad10d8cf930c17bb2e71c2c836d78145` |
| 10 | `theorem` | [goldbachLogMass_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogmass-nonneg--eb5a1a6d7ebbe6ccf38d4004.md) | 95 | `result-track:eb5a1a6d7ebbe6ccf38d4004e56e07dfad69b6450a2f4f3e28bd7433e2626bf9` |
| 11 | `theorem` | [goldbachLogMass_pos_iff](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogmass-pos-iff--ca948b75f873b7b3ebcfd311.md) | 101 | `result-track:ca948b75f873b7b3ebcfd3113337389ee6ebaf4a81e68aabfe6a31876e49ea2c` |
| 12 | `theorem` | [goldbachLogMass_pos_iff_count_pos](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/declarations/goldbachlogmass-pos-iff-count-pos--da6d0d72b4429975c1c425ce.md) | 120 | `result-track:da6d0d72b4429975c1c425ceba1ced49dcc11d651babb8fb370a7110e922eebf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
