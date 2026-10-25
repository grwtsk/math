# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Separated.Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11adfe2905111f8bce6586f251b00d0859fdf664",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11adfe2905111f8bce6586f251b00d0859fdf664`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean.json)

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
| 1 | `def` | [IsSeparated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated--779b3ba73de3566321e7ae77.md) | 38 | `declaration-track:779b3ba73de3566321e7ae77e7c17a5fa867626a7a959f057ae9a5f305f27dae` |
| 2 | `lemma` | [IsSeparated.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-empty--ec0d31c89ecab605fcf344e2.md) | 40 | `result-track:ec0d31c89ecab605fcf344e2ce798580bced3e87abf11e7c2f90a8c82d12a132` |
| 3 | `lemma` | [IsSeparated.singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-singleton--0a5f241a8bd28eee7187c7a4.md) | 41 | `result-track:0a5f241a8bd28eee7187c7a44039b12518eb119b14d4101ae0aeb873b4423cbe` |
| 4 | `lemma` | [IsSeparated.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-of-subsingleton--85348ea17a30e7e414c47ccb.md) | 43 | `result-track:85348ea17a30e7e414c47ccb92bbeb4d839be5e49b6450a3a97071232d33a671` |
| 5 | `lemma` | [IsSeparated.mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-mono-left--9febfafc839d127b6763cdc7.md) | 47 | `result-track:9febfafc839d127b6763cdc7f7eaca2d9d0c1c05c21a4672c2b8371a50aaf0f8` |
| 6 | `lemma` | [IsSeparated.mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-mono-right--11bc5766608282769890a0f9.md) | 50 | `result-track:11bc5766608282769890a0f94ccdcffe9247b98c5d6a58f86ed3b9581cc9bfd6` |
| 7 | `lemma` | [isSeparated_insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-insert--c3af1bc771d29b1f9fe2081b.md) | 52 | `result-track:c3af1bc771d29b1f9fe2081bf5fac8ed945a5cbb2c0dddf64b1da05c3d3e9ea4` |
| 8 | `lemma` | [isSeparated_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-insert--aecf02e9a5c74c3992ca62ef.md) | 57 | `result-track:aecf02e9a5c74c3992ca62efa974545116cf4441f28634548d743e8e06e66502` |
| 9 | `lemma` | [isSeparated_insert_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-insert-of-notmem--5840c4b050db30f68676253a.md) | 62 | `result-track:5840c4b050db30f68676253aa8f9477cd475db4223a5bda4820e68a610859b78` |
| 10 | `lemma` | [IsSeparated.insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-insert--b752e7f5d0e28c9f5753251b.md) | 67 | `result-track:b752e7f5d0e28c9f5753251b3d92006712d4b5aa5a12c5016146810131d01aa6` |
| 11 | `lemma` | [IsSeparated.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810.lean/declarations/isseparated-insert--3928f5e907b45143511231e7.md) | 71 | `result-track:3928f5e907b45143511231e7ad34baa587b428147f0d5642e68e8675787cc990` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
