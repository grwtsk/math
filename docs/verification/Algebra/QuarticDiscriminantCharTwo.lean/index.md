# Verification target: GRWTSK.Algebra.QuarticDiscriminantCharTwo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c967784277acd3e10ca60a72aaaf9320bfb05512",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticDiscriminantCharTwo.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticDiscriminantCharTwo.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticDiscriminantCharTwo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c967784277acd3e10ca60a72aaaf9320bfb05512`.

Source path: `GRWTSK/Algebra/QuarticDiscriminantCharTwo.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticDiscriminantCharTwo.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticCoefficientDiscriminant`](../../../mathematics/Algebra/QuarticCoefficientDiscriminant.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charTwoDiscriminantRoot](../../../mathematics/Algebra/QuarticDiscriminantCharTwo.lean/declarations/chartwodiscriminantroot--8aaca2b9e80bb28f40b5bca6.md) | 23 | `declaration-track:8aaca2b9e80bb28f40b5bca62320bd879b9e8ec40e4e592c3dd463fa77044946` |
| 2 | `theorem` | [monicQuarticDiscriminant_charTwo](../../../mathematics/Algebra/QuarticDiscriminantCharTwo.lean/declarations/monicquarticdiscriminant-chartwo--1ebbdc889d201eea26f3a034.md) | 28 | `result-track:1ebbdc889d201eea26f3a0347fbe2a7970d262e504ae26cf2f4263c43d0ea071` |
| 3 | `theorem` | [monicQuarticDiscriminant_ne_zero_iff_charTwoRoot](../../../mathematics/Algebra/QuarticDiscriminantCharTwo.lean/declarations/monicquarticdiscriminant-ne-zero-iff-chartworoot--f2a541dbc0dc76cf02f4b924.md) | 77 | `result-track:f2a541dbc0dc76cf02f4b9243cd45417cf9eaaec214c911db67d87fd67d67f6e` |
| 4 | `theorem` | [monicQuarticDiscriminant_eq_zero_iff_charTwoRoot](../../../mathematics/Algebra/QuarticDiscriminantCharTwo.lean/declarations/monicquarticdiscriminant-eq-zero-iff-chartworoot--8db2d5989ff8188f17897004.md) | 87 | `result-track:8db2d5989ff8188f17897004dcd9ae9c83061b72753497039e11fd02acb91c4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
