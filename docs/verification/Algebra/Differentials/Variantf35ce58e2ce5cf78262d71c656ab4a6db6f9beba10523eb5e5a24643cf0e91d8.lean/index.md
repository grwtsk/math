# Verification target: GRWTSK.Algebra.Differentials.Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0be856e048ccc8d60fa91b0e668094e08bb8e163",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0be856e048ccc8d60fa91b0e668094e08bb8e163`.

Source path: `GRWTSK/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Presentation.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [differentialsRelations](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/differentialsrelations--982e891fe2ea4ec06f6f2acd.md) | 54 | `declaration-track:982e891fe2ea4ec06f6f2acd4133021fd3d9774d454cda479b3316742d12b588` |
| 2 | `lemma` | [comm₂₃'](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/comm--d6382e2384c5b9dd341096c7.md) | 73 | `result-track:d6382e2384c5b9dd341096c781d5fab428b6dc1465907964cc550108546c135f` |
| 3 | `def` | [hom₁](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/hom--55ee2eeca7a56290c53150c4.md) | 83 | `declaration-track:55ee2eeca7a56290c53150c4cb6579fbf081303e948e834701571b04b3a52b41` |
| 4 | `lemma` | [hom₁_single](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/hom-single--6ec408b8ac5264e92344dacc.md) | 86 | `result-track:6ec408b8ac5264e92344dacc73200a74d1ed4c1186d5010a469ae10b72b5cffe` |
| 5 | `lemma` | [surjective_hom₁](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/surjective-hom--dbb9e010bad18bba7872383b.md) | 90 | `result-track:dbb9e010bad18bba7872383b7c3d27d2a996204493e2f0398c76d3c849820df9` |
| 6 | `lemma` | [comm₁₂_single](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/comm-single--3252f8c1a49e102bad73b088.md) | 116 | `result-track:3252f8c1a49e102bad73b08865c56c2ee784b3568811654ccac24c4d8cb75be3` |
| 7 | `lemma` | [comm₁₂](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/comm--316c9e44ed2a456b0f1a3b84.md) | 123 | `result-track:316c9e44ed2a456b0f1a3b8445d41fb58ab9ac6aa04fca66601984a5e9b3eb7a` |
| 8 | `def` | [differentialsSolution](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/differentialssolution--08c72ee6be8f5511d9b74f7a.md) | 136 | `declaration-track:08c72ee6be8f5511d9b74f7afaebaba9718bd932b60438c2a66d96d3a36af17c` |
| 9 | `lemma` | [differentials.comm₂₃](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/differentials-comm--08818e1c866f667352554949.md) | 145 | `result-track:08818e1c866f66735255494996d61b3da2d33776888560ebbeff589527a48b7b` |
| 10 | `lemma` | [differentialsSolution_isPresentation](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/differentialssolution-ispresentation--b0285674bc68e0680fb245dd.md) | 151 | `result-track:b0285674bc68e0680fb245dda814abf7abb4f96d429adf01bba044351ed165e1` |
| 11 | `def` | [differentials](../../../../mathematics/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/declarations/differentials--db5e57f4dd3b320b6f436d1a.md) | 168 | `declaration-track:db5e57f4dd3b320b6f436d1a0deefc5f785f82a9180a89bf51d428675d17dd55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
