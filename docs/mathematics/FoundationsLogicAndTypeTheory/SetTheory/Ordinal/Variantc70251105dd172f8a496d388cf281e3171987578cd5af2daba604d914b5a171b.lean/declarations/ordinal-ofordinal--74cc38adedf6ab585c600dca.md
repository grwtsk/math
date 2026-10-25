# ordinal_ofOrdinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b86b9b4e-e0d4-5e83-3aad-975d95b70f41",
  "kind": "theorem",
  "lexical_name": "ordinal_ofOrdinal",
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
  "slug": "ordinal-ofordinal--74cc38adedf6ab585c600dca",
  "source": {
    "blob": "830406f14a4e1cd9ae841412254a2369bebf4dec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74cc38adedf6ab585c600dca3556da5ec6e3122f8b8fa250e6605f65822e6fd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86b9b4e-e0d4-5e83-3aad-975d95b70f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinal_ofOrdinal {f : Fin Char.numCodePoints} : (Char.ofOrdinal f).ordinal = f := by
  ext
  simp [coe_ordinal, val_ofOrdinal]
  split
  · rw [if_pos, UInt32.toNat_ofNatLT]
    simpa [UInt32.lt_iff_toNat_lt]
  · rw [if_neg, UInt32.toNat_add, UInt32.toNat_ofNatLT, UInt32.toNat_ofNatLT, Nat.mod_eq_of_lt,
      Nat.add_sub_cancel]
    · grind
    · simp only [UInt32.lt_iff_toNat_lt, UInt32.toNat_add, UInt32.toNat_ofNatLT, Nat.reducePow,
        UInt32.reduceToNat, Nat.not_lt]
      grind

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830406f14a4e1cd9ae841412254a2369bebf4dec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
