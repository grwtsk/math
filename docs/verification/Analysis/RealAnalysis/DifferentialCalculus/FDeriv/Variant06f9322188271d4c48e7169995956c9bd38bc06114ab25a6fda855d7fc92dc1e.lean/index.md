# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83dccdb0a89645cbacd2cb5ba52c615fb0b56be0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83dccdb0a89645cbacd2cb5ba52c615fb0b56be0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [approximates_deriv_on_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/approximates-deriv-on-nhds--bffa9398b71353a4c14202ed.md) | 77 | `result-track:bffa9398b71353a4c14202edce63a69489e14de8aa0e275634ef1bb8cbefa976` |
| 2 | `theorem` | [map_nhds_eq_of_surj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/map-nhds-eq-of-surj--e96e79d395d11dd276dd4252.md) | 88 | `result-track:e96e79d395d11dd276dd425273d98bae1e161d6e0398e3d247494be990fd1a0d` |
| 3 | `theorem` | [approximates_deriv_on_open_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/approximates-deriv-on-open-nhds--dce46bbd7209713552efe529.md) | 102 | `result-track:dce46bbd7209713552efe5297dc646b53e39bdf71706abc6e55817f227689fdb` |
| 4 | `def` | [toPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/topartialhomeomorph--aad4c63aa06b69955e7e16df.md) | 118 | `declaration-track:aad4c63aa06b69955e7e16df81acc402acbb0a7717e57b78b94185d974930903` |
| 5 | `theorem` | [toPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/topartialhomeomorph-coe--8ed6ea3cb8ee99651449b2ca.md) | 128 | `result-track:8ed6ea3cb8ee99651449b2cab9a40a028ceca8590b9e4c96e2bb296a809b2ec6` |
| 6 | `theorem` | [mem_toPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/mem-topartialhomeomorph-source--2eacf83a11354e56d378f81f.md) | 132 | `result-track:2eacf83a11354e56d378f81fa58749e64d9e1d4d37cd7d1a935db387eb4ec7ea` |
| 7 | `theorem` | [image_mem_toPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/image-mem-topartialhomeomorph-target--6e7dfbd9ef79b44165ea86f9.md) | 136 | `result-track:6e7dfbd9ef79b44165ea86f9050fd2406ff302a148a8de40eb7076a4b16d3699` |
| 8 | `theorem` | [map_nhds_eq_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/map-nhds-eq-of-equiv--62928279cd369e02901b8e93.md) | 140 | `result-track:62928279cd369e02901b8e9399c935c4488f0e657f5caf10b994f9afb86a998c` |
| 9 | `def` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/localinverse--17c7213f8cfaac5ce9ee00af.md) | 148 | `declaration-track:17c7213f8cfaac5ce9ee00affb71f449e85a4a4f5bf8de2bad4d6e0a694d0b6c` |
| 10 | `theorem` | [localInverse_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/localinverse-def--244aa0dd74d05416128a375f.md) | 153 | `result-track:244aa0dd74d05416128a375f7c41f6db93b88b1908502d5df6d51a0a160f9212` |
| 11 | `theorem` | [eventually_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/eventually-left-inverse--12f0f89ce89db8c0e253a8bb.md) | 157 | `result-track:12f0f89ce89db8c0e253a8bb75d7a158c35cab78008b37b3ccd7067975f11172` |
| 12 | `theorem` | [localInverse_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/localinverse-apply-image--2214c3aa8fb6e5b39a4be213.md) | 162 | `result-track:2214c3aa8fb6e5b39a4be2139f7fa8a1ada852684125fc845c5335aaa69c526a` |
| 13 | `theorem` | [eventually_right_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/eventually-right-inverse--b6cfecd27f9174925df2f887.md) | 166 | `result-track:b6cfecd27f9174925df2f88712870d9d25cae119756a7756ee5c8ffd517a9709` |
| 14 | `theorem` | [localInverse_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/localinverse-continuousat--a299a3d1997c2c83d209f4bb.md) | 170 | `result-track:a299a3d1997c2c83d209f4bb64be024972a82fc470c73736af9c545e19dd5b78` |
| 15 | `theorem` | [localInverse_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/localinverse-tendsto--bb0dceaa1b90829d172c093e.md) | 174 | `result-track:bb0dceaa1b90829d172c093ecd45441497db025f835f98d38c04863dce9e2911` |
| 16 | `theorem` | [localInverse_unique](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/localinverse-unique--71408d1b936613a571e49a5b.md) | 178 | `result-track:71408d1b936613a571e49a5b4a34b680081e63547a17a917e52ba2ba794902f7` |
| 17 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/to-localinverse--7bc0548592943534c948b15b.md) | 185 | `result-track:7bc0548592943534c948b15b3281453d14c43982a721b3a663e5cf97f4019ce8` |
| 18 | `theorem` | [to_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/to-local-left-inverse--5aba1245d7ab5a951abfb49a.md) | 195 | `result-track:5aba1245d7ab5a951abfb49ab1cf9eff3fbb0dfa95fcf7efb1aefe91d60e4909` |
| 19 | `theorem` | [isOpenMap_of_hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant06f9322188271d4c48e7169995956c9bd38bc06114ab25a6fda855d7fc92dc1e.lean/declarations/isopenmap-of-hasstrictfderivat-equiv--9d3bf941001f81c695dafa2f.md) | 202 | `result-track:9d3bf941001f81c695dafa2f8d906ca0f203bc84b4d9463f4a768b19f9ebad84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
