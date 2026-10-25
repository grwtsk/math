# UInt8.shiftLeft_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:623f8696-f1c9-e70d-2c47-9277b5278b44",
  "kind": "theorem",
  "lexical_name": "UInt8.shiftLeft_add",
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
  "slug": "uint8-shiftleft-add--eba8e9b4a38dd8d5b1ef0eff",
  "source": {
    "blob": "953c76aafa58f2eff15d79168b4d1db02fb9d02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1208,
    "line": 1202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant17147c13eb12fa276ad6a75d50c06c0d6506f537b969747edeea4186fe2a66e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eba8e9b4a38dd8d5b1ef0eff66fcba509675e2d578066ce6e06f9ac72ea9414a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant17147c13eb12fa276ad6a75d50c06c0d6506f537b969747edeea4186fe2a66e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623f8696-f1c9-e70d-2c47-9277b5278b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1202–1208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UInt8.shiftLeft_add {a b c : UInt8} (hb : b < 8) (hc : c < 8) (hbc : b + c < 8) :
    a <<< (b + c) = (a <<< b) <<< c := by
  apply UInt8.shiftLeft_add_of_toNat_lt
  have hb : b.toNat < 8 := by simpa [lt_iff_toNat_lt] using hb
  have hc : c.toNat < 8 := by simpa [lt_iff_toNat_lt] using hc
  simp only [lt_iff_toNat_lt, UInt8.toNat_add, Nat.reducePow, UInt8.reduceToNat] at hbc
  rwa [Nat.mod_eq_of_lt (by omega)] at hbc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant17147c13eb12fa276ad6a75d50c06c0d6506f537b969747edeea4186fe2a66e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant17147c13eb12fa276ad6a75d50c06c0d6506f537b969747edeea4186fe2a66e0.lean#L1202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `953c76aafa58f2eff15d79168b4d1db02fb9d02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
