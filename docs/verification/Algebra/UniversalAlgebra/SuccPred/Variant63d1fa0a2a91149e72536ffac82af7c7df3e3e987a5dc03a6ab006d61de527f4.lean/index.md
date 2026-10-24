# Verification target: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d3cef17f21819d05b85aea63033f9fc5751891",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d3cef17f21819d05b85aea63033f9fc5751891`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.SuccPred` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.WithBot` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instSuccOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/instsuccorder--3fc160f0c75e282e6bd71e8f.md) | 29 | `declaration-track:3fc160f0c75e282e6bd71e8ff730124d1b120e157d1d8e7f50bebc8bfaf7d11d` |
| 2 | `instance` | [instSuccAddOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/instsuccaddorder--a445e4376edb15dc90e9f8e2.md) | 32 | `declaration-track:a445e4376edb15dc90e9f8e252c4ecefb4c0dce4491c9c5727bb669603ba3948` |
| 3 | `abbrev` | [instPredOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/instpredorder--718f46788aecfb74aa55ab46.md) | 35 | `declaration-track:718f46788aecfb74aa55ab46567d1136b239cf97a0152ff9a4bea79ec6ae2e63` |
| 4 | `instance` | [instPredSubOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/instpredsuborder--42de7c89da137d50f6f1e802.md) | 47 | `declaration-track:42de7c89da137d50f6f1e8025f321c659c1acdacb070bc99e5de48875121a014` |
| 5 | `theorem` | [succ_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/succ-eq-succ--5051531215b8bdc612436791.md) | 50 | `result-track:5051531215b8bdc6124367910eab3ef4f44518230f065b89badad85e1f4d9d55` |
| 6 | `theorem` | [pred_eq_pred](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/pred-eq-pred--65580ffaab92f3a9eae60dad.md) | 54 | `result-track:65580ffaab92f3a9eae60dad9e4375893389e8f088e96ab87c79246306fa607d` |
| 7 | `theorem` | [succ_iterate](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/succ-iterate--cc80f051553ea3c9388c346c.md) | 57 | `result-track:cc80f051553ea3c9388c346c5dcf3510e6dc2d8a08198b15980c3d4545cea11f` |
| 8 | `theorem` | [pred_iterate](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/pred-iterate--168d2bc3ae5cc5108e698078.md) | 60 | `result-track:168d2bc3ae5cc5108e698078572cf05ff812d5dee136d5d209b6b267f3fb0f03` |
| 9 | `lemma` | [le_succ_iff_eq_or_le](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/le-succ-iff-eq-or-le--b087a0617de02774bef39713.md) | 66 | `result-track:b087a0617de02774bef39713549ee3fc650ea15e50c4f98b2928cd065d76e7b1` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/instance--37017450b80a02fef9e7e0a7.md) | 68 | `declaration-track:37017450b80a02fef9e7e0a795293b6c6de944aa1f359776c3b8c8b1c487078a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/instance--3ab067ff3c6f9b1d0b4a3e36.md) | 71 | `declaration-track:3ab067ff3c6f9b1d0b4a3e36d6a2502e431cd2533cb5857d3cd0c094e45dc951` |
| 12 | `lemma` | [forall_ne_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/forall-ne-zero-iff--4f4ef5b092c7476165b8b0ca.md) | 74 | `result-track:4f4ef5b092c7476165b8b0ca01834e2ddb2b974812af181fd844af6f56e47ebf` |
| 13 | `theorem` | [Fin.coe_covBy_iff](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/fin-coe-covby-iff--9e57181b5f55da7b6e1b06cd.md) | 81 | `result-track:9e57181b5f55da7b6e1b06cd3a34e5e43d7db8a84d072716792398f866654120` |
| 14 | `theorem` | [withBotSucc_zero](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/withbotsucc-zero--646487cef5535273bed34123.md) | 87 | `result-track:646487cef5535273bed34123df559ef110c82ba3a1d3de1b2c5da60b5820ff89` |
| 15 | `theorem` | [withBotSucc_one](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4.lean/declarations/withbotsucc-one--c2b9d2f04c9b0c0741316560.md) | 90 | `result-track:c2b9d2f04c9b0c074131656036734ba90842d04faf7478fd68792e80e3092fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
