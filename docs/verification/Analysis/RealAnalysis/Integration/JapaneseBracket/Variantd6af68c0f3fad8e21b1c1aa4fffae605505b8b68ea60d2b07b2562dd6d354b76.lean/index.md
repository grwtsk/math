# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JapaneseBracket.Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a1be435cf4c08f7648f8fec6ecf57be1dc0420",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a1be435cf4c08f7648f8fec6ecf57be1dc0420`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/macro-rules--0d15900debbf5924146625e6.md) | 37 | `declaration-track:0d15900debbf5924146625e6f14114d367ec584f76039855163d5a4709715c54` |
| 2 | `theorem` | [sqrt_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/sqrt-one-add-norm-sq-le--1954ef658e2d0e935e3dfee1.md) | 44 | `result-track:1954ef658e2d0e935e3dfee19456afb2b7fb5ee4ec27e6f1313870f12e205a07` |
| 3 | `theorem` | [one_add_norm_le_sqrt_two_mul_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/one-add-norm-le-sqrt-two-mul-sqrt--b27051563a7fa2f3ef5937c2.md) | 49 | `result-track:b27051563a7fa2f3ef5937c27e550a6f1847d65aa8882f9052ff51da932d3b7c` |
| 4 | `theorem` | [rpow_neg_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/rpow-neg-one-add-norm-sq-le--619dddf92e8c73673a531116.md) | 57 | `result-track:619dddf92e8c73673a531116402389ebf26d4cc797df7383821eb53c7d3d94dc` |
| 5 | `theorem` | [le_rpow_one_add_norm_iff_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/le-rpow-one-add-norm-iff-norm-le--4816406ea69ae6fde21f64c6.md) | 70 | `result-track:4816406ea69ae6fde21f64c60d21171d11a56ba0a50b088fd36e0aed62dc8ee0` |
| 6 | `theorem` | [closedBall_rpow_sub_one_eq_empty_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/closedball-rpow-sub-one-eq-empty-aux--aa58586b55ba7c9e418741b9.md) | 78 | `result-track:aa58586b55ba7c9e418741b90782c1ed410c704c829e0942ee3337292c801ad5` |
| 7 | `theorem` | [finite_integral_rpow_sub_one_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/finite-integral-rpow-sub-one-pow-aux--7071b42a90806cf70334cfcf.md) | 88 | `result-track:7071b42a90806cf70334cfcfd74d8061c3fb4cc10ed56bd9a00edc13d9f1b946` |
| 8 | `theorem` | [finite_integral_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/finite-integral-one-add-norm--e879dca82e6293a706a8cf79.md) | 107 | `result-track:e879dca82e6293a706a8cf7971eafd636cfb204216f8c1d937c7bd52c09a424c` |
| 9 | `theorem` | [integrable_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/integrable-one-add-norm--d5fd4dddae14dc511e20b5c3.md) | 150 | `result-track:d5fd4dddae14dc511e20b5c309f7f6da5c9ae74cb0746b2fc6fbda36ecba6971` |
| 10 | `theorem` | [integrable_rpow_neg_one_add_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/declarations/integrable-rpow-neg-one-add-norm-sq--ca577065a24c49f1ead7d6e0.md) | 162 | `result-track:ca577065a24c49f1ead7d6e0234b795340ba9e8d13f8b95d3d26256a1e354c85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
