# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shrink.Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f27e0cece22c3bdce9221cdebba2298f9821c7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f27e0cece22c3bdce9221cdebba2298f9821c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Small` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Shrink.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean/declarations/shrink-instfintype--23ceffcb473abd6880cd5bdc.md) | 16 | `declaration-track:23ceffcb473abd6880cd5bdc3f442d30e1b1c24cb5d046e0c446e7d29ad13671` |
| 2 | `instance` | [Shrink.instFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean/declarations/shrink-instfinite--33e9dda713898e1f18ac1e82.md) | 18 | `declaration-track:33e9dda713898e1f18ac1e8258e57017db426928d57422f209e6f85fc2778aed` |
| 3 | `lemma` | [Fintype.card_shrink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean/declarations/fintype-card-shrink--c0470853f8920f5e0abfbd4f.md) | 21 | `result-track:c0470853f8920f5e0abfbd4f8ab3fa768a4a5a139dcad29b7e3aa21e312e533d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
