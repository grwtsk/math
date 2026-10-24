# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ZetaGrowth.Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ZetaValues` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticOnNhd_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/analyticonnhd-riemannzeta--7d3f18eb55db065c8837f2bb.md) | 51 | `result-track:7d3f18eb55db065c8837f2bbe8f82547de105a04d39d1a72521dadb992ee92d7` |
| 2 | `theorem` | [norm_riemannZeta_le_of_re_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/norm-riemannzeta-le-of-re-pos--10921a921c9c5e15c6c00c57.md) | 64 | `result-track:10921a921c9c5e15c6c00c575d1e85815dbcafdc9c38632518de30308c736f29` |
| 3 | `theorem` | [riemannZeta_linear_growth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/riemannzeta-linear-growth--75f206c9da5517ee080e2edc.md) | 86 | `result-track:75f206c9da5517ee080e2edcc78ed0547247cd137b44464aefd4bca90ce8de3e` |
| 4 | `theorem` | [zeta_growth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/zeta-growth--7e443e35349c38717ed6e81d.md) | 110 | `result-track:7e443e35349c38717ed6e81d370b465b3b7480cbcd91dbaeb892fb0ae4c89880` |
| 5 | `theorem` | [zeta_growth_quarter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/zeta-growth-quarter--14632fb64abe92151d87a907.md) | 117 | `result-track:14632fb64abe92151d87a907a1d10507864d9a09cc717f3bffec1ed147edd7af` |
| 6 | `theorem` | [zeta_growth_right_at](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/zeta-growth-right-at--025bc419d2b8aef565d5f818.md) | 127 | `result-track:025bc419d2b8aef565d5f818891d3f14eaa83d9f1debebc233e5ee679ad0938c` |
| 7 | `theorem` | [zeta_growth_right](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/zeta-growth-right--9f2733f6bea47e19841f473c.md) | 151 | `result-track:9f2733f6bea47e19841f473c997e13e956b62683606eb8c99e6cdda078121262` |
| 8 | `theorem` | [norm_riemannZeta_sub_one_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/norm-riemannzeta-sub-one-le--99c5a94422438e602943cb6b.md) | 159 | `result-track:99c5a94422438e602943cb6ba376b14c6f4b8185f479cf3deec41d9b7c162164` |
| 9 | `lemma` | [pi_sq_div_six_sub_one_lt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/pi-sq-div-six-sub-one-lt-one--8d6b917078efb5a36aa3cfba.md) | 201 | `result-track:8d6b917078efb5a36aa3cfba6f328366b16213f5307c1a8a12712a5dd3676268` |
| 10 | `theorem` | [norm_riemannZeta_ge_of_two_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/norm-riemannzeta-ge-of-two-le-re--6b63bd45a845a354caa68093.md) | 206 | `result-track:6b63bd45a845a354caa68093ba7c4742206801b0733d54e6e4fda7426b511f0a` |
| 11 | `lemma` | [two_sub_pi_sq_div_six_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/two-sub-pi-sq-div-six-pos--e380dce00909d461f8f80c2d.md) | 215 | `result-track:e380dce00909d461f8f80c2de2f75295a14c90d28e1bc96f21a6bf5cc863bbb4` |
| 12 | `lemma` | [one_third_lt_two_sub_pi_sq_div_six](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/one-third-lt-two-sub-pi-sq-div-six--6cc72ca04efc59486cb90937.md) | 219 | `result-track:6cc72ca04efc59486cb909373db0477a37f4103f75b6fd973041e74c2c313188` |
| 13 | `theorem` | [zeta_lower_bound_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/zeta-lower-bound-two--6029ef5bcda2330af36b5a07.md) | 224 | `result-track:6029ef5bcda2330af36b5a07ea333e65db1168aff0035ebe1c820029d2888e12` |
| 14 | `theorem` | [riemannZeta_ne_zero_of_two_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/riemannzeta-ne-zero-of-two-le-re--fb070872492a65717be4f648.md) | 231 | `result-track:fb070872492a65717be4f648ce03ce584881f40f568ff2c3d64d7929487bd6b7` |
| 15 | `theorem` | [norm_riemannZeta_le_of_two_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/declarations/norm-riemannzeta-le-of-two-le-re--c052526bd4c5eabd422b1688.md) | 235 | `result-track:c052526bd4c5eabd422b16889b1d5633d2c8613d9cff375735b36591f48fc2b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
