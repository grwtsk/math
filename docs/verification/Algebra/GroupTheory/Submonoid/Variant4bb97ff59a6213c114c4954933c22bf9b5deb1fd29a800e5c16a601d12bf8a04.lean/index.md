# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2feb102acbc375a56fea5c418266f9e3e9be0f6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2feb102acbc375a56fea5c418266f9e3e9be0f6`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedPoints.addSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/declarations/fixedpoints-addsubmonoid--c69681baaf4cd9df38d6f24d.md) | 27 | `declaration-track:c69681baaf4cd9df38d6f24d4a3587082de259aea8fb9021ca2c72b4d2297537` |
| 2 | `lemma` | [FixedPoints.mem_addSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/declarations/fixedpoints-mem-addsubmonoid--5dd4996d42ebbfe678e49fa6.md) | 33 | `result-track:5dd4996d42ebbfe678e49fa68a6da2c3d0db30bf5b9225858f8ade4885544429` |
| 3 | `def` | [FixedPoints.addSubgroup](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/declarations/fixedpoints-addsubgroup--74cc2fc8c7f898e081519864.md) | 42 | `declaration-track:74cc2fc8c7f898e0815198644701b2770b6cf0bdb270036c8771c07ee4ff42bc` |
| 4 | `lemma` | [FixedPoints.mem_addSubgroup](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/declarations/fixedpoints-mem-addsubgroup--a275d848d668831507195759.md) | 50 | `result-track:a275d848d6688315071957598926a6512fc55d466426437af2d9d24c95b15d4b` |
| 5 | `lemma` | [FixedPoints.addSubgroup_toAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04.lean/declarations/fixedpoints-addsubgroup-toaddsubmonoid--ebc29ac0f32e6ac4f431f321.md) | 54 | `result-track:ebc29ac0f32e6ac4f431f32189384be0f32811928c8abfcdb3190277af9e1081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
