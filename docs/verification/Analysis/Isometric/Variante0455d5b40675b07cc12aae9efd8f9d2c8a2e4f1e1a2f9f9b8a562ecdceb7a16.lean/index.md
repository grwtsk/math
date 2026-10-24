# Verification target: GRWTSK.Analysis.Isometric.Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "705398b780979d378b6db688503250ed4e714516",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/index.md) · [Full source](../../../../mathematics/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `705398b780979d378b6db688503250ed4e714516`.

Source path: `GRWTSK/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CStarAlgebra.norm_posPart_le](../../../../mathematics/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/declarations/cstaralgebra-norm-pospart-le--e08742e402c7785ca100f1f7.md) | 35 | `result-track:e08742e402c7785ca100f1f7a18ac8914803c91b284276c0dd14ddde6a9d2740` |
| 2 | `lemma` | [CStarAlgebra.norm_negPart_le](../../../../mathematics/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/declarations/cstaralgebra-norm-negpart-le--3e04da63d3b19d7af0e59410.md) | 45 | `result-track:3e04da63d3b19d7af0e5941044c7d1c2dab68d822f18354c7af7652f91df0a72` |
| 3 | `lemma` | [IsSelfAdjoint.norm_eq_max_norm_posPart_negPart](../../../../mathematics/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/declarations/isselfadjoint-norm-eq-max-norm-pospart-negpart--b3a2abc38416a5dedec9b640.md) | 49 | `result-track:b3a2abc38416a5dedec9b6400de9606b80bf9e62c20e88efee5f20dafdc0923f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
