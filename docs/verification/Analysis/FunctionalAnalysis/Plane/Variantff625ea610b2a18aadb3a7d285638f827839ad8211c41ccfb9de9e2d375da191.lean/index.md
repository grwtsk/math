# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Plane.Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "584df3f304b56e26a9713b217e783a85e0f8e6e8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `584df3f304b56e26a9713b217e783a85e0f8e6e8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PlanePoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean/declarations/planepoint--ad9f491e4d1ca729cfac78f8.md) | 14 | `declaration-track:ad9f491e4d1ca729cfac78f86d41e56001b5fa39013c1374b28f35052a12e696` |
| 2 | `def` | [cartesian](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean/declarations/cartesian--49c2a741a070d3c53d59cfbd.md) | 19 | `declaration-track:49c2a741a070d3c53d59cfbd4475d45b71c102ca298b5c70b00e289dba55422d` |
| 3 | `theorem` | [cartesian_horizontal](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean/declarations/cartesian-horizontal--5f93d4043516100689be726f.md) | 22 | `result-track:5f93d4043516100689be726f67893911f9a7019b16621d78dece2eb7402b4dd1` |
| 4 | `theorem` | [cartesian_vertical](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean/declarations/cartesian-vertical--2adf3c16be7989b6f77c22fd.md) | 26 | `result-track:2adf3c16be7989b6f77c22fd3dfb381b8cebab1537d5d6950ce934afce0cb3f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
