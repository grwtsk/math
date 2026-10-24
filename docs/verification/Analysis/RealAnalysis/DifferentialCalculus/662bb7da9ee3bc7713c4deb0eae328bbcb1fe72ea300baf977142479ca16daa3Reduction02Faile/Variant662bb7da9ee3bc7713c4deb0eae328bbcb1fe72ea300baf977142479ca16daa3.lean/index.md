# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile.Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a9166e82225990e56d6fe5483bfff234be2763",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a9166e82225990e56d6fe5483bfff234be2763`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/det-fin-three-normalize-first-row--5c7a13144454f5339888a8fe.md) | 9 | `result-track:5c7a13144454f5339888a8fe6d2af1f85c2d209155adc402a0ae8acc84836507` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/det-fin-three-normalized-eq-differences--62259178a1b5cd67a3597802.md) | 19 | `result-track:62259178a1b5cd67a3597802ac9c1867676bb8405c345371f7b7f3685fb205cb` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/det-fin-three-normalized-eq-secants--5bb8f8101944e0031d582a3b.md) | 25 | `result-track:5bb8f8101944e0031d582a3b0c405ea3b1f5fb0e1a2872b84785025445822cd8` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/oriented-plucker-three-scalar--ed442a4c10d6d73d5507ac39.md) | 34 | `result-track:ed442a4c10d6d73d5507ac39b403f643367d11263b582812b7f71c971f906b67` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/oriented-plucker-three--ca6504140132beb483a1045f.md) | 41 | `result-track:ca6504140132beb483a1045f33b583f49905f9e3f5be797ccfda4844b9403e12` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/image-sub-neg-of-hasderivat-neg--8c74424500a2e0170821d14b.md) | 49 | `result-track:8c74424500a2e0170821d14bb596914b7d7a064141e47ef74491c295bf1fb631` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio--48c450bbe5c69648ee57666b.md) | 57 | `result-track:48c450bbe5c69648ee57666bd4a70018e86b28541f788d75d2327fc6cd664a03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
