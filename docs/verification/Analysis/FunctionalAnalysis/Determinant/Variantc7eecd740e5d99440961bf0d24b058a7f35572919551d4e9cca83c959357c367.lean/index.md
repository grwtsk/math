# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Determinant.Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6b8c4f91c26c41b070915a990949687eeed9a63",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6b8c4f91c26c41b070915a990949687eeed9a63`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [det](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean/declarations/det--0ed3da55813dbec45296e073.md) | 27 | `declaration-track:0ed3da55813dbec45296e073e91e91dfaf8090387ea5e9597c6c56af61e33cc3` |
| 2 | `theorem` | [det_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean/declarations/det-pi--a077daea6b24fa2e7b3ead35.md) | 31 | `result-track:a077daea6b24fa2e7b3ead355d33d836c5ac02a5769c7c8e898b974c681443f9` |
| 3 | `theorem` | [det_one_smulRight](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean/declarations/det-one-smulright--be14e7cc5c2a97412e20899e.md) | 37 | `result-track:be14e7cc5c2a97412e20899e467add683ccd2996db1770162b44806ea0ae98b2` |
| 4 | `theorem` | [det_coe_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantc7eecd740e5d99440961bf0d24b058a7f35572919551d4e9cca83c959357c367.lean/declarations/det-coe-symm--d087a45271855abb535054a7.md) | 53 | `result-track:d087a45271855abb535054a775558e47dee25983e92191d802a262e9d976c567` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
