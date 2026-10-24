# Verification target: GRWTSK.Analysis.MeasureTheory.FinalValueAttempt01.Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6621b21c0a6275d2b4dfe5c199ad125b1c6959fc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6621b21c0a6275d2b4dfe5c199ad125b1c6959fc`.

Source path: `GRWTSK/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [laplace_rescale](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean/declarations/laplace-rescale--a9e6acb130d575329b12b4cc.md) | 14 | `result-track:a9e6acb130d575329b12b4ccf7c38fce05ec53c2deca7fafc46c62add630b2df` |
| 2 | `theorem` | [bounded_final_value](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variantfcafbe1541281c84d2df77ff2b8279d3f3d5777dba7cd00d4f64338b727db8c1.lean/declarations/bounded-final-value--26f9ea23a2615898147f2b71.md) | 28 | `result-track:26f9ea23a2615898147f2b7151940b52f0dc2fb554067e293eadeb6649028b55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
