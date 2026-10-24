# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile.Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "713174359f656b11b7bfd89a5c18999657ecd625",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `713174359f656b11b7bfd89a5c18999657ecd625`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/det-fin-three-normalize-first-row--7569f63a73334b19bb00e164.md) | 17 | `result-track:7569f63a73334b19bb00e164858fc84b669065b013dde888ecd8c6f8a1e8170c` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/det-fin-three-normalized-eq-differences--ba23d86c0b0a4a8d3083b84e.md) | 27 | `result-track:ba23d86c0b0a4a8d3083b84e0684cc581404121912c2dd590364ba7ed5363b6a` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/det-fin-three-normalized-eq-secants--cc2e960233f5186a3f6c77d0.md) | 33 | `result-track:cc2e960233f5186a3f6c77d0ef994414ceabefd140b9d917e60fdd040476196b` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/oriented-plucker-three-scalar--2aca9cc2b48c32c39c4b655c.md) | 42 | `result-track:2aca9cc2b48c32c39c4b655cb46e00985ec331dc7d1588067e8210f15e93e4d8` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/oriented-plucker-three--a1ef9ea9de995a9e92713075.md) | 49 | `result-track:a1ef9ea9de995a9e92713075eb85762fc82269ebbe85795867dc7ffd5d36b7a6` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/image-sub-neg-of-hasderivat-neg--a76f42e414cc3607b7c663dd.md) | 57 | `result-track:a76f42e414cc3607b7c663dd13f6b791f88ceae440889252d1f8120a3d95a998` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio--36269be58337524796da0603.md) | 65 | `result-track:36269be58337524796da060301fb263d5d5cea28819b88c03ba1c1238727539c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
