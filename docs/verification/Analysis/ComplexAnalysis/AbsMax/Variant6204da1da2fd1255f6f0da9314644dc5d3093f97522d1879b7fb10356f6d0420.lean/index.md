# Verification target: GRWTSK.Analysis.ComplexAnalysis.AbsMax.Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd042288f25b9032771e26351c7be8853e85e82",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd042288f25b9032771e26351c7be8853e85e82`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Completion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.ExtrClosure` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_max_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-max-aux--79abc4c15ec842ca14cd8848.md) | 106 | `result-track:79abc4c15ec842ca14cd8848469d4fcf572ef77fb55135758ac8b8fe12303f09` |
| 2 | `theorem` | [norm_max_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-max-aux--8a9ade58423f189108c038d7.md) | 144 | `result-track:8a9ade58423f189108c038d7ddece1e0cca64bb4c67bc7174c306abaad44487b` |
| 3 | `theorem` | [norm_max_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-max-aux--00eb7557d86d8e1911eeb918.md) | 159 | `result-track:00eb7557d86d8e1911eeb918bdb3e30b04d70add82f3e4ae61c55a6eec940ca5` |
| 4 | `theorem` | [norm_eqOn_closedBall_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-eqon-closedball-of-ismaxon--12fc2f16b0bee5d1f5b1f7c0.md) | 181 | `result-track:12fc2f16b0bee5d1f5b1f7c0ddf5e7684e5ff66f314e9dd298827f45252033aa` |
| 5 | `theorem` | [norm_eq_norm_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-eq-norm-of-ismaxon-of-ball-subset--ecf9e57bd890f60c74acece3.md) | 202 | `result-track:ecf9e57bd890f60c74acece3724f8ed53bc1ba8464fa7703901f1735672ce5e1` |
| 6 | `theorem` | [norm_eventually_eq_of_isLocalMax](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-eventually-eq-of-islocalmax--7850b7a16191a9f253a6ea25.md) | 211 | `result-track:7850b7a16191a9f253a6ea251e650a9ce110462be9c2ef1bad7608a81706b384` |
| 7 | `theorem` | [isOpen_setOf_mem_nhds_and_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/isopen-setof-mem-nhds-and-ismaxon-norm--f12a3f529e2888e77b9eb986.md) | 221 | `result-track:f12a3f529e2888e77b9eb98626bd705162956dbc0e7c9a6f391747c104bc8d4f` |
| 8 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--7f3cbc9e5cd2b32feb4a7f76.md) | 232 | `result-track:7f3cbc9e5cd2b32feb4a7f762e931aa9133387de0061bbb32e33033e74ff0263` |
| 9 | `theorem` | [norm_eqOn_closure_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-eqon-closure-of-ispreconnected-of-ismaxon--75c259eeab09268f3ddc7224.md) | 255 | `result-track:75c259eeab09268f3ddc7224a7d1f75ed630b9e059908da55d3fd4b39e119318` |
| 10 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--02b82dab466d693c2357c9fd.md) | 283 | `result-track:02b82dab466d693c2357c9fd9c8e47134453965a8820beecf92e51ab3ff9022d` |
| 11 | `theorem` | [eqOn_closure_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eqon-closure-of-ispreconnected-of-ismaxon-norm--ce527413b5d8b4aaa1f39d86.md) | 296 | `result-track:ce527413b5d8b4aaa1f39d8698e1fad1752d3c7176eb2ba66017e9c8a37ec46d` |
| 12 | `theorem` | [eq_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eq-of-ismaxon-of-ball-subset--ac9021be88db19494d5826bc.md) | 308 | `result-track:ac9021be88db19494d5826bcd37888c8812994a796fca9dc56926ce72421c135` |
| 13 | `theorem` | [eqOn_closedBall_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eqon-closedball-of-ismaxon-norm--60473be07d80524f5772eef5.md) | 324 | `result-track:60473be07d80524f5772eef50d5023ca22cb23732b253951ff0075fa8ed92df2` |
| 14 | `theorem` | [eventually_eq_of_isLocalMax_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eventually-eq-of-islocalmax-norm--407b8adf625fb8c38048bb00.md) | 333 | `result-track:407b8adf625fb8c38048bb00e6a59c6c0ac2e6bdd4ab118e4e06ac0e0d4fc413` |
| 15 | `theorem` | [eventually_eq_or_eq_zero_of_isLocalMin_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eventually-eq-or-eq-zero-of-islocalmin-norm--7726d0676d9736641160748f.md) | 343 | `result-track:7726d0676d9736641160748fca62048489efa225ff55a25a4ef67cfb1c657514` |
| 16 | `theorem` | [exists_mem_frontier_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/exists-mem-frontier-ismaxon-norm--62db58b9c863da74cdea63a9.md) | 369 | `result-track:62db58b9c863da74cdea63a9deb10d305e4a565e569d7a692f5f945924f209c9` |
| 17 | `theorem` | [norm_le_of_forall_mem_frontier_norm_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/norm-le-of-forall-mem-frontier-norm-le--277da34a3cdb335c1f0e2934.md) | 387 | `result-track:277da34a3cdb335c1f0e2934c9e4578260540e3d2988891cf38a74a2f5364eeb` |
| 18 | `theorem` | [eqOn_closure_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eqon-closure-of-eqon-frontier--7a76f3a452f6d17669c13c1c.md) | 411 | `result-track:7a76f3a452f6d17669c13c1cc9a978db789e0a313852b01b22976a1ad289fccd` |
| 19 | `theorem` | [eqOn_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant6204da1da2fd1255f6f0da9314644dc5d3093f97522d1879b7fb10356f6d0420.lean/declarations/eqon-of-eqon-frontier--81336438f11740945b25c660.md) | 421 | `result-track:81336438f11740945b25c660212a084945aa79de50c09c12c0f3584d020a529d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
