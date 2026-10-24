# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RankTrace.Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec5b21785eb0c8aeded004bcec1569aff22bd1f9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec5b21785eb0c8aeded004bcec1569aff22bd1f9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.VonNeumann` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.HermitianPosPart` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sq_ge_linear](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/sq-ge-linear--b6d7ca9a7e69ce6cb3b70c42.md) | 60 | `result-track:b6d7ca9a7e69ce6cb3b70c42fcfb114653fa8909fb8122aac3b93941e9189f4c` |
| 2 | `lemma` | [sq_ge_linear'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/sq-ge-linear--784657ef420479d9ed36863e.md) | 64 | `result-track:784657ef420479d9ed36863e93a9136a29fcadbff7a0cd13cffd6867bf661f55` |
| 3 | `lemma` | [sum_sq_diff_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/sum-sq-diff-lower--67eb6bea63645e830b898b14.md) | 70 | `result-track:67eb6bea63645e830b898b1405cbe4da4a97474b0b2b7f4ded34a644aac2b0b2` |
| 4 | `lemma` | [sum_sq_lower_of_card_pos_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/sum-sq-lower-of-card-pos-le--0cd2c21312d278818d1de425.md) | 95 | `result-track:0cd2c21312d278818d1de425d7603e1a72d52e4715e5ca127d3527b13fb4574f` |
| 5 | `lemma` | [trace_mul_nonneg_of_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/trace-mul-nonneg-of-possemidef--f564b80bbe67d2dfea94f137.md) | 122 | `result-track:f564b80bbe67d2dfea94f1377c8c5b0c94be938d14e89c58149f293319b32fad` |
| 6 | `lemma` | [re_trace_mul_comm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/re-trace-mul-comm--a803fd549555602e97aa97fc.md) | 140 | `result-track:a803fd549555602e97aa97fc067c2d01aa09c33e2c038e2372d58b33c783cd3f` |
| 7 | `lemma` | [frobSq_add_hermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/frobsq-add-hermitian--37ecaaa07ba38398e37b10a7.md) | 146 | `result-track:37ecaaa07ba38398e37b10a7d6a6fd0c401c8451603a18866c378f4046477928` |
| 8 | `lemma` | [rtrace_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/rtrace-add--69bf1fcd35fcef199c39cea3.md) | 156 | `result-track:69bf1fcd35fcef199c39cea3a5f5066e761291bb11fe25757c24f7aee8b602ab` |
| 9 | `lemma` | [rtrace_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/rtrace-sub--2ca58e05b3c04d477813c940.md) | 160 | `result-track:2ca58e05b3c04d477813c94060b02fe6c59c7280b2ed3f4e3beb581f8853d0db` |
| 10 | `theorem` | [rank_trace_ineq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/rank-trace-ineq--32b005a4561e44b5870426ac.md) | 171 | `result-track:32b005a4561e44b5870426aca8dd9a372a4573279a6812edf71dfa82ae413925` |
| 11 | `theorem` | [rank_trace_ineq_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/declarations/rank-trace-ineq-two--b1ce49fec78c9ea6e3baf07d.md) | 268 | `result-track:b1ce49fec78c9ea6e3baf07d21b0a0a81c07ee4bd0e4168f7aa9ae92b6225ed0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
