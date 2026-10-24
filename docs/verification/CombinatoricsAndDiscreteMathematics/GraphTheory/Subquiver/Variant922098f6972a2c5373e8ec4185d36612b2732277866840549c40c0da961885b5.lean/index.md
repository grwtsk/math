# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Subquiver.Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9efed9f2aa5514e4b84aade1ec117720e6f9be5b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9efed9f2aa5514e4b84aade1ec117720e6f9be5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WideSubquiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/widesubquiver--c6f5459bc6fd14cdd6e8e400.md) | 31 | `declaration-track:c6f5459bc6fd14cdd6e8e400943eed4c113e62820ee0329b6a95dc80e280c09c` |
| 2 | `def` | [WideSubquiver.toType](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/widesubquiver-totype--bad6c9ced0469bd7c8e3f09e.md) | 37 | `declaration-track:bad6c9ced0469bd7c8e3f09e9f766012a0436abed992a4d704719a0bdc943650` |
| 3 | `instance` | [wideSubquiverHasCoeToSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/widesubquiverhascoetosort--a3efb7c48c5dd7e271e6a11f.md) | 40 | `declaration-track:a3efb7c48c5dd7e271e6a11f3646777d528d099f5b70ba9bf66bf87627e692cc` |
| 4 | `instance` | [WideSubquiver.quiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/widesubquiver-quiver--70a9af56da98c5edd404f9bd.md) | 44 | `declaration-track:70a9af56da98c5edd404f9bdc187feb4f0309f175fc06efc3da71997f27f858e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/instance--d37d11b8c14dceab0858e8b0.md) | 49 | `declaration-track:d37d11b8c14dceab0858e8b08fbe39db7421927d1ff87d1c4063ee51e09bca46` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/instance--7b3829536be1c8aa13657abf.md) | 52 | `declaration-track:7b3829536be1c8aa13657abf9ac41532b503f58c59561dae6f79d5def6a74eaf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/instance--13747039badbc5e3fb72c4b6.md) | 55 | `declaration-track:13747039badbc5e3fb72c4b631b34618693993b7bf62b7b166d5baf4fc3b14f1` |
| 8 | `structure` | [Total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/total--6e8e4e7b2ed20dad9b964f49.md) | 62 | `declaration-track:6e8e4e7b2ed20dad9b964f49861022766d8abe94100c9e8d2c50cfdd41d1fad0` |
| 9 | `def` | [wideSubquiverEquivSetTotal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/widesubquiverequivsettotal--0930a7c8f7cc4a7f1243e868.md) | 71 | `declaration-track:0930a7c8f7cc4a7f1243e868776c944dde5f0bf3fae2a03c404d6ffdce149ac4` |
| 10 | `def` | [Labelling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/labelling--9f410226521fd3cd57bf4942.md) | 80 | `declaration-track:9f410226521fd3cd57bf4942a87d8c5f89cc65d940badddcce220f3abd42ada2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Subquiver/Variant922098f6972a2c5373e8ec4185d36612b2732277866840549c40c0da961885b5.lean/declarations/instance--26f6fb730fbe177d9e990fec.md) | 83 | `declaration-track:26f6fb730fbe177d9e990fecf0198b66250392553bbaaff6641bd7a5e2139130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
