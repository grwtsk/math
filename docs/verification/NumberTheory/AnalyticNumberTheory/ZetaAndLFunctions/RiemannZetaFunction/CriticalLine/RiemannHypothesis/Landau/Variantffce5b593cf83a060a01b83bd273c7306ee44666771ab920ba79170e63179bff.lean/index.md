# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Landau.Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c715ce22322a23137bb7ac9987571e588c41880",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c715ce22322a23137bb7ac9987571e588c41880`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean.json)

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
| 1 | `lemma` | [Cf_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/cf-ne-zero--43f6a7f9543c3fe373d557a8.md) | 38 | `result-track:43f6a7f9543c3fe373d557a8b614ef3dbec8caafcc672209e05d5509c366a3f7` |
| 2 | `lemma` | [f_eq_prod_mul_Cf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/f-eq-prod-mul-cf--5007206b06ec58fe9a63376a.md) | 68 | `result-track:5007206b06ec58fe9a63376ad0f60995bdd6f9a7a0a2ed5256d23ec5ca629b0a` |
| 3 | `lemma` | [logDeriv_zero_prod](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/logderiv-zero-prod--b0a45d0b00da7958d68b3752.md) | 85 | `result-track:b0a45d0b00da7958d68b3752559754c5ca97d88400832a3e7ddd7674a732770d` |
| 4 | `lemma` | [logDeriv_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/logderiv-split--805793778f885565a46d61ec.md) | 96 | `result-track:805793778f885565a46d61ec24df8d300928b9e5b1ece1290aef73e60b56cec9` |
| 5 | `lemma` | [norm_logDeriv_Cf_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/norm-logderiv-cf-le--cc4f59d89be5cc8da5ef7626.md) | 137 | `result-track:cc4f59d89be5cc8da5ef7626a8ad22eed7d8bcb879fbeaeb648d38a08e4e17a1` |
| 6 | `theorem` | [logDeriv_partial_fraction_unit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/logderiv-partial-fraction-unit--b14e333d8a4093ad5277c132.md) | 307 | `result-track:b14e333d8a4093ad5277c1325b3f51357a14c5d3b54f008faf661b2dbdb9fd67` |
| 7 | `lemma` | [finite_SetOfZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/finite-setofzeros--d77cb5f3c006eca17c7631e7.md) | 323 | `result-track:d77cb5f3c006eca17c7631e755bf6a9e07e633b4f97e15cd2df5e967f6259e4c` |
| 8 | `theorem` | [logDeriv_partial_fraction_disk](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/logderiv-partial-fraction-disk--61f0ff7942d7875b0f4eb586.md) | 356 | `result-track:61f0ff7942d7875b0f4eb5860fd5563bbd0aec2163cb1c9e5be85c3d88585e3f` |
| 9 | `theorem` | [zeta_logDeriv_partial_fraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantffce5b593cf83a060a01b83bd273c7306ee44666771ab920ba79170e63179bff.lean/declarations/zeta-logderiv-partial-fraction--2a910a9e731dbccb073aa00d.md) | 520 | `result-track:2a910a9e731dbccb073aa00d085bf4fbe2a7b6ae56ba0690e7a6edf554c143c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
