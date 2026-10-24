# IsFiltered.of_exists_of_isFiltered_of_fullyFaithful

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
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:690ae2e7-9d34-6a81-5e0a-e4735b047777",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d73dae7-acad-f5e9-6934-c96565c7c627",
  "kind": "theorem",
  "lexical_name": "IsFiltered.of_exists_of_isFiltered_of_fullyFaithful",
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
  "slug": "isfiltered-of-exists-of-isfiltered-of-fullyfaithful--320c911097ab522c9b4441a5",
  "source": {
    "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:320c911097ab522c9b4441a5684da22224cf132d73f869b523aa88c1ff4182af",
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

Occurrence: `result:4d73dae7-acad-f5e9-6934-c96565c7c627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFiltered.of_exists_of_isFiltered_of_fullyFaithful [IsFiltered D] [F.Full] [F.Faithful]
    (h : ∀ d, ∃ c, Nonempty (d ⟶ F.obj c)) : IsFiltered C :=
  { IsFilteredOrEmpty.of_exists_of_isFiltered_of_fullyFaithful F h with
    nonempty := by
      have : Nonempty D := IsFiltered.nonempty
      obtain ⟨c, -⟩ := h (Classical.arbitrary D)
      exact ⟨c⟩ }

/-- In this situation, `F` is also initial, see
    `Functor.initial_of_exists_of_isCofiltered_of_fullyFaithful`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
