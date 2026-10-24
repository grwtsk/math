# Verification target: GRWTSK.Algebra.LinearAlgebra.FeshbachHermitian.Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd3455fcf2b1ee05dca9dc59a2146cc58fe0d13",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd3455fcf2b1ee05dca9dc59a2146cc58fe0d13`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [completion_of_squares](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/declarations/completion-of-squares--f380f0d148f273b99e5c8442.md) | 30 | `result-track:f380f0d148f273b99e5c8442d583a05d5420e29d1ed90f813986b34c014915e7` |
| 2 | `theorem` | [isHermitian_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/declarations/ishermitian-iff--05600de6402e48b5e7864ffc.md) | 43 | `result-track:05600de6402e48b5e7864ffcaf80bba0d10aa53a6c21e4b95c62e34bf5800592` |
| 3 | `theorem` | [posSemidef_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/declarations/possemidef-iff--6d9155128e7b8c5cf06622c4.md) | 60 | `result-track:6d9155128e7b8c5cf06622c46795f9e48d50d07969148b7745bc9d5639bb3a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
