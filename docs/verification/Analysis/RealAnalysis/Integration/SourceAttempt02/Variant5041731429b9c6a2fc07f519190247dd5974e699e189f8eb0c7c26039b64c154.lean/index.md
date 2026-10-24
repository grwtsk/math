# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt02.Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d87f9294e16adf08c2a010dd1b457acad2c046f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d87f9294e16adf08c2a010dd1b457acad2c046f5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/primitive--8a437747c449659eaf86b981.md) | 13 | `declaration-track:8a437747c449659eaf86b981fb7d8881d1a74c23a8ba443b43c3ca3d030a8c9e` |
| 2 | `def` | [halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/halfprefix--7d06c48cb862958edfaa3606.md) | 16 | `declaration-track:7d06c48cb862958edfaa3606b5cc55c9be2e23c1b0a39c4343284f3ed82daddf` |
| 3 | `theorem` | [twiceExp_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/twiceexp-hasderivat--607bc0f327b03da774cf79bc.md) | 19 | `result-track:607bc0f327b03da774cf79bc4c7047ba3260a115e099ce8eefe23eedc85f6d61` |
| 4 | `theorem` | [twiceExp_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/twiceexp-deriv--957291a05cc6fb657fd1f460.md) | 25 | `result-track:957291a05cc6fb657fd1f46090bc65785e6144a8888dd0120e282ba87771f945` |
| 5 | `theorem` | [logSum_eq_halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/logsum-eq-halfprefix--2fca9867e1dd42ee8005ec8d.md) | 29 | `result-track:2fca9867e1dd42ee8005ec8de4dc7263b6b3cf5545789c293cf97215b91f88cd` |
| 6 | `theorem` | [prefix_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/prefix-weight-integrable--4a5644afaea4d9db5b5fdf4b.md) | 44 | `result-track:4a5644afaea4d9db5b5fdf4bbdb076ddd35ef65c31f063ff041e88b78e2b6a0a` |
| 7 | `theorem` | [prefix_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/prefix-weight-integral--e9e8632dca7fd4399e1f7f24.md) | 50 | `result-track:e9e8632dca7fd4399e1f7f24192904eadfd2778eefbd7e43f4805a0b2e4591ec` |
| 8 | `theorem` | [background_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/background-integral--9855188f6a81d24837898b39.md) | 57 | `result-track:9855188f6a81d24837898b3909ae587d1ae9af427cd2e422bd09a28658032081` |
| 9 | `theorem` | [primitive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/primitive-integrable--5f77c4debc1619273d44102c.md) | 71 | `result-track:5f77c4debc1619273d44102c15857308fe791c007b4b838487bc1acbe050912d` |
| 10 | `theorem` | [primitive_eq_finite_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/primitive-eq-finite-arithmetic--7f84ec903f436b9eb2995674.md) | 86 | `result-track:7f84ec903f436b9eb29956746080df1ab53e41ee51ee7372b5082c048409fe95` |
| 11 | `theorem` | [halfPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/halfprefix-below-first--06dc5766eeed07ab8f5d4cd1.md) | 103 | `result-track:06dc5766eeed07ab8f5d4cd1736dc9714f9365fc37c136d3ac5a7dd9872baa4d` |
| 12 | `theorem` | [primitive_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/declarations/primitive-below-first--23770e4170184f26ccc79979.md) | 116 | `result-track:23770e4170184f26ccc799792e2214bd1de5f375f5b039d14ac44e6d6345b22e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
