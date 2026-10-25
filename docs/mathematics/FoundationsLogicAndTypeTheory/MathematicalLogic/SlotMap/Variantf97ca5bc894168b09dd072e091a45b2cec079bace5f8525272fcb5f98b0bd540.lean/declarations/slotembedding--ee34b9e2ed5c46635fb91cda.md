# SlotEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a688c014b451b2934f571ac5f12086743fbd8da7adedd29ee673e2081f45c05a",
  "kind": "structure",
  "lexical_name": "SlotEmbedding",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "slotembedding--ee34b9e2ed5c46635fb91cda",
  "source": {
    "blob": "4cf568c57a612479d2b3d188d56de22a3f8a8b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee34b9e2ed5c46635fb91cdaf14efec3daf07b54399aacba1472625223a2ef63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a688c014b451b2934f571ac5f12086743fbd8da7adedd29ee673e2081f45c05a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SlotEmbedding (n S : Nat) where
  encode : Fin n → Fin S
  decode : Fin S → Option (Fin n)
  leftInverse : ∀ i, decode (encode i) = some i
  rightExact : ∀ s i, decode s = some i → encode i = s

namespace SlotEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf568c57a612479d2b3d188d56de22a3f8a8b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
