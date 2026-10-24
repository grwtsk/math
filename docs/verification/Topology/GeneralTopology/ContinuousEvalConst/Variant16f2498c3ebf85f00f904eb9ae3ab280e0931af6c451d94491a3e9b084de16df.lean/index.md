# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousEvalConst.Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6793028a59d887ac7b2f57c367bd5f88ccf1ca35",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6793028a59d887ac7b2f57c367bd5f88ccf1ca35`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuousevalconst--65d040e499fbb79e3d86a6a6.md) | 27 | `declaration-track:65d040e499fbb79e3d86a6a64e3b7834883b840de91ff66f49b16c9a51fafd9b` |
| 2 | `theorem` | [ContinuousEvalConst.of_continuous_forget](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuousevalconst-of-continuous-forget--6de8464369a2c0f413f5d8e2.md) | 43 | `result-track:6de8464369a2c0f413f5d8e28b369b21462ab0c018ae71dfbb89c8263e85efd5` |
| 3 | `theorem` | [Continuous.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuous-eval-const--f65255baa4c2377963106834.md) | 49 | `result-track:f65255baa4c237796310683463be8c5909a2597c20f45f8348e20150135e6486` |
| 4 | `theorem` | [continuous_coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuous-coefun--ab14e10bba8008fb55b27caa.md) | 52 | `result-track:ab14e10bba8008fb55b27caae3da04d5e39a2c020625e949183477749904c9bd` |
| 5 | `theorem` | [Continuous.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuous-coefun--13a5a621bc07deb28b991cd2.md) | 55 | `result-track:13a5a621bc07deb28b991cd2336c565cda658069568013687a889095bf296201` |
| 6 | `theorem` | [Filter.Tendsto.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/filter-tendsto-eval-const--93bbe6e3c3c3b4323c378d3b.md) | 58 | `result-track:93bbe6e3c3c3b4323c378d3bf5a97d4dc1a5f97eeb95f39dbda0f9f18ee4c709` |
| 7 | `theorem` | [Filter.Tendsto.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/filter-tendsto-coefun--84e8565a680166b15c91192b.md) | 62 | `result-track:84e8565a680166b15c91192b0669d79ba49fb18935c2654b511a78783dcf432a` |
| 8 | `theorem` | [ContinuousAt.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuousat-eval-const--010d5ae2f59b9003c8e55ce5.md) | 66 | `result-track:010d5ae2f59b9003c8e55ce5d0ebadfdea39a6e4fb6fb6c8467db11574463d33` |
| 9 | `theorem` | [ContinuousAt.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuousat-coefun--2f0753b86e22d3b574a679e4.md) | 70 | `result-track:2f0753b86e22d3b574a679e45663051404997f7d57bec9b137d886743ae4aedc` |
| 10 | `theorem` | [ContinuousWithinAt.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuouswithinat-eval-const--f60238f19e9bee12ab912639.md) | 74 | `result-track:f60238f19e9bee12ab912639972566a6424041f87f8a4c13aa8d814221c5325b` |
| 11 | `theorem` | [ContinuousWithinAt.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuouswithinat-coefun--040ab3e51b5104136f461c3c.md) | 78 | `result-track:040ab3e51b5104136f461c3c2d8f93c6cfec6f16ded343646b81e18375e1f3a2` |
| 12 | `theorem` | [ContinuousOn.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuouson-eval-const--ca235d66e2d08e577626270a.md) | 82 | `result-track:ca235d66e2d08e577626270abdb419038da9c45b98623ff428d5fb805b6fd3f4` |
| 13 | `theorem` | [ContinuousOn.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variant16f2498c3ebf85f00f904eb9ae3ab280e0931af6c451d94491a3e9b084de16df.lean/declarations/continuouson-coefun--34116601323f3fa9aa30f15e.md) | 86 | `result-track:34116601323f3fa9aa30f15eaf4f15df12ff62b49d3456ec62e61c03d05cd845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
