# le_enum_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27195355-f53a-0db4-c7a6-80ad6c48e878",
  "kind": "theorem",
  "lexical_name": "le_enum_succ",
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
  "slug": "le-enum-succ--99e31f8a6d6844f50ff5d679",
  "source": {
    "blob": "8311c7c651cb769bc61c2371db584fcfec0b5d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 933,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant7ef8c159d042177b549200a075972ef330714b0c9582f31c64e4ff0009b0edf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e31f8a6d6844f50ff5d679c564462894d71ad68fa99e78aeedc82705d11e65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant7ef8c159d042177b549200a075972ef330714b0c9582f31c64e4ff0009b0edf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27195355-f53a-0db4-c7a6-80ad6c48e878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_enum_succ {o : Ordinal} (a : (succ o).toType) :
    a ≤ enum (α := (succ o).toType) (· < ·) ⟨o, (type_toType _ ▸ lt_succ o)⟩ := by
  rw [← enum_typein (α := (succ o).toType) (· < ·) a, enum_le_enum', Subtype.mk_le_mk,
    ← lt_succ_iff]
  apply typein_lt_self

/-! ### Universal ordinal -/

-- intended to be used with explicit universe parameters
/-- `univ.{u v}` is the order type of the ordinals of `Type u` as a member
  of `Ordinal.{v}` (when `u < v`). It is an inaccessible cardinal. -/
@[pp_with_univ, nolint checkUnivs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant7ef8c159d042177b549200a075972ef330714b0c9582f31c64e4ff0009b0edf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant7ef8c159d042177b549200a075972ef330714b0c9582f31c64e4ff0009b0edf0.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8311c7c651cb769bc61c2371db584fcfec0b5d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
