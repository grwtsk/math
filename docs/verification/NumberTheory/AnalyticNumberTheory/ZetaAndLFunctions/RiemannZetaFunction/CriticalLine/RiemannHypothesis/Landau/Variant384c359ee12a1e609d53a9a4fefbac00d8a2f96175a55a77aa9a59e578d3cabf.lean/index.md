# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Landau.Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d9c80530a90ef7c15f46b2ef6b7fee38a116e8f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d9c80530a90ef7c15f46b2ef6b7fee38a116e8f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.ZetaGrowth` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Cf_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/cf-ne-zero--a4f8cb4d36d07b23cbdba754.md) | 38 | `result-track:a4f8cb4d36d07b23cbdba754d8ced6a8dbe7ac951f66c2467e1f1edd85eae4c5` |
| 2 | `lemma` | [f_eq_prod_mul_Cf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/f-eq-prod-mul-cf--daad3b2f1a51ac812cadcec7.md) | 68 | `result-track:daad3b2f1a51ac812cadcec77c031029376e801a1c49d71c73e693dc484f80c4` |
| 3 | `lemma` | [logDeriv_zero_prod](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/logderiv-zero-prod--a44556aa59ea93a6d4bc5940.md) | 85 | `result-track:a44556aa59ea93a6d4bc5940a0e9ae479172b7a389e3a5686befaf55e2d5eeaa` |
| 4 | `lemma` | [logDeriv_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/logderiv-split--84fa9d0f05cd1b50c8ac4863.md) | 96 | `result-track:84fa9d0f05cd1b50c8ac486387d1b2d103528fcad2913cc2a5cd82992a76b3d5` |
| 5 | `lemma` | [norm_logDeriv_Cf_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/norm-logderiv-cf-le--097c6814d2ca8d31558136bd.md) | 137 | `result-track:097c6814d2ca8d31558136bdd0d97cab068a0dd614c76ba4e5aa4993e63984bf` |
| 6 | `theorem` | [logDeriv_partial_fraction_unit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/logderiv-partial-fraction-unit--081bd39c49f13f826b735a85.md) | 307 | `result-track:081bd39c49f13f826b735a85424ffd997702176bc409f91587fcb8ccd3b97bd7` |
| 7 | `lemma` | [finite_SetOfZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/finite-setofzeros--848357dd88e29a948998eb5e.md) | 323 | `result-track:848357dd88e29a948998eb5ef15f673c1de98cae20eaf0d6871ec90e651fa98e` |
| 8 | `theorem` | [logDeriv_partial_fraction_disk](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/logderiv-partial-fraction-disk--b5b838513e8a6e2dde45fd85.md) | 356 | `result-track:b5b838513e8a6e2dde45fd857629bd55cf31ebdf0b654276a63aa301b54f6689` |
| 9 | `theorem` | [zeta_logDeriv_partial_fraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/declarations/zeta-logderiv-partial-fraction--75e78010e96b3120dda254e7.md) | 520 | `result-track:75e78010e96b3120dda254e79159519e7446f446c5423a1bec8471cac1946543` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
