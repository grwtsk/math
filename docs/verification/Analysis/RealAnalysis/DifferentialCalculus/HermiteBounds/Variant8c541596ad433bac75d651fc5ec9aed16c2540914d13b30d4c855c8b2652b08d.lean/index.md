# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HermiteBounds.Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f68c4dad4e5e7c038bb0e9b9741b9d4ac4aa0b8d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f68c4dad4e5e7c038bb0e9b9741b9d4ac4aa0b8d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Hermite.Gaussian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianSq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean/declarations/gaussiansq--9191286ab9fc80e02cf1a3fa.md) | 51 | `declaration-track:9191286ab9fc80e02cf1a3fa64fd632baac7f0ee4b97aca299bf27de190d9775` |
| 2 | `theorem` | [gaussianSq_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean/declarations/gaussiansq-le-one--e02c2ab90cc91230d1a023e3.md) | 54 | `result-track:e02c2ab90cc91230d1a023e32ce389ac1015a9c62a8cd806ac6870b66b5f845a` |
| 3 | `theorem` | [gaussianSq_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean/declarations/gaussiansq-pos--22abc0d1bcf05fe6f90d5b34.md) | 61 | `result-track:22abc0d1bcf05fe6f90d5b3436b824b012760272e32c388d4bd67164dc983792` |
| 4 | `theorem` | [gaussianSq_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8c541596ad433bac75d651fc5ec9aed16c2540914d13b30d4c855c8b2652b08d.lean/declarations/gaussiansq-nonneg--a1d0e4ee1a37b2ce15815fb6.md) | 65 | `result-track:a1d0e4ee1a37b2ce15815fb6cb74664ad681818b24587e4cb38b6bad11043957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
