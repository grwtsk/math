# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gluing.Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc1e72fa7ca8a3787afff396b79dcee191f44e8b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc1e72fa7ca8a3787afff396b79dcee191f44e8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Knowledge.Sheaf.Presheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/declarations/matching--0e64d830b9ab68c6e112f368.md) | 15 | `declaration-track:0e64d830b9ab68c6e112f368ca491d746d7f040e17060fd667b1c9fca9eeb43b` |
| 2 | `def` | [Glues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/declarations/glues--cf4c12cec1db678d00eb3c59.md) | 24 | `declaration-track:cf4c12cec1db678d00eb3c591c60667ca3a51b7df2782c2f14f8ee202fc08883` |
| 3 | `structure` | [GluingCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/declarations/gluingcertificate--ea623a206f109df82500e2ed.md) | 32 | `declaration-track:ea623a206f109df82500e2ed8d3bfb6f14f1bd46a7591e244be1d1dd200e64b6` |
| 4 | `def` | [ExistsUniqueGluing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/declarations/existsuniquegluing--40179ca542fbe09776563860.md) | 42 | `declaration-track:40179ca542fbe0977656386045fe720faf1e64d67711dc59945febd19730bdb5` |
| 5 | `theorem` | [gluing_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c.lean/declarations/gluing-sound--3ff672430dfea845b5e59eeb.md) | 50 | `result-track:3ff672430dfea845b5e59eeb8121973a79f445cf8b38353a91bf1ab22a7432a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
