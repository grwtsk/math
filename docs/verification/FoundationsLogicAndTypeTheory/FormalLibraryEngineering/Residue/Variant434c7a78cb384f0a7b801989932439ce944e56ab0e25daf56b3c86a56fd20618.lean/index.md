# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residue.Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8e08b9e4ca65a7d4c586f610b59a1cc39677ece",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8e08b9e4ca65a7d4c586f610b59a1cc39677ece`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Residue3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3--2e5fe80488966f30778bda6f.md) | 15 | `declaration-track:2e5fe80488966f30778bda6f733e84d9a5c3611e2382f640401a014220a7304f` |
| 2 | `def` | [Residue3.reflect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-reflect--7af61ee19519ba394ecdcf25.md) | 21 | `declaration-track:7af61ee19519ba394ecdcf25905e973a745d2f697da2af8129e9a63800a5c743` |
| 3 | `def` | [Residue3.Safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-safe--94597f7d77e0cdbc1caf52a3.md) | 27 | `declaration-track:94597f7d77e0cdbc1caf52a3af48296165a67fffec1c311034160e166a0bab40` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/instance--8d9c70e4685e19d639505ebe.md) | 33 | `declaration-track:8d9c70e4685e19d639505ebe0b0585fb478e7ac9cfd5a5188477ba26d289cd00` |
| 5 | `def` | [Residue3.value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-value--d3760da99fd21c9c704987df.md) | 39 | `declaration-track:d3760da99fd21c9c704987df06406b475b414f9a6d850958ecac7638d97e2f15` |
| 6 | `theorem` | [residue3_reflect_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-reflect-involutive--8fb9137cb29b080b65687a8a.md) | 45 | `result-track:8fb9137cb29b080b65687a8af2d33e1b50cc651f28ef381e102de7e21a4315d9` |
| 7 | `theorem` | [residue3_reflect_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-reflect-preserves-safe--d01d4103a07192d18e083e41.md) | 51 | `result-track:d01d4103a07192d18e083e4173255e41b360e938b6576a946dbd16647685148d` |
| 8 | `theorem` | [residue3_zero_fixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-zero-fixed--c49007d32e0d584b067a67cc.md) | 59 | `result-track:c49007d32e0d584b067a67cc5897cd02ab43924c08afb0ccd4f4cfae2e2cc7d9` |
| 9 | `theorem` | [residue3_safe_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-safe-ne-zero--ba3afc3758ec604aa49b8a3f.md) | 64 | `result-track:ba3afc3758ec604aa49b8a3fd50e90e3cbc3425d16b776f968a640ea8c939869` |
| 10 | `theorem` | [residue3_reflect_value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant434c7a78cb384f0a7b801989932439ce944e56ab0e25daf56b3c86a56fd20618.lean/declarations/residue3-reflect-value--6cd88cc9b8afa4e869b6bef8.md) | 72 | `result-track:6cd88cc9b8afa4e869b6bef88f2e883ebe5e874ebc5a400fe6f261b20ba2716e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
