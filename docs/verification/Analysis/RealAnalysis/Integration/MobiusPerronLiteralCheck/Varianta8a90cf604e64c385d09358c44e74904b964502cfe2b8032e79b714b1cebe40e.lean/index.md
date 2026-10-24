# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronLiteralCheck.Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c04659ef147791d64d81b74d7fa14d454f9750e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c04659ef147791d64d81b74d7fa14d454f9750e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/mobiusdirichlet-reciprocal--479c04ead3b7a240a8b44ade.md) | 29 | `result-track:479c04ead3b7a240a8b44adebccb882674ced86034450c1ac05a52d8dd9f906c` |
| 2 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm--284c8c2cefd9c4b38ba414f1.md) | 39 | `declaration-track:284c8c2cefd9c4b38ba414f195a4cc045b72719e4d4a5e6f4583a3b0f41af562` |
| 3 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm-norm--bbe361748b8930ed58a054d8.md) | 45 | `result-track:bbe361748b8930ed58a054d8cc82b17309ef3b91920a5d285334238a0eba6d35` |
| 4 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm-integrable--7e8c68d441140ce1069a37c9.md) | 55 | `result-track:7e8c68d441140ce1069a37c91e9939dd1c188952cac327571753b5996ea0873f` |
| 5 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm-norm-integrals-summable--c1570a1fccd783cd1ee8becb.md) | 66 | `result-track:c1570a1fccd783cd1ee8becb0868e6a30b7e58b3bb0304c24842fa51559d3018` |
| 6 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm-tsum--eb3ea31d2d371cb9c060fe55.md) | 75 | `result-track:eb3ea31d2d371cb9c060fe55cb19580800e549ba6d367a4855ace3d4c8eddb74` |
| 7 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm-ratio--cbba8c1e1eea036663437be7.md) | 90 | `result-track:cbba8c1e1eea036663437be7c8f9c4c6820ac6f95b4b0e7ad4eec552fde4353c` |
| 8 | `theorem` | [mobiusPerron_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/mobiusperron-integrable--a40cdb15c8e70a19d23e0762.md) | 105 | `result-track:a40cdb15c8e70a19d23e07627a998ccac595d162b91d0468cf35cec19d20a9de` |
| 9 | `theorem` | [perronTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/perronterm-integral--7e9d6059e8ea57147507a7af.md) | 130 | `result-track:7e9d6059e8ea57147507a7af88f32c97b38c1fab82bc9781d139db0bc962ce6c` |
| 10 | `theorem` | [logNormalization_perron](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/lognormalization-perron--e47304e8fc18b369af489992.md) | 142 | `result-track:e47304e8fc18b369af4899924285bf31286d44ea74521d671aa98eec6c2ef42a` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--792273679d0edcf62a6b9a4e.md) | 196 | `declaration-track:792273679d0edcf62a6b9a4ee82c7c7f7ddf607516a3d43e79ddabd10b6d6cc9` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--f24222699a56039e7a8a9a3a.md) | 199 | `declaration-track:f24222699a56039e7a8a9a3a415a43d238dfa96edcf30498560c3d9e0b6c0a7f` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--62969c3ffa0280819514a65d.md) | 203 | `declaration-track:62969c3ffa0280819514a65d058a3b65c9ff860a083c78432c41387aa62f6884` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--1806354b50801aa77f943ea8.md) | 207 | `declaration-track:1806354b50801aa77f943ea8451ef3d01ef89baeb4c00f2584c92d8921f28a10` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--d10c088e0fd18f87e018b720.md) | 209 | `declaration-track:d10c088e0fd18f87e018b720ec863eaff90062636546a3b2b827deaefd31670e` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--bc645db340da65de4020542c.md) | 212 | `declaration-track:bc645db340da65de4020542c9909b5ea92c0275e3592435e839210226df91f7a` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--7432093dd2c13b9f129fd78f.md) | 217 | `declaration-track:7432093dd2c13b9f129fd78fefbfe7f2119ec4e0f31ddd3e738f0158d32fce82` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--900f3da55eb2ce66a600b5a3.md) | 220 | `declaration-track:900f3da55eb2ce66a600b5a3a561670c4188ff0bc3f06eb079c325574f8d210c` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--ab34502830afaa4c371fe14c.md) | 225 | `declaration-track:ab34502830afaa4c371fe14c7a826cb4cb329dbe54655d4600dd7c53e4921b16` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Varianta8a90cf604e64c385d09358c44e74904b964502cfe2b8032e79b714b1cebe40e.lean/declarations/example--fcb437c375ae35d8657b28d0.md) | 230 | `declaration-track:fcb437c375ae35d8657b28d05d05339887a8fefb23b369d4f14b695911027c6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
