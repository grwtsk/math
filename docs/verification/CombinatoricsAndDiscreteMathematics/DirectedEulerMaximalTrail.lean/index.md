# Verification target: GRWTSK.Combinatorics.DirectedEulerMaximalTrail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543d37710bf64b49198ea721df1480136c4d8aa0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedEulerMaximalTrail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543d37710bf64b49198ea721df1480136c4d8aa0`.

Source path: `GRWTSK/Combinatorics/DirectedEulerMaximalTrail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedEulerMaximalTrail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedEulerSplicing`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Data.Finset.Card` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximal_trail](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/declarations/exists-maximal-trail--80f219af190a68d33f3edfce.md) | 27 | `result-track:80f219af190a68d33f3edfce02a3546da66788aa240396e9f0aa75703d122fa0` |
| 2 | `theorem` | [exists_closed_maximal_trail](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/declarations/exists-closed-maximal-trail--41a0805486026f52bf53e58f.md) | 64 | `result-track:41a0805486026f52bf53e58f9e698ab34441d15502a6e56a94fa37a7aa523642` |
| 3 | `theorem` | [exists_nonempty_closed_trail](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/declarations/exists-nonempty-closed-trail--4b19e9fd9a31f925bc70d477.md) | 97 | `result-track:4b19e9fd9a31f925bc70d477382fac5a099410c7b506643666a27a3746dc7003` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
