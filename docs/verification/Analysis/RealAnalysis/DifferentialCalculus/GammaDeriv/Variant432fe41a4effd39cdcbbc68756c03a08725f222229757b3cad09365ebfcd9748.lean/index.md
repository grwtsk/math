# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GammaDeriv.Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0c52719ee8db7a33e2c399748d854dd5b12ab6a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0c52719ee8db7a33e2c399748d854dd5b12ab6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [deriv_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/deriv-gamma-nat--ee375f1cd655f6be3155a596.md) | 37 | `result-track:ee375f1cd655f6be3155a5965a64d40b64d07beac8d2eb71a8cfc8092e753c75` |
| 2 | `lemma` | [hasDerivAt_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-nat--26d7dbb6a1047623c8b40e10.md) | 92 | `result-track:26d7dbb6a1047623c8b40e10a5f6a8110e1841129380278ff29abe5f3558781e` |
| 3 | `lemma` | [eulerMascheroniConstant_eq_neg_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/eulermascheroniconstant-eq-neg-deriv--8628e0335c6d0a165ff3b8ff.md) | 97 | `result-track:8628e0335c6d0a165ff3b8ff72b64270b21e71de9fa73446b1995ff476885feb` |
| 4 | `lemma` | [hasDerivAt_Gamma_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-one--d41bc1bd03625d9af4a3280b.md) | 101 | `result-track:d41bc1bd03625d9af4a3280be11a609a69e6587f1503d0c06be5e5f560480ed0` |
| 5 | `lemma` | [hasDerivAt_Gamma_one_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-one-half--3ebd219ab5973f80146316b5.md) | 105 | `result-track:3ebd219ab5973f80146316b57b34895c602545458bb3dde81a244d0435f5c34e` |
| 6 | `lemma` | [HasDerivAt.complex_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-complex-of-real--80b38fb054ab62cc38238e9c.md) | 162 | `result-track:80b38fb054ab62cc38238e9cf6f8a1ea0572aa2f0da502f0addf388e18a4e492` |
| 7 | `lemma` | [differentiable_at_Gamma_nat_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/differentiable-at-gamma-nat-add-one--3494a4f897eeadcbfaf88919.md) | 169 | `result-track:3494a4f897eeadcbfaf8891975971bc3b92a391817ec0a2e67964c14cbd74432` |
| 8 | `lemma` | [hasDerivAt_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-nat--e46ee6836fed61b7638a1265.md) | 176 | `result-track:e46ee6836fed61b7638a126537c1167510f2bc08299e3ad37c0e955172d6fad9` |
| 9 | `lemma` | [deriv_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/deriv-gamma-nat--3920022816fe492849821739.md) | 184 | `result-track:3920022816fe492849821739685391b1e0e1d9231ec6ae57bf3d8fcf77e3fb33` |
| 10 | `lemma` | [hasDerivAt_Gamma_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-one--7c18d3ebf1ce28a7124a6594.md) | 188 | `result-track:7c18d3ebf1ce28a7124a659482f6e6a020e60ee0d3c7cfb2c36a5b4a6703a140` |
| 11 | `lemma` | [hasDerivAt_Gamma_one_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-one-half--5395293aace7b700975031ed.md) | 192 | `result-track:5395293aace7b700975031ed17678112f9c9fe672402625428a0838b1ec15535` |
| 12 | `lemma` | [hasDerivAt_Gammaℂ_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-one--d576f9fe035ff726f9e58ddd.md) | 201 | `result-track:d576f9fe035ff726f9e58ddda5ddcd91533f1bdf8b03a08c14bd60f977d506a1` |
| 13 | `lemma` | [hasDerivAt_Gammaℝ_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/declarations/hasderivat-gamma-one--4d7fb00d304d45fcb2b029aa.md) | 214 | `result-track:4d7fb00d304d45fcb2b029aa4c56ff6a1c79f3ff558066186cfea2e9ebbdafaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
