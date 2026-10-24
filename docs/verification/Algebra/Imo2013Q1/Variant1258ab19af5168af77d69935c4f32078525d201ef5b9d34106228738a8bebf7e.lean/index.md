# Verification target: GRWTSK.Algebra.Imo2013Q1.Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cea0e76c8f98e7d69043715749f56cf8ae194418",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cea0e76c8f98e7d69043715749f56cf8ae194418`.

Source path: `GRWTSK/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [arith_lemma](../../../../mathematics/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/declarations/arith-lemma--0ddca9525f58263a904c757d.md) | 38 | `result-track:0ddca9525f58263a904c757d69270749af194e3f68dd72368ea6ac2481634f57` |
| 2 | `theorem` | [prod_lemma](../../../../mathematics/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/declarations/prod-lemma--e7e52f37ea518acee3756791.md) | 40 | `result-track:e7e52f37ea518acee37567915f83edc69c284ff130419a55976e3ab99e7f9e3d` |
| 3 | `theorem` | [imo2013_q1](../../../../mathematics/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/declarations/imo2013-q1--ee457c4c53f3e50acbaddc29.md) | 51 | `result-track:ee457c4c53f3e50acbaddc29ac7522660f7e3e842618b27b9507a406d897d8f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
