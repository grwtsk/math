# Verification target: GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f509533c901778e25ca8e4bc6b42e33bd3232a96",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommonJCounterexamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f509533c901778e25ca8e4bc6b42e33bd3232a96`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommonJCounterexamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommonJCounterexamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Diagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hostileUpper](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/hostileupper--1fbca9beb6e2e86941065bd5.md) | 27 | `declaration-track:1fbca9beb6e2e86941065bd563e964527b6c00fc015c42f8181e611bc7558bd6` |
| 2 | `def` | [hostileLower](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/hostilelower--2660c11134d85104d834f665.md) | 40 | `declaration-track:2660c11134d85104d834f665a6eb8e0423525443e4ff8dd2527a8528f4c4cf21` |
| 3 | `def` | [hostileSign](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/hostilesign--bafbd09529ac29d442923406.md) | 53 | `declaration-track:bafbd09529ac29d442923406010f319af77bb0d1571766138b0931e31e891f1b` |
| 4 | `theorem` | [hostileUpper_sign_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/hostileupper-sign-inverse--6a7d3a143d61aae008145702.md) | 66 | `result-track:6a7d3a143d61aae0081457026ff24ce43fe6a75ac484d091a6ea83727c82a8a7` |
| 5 | `theorem` | [hostileLower_sign_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/hostilelower-sign-inverse--efef85f7a94de0c685718d67.md) | 76 | `result-track:efef85f7a94de0c685718d6711a7d7ec3973e76c548e22e12536fefbac214737` |
| 6 | `theorem` | [noncommuting_sign_loop_fails](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/noncommuting-sign-loop-fails--21d511b06997dfa9454a873f.md) | 86 | `result-track:21d511b06997dfa9454a873f95459810b18c16de01c35fd7994e9b1be6415e91` |
| 7 | `theorem` | [hostile_edges_noncommute](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence0c2b52424b26a4b023b52b8e.lean/declarations/hostile-edges-noncommute--ebeb62b4a82197db258bbd4e.md) | 97 | `result-track:ebeb62b4a82197db258bbd4e0e5c130f93e911a918cbaeae5e9c44ed936b5ff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
