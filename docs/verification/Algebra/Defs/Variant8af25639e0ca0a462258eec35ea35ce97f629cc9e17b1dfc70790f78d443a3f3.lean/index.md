# Verification target: GRWTSK.Algebra.Defs.Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ac1d3b56df833c91ce67fa4bd3ce3042ead7f7c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ac1d3b56df833c91ce67fa4bd3ce3042ead7f7c`.

Source path: `GRWTSK/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearOrderedSemifield](../../../../mathematics/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean/declarations/linearorderedsemifield--4692104962fffd12eae7056e.md) | 30 | `declaration-track:4692104962fffd12eae7056e15ccf93538ed84017a2599390bc4609ae062e322` |
| 2 | `structure` | [LinearOrderedField](../../../../mathematics/Algebra/Defs/Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3.lean/declarations/linearorderedfield--ec618bdaf51ef3000d92167b.md) | 36 | `declaration-track:ec618bdaf51ef3000d92167b71edefeecb9332415e82b5fc77aa9eef20a34d07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
