# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FunctionSeries.Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c78cfb496b71353217bfcd6f9859ae4807370dc9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c78cfb496b71353217bfcd6f9859ae4807370dc9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendstoUniformlyOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformlyon-tsum--907423365b575ed3e96570ab.md) | 34 | `result-track:907423365b575ed3e96570abe9d05b215155a9655a507828abd971436bc384ae` |
| 2 | `theorem` | [tendstoUniformlyOn_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformlyon-tsum-nat--f01dfb24cae3611f29db76b4.md) | 49 | `result-track:f01dfb24cae3611f29db76b47117cc2339d762c4c2c2a4c2e757137cf7525384` |
| 3 | `theorem` | [tendstoUniformlyOn_tsum_of_cofinite_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformlyon-tsum-of-cofinite-eventually--ad660a8dec12ba45cd8449de.md) | 57 | `result-track:ad660a8dec12ba45cd8449de96c2e972ba651297b5efa35c652e7ec962bc1dcc` |
| 4 | `theorem` | [tendstoUniformlyOn_tsum_nat_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformlyon-tsum-nat-eventually--6112ae3c6b8f4e1d22982a9c.md) | 83 | `result-track:6112ae3c6b8f4e1d22982a9ceb2f1fa98ec05ed659daf804fa2d1d7348550022` |
| 5 | `theorem` | [tendstoUniformly_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformly-tsum--b70c5af44f93ed697ce370dc.md) | 93 | `result-track:b70c5af44f93ed697ce370dc35291bf3f2d5cee7898bb37a0519916aac6511b0` |
| 6 | `theorem` | [tendstoUniformly_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformly-tsum-nat--ed6c88d9ca8e3f8a8076467c.md) | 100 | `result-track:ed6c88d9ca8e3f8a8076467c7f5c9157b56d1cfcc876552e88961d71747ddf8f` |
| 7 | `theorem` | [tendstoUniformly_tsum_of_cofinite_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/tendstouniformly-tsum-of-cofinite-eventually--b3658dc94cf35478c8e677d3.md) | 108 | `result-track:b3658dc94cf35478c8e677d318e6aad7c1a521f83c089504290d37cdb1ac797b` |
| 8 | `theorem` | [continuousOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/continuouson-tsum--37aaf6be6e053fbd590bee66.md) | 117 | `result-track:37aaf6be6e053fbd590bee66eaf02a098e609aaf53c0a27be752fca2a3ff024f` |
| 9 | `theorem` | [continuous_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/declarations/continuous-tsum--9b1070686c0f038b7798b33c.md) | 127 | `result-track:9b1070686c0f038b7798b33ca386210931fabfb940fb1a41446da31ef7ce3df7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
