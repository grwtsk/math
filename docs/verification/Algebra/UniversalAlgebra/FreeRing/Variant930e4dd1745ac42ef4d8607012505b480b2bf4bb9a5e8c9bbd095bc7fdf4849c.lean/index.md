# Verification target: GRWTSK.Algebra.UniversalAlgebra.FreeRing.Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "335bdcfc2089e43d165260c4f6b43be1276d9995",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `335bdcfc2089e43d165260c4f6b43be1276d9995`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeRing](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/freering--4bea5f991034d8356ed2773c.md) | 62 | `declaration-track:4bea5f991034d8356ed2773c3776019c3f8fd4f8ceb0707bb3dca6f7bee1a599` |
| 2 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/of--e67857d5ecd3efdd2f7efc13.md) | 71 | `declaration-track:e67857d5ecd3efdd2f7efc132dde35dc28d0d9f98f07a6f9c43af48e22e39411` |
| 3 | `theorem` | [of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/of-injective--29cec2da1c1779f3d4b249c5.md) | 74 | `result-track:29cec2da1c1779f3d4b249c57977c6acc06da2aa3653b4054b654e68901f0447` |
| 4 | `theorem` | [of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/of-ne-zero--8740513cfe693a3d6c39766a.md) | 78 | `result-track:8740513cfe693a3d6c39766a09d488697c8751b864dc647ce3a59558714d967a` |
| 5 | `theorem` | [zero_ne_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/zero-ne-of--bd554c1e8ed822fb7ad2989d.md) | 81 | `result-track:bd554c1e8ed822fb7ad2989dd8e267bd2a8e5c3868cbd232ab99347e2d0ecff7` |
| 6 | `theorem` | [of_ne_one](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/of-ne-one--ebe04c508a06f2e48ee618ae.md) | 84 | `result-track:ebe04c508a06f2e48ee618aebb7d7e09360cfcedd646e5ac41ed10a973162b84` |
| 7 | `theorem` | [one_ne_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/one-ne-of--b68e73d6bf384baa7dfd0f98.md) | 87 | `result-track:b68e73d6bf384baa7dfd0f98816217a7399630caaffb4217b204c599201a3d53` |
| 8 | `theorem` | [induction_on](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/induction-on--00368294ad9d8e22642364ae.md) | 90 | `result-track:00368294ad9d8e22642364ae36d3630240b552d00285d096aec16ad547e1e818` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/lift--fceb658a8e2b33957df69f49.md) | 113 | `declaration-track:fceb658a8e2b33957df69f499ded448c986774e1535ae2c3e9f6a66e779cd3c6` |
| 10 | `theorem` | [lift_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/lift-of--f933f318a5c83ec29bd0bc58.md) | 117 | `result-track:f933f318a5c83ec29bd0bc58419986a89183a70b1f095e32d61fefdc17fc5db7` |
| 11 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/lift-comp-of--2ffa0ed2238022e26eb7fdbe.md) | 121 | `result-track:2ffa0ed2238022e26eb7fdbef44d7499aa031f6b3cf986006ac8643825275c38` |
| 12 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/hom-ext--3039efe573460f12d4ab09fe.md) | 125 | `result-track:3039efe573460f12d4ab09fe0b017a0c197950931ff781309d5f5ac674aa150e` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/map--2c2df9c2bda9dbc9bfc2c7e0.md) | 133 | `declaration-track:2c2df9c2bda9dbc9bfc2c7e0dd0ea6bbfd6b3691b3224848153411f1a54c3b7d` |
| 14 | `theorem` | [map_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variant930e4dd1745ac42ef4d8607012505b480b2bf4bb9a5e8c9bbd095bc7fdf4849c.lean/declarations/map-of--fa19a3329cfbe0f49cffea2f.md) | 137 | `result-track:fa19a3329cfbe0f49cffea2f6a410fd9b85f85b899de4984bdb904361eee13ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
