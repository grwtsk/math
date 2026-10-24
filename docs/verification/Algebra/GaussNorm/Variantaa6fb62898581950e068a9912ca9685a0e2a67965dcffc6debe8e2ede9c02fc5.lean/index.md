# Verification target: GRWTSK.Algebra.GaussNorm.Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "817e101e2bed044009efc4c775792d843cbb6919",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `817e101e2bed044009efc4c775792d843cbb6919`.

Source path: `GRWTSK/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/gaussnorm--8e05e8689c51e55926f7f321.md) | 61 | `declaration-track:8e05e8689c51e55926f7f3212084d9b4097136b34654f91f6be4a1ad73b30547` |
| 2 | `lemma` | [gaussNorm_eq](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/gaussnorm-eq--08ff8262d533b483b3ab1645.md) | 63 | `result-track:08ff8262d533b483b3ab1645bdb6e6ce59f9fa19a07362a7fc55090b2582e603` |
| 3 | `abbrev` | [HasGaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/hasgaussnorm--32bea4d5d7220eb693e6e50f.md) | 71 | `declaration-track:32bea4d5d7220eb693e6e50f1f1445ba437c29596446e8ea532990e617c76569` |
| 4 | `lemma` | [HasGaussNorm.hasMvGaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/hasgaussnorm-hasmvgaussnorm--0a6e682cae79aa984a1fbc17.md) | 73 | `result-track:0a6e682cae79aa984a1fbc1707d012a808f9b8165e33348210f87b92f9478a21` |
| 5 | `theorem` | [gaussNorm_zero](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/gaussnorm-zero--cb3288d3bd522fb6151d2b5b.md) | 94 | `result-track:cb3288d3bd522fb6151d2b5bc31989ac455c0442ec16d00e7f59d43ff2bd8b3c` |
| 6 | `lemma` | [le_gaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/le-gaussnorm--b879d4b789ad834b66a4c561.md) | 97 | `result-track:b879d4b789ad834b66a4c56148ecbb3801d1a7a2822fe807dfc26ce19912fde1` |
| 7 | `lemma` | [gaussNorm_nonneg](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/gaussnorm-nonneg--81cc9bbfeeb2cc82a1faaab0.md) | 102 | `result-track:81cc9bbfeeb2cc82a1faaab0f3724666fed80fe3e62c34d7b6856ef98e7498e4` |
| 8 | `lemma` | [gaussNorm_eq_zero_iff](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/gaussnorm-eq-zero-iff--09755f9f2d616da17baecef6.md) | 105 | `result-track:09755f9f2d616da17baecef61c885be4f3f53d8420c03f58463633b4e581f6f6` |
| 9 | `lemma` | [gaussNorm_add_le_max](../../../../mathematics/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/declarations/gaussnorm-add-le-max--01f21d108fdbaeb755efe269.md) | 111 | `result-track:01f21d108fdbaeb755efe2691d9b882c8c2a99818a33ffe997fcb816b4c524f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
