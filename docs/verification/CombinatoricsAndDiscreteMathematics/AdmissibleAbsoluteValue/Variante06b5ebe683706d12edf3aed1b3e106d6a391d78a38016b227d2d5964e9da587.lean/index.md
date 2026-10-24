# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AdmissibleAbsoluteValue.Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8be86ba538ae4df76237e7a147d09a95e9ce93c3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8be86ba538ae4df76237e7a147d09a95e9ce93c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Euclidean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdmissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/declarations/isadmissible--1b63db395455fe632b6559c6.md) | 40 | `declaration-track:1b63db395455fe632b6559c672b7c2be078eccb7fd7426d682c00514e714c127` |
| 2 | `theorem` | [exists_partition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/declarations/exists-partition--17b11926e00f11ee0cb5d015.md) | 55 | `result-track:17b11926e00f11ee0cb5d015f6ab082740598ca4be9d2415bb7e2305ed621449` |
| 3 | `theorem` | [exists_approx_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/declarations/exists-approx-aux--37f67fef1b481edd9bcff8a5.md) | 66 | `result-track:37f67fef1b481edd9bcff8a524fad7be43c6634dd8963e5389a1a84236f7dff3` |
| 4 | `theorem` | [exists_approx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/declarations/exists-approx--6202875a1a8b219341511778.md) | 118 | `result-track:6202875a1a8b219341511778618cedc2740cf5c73a02fe05cb2f248d7feb9d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
