# Verification target: GRWTSK.Algebra.Hecke.LaurentRankOneBar

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76ba3801890540fd9decf1b8d6c9394adcdf892b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76ba3801890540fd9decf1b8d6c9394adcdf892b`.

Source path: `GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/LaurentRankOneBar.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Hecke.RankOneBarCoordinates`](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Algebra.Polynomial.Laurent` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laurentRankOneBar](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/declarations/laurentrankonebar--b87654f4fe8c1c6b80c5a6b0.md) | 10 | `declaration-track:b87654f4fe8c1c6b80c5a6b0bd169a7406072957375ec36e0e8db48d5ff7147c` |
| 2 | `theorem` | [laurentRankOneBar_involutive](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/declarations/laurentrankonebar-involutive--92abe40750e4c71444843bcd.md) | 15 | `result-track:92abe40750e4c71444843bcd42fde007154e4e814b6cbbecdfffaa62cf9b0e53` |
| 3 | `theorem` | [laurentRankOneBar_mul](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/declarations/laurentrankonebar-mul--01fe7d24784e02cc353ef987.md) | 23 | `result-track:01fe7d24784e02cc353ef987a25387ce9d5cef85c090899d9fef432daf0faff8` |
| 4 | `theorem` | [laurentRankOneBar_normalized_fixed](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/declarations/laurentrankonebar-normalized-fixed--18a4449fb4e95ed0540f7b4f.md) | 32 | `result-track:18a4449fb4e95ed0540f7b4fdd8b95d7e545ade5e1f8080eabf96745a7179eac` |
| 5 | `theorem` | [laurentRankOne_normalized_existsUnique](../../../../mathematics/Algebra/Hecke/LaurentRankOneBar.lean/declarations/laurentrankone-normalized-existsunique--c55bb4d1454565d72ab7a5ea.md) | 41 | `result-track:c55bb4d1454565d72ab7a5ea582c79272a862506ad5e984256b99f39079919f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
