# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ExactCriticalPrimitive.Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b33f36ada0369bad869b5fcd805e69726c11cf15",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b33f36ada0369bad869b5fcd805e69726c11cf15`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/primitive--feaf9296a70db5752999c098.md) | 21 | `declaration-track:feaf9296a70db5752999c09823156d25a7a69669b11ebf6963463c143b686b26` |
| 2 | `def` | [halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/halfprefix--c63695543786759239b30968.md) | 24 | `declaration-track:c63695543786759239b3096821d0ca08b74a5fb7e759f27a186d7fb69b4ff9f3` |
| 3 | `theorem` | [twiceExp_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/twiceexp-hasderivat--275bc33e2310de40c2b298b9.md) | 27 | `result-track:275bc33e2310de40c2b298b9607fda72ad85d08ecca5c451ccb23f7a20518335` |
| 4 | `theorem` | [twiceExp_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/twiceexp-deriv--9a9672caa01769c0bf68bb6f.md) | 33 | `result-track:9a9672caa01769c0bf68bb6f303b08205491aa179a6ba7f79453e3f17eeb29d2` |
| 5 | `theorem` | [logSum_eq_halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/logsum-eq-halfprefix--46707accaa099de7160b7e5a.md) | 37 | `result-track:46707accaa099de7160b7e5a73c41792cc76de349b165d8b664a3e0601c5009a` |
| 6 | `theorem` | [prefix_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/prefix-weight-integrable--fcc05c5d04dd274d52d18708.md) | 52 | `result-track:fcc05c5d04dd274d52d187087e9c41408c05ac473e8ce6f97a715cd931a00101` |
| 7 | `theorem` | [prefix_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/prefix-weight-integral--1fa58cce7a0128e86f382356.md) | 58 | `result-track:1fa58cce7a0128e86f38235669fea5b8b7a46507e46f45557f0ef8abb5029fc7` |
| 8 | `theorem` | [background_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/background-integral--88d7deaf4eb8ff8d38f9cd14.md) | 65 | `result-track:88d7deaf4eb8ff8d38f9cd144d3711d163f8bf72fa70a5c155f98c893400269c` |
| 9 | `theorem` | [primitive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/primitive-integrable--24c340640c70efce4781458a.md) | 79 | `result-track:24c340640c70efce4781458ab69681d40158d91483319d805656b0ad350b1e3c` |
| 10 | `theorem` | [primitive_eq_finite_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/primitive-eq-finite-arithmetic--7d457de3ef096a6e356bf617.md) | 94 | `result-track:7d457de3ef096a6e356bf617ce7ea531bddcb88fee3265477a0d53e8d43f4053` |
| 11 | `theorem` | [halfPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/halfprefix-below-first--fcd764e0fadf180ccee5089a.md) | 111 | `result-track:fcd764e0fadf180ccee5089ae15ce4d1a5dc62d94874b11618986f73b349b067` |
| 12 | `theorem` | [primitive_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/declarations/primitive-below-first--3645d37f96bcabcbaa7f347b.md) | 124 | `result-track:3645d37f96bcabcbaa7f347b9d49ee8c7eefa86509f5157f1b35e809031f83d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
