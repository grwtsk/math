# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01Source.Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a878041765738a55ad312c286c6f3c66a9a5e661",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a878041765738a55ad312c286c6f3c66a9a5e661`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredHalfHarmonic` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualEarlyFractionalZeta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfHarmonicFractionalTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/halfharmonicfractionaltail--2dbb69520cd33cf09f2e45d0.md) | 21 | `declaration-track:2dbb69520cd33cf09f2e45d0eeb3d446fae6d1ef1cd396a49a42c0b55e33140c` |
| 2 | `def` | [positiveUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/positiveunit--e639211aeffbf43415379185.md) | 24 | `declaration-track:e639211aeffbf43415379185f5a319c5348b918dac63b1e29e70b9f7f6493058` |
| 3 | `theorem` | [positiveUnit_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/positiveunit-sum--6d774abc29bd2d00171377db.md) | 26 | `result-track:6d774abc29bd2d00171377dbfb4acf2579741abf7fea54b1d0652f4290d7b44b` |
| 4 | `theorem` | [positiveUnit_weighted_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/positiveunit-weighted-sum--ff6189a454a6ca8248b9b2d6.md) | 38 | `result-track:ff6189a454a6ca8248b9b2d6ef794fbece32df5cb31df293b2940e7064a276eb` |
| 5 | `theorem` | [inv_sqrt_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/inv-sqrt-hasderivat--1036617069420181e8d0635d.md) | 50 | `result-track:1036617069420181e8d0635d55fc87537c2d2957d304b63e5525774574aadcf5` |
| 6 | `theorem` | [inv_sqrt_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/inv-sqrt-deriv-integrable--c68e4c60ef4d6721fc39547c.md) | 59 | `result-track:c68e4c60ef4d6721fc39547c6e4f7ea54a834e4164083ccc61301785cade537d` |
| 7 | `theorem` | [finiteHalfHarmonic_eq_sqrt_zeta_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/finitehalfharmonic-eq-sqrt-zeta-tail--9056e01b48fbd7ce7670372a.md) | 74 | `result-track:9056e01b48fbd7ce7670372a2990a1c12924018dab53f200cd5dc8d0868a92fa` |
| 8 | `theorem` | [halfHarmonicFractionalTail_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/halfharmonicfractionaltail-bounds--be8b09170b5a874c9f3f5a34.md) | 105 | `result-track:be8b09170b5a874c9f3f5a34c387cb1f1e86c7b853f01552572f1a2f5f6d3378` |
| 9 | `theorem` | [finiteHalfHarmonic_sub_sqrt_zeta_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variant99371fe51afa3c9e9a98c6b42ccf5e0a44e8e56d1037c154cb1d5b3efff03848.lean/declarations/finitehalfharmonic-sub-sqrt-zeta-abs-le--d0ee883d8979af034bae0bef.md) | 114 | `result-track:d0ee883d8979af034bae0bef7d3602ea67abc741dfd2810f5cd221a410c9db1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
