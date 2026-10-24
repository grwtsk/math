# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Determinant.Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef6fb2e8dd1a7d014d364d13f6863368d7c882b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef6fb2e8dd1a7d014d364d13f6863368d7c882b4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [det](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/declarations/det--83023b6b260727c12cd25a47.md) | 19 | `declaration-track:83023b6b260727c12cd25a4779bd4f821f05a46a60fe546a408e1ce3ea197396` |
| 2 | `theorem` | [det_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/declarations/det-pi--c0edfb8a4754443a9a106eac.md) | 23 | `result-track:c0edfb8a4754443a9a106eac0b1c41a985e3c3f401ed9fb64bda51a9b85b20c7` |
| 3 | `theorem` | [det_one_smulRight](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/declarations/det-one-smulright--d2b863ce242901ca019d049f.md) | 29 | `result-track:d2b863ce242901ca019d049f1870f9dca5c91d7b3ba3264d0297dc018e25d4d3` |
| 4 | `theorem` | [det_coe_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/declarations/det-coe-symm--1c9afc070b13b8852b49b360.md) | 45 | `result-track:1c9afc070b13b8852b49b360f0d494fb1e5e606c66f8da17bd7d587232df6492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
