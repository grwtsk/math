# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Real.Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9230d0e1cf3676bffc7b702877c6614d6fc8e90",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9230d0e1cf3676bffc7b702877c6614d6fc8e90`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Union` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/rieszmeasure--9820048da1e3f139a0f2b02d.md) | 61 | `declaration-track:9820048da1e3f139a0f2b02d2f50151fe86f1f8884bb81cd7aa71c0fbb8d568b` |
| 2 | `lemma` | [le_rieszMeasure_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/le-rieszmeasure-tsupport-subset--80666ce27e97478ad652fdb1.md) | 65 | `result-track:80666ce27e97478ad652fdb122317fc4e5bff823b3187599cb4b6cd1f88fbdf9` |
| 3 | `lemma` | [rieszMeasure_le_of_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/rieszmeasure-le-of-eq-one--710a8c1d8747c5a4d37bffae.md) | 84 | `result-track:710a8c1d8747c5a4d37bffaedb6248d38849ff66455e30d00d4e9eca289219f2` |
| 4 | `lemma` | [range_cut_partition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/range-cut-partition--0a223317dc2b0c5319eca151.md) | 102 | `result-track:0a223317dc2b0c5319eca15147e2ce197798eb65c66a92ec149e522671b44b20` |
| 5 | `lemma` | [exists_open_approx](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/exists-open-approx--1038319b31dc6e7e571d30d1.md) | 151 | `result-track:1038319b31dc6e7e571d30d1069c6d5985d5d1321604f5d0ccbd968889275f1e` |
| 6 | `lemma` | [exists_nat_large](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/exists-nat-large--8e0a8e507e5c8ce0ac6cee48.md) | 169 | `result-track:8e0a8e507e5c8ce0ac6cee4850637a7e36fb36a818e4a9c7c9f90f1419f4026c` |
| 7 | `lemma` | [integral_riesz_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/integral-riesz-aux--e81afd794b4ff9f3cd179ae5.md) | 182 | `result-track:e81afd794b4ff9f3cd179ae56041dd79827fcd7cd25d60402442c656fd44f561` |
| 8 | `theorem` | [integral_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/declarations/integral-rieszmeasure--4c0865a916fa9d5e725df49e.md) | 336 | `result-track:4c0865a916fa9d5e725df49e7ee540177d735bf3c55096f4b5b78deff0edae18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
