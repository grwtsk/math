# Verification target: GRWTSK.Analysis.Isometric.Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aec0e56a842b23f008c37c4a785bf74e3485a516",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/index.md) · [Full source](../../../../mathematics/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aec0e56a842b23f008c37c4a785bf74e3485a516`.

Source path: `GRWTSK/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CStarAlgebra.norm_posPart_le](../../../../mathematics/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/declarations/cstaralgebra-norm-pospart-le--53a9d888f880d19b59d1d49a.md) | 27 | `result-track:53a9d888f880d19b59d1d49a535f29ad1899d46f55ac90c4ff0391127a7a4485` |
| 2 | `lemma` | [CStarAlgebra.norm_negPart_le](../../../../mathematics/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/declarations/cstaralgebra-norm-negpart-le--0560695e8ebf556e23500773.md) | 37 | `result-track:0560695e8ebf556e23500773d2cb8dc84b0b043869ef84fd8b15939cbf6202c8` |
| 3 | `lemma` | [IsSelfAdjoint.norm_eq_max_norm_posPart_negPart](../../../../mathematics/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/declarations/isselfadjoint-norm-eq-max-norm-pospart-negpart--271e925891610bacdaab397b.md) | 41 | `result-track:271e925891610bacdaab397b83e14c882580a096abb52ed271d75aaed8d47888` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
