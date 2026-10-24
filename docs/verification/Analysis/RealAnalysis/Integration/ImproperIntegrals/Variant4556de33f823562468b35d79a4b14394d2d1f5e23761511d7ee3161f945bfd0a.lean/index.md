# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ImproperIntegrals.Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c2fee5df307659356c797c975fde5d52dc66287",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c2fee5df307659356c797c975fde5d52dc66287`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integrableon-exp-iic--21e12581fa17c238ea6352a9.md) | 32 | `result-track:21e12581fa17c238ea6352a90610b90a4408365fd5a231f75557dcbf607ec37a` |
| 2 | `theorem` | [integral_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integral-exp-iic--b3d1531ace8e7a80d89a54c8.md) | 41 | `result-track:b3d1531ace8e7a80d89a54c84c69bcc7ee61c774053754f62fd9c0c52f91fdb3` |
| 3 | `theorem` | [integral_exp_Iic_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integral-exp-iic-zero--dead79e27e6bec6df9090d09.md) | 49 | `result-track:dead79e27e6bec6df9090d09f65a3998efd9859c0cfe852433bd95a76de2a0fc` |
| 4 | `theorem` | [integral_exp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integral-exp-neg-ioi--cb9b3f03bffa19d394afb8f2.md) | 53 | `result-track:cb9b3f03bffa19d394afb8f24ad72e1dbdbe9318e3c01acaed2148e20079319d` |
| 5 | `theorem` | [integral_exp_neg_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integral-exp-neg-ioi-zero--9a4353116950b135390532b4.md) | 57 | `result-track:9a4353116950b135390532b47f1007157ae17a226dd7c3f806ceb3bd7fadcbec` |
| 6 | `theorem` | [integrableOn_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integrableon-ioi-rpow-of-lt--2ab88eacc9742ccb8ef6f6fb.md) | 62 | `result-track:2ab88eacc9742ccb8ef6f6fb9433a768e2ce59ff53cbe2b856938b85cbe39842` |
| 7 | `theorem` | [integral_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integral-ioi-rpow-of-lt--a3f923ab09d6270010c301b8.md) | 76 | `result-track:a3f923ab09d6270010c301b80d7c47d540d7a148ee5f7cb7e8b0416a649341af` |
| 8 | `theorem` | [integrableOn_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integrableon-ioi-cpow-of-lt--b8f04bda1a7040dce3f08996.md) | 89 | `result-track:b8f04bda1a7040dce3f08996316f6224d89947a65ba29a800034fc5e48ff0a12` |
| 9 | `theorem` | [integral_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant4556de33f823562468b35d79a4b14394d2d1f5e23761511d7ee3161f945bfd0a.lean/declarations/integral-ioi-cpow-of-lt--203de2686815e394f4aa0046.md) | 100 | `result-track:203de2686815e394f4aa00463d7c356e43ef45985c0b87d1759e7a488ea50def` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
