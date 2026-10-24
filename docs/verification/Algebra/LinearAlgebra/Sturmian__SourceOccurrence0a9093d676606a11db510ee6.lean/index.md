# Verification target: GRWTSK.LinearAlgebra.Sturmian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d39ca6d45fb88fbbe6107375fbec25708c0dc9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Sturmian.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d39ca6d45fb88fbbe6107375fbec25708c0dc9`.

Source path: `GRWTSK/LinearAlgebra/Sturmian.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Sturmian.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrence1b935086502b7f96acb46a5b.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bit](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/bit--6ae959d541d3ad51b623e8ea.md) | 19 | `declaration-track:6ae959d541d3ad51b623e8ea851b42ece1b6edb40d9949658911862f69f6f598` |
| 2 | `def` | [potential](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/potential--0f0fdc31262763cbf6470b23.md) | 22 | `declaration-track:0f0fdc31262763cbf6470b236ac9f21cc27dcbb08cebd35206f8d007b587bcb8` |
| 3 | `def` | [transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/transfer--d947db0da63ef3cd360c4627.md) | 24 | `declaration-track:d947db0da63ef3cd360c4627e3eb62d339dac58651d87c63d0f9cca8c53b1c34` |
| 4 | `theorem` | [bit_zero_or_one](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/bit-zero-or-one--8a8f1be7b4919460574ec23c.md) | 27 | `result-track:8a8f1be7b4919460574ec23c9bb9d80fd50443bc6c898f6e660389ebf78bbe5e` |
| 5 | `theorem` | [potential_between_offsets](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/potential-between-offsets--48aa6be609ab12577048d694.md) | 31 | `result-track:48aa6be609ab12577048d694448f9beb0dd43b5fac94df2d28a360bd304317dd` |
| 6 | `theorem` | [comparison_offset_width](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/comparison-offset-width--b137711093729c4204e33291.md) | 37 | `result-track:b137711093729c4204e3329165adb4bbb1af4fb240520e3830bfb5239089ad66` |
| 7 | `theorem` | [abs_potential_sub_le](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/abs-potential-sub-le--0375b35eda44e8a7be170aab.md) | 42 | `result-track:0375b35eda44e8a7be170aab7cbd1809918faff92ecced04e9808824a4959df5` |
| 8 | `theorem` | [potential_zero](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/potential-zero--31fb253636461bcbe05ca80f.md) | 46 | `result-track:31fb253636461bcbe05ca80f3cda13f336935d2f4d82abf6b11a44a3a2204cc1` |
| 9 | `theorem` | [zero_coupling_transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/zero-coupling-transfer--f003eb7e2f7e7ddf52d2ae8b.md) | 49 | `result-track:f003eb7e2f7e7ddf52d2ae8b68ecb9e923950d7e08f0334efa8087b47e670dae` |
| 10 | `theorem` | [recurrence_iff_transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/recurrence-iff-transfer--bac6760118709f9775c5c61e.md) | 53 | `result-track:bac6760118709f9775c5c61e56d15d706930de92ec8ef6ba4fd64c17d5b08d18` |
| 11 | `theorem` | [det_transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/det-transfer--faa79c65f22fc4cc434ee1c2.md) | 60 | `result-track:faa79c65f22fc4cc434ee1c24a0101ad1f23596f953aab0c45fef36d049e4a41` |
| 12 | `theorem` | [zero_coupling_trace_iff](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/declarations/zero-coupling-trace-iff--c33e27d23eb07bc3f7fb33e4.md) | 66 | `result-track:c33e27d23eb07bc3f7fb33e4b9fdb298560d762cf3aaacb3597c11a86b0c6b04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
