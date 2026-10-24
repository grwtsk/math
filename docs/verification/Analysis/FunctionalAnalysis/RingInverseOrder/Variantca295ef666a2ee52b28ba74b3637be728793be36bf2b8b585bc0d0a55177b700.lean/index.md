# Verification target: GRWTSK.Analysis.FunctionalAnalysis.RingInverseOrder.Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfe50f27a155a70e52fd1d65cbbf0d8a6c24f7a8",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfe50f27a155a70e52fd1d65cbbf0d8a6c24f7a8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.ConjSqrt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Mul` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [convexOn_ringInverse](../../../../../mathematics/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/declarations/convexon-ringinverse--46428c4a84a6bbada4f2bb98.md) | 43 | `result-track:46428c4a84a6bbada4f2bb985b35b33d81e330a2f0ff4fcce43603f5e28fb1b7` |
| 2 | `lemma` | [convexOn_ringInverse_algebraMap_add](../../../../../mathematics/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/declarations/convexon-ringinverse-algebramap-add--c6fa60494b4c1e93517b7b0b.md) | 114 | `result-track:c6fa60494b4c1e93517b7b0b745ebffcd0692527edf88d616560dff5cd7563e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
