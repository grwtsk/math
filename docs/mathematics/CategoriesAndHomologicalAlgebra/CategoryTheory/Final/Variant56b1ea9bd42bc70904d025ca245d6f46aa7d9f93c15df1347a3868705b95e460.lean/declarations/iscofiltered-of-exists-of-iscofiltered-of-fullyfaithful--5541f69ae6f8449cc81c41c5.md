# IsCofiltered.of_exists_of_isCofiltered_of_fullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c687d230-07bf-9271-30d4-b91429f5cafe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bec2ff1c-0f73-d8a1-88e2-0bd64b2fdffd",
  "kind": "theorem",
  "lexical_name": "IsCofiltered.of_exists_of_isCofiltered_of_fullyFaithful",
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
  "slug": "iscofiltered-of-exists-of-iscofiltered-of-fullyfaithful--5541f69ae6f8449cc81c41c5",
  "source": {
    "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5541f69ae6f8449cc81c41c54e53defc4a8aa0499cbcdf3332faa62db23b42ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bec2ff1c-0f73-d8a1-88e2-0bd64b2fdffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCofiltered.of_exists_of_isCofiltered_of_fullyFaithful [IsCofiltered D] [F.Full]
    [F.Faithful] (h : ∀ d, ∃ c, Nonempty (F.obj c ⟶ d)) : IsCofiltered C :=
  { IsCofilteredOrEmpty.of_exists_of_isCofiltered_of_fullyFaithful F h with
    nonempty := by
      have : Nonempty D := IsCofiltered.nonempty
      obtain ⟨c, -⟩ := h (Classical.arbitrary D)
      exact ⟨c⟩ }

/-- In this situation, `C` is also filtered, see
    `IsFilteredOrEmpty.of_exists_of_isFiltered_of_fullyFaithful`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
