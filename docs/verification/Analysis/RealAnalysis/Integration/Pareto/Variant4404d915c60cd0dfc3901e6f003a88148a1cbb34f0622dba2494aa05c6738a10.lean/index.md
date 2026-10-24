# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pareto.Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e905f12d76c9cb4f3d8e1373b39ea4b1fa0bb9fb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e905f12d76c9cb4f3d8e1373b39ea4b1fa0bb9fb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdfreal--4edc41e45161d985411d90e5.md) | 43 | `declaration-track:4edc41e45161d985411d90e519bc2d0eea88771ce006975f39661c0788497489` |
| 2 | `def` | [paretoPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdf--227095373de4aa85b81609d8.md) | 47 | `declaration-track:227095373de4aa85b81609d8c47f648c2c517f09c349d17a351a7049bceed1d3` |
| 3 | `lemma` | [paretoPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdf-eq--08ff1d7daa6315ee86265367.md) | 50 | `result-track:08ff1d7daa6315ee862653679252e7ef5728455db67f368f698a9186110f98bf` |
| 4 | `lemma` | [paretoPDF_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdf-of-lt--9bf342cd51ef257d69fa391e.md) | 53 | `result-track:9bf342cd51ef257d69fa391ed4a4fb171ed9b810f68363df3ac6f08b087012ed` |
| 5 | `lemma` | [paretoPDF_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdf-of-le--7dad04360df28f781ad74348.md) | 56 | `result-track:7dad04360df28f781ad7434825c77cb13967cb7e47415499861e375ab2e4ee6a` |
| 6 | `lemma` | [lintegral_paretoPDF_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/lintegral-paretopdf-of-le--4fab8753ad8f924d54ab7c4f.md) | 61 | `result-track:4fab8753ad8f924d54ab7c4fd1dadf67abd49e4118e4c2cf39974fff9d57f572` |
| 7 | `lemma` | [measurable_paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/measurable-paretopdfreal--c0e1cade9dc725b2c1f72159.md) | 71 | `result-track:c0e1cade9dc725b2c1f72159d4006acf7b06689f0fe3888043a16ad09918f320` |
| 8 | `lemma` | [stronglyMeasurable_paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/stronglymeasurable-paretopdfreal--d066c72c066b01e188c7a677.md) | 76 | `result-track:d066c72c066b01e188c7a67759734875444194e1fbd95e80fec28c177c292820` |
| 9 | `lemma` | [paretoPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdfreal-pos--71c7a6b22e6a85a1903dcdc4.md) | 81 | `result-track:71c7a6b22e6a85a1903dcdc4867392474f2439d67e1798afca901658ed35ae45` |
| 10 | `lemma` | [paretoPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretopdfreal-nonneg--d29fd499f72f1dee28e5a5d1.md) | 88 | `result-track:d29fd499f72f1dee28e5a5d16f1d190fcc1181ae051a38fe26d6c14bac8f9fd7` |
| 11 | `lemma` | [lintegral_paretoPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/lintegral-paretopdf-eq-one--92b67540d3daa248e71101ca.md) | 105 | `result-track:92b67540d3daa248e71101ca0d9fe5d202aba7fe822dda4521c5e3a6c8ec8aeb` |
| 12 | `def` | [paretoMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretomeasure--ef91957a53f21a397f913a76.md) | 131 | `declaration-track:ef91957a53f21a397f913a769ae44f38af79de5ceeed2857c0c1ae1af786e135` |
| 13 | `lemma` | [isProbabilityMeasure_paretoMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/isprobabilitymeasure-paretomeasure--5614cd02d08604e10d87b766.md) | 134 | `result-track:5614cd02d08604e10d87b766f459489a668e3e3bef2569e88033d7c55da5a37a` |
| 14 | `lemma` | [paretoCDFReal_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretocdfreal-eq-integral--6e812bf5b5b06e71818c1c7b.md) | 141 | `result-track:6e812bf5b5b06e71818c1c7b826db9a7220776a23ffefd8d54fe8f1d2d55e7b4` |
| 15 | `lemma` | [paretoCDFReal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/declarations/paretocdfreal-eq-lintegral--2d8dc72ebf9b67fd5b5274a3.md) | 149 | `result-track:2d8dc72ebf9b67fd5b5274a3cb372ddd66ea4c719dffeb467291405487cc67b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
