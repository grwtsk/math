# Verification target: GRWTSK.Algebra.UniversalAlgebra.Determinant.Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06722ab25b4e34ba9a5138de5ca820f1285248be",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06722ab25b4e34ba9a5138de5ca820f1285248be`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [determinant_aux](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean/declarations/determinant-aux--f7b2ee257573211188cfbab9.md) | 43 | `result-track:f7b2ee257573211188cfbab9cd5bae0f70a75f78839fb96e474454ec4ca4b808` |
| 2 | `theorem` | [determinant](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848.lean/declarations/determinant--94f1b48d7bdf53837660a56b.md) | 82 | `result-track:94f1b48d7bdf53837660a56bf218419b35512897aee57eca38e5de913d4e4464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
