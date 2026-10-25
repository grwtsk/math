# enumIsoToType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84b0eff356e99cca46a6930bf79b02ace8758af2b19de2cb1148c288af8f65c8",
  "kind": "def",
  "lexical_name": "enumIsoToType",
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
  "slug": "enumisototype--85f0d0a7003ee335bcf517aa",
  "source": {
    "blob": "f345e2cd8affcf743aac9ae9e89edaa06a23797b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85f0d0a7003ee335bcf517aabaff2026e1e36833a39124a2ee1c52263114972e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84b0eff356e99cca46a6930bf79b02ace8758af2b19de2cb1148c288af8f65c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def enumIsoToType (o : Ordinal) : Set.Iio o ≃o o.toType where
  toFun x := enum (α := o.toType) (· < ·) ⟨x.1, type_toType _ ▸ x.2⟩
  invFun x := ⟨typein (α := o.toType) (· < ·) x, typein_lt_self x⟩
  left_inv _ := Subtype.ext_val (typein_enum _ _)
  right_inv _ := enum_typein _ _
  map_rel_iff' := enum_le_enum' _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f345e2cd8affcf743aac9ae9e89edaa06a23797b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
