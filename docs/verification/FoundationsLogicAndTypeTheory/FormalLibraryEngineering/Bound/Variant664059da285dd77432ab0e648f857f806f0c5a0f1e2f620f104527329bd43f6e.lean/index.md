# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a010862cc943a8ab1588a8b055824ac67330e9c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a010862cc943a8ab1588a8b055824ac67330e9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/boundcertificate--f2282b7556ceaaa20f814ebb.md) | 26 | `declaration-track:f2282b7556ceaaa20f814ebbbca864071f7e15d0fe70d450100e5e8f7befea7e` |
| 2 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/constant--beb431c1e7f658745b23de77.md) | 28 | `declaration-track:beb431c1e7f658745b23de77406764b920563729e0dee0890b01fd918ee9154f` |
| 3 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/ext--a2307a03ce846f2be3bcc4a5.md) | 37 | `result-track:a2307a03ce846f2be3bcc4a5e2be12cd1f7b4dfbb9a7099951fa78ba229e07b1` |
| 4 | `def` | [unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/unit--3bbc4fce6a2eab812d5a7c9a.md) | 44 | `declaration-track:3bbc4fce6a2eab812d5a7c9add3289e149c20ffcd4a0b237c5be67f6147a974e` |
| 5 | `def` | [compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/compose--5d01ac741d1ac76f3a2b692a.md) | 47 | `declaration-track:5d01ac741d1ac76f3a2b692a71664763111b98c856e682ee5092addb515f13c1` |
| 6 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/constant--7c50114674d67dd4ca010b2a.md) | 49 | `declaration-track:7c50114674d67dd4ca010b2aa0a54fbdd08d2106b798b222ebe0c3601a9fbfcd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/instance--5f1d655fe6f68c589102059c.md) | 57 | `declaration-track:5f1d655fe6f68c589102059c86c782157c274b2cfb9877eb4af02b7eabba8887` |
| 8 | `theorem` | [compose_function](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/compose-function--c5dc495c45fdef9a06fa2d94.md) | 85 | `result-track:c5dc495c45fdef9a06fa2d949b21346ed201e926db9e36640a25684afe8c5e29` |
| 9 | `theorem` | [compose_constant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/compose-constant--f8bf45f2fcead5aba934df09.md) | 87 | `result-track:f8bf45f2fcead5aba934df0992ea15634d35909416994ac602defb39cd36b1f7` |
| 10 | `theorem` | [compose_radius](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/compose-radius--297ed643798e548b4a60a1db.md) | 89 | `result-track:297ed643798e548b4a60a1dba50a56c355bd001ee500bea63c7f9021b01938ac` |
| 11 | `theorem` | [unit_function](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/unit-function--47dbcf65ffb3314f9940ad07.md) | 91 | `result-track:47dbcf65ffb3314f9940ad07e5bf339505ab38c38ff5992555e93ef6e63d513a` |
| 12 | `theorem` | [unit_constant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/unit-constant--01b83d30c7c63e130ffed887.md) | 92 | `result-track:01b83d30c7c63e130ffed887c17b46f1c8778c2f605abac8e93834a0efcd117a` |
| 13 | `theorem` | [unit_radius](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/unit-radius--813598e8ab46e2e79f5ddd1e.md) | 93 | `result-track:813598e8ab46e2e79f5ddd1e786eff9e6a6614b100991483fca115e300bd03bc` |
| 14 | `def` | [constantAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/constantadd--b3d471d8aac364ce5eba25bb.md) | 96 | `declaration-track:b3d471d8aac364ce5eba25bb0772f2a361741cf9dc5def3cb9426434bc309afa` |
| 15 | `theorem` | [prod_function](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/prod-function--9a15665797d704a39fd1b52c.md) | 99 | `result-track:9a15665797d704a39fd1b52c153dcfd43614f7911b4db766bc084af92306ce85` |
| 16 | `theorem` | [prod_constant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/prod-constant--8afe6ebb1e7680fb17878708.md) | 105 | `result-track:8afe6ebb1e7680fb17878708afc9f2f544d0ffadd5d5d774aef5f59e0417cebe` |
| 17 | `theorem` | [prod_radius](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/prod-radius--025f1576fbd4e1f2332c9824.md) | 112 | `result-track:025f1576fbd4e1f2332c98247e33718d7c25e68df470a3192941f20cbcb2e63a` |
| 18 | `theorem` | [prod_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/prod-bound--fff9799f5ea487fe92e82e6e.md) | 120 | `result-track:fff9799f5ea487fe92e82e6e9e80edb3b9a51a2fe9991ebe9fe954d4cd9d843b` |
| 19 | `theorem` | [flatten_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/flatten-prod--fcdfda23b26a5197bdc29525.md) | 125 | `result-track:fcdfda23b26a5197bdc29525dfd9ebaa8fe21edec09f942263da8a1c8325dfe7` |
| 20 | `def` | [radiusOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/radiusonly--94d304c17965f8cd76239d79.md) | 132 | `declaration-track:94d304c17965f8cd76239d79cc4e0fc8250222ff427bf3f8286725cdb4ab38b9` |
| 21 | `theorem` | [radiusOnly_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/radiusonly-idempotent--bed80a441808e576e0b7c30c.md) | 135 | `result-track:bed80a441808e576e0b7c30c04a2cc5a69479c5890bf4482f073de55291a02cd` |
| 22 | `def` | [canceled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/canceled--0745ee1fe061b914ed8f96c3.md) | 144 | `declaration-track:0745ee1fe061b914ed8f96c3773703d195ece796fbe4c7df29f8bc94bb0221b4` |
| 23 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/constant--5a04bc1d71eac051d862b950.md) | 146 | `declaration-track:5a04bc1d71eac051d862b95052997173834663173c4fa77f028c598058508402` |
| 24 | `theorem` | [canceled_eq_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/canceled-eq-unit--6ff6f7f174a2121acda66b2d.md) | 152 | `result-track:6ff6f7f174a2121acda66b2dbff972875b57c546e2607826664df8a1b38b9cb4` |
| 25 | `theorem` | [unbounded_positive_member](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant664059da285dd77432ab0e648f857f806f0c5a0f1e2f620f104527329bd43f6e.lean/declarations/unbounded-positive-member--7b45fc9d851404777f5e3f92.md) | 161 | `result-track:7b45fc9d851404777f5e3f9206cec172c82db1cf7c7375e5109758e549252f34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
