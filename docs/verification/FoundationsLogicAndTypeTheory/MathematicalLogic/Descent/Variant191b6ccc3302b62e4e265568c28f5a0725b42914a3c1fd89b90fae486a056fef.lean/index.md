# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Descent.Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2e83b8538f6737214dfd5f3ae8d11f83a9f9ade",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2e83b8538f6737214dfd5f3ae8d11f83a9f9ade`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Setoid.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DescendsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough--bf5802d4a760ef689b3b416c.md) | 14 | `declaration-track:bf5802d4a760ef689b3b416cb2b103e8aad0126cf9f7489bec44695d12dc22ba` |
| 2 | `def` | [PredicateDescendsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/predicatedescendsthrough--0818a385f6a080b7dd5c4796.md) | 18 | `declaration-track:0818a385f6a080b7dd5c479600e01be0ab63076915e2289a0d613417c0eb6f23` |
| 3 | `structure` | [DescentObstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descentobstruction--6958048f14b7cb3f91653f32.md) | 23 | `declaration-track:6958048f14b7cb3f91653f3212dfb18661f71094d54099df17a33a3f709d7049` |
| 4 | `structure` | [PredicateDescentObstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/predicatedescentobstruction--9343a2921791892e39af246e.md) | 34 | `declaration-track:9343a2921791892e39af246e40582e63f58d0420ab29c361ff7dfbaa66f6888f` |
| 5 | `theorem` | [descent_obstruction_not_descends](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descent-obstruction-not-descends--9f44059cee2a46341055bfcb.md) | 46 | `result-track:9f44059cee2a46341055bfcbcb9064cb836cd94ca3e4220623271960ca479bbe` |
| 6 | `theorem` | [predicate_descent_obstruction_not_descends](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/predicate-descent-obstruction-not-descends--045655488abdefe0ff6187f2.md) | 52 | `result-track:045655488abdefe0ff6187f25a692ff1f2d9c349ab59cedb4b294c849b07ac08` |
| 7 | `theorem` | [descendsThrough_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-id--8b540b020472e64c7051cd8e.md) | 58 | `result-track:8b540b020472e64c7051cd8e4cfe0312cb169476041d9ed6cab2d2c18054e3d7` |
| 8 | `theorem` | [predicateDescendsThrough_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/predicatedescendsthrough-id--2798cde9dee06cea775501d9.md) | 63 | `result-track:2798cde9dee06cea775501d97ee01e589a67dbe48e2bb6158aff80606325e61f` |
| 9 | `theorem` | [descendsThrough_comp_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-comp-target--35a455ad87a4c19236a0578d.md) | 68 | `result-track:35a455ad87a4c19236a0578d39808278682186359b39a97c85edee0dc0bc15bf` |
| 10 | `theorem` | [descendsThrough_comp_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-comp-carrier--c23d4bed971f76301b3d4190.md) | 74 | `result-track:c23d4bed971f76301b3d4190b7c9a044351e262097b05d04cb5d6435a4831239` |
| 11 | `theorem` | [predicateDescendsThrough_comp_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/predicatedescendsthrough-comp-carrier--7b6cc0c223ebf1f3c7401c5e.md) | 80 | `result-track:7b6cc0c223ebf1f3c7401c5e5a93cd813708b09364c7650eae671d0058bbf177` |
| 12 | `theorem` | [descendsThrough_of_refines](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-of-refines--fa308c98dba06e8626d03e2d.md) | 86 | `result-track:fa308c98dba06e8626d03e2d9ef69b6a2bff79ca148e6c01f25b4d59204e2011` |
| 13 | `theorem` | [predicateDescendsThrough_of_refines](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/predicatedescendsthrough-of-refines--e1a5690b104faba06ac71d63.md) | 92 | `result-track:e1a5690b104faba06ac71d63438fb07b0bbe6f058f4a246e1340dad0ba07e442` |
| 14 | `theorem` | [descendsThrough_iff_constant_on_fibers](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-iff-constant-on-fibers--4ada668ee8d9a41a2d78b2ba.md) | 98 | `result-track:4ada668ee8d9a41a2d78b2baa0b81ae055c25e3c14171808536da10a21bbfcd1` |
| 15 | `theorem` | [descendsThrough_of_factorization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-of-factorization--d983805a4eaca4a4ec032bf7.md) | 109 | `result-track:d983805a4eaca4a4ec032bf7ec300a6ce208ad1f71c653149c6d941211e4e2ab` |
| 16 | `theorem` | [descent_obstruction_no_factorization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descent-obstruction-no-factorization--3f2b92e55628c2861ffea91b.md) | 116 | `result-track:3f2b92e55628c2861ffea91b57af89910b1c3a9b14d5367b421c1544a512bd79` |
| 17 | `theorem` | [descendsThrough_quotient_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descendsthrough-quotient-iff--a29c594affdf7eb78af09c90.md) | 124 | `result-track:a29c594affdf7eb78af09c90e1da0f5c1b40ab68b26ddabdbdf16b0375714fe1` |
| 18 | `def` | [descentQuotientLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descentquotientlift--8848e3db1197a41cc5e97468.md) | 134 | `declaration-track:8848e3db1197a41cc5e974685e7ae20e7779445e7858e1d3ee8ff8313d6a0c85` |
| 19 | `theorem` | [descentQuotientLift_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descentquotientlift-mk--6e2e0db577232cb0d9565045.md) | 139 | `result-track:6e2e0db577232cb0d9565045dbfd0c1813c6d23255b36e82342d1a36f9e5a421` |
| 20 | `theorem` | [quotient_factorization_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/quotient-factorization-iff--b9a8a5b0016c8b94b0b6bd93.md) | 144 | `result-track:b9a8a5b0016c8b94b0b6bd9334a3863d86c004f1c2b0dabba332cc4d0960fde9` |
| 21 | `theorem` | [descentQuotientLift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/descentquotientlift-unique--819db253cadf3829ea0a1f8c.md) | 154 | `result-track:819db253cadf3829ea0a1f8c4e67c08218473b072c03aafef554e5c17e11d187` |
| 22 | `def` | [booleanCollapseObstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/booleancollapseobstruction--09cc9524bc74a080065051f8.md) | 163 | `declaration-track:09cc9524bc74a080065051f882ee810276e4ae6d3d646183c8d8ecbe739313f0` |
| 23 | `theorem` | [boolean_collapse_not_descends](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/declarations/boolean-collapse-not-descends--203caf54a478906da55ba4bb.md) | 170 | `result-track:203caf54a478906da55ba4bbde9a9469e843a0c723b2f5b8132da9d7a4e9fd1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
