# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9f09b2193021f34f205bd7ab434fa0bca6ec562",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9f09b2193021f34f205bd7ab434fa0bca6ec562`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/map--5b6b6612f2d1771d5798ca98.md) | 53 | `declaration-track:5b6b6612f2d1771d5798ca98ac974f6b0774907a556c8450f8aded0faee6249d` |
| 2 | `def` | [functor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/functor--4e0f4495a60b5a02910dd9af.md) | 59 | `declaration-track:4e0f4495a60b5a02910dd9af6785862e7d2dab98e0792c3789bb4727530d0553` |
| 3 | `theorem` | [id_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/id-map--52710c59716f85d94cc9c441.md) | 65 | `result-track:52710c59716f85d94cc9c4411ea902ccf247faf32a7a8ea8d4f46f8cd6d5230e` |
| 4 | `theorem` | [comp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/comp-map--985f43137a8f17aba1c5bc31.md) | 69 | `result-track:985f43137a8f17aba1c5bc31dd059877113b6ae3b5e593fa5aac49c05ec31223` |
| 5 | `theorem` | [lawfulFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/lawfulfunctor--a4b0ef3cf4d1f93688a474d3.md) | 74 | `result-track:a4b0ef3cf4d1f93688a474d33b69d0e33fa151bd032a0ce88c76450322bcaca5` |
| 6 | `theorem` | [lawfulFunctor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/lawfulfunctor--8351418cce7ff51f554c71c9.md) | 82 | `result-track:8351418cce7ff51f554c71c9025a089180a22792e0e9f6ce1dd9ffde55749abc` |
| 7 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/traverse--c9e2838afe0c316ae3ffe776.md) | 109 | `declaration-track:c9e2838afe0c316ae3ffe7760e153049fbcefd4a995ee1acb356c1fcbccec7bf` |
| 8 | `def` | [traversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/traversable--125c96ada99b010db39fdc1b.md) | 115 | `declaration-track:125c96ada99b010db39fdc1bcf3ac1c6987177a7d0814cb3117ba834aa0fdaf4` |
| 9 | `theorem` | [id_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/id-traverse--7f07a75d68fc3f7fef7608af.md) | 141 | `result-track:7f07a75d68fc3f7fef7608af1a6306dbbfa2d22fed1f7ab2e2065bbf28963700` |
| 10 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/traverse-eq-map-id--ce9e1dc830936e1103f1080f.md) | 146 | `result-track:ce9e1dc830936e1103f1080fc19ec62cce4b8283474049f04527b3ac9367d795` |
| 11 | `theorem` | [comp_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/comp-traverse--eba58e073d41fa43f64f94a8.md) | 151 | `result-track:eba58e073d41fa43f64f94a8282a546a038e944ffa4ebb0dbe9b8a647adb5cd5` |
| 12 | `theorem` | [naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/naturality--8a3717888df0addebca671aa.md) | 157 | `result-track:8a3717888df0addebca671aa04b74962e596dbb61615dab41c5a7892fc8ab2c9` |
| 13 | `theorem` | [isLawfulTraversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/islawfultraversable--97c00235145691232ac9c964.md) | 165 | `result-track:97c00235145691232ac9c964f8cdb186fc40dd60983ba7ecaf4783c4ce5cf78b` |
| 14 | `theorem` | [isLawfulTraversable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/declarations/islawfultraversable--44b08b53155079bcc6701830.md) | 180 | `result-track:44b08b53155079bcc67018302bfa3e77191f672862d5494d5f87026ad587966c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
