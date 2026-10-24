# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PVIdentity.Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e99e0d243ed412a74cc9818d017ee0608d86936",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e99e0d243ed412a74cc9818d017ee0608d86936`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.StarOrdered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Gamma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_exp_div_neg_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/integral-exp-div-neg-eq--9cd168685176bcfc23d5fa05.md) | 40 | `result-track:9cd168685176bcfc23d5fa05ed0f4f331ae7615c6af31648e25cdac4286e65d9` |
| 2 | `lemma` | [integral_exp_div_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/integral-exp-div-split--6efd386a49869aa27ac7bff0.md) | 54 | `result-track:6efd386a49869aa27ac7bff0f6dbca3c8c515cbec02a9b585c509990eaf9d271` |
| 3 | `lemma` | [integrableOn_one_sub_exp_neg_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/integrableon-one-sub-exp-neg-div--76b6f2e4398528bf03022e94.md) | 68 | `result-track:76b6f2e4398528bf03022e94c7d2365d020ed81a1a93d6477a1b5a60cfb3fb9b` |
| 4 | `lemma` | [integrableOn_exp_neg_div_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/integrableon-exp-neg-div-ioi--a8028fea45eea258b5d1d9e0.md) | 81 | `result-track:a8028fea45eea258b5d1d9e058f94065392762b026da27cba1b2df4f0ab8a9a8` |
| 5 | `lemma` | [integrableOn_exp_sub_one_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/integrableon-exp-sub-one-div--8cced9e8f5f51bfbcb10bf73.md) | 95 | `result-track:8cced9e8f5f51bfbcb10bf736f571973349ecef5de681c044d6daf10f7d04542` |
| 6 | `lemma` | [tendsto_integral_one_sub_exp_neg_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/tendsto-integral-one-sub-exp-neg-div--cf182a369fb76b15739bced2.md) | 109 | `result-track:cf182a369fb76b15739bced20d65ce003a35b44dbcea276d80ee12e3f67bab3d` |
| 7 | `lemma` | [tendsto_integral_exp_neg_div_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/tendsto-integral-exp-neg-div-ioi--cd5a9ee61760ad5131795390.md) | 130 | `result-track:cd5a9ee61760ad5131795390bed30443dbf91010a54279c81773612764b1353c` |
| 8 | `lemma` | [tendsto_integral_exp_sub_one_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/tendsto-integral-exp-sub-one-div--b01468455e9b2cb2a69aca24.md) | 144 | `result-track:b01468455e9b2cb2a69aca24323f4a7f5e075c26064f095965d83595faf813dc` |
| 9 | `lemma` | [eulerMascheroni_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/eulermascheroni-eq-integral--415783e6d375a291d14379a4.md) | 185 | `result-track:415783e6d375a291d14379a44bc74a0163e7b13c60f461a5597d3a7386f61635` |
| 10 | `lemma` | [pv_rewrite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/pv-rewrite--304fee3d009603551eee15c5.md) | 411 | `result-track:304fee3d009603551eee15c59acd3dbb4c380106d2da18147ec90e0cb885ef94` |
| 11 | `theorem` | [pv_exp_div_eq_gamma_add_log_add_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/declarations/pv-exp-div-eq-gamma-add-log-add-integral--b77a71ebf296e9b3788e0298.md) | 445 | `result-track:b77a71ebf296e9b3788e0298ceb8865508f674a3b33c50326ff187da1e722a99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
