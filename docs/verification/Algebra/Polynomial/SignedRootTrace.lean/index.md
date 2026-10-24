# Verification target: GRWTSK.Algebra.Polynomial.SignedRootTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "681311b90019c078ed32a3ff4ddb31d6597704bc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Polynomial/SignedRootTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/index.md) · [Full source](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `681311b90019c078ed32a3ff4ddb31d6597704bc`.

Source path: `GRWTSK/Algebra/Polynomial/SignedRootTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Polynomial/SignedRootTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Polynomial.ConjugateInterpolation`](../../../../mathematics/Algebra/Polynomial/ConjugateInterpolation.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareTrace](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/squaretrace--2bbaf28cbe3acc6d45e38d4d.md) | 26 | `declaration-track:2bbaf28cbe3acc6d45e38d4dacc940749e235066864d19e6f1a8bef7e210b152` |
| 2 | `def` | [pairValues](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/pairvalues--510d39ab00e8f396cf36dadf.md) | 31 | `declaration-track:510d39ab00e8f396cf36dadfcca35be5be2fc82fd6ff5dbdbf0bbd2248269249` |
| 3 | `theorem` | [pairValues_conj](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/pairvalues-conj--152a7a254cbcc2498fb7220d.md) | 34 | `result-track:152a7a254cbcc2498fb7220debf30929b5a676b9c8cebe9b134042f965725111` |
| 4 | `theorem` | [squareTrace_of_pair_values](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/squaretrace-of-pair-values--1fd3caf5a5d6d273b79177be.md) | 52 | `result-track:1fd3caf5a5d6d273b79177be1f9a2fc19f3957b6e9cfe908fc284557db214b24` |
| 5 | `theorem` | [exists_pair_test](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/exists-pair-test--a8015d139c1534e91a548188.md) | 76 | `result-track:a8015d139c1534e91a548188a18d43ac12612ab8a2d583f917b5724c1403a8c0` |
| 6 | `theorem` | [squareTrace_eq_real](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/squaretrace-eq-real--9943b7880121410703206000.md) | 87 | `result-track:9943b7880121410703206000239d9647888e475819da20ae913ce1b2054d02a5` |
| 7 | `theorem` | [squareTrace_im_eq_zero](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/squaretrace-im-eq-zero--fbfcd4469e8e7ee257da121e.md) | 102 | `result-track:fbfcd4469e8e7ee257da121e207ce43a930ba3bd949da48000f7dfc47e6e381f` |
| 8 | `theorem` | [squareTrace_nonneg_iff_real](../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/declarations/squaretrace-nonneg-iff-real--ac33f1aae286f009220ad9ee.md) | 125 | `result-track:ac33f1aae286f009220ad9ee93ad4cc5741740f5208fc9dab7f2855e0ee6b286` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
