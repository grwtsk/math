# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gluing.Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42874e7a2d51b82d92f77462ca38e941ccc4ac59",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42874e7a2d51b82d92f77462ca38e941ccc4ac59`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Knowledge.Sheaf.Presheaf` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/declarations/matching--758448b82737b14302181046.md) | 7 | `declaration-track:758448b82737b14302181046c40b1adb1acee89f8fbd22433cc9f6d2f0dcfc19` |
| 2 | `def` | [Glues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/declarations/glues--b10be576c4920670c6c55b9a.md) | 16 | `declaration-track:b10be576c4920670c6c55b9acf328a39a430493b99fbc592dbb9f3b962b2f24e` |
| 3 | `structure` | [GluingCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/declarations/gluingcertificate--5b7d97eedbfec8d674848ba1.md) | 24 | `declaration-track:5b7d97eedbfec8d674848ba1224e4e0d649ca56297ea739f5dc4d7bff755289b` |
| 4 | `def` | [ExistsUniqueGluing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/declarations/existsuniquegluing--571539d4bc81f3f154d52452.md) | 34 | `declaration-track:571539d4bc81f3f154d52452176b3cae63996694d4f067b79dc1b73f363a9f39` |
| 5 | `theorem` | [gluing_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0.lean/declarations/gluing-sound--f765b5727c0528e4d0c80673.md) | 42 | `result-track:f765b5727c0528e4d0c806732cfe89da11bbe3aa4319949d415e3fe777b75a9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
