# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Liouville.Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3be8c3b4322a5ee9ba01b1c6d44f0838e6c494ab",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3be8c3b4322a5ee9ba01b1c6d44f0838e6c494ab`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_eq_smul_circleIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/deriv-eq-smul-circleintegral--a5f85dc7cc27725b75569943.md) | 43 | `result-track:a5f85dc7cc27725b75569943fb0320b5800a0c73f2b1c6a95b26b1c98313e71e` |
| 2 | `theorem` | [norm_deriv_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/norm-deriv-le-aux--eb7b3a868a62c77a953f1791.md) | 50 | `result-track:eb7b3a868a62c77a953f1791b9d074b432c2b6a1f3d81721c4050962ec209cf0` |
| 3 | `theorem` | [norm_deriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/norm-deriv-le-of-forall-mem-sphere-norm-le--a3fe5431578bde57d259581a.md) | 67 | `result-track:a3fe5431578bde57d259581a60bd0cb843b1da07915ff6c4c7566e41c36967d0` |
| 4 | `theorem` | [liouville_theorem_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/liouville-theorem-aux--55e57ba35afaf52d515e2918.md) | 83 | `result-track:55e57ba35afaf52d515e2918e9455ce7acec5bbc6da0269afd3863d92ea33a1a` |
| 5 | `theorem` | [apply_eq_apply_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/apply-eq-apply-of-bounded--eddc8ba2ae6fe4a1ae7f5f3c.md) | 105 | `result-track:eddc8ba2ae6fe4a1ae7f5f3c4090b449ba4931080df0f9d973b848bef26a822f` |
| 6 | `theorem` | [exists_const_forall_eq_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/exists-const-forall-eq-of-bounded--acac691ce4140dea1224fd6f.md) | 114 | `result-track:acac691ce4140dea1224fd6f11087a8ef502b13edf99986ab5a2cb641813d0c9` |
| 7 | `theorem` | [exists_eq_const_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/exists-eq-const-of-bounded--06eccb58ac6e4cb0a716179b.md) | 119 | `result-track:06eccb58ac6e4cb0a716179bc2a32e269fb8685eec28457caee560987ab3ebd2` |
| 8 | `theorem` | [eq_const_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/eq-const-of-tendsto-cocompact--93788887e6950bad3d4f904e.md) | 125 | `result-track:93788887e6950bad3d4f904e6101d131522bca4d76df04a441a2a0c81af0342f` |
| 9 | `theorem` | [apply_eq_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/declarations/apply-eq-of-tendsto-cocompact--d51ada89fde7ecfe5a7c26bb.md) | 140 | `result-track:d51ada89fde7ecfe5a7c26bb5396c941eb695bff468acfcb739f102026b72977` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
