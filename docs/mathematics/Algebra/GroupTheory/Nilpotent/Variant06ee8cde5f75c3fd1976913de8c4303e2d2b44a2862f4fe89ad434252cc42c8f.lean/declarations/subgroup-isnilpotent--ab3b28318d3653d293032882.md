# Subgroup.isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3700456b47a97c6e24a8efe10de29175d7bfe3ec2ab8981ab1214f0f10cdad6",
  "kind": "instance",
  "lexical_name": "Subgroup.isNilpotent",
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
  "slug": "subgroup-isnilpotent--ab3b28318d3653d293032882",
  "source": {
    "blob": "1408797175d66cebe86309621d6063bfdcba86d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 459,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab3b28318d3653d293032882d63bbec224cf69d8484080b5962c3dc13f5b5748",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3700456b47a97c6e24a8efe10de29175d7bfe3ec2ab8981ab1214f0f10cdad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subgroup.isNilpotent (H : Subgroup G) [hG : IsNilpotent G] : IsNilpotent H := by
  rw [nilpotent_iff_lowerCentralSeries] at *
  rcases hG with ⟨n, hG⟩
  use n
  have := lowerCentralSeries_map_subtype_le H n
  simp only [hG, SetLike.le_def, mem_map, forall_apply_eq_imp_iff₂, exists_imp] at this
  exact eq_bot_iff.mpr fun x hx => Subtype.ext (this x ⟨hx, rfl⟩)
#align subgroup.is_nilpotent Subgroup.isNilpotent

/-- The nilpotency class of a subgroup is less or equal to the nilpotency class of the group -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1408797175d66cebe86309621d6063bfdcba86d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
