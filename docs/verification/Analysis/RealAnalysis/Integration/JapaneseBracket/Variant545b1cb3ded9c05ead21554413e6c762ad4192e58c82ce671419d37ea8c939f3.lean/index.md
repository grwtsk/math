# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JapaneseBracket.Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3350a82ed9c418de159854efe8a11cf03dbbba5b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3350a82ed9c418de159854efe8a11cf03dbbba5b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrability.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/sqrt-one-add-norm-sq-le--8beb5a01cdbfce1743790083.md) | 41 | `result-track:8beb5a01cdbfce17437900839aea061709e3d1d7ad61eee81999b98529844013` |
| 2 | `theorem` | [one_add_norm_le_sqrt_two_mul_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/one-add-norm-le-sqrt-two-mul-sqrt--511f142b1985639eaec012ef.md) | 45 | `result-track:511f142b1985639eaec012ef0220e8afa61a941077ddd872abb38e3ea6e0e585` |
| 3 | `theorem` | [rpow_neg_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/rpow-neg-one-add-norm-sq-le--1e579b4d0d3316529856e6e5.md) | 52 | `result-track:1e579b4d0d3316529856e6e50de415828d78fc449f774b3bb9484d6a77105565` |
| 4 | `theorem` | [le_rpow_one_add_norm_iff_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/le-rpow-one-add-norm-iff-norm-le--ddebd2d61714b9f353b7fb64.md) | 64 | `result-track:ddebd2d61714b9f353b7fb64f4b62ec4568feb24782665a358097b0fe9959f9f` |
| 5 | `theorem` | [closedBall_rpow_sub_one_eq_empty_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/closedball-rpow-sub-one-eq-empty-aux--9d0b1da95390e2faf6ef38cd.md) | 71 | `result-track:9d0b1da95390e2faf6ef38cde320feccc46682320d81b150271eeb93f03a07f6` |
| 6 | `theorem` | [finite_integral_rpow_sub_one_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/finite-integral-rpow-sub-one-pow-aux--7d5af150ed59580efa562d48.md) | 79 | `result-track:7d5af150ed59580efa562d48d12ec17b1dad343cb8329e4f1218001df5595d8e` |
| 7 | `theorem` | [finite_integral_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/finite-integral-one-add-norm--b1b0d32958ef385e01085ce1.md) | 98 | `result-track:b1b0d32958ef385e01085ce1e7db2ec09df36ef634433e39e988c16daaac6a27` |
| 8 | `theorem` | [integrable_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/integrable-one-add-norm--d6aec0890d6176d53797b29c.md) | 137 | `result-track:d6aec0890d6176d53797b29c3d900b0960404eeb31c64a15376b52a4b5eb7dfc` |
| 9 | `theorem` | [integrable_rpow_neg_one_add_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant545b1cb3ded9c05ead21554413e6c762ad4192e58c82ce671419d37ea8c939f3.lean/declarations/integrable-rpow-neg-one-add-norm-sq--28e63b854852a0714c56f039.md) | 147 | `result-track:28e63b854852a0714c56f0393dc4c33d3f1b9437e8a5d96f76224e6cac9dd691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
