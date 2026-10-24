# Verification target: GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phase](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/phase--77a799080955d823c1c1d749.md) | 10 | `declaration-track:77a799080955d823c1c1d7495caebf737f1d6324467085e0296b1efe61d83ee4` |
| 2 | `def` | [triple](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/triple--cb9776733c95be4384437f52.md) | 13 | `declaration-track:cb9776733c95be4384437f52d7d519a2f28f4a32da618c15d6699d87eae1f0fd` |
| 3 | `lemma` | [conjugate_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/conjugate-integrable--0acfc6c672e6df54171108af.md) | 17 | `result-track:0acfc6c672e6df54171108afbb3669fdd950d23616b81c15aad22fcbe2e5c662` |
| 4 | `lemma` | [phase_norm](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/phase-norm--6dbf8ee8c0762bebdb001ba6.md) | 25 | `result-track:6dbf8ee8c0762bebdb001ba6e74a57a9e4db027ad8e7419155770bfc34ec6922` |
| 5 | `lemma` | [phase_norm_bound](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/phase-norm-bound--d92084c36ca24a6c02fbccf1.md) | 28 | `result-track:d92084c36ca24a6c02fbccf16b43642211ee76aeb0cd8e99370079730f5e1b10` |
| 6 | `lemma` | [triple_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/triple-integrable--ef578441412ca56527224750.md) | 35 | `result-track:ef578441412ca56527224750f087c7f1b0e18c14475abbeca68e8e8f76bc96a3` |
| 7 | `lemma` | [density_eq_time_integral](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/density-eq-time-integral--dfa97b4fe95c7e7dde50b3ca.md) | 50 | `result-track:dfa97b4fe95c7e7dde50b3caa426d21bb8d9e8f6a5c6396512829bc288932dfa` |
| 8 | `lemma` | [density_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/density-integrable--35dba3cdd3e3fde2d92aea7f.md) | 57 | `result-track:35dba3cdd3e3fde2d92aea7fd169a91407a6e30fc3860e8aae5b2bfc043f212b` |
| 9 | `lemma` | [density_section_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/density-section-integrable--d2104aa4fd7d6907979afd05.md) | 64 | `result-track:d2104aa4fd7d6907979afd054384491a68654b61a2f167f9804f76f5ccb9fb26` |
| 10 | `lemma` | [density_outer_integrable](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/density-outer-integrable--8f66a312e34cc39397c5dfc9.md) | 82 | `result-track:8f66a312e34cc39397c5dfc962a3d032e93797381b248bf3daf42c3d9d7fab89` |
| 11 | `lemma` | [phase_factorization](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/phase-factorization--a0d47889f6afebd6ce8352fd.md) | 87 | `result-track:a0d47889f6afebd6ce8352fd4f99e9eb09af3bb1a483e29cd24f5883acea228c` |
| 12 | `lemma` | [frequency_product_return](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/frequency-product-return--ff63ac7324738ef923122667.md) | 103 | `result-track:ff63ac7324738ef9231226677d18f85ab223da103ffb97242f3e74ad66ce8d53` |
| 13 | `theorem` | [density_double_return](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/declarations/density-double-return--a782be066f4be9c27d8a3a4e.md) | 128 | `result-track:a782be066f4be9c27d8a3a4e9a9b0b036a9fbd05ae5205008af3d2247838cc37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
