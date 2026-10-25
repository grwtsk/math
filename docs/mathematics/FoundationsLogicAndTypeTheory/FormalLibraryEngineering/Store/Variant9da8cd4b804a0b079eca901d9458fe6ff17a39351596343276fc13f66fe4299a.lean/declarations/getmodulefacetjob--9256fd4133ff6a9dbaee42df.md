# getModuleFacetJob?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a2f75041557894952e4faab97ef33b963a4432846a31ac3369a65e6d6edc9f2",
  "kind": "def",
  "lexical_name": "getModuleFacetJob?",
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
  "slug": "getmodulefacetjob--9256fd4133ff6a9dbaee42df",
  "source": {
    "blob": "296c97835c8033cbb97f46acc959871c2495e141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Variant9da8cd4b804a0b079eca901d9458fe6ff17a39351596343276fc13f66fe4299a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9256fd4133ff6a9dbaee42df66d24bc29980cf27cebf8c4d4932d6a0bfd60a64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Variant9da8cd4b804a0b079eca901d9458fe6ff17a39351596343276fc13f66fe4299a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a2f75041557894952e4faab97ef33b963a4432846a31ac3369a65e6d6edc9f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getModuleFacetJob? (facet : Name) [FamilyOut FacetOut facet α]
    (k : BuildKey) (v : Job (BuildData k)) : Option (Name × Job α) :=
  match k with
  | .moduleFacet m f
  | .packageModuleFacet p m f =>
    if h : f = facet then
      have of_data := by unfold BuildData; simp [h]
      some (m, cast of_data v)
    else none
  | _ => none

set_option linter.deprecated false in
/-- Derive an array of built module facets from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Variant9da8cd4b804a0b079eca901d9458fe6ff17a39351596343276fc13f66fe4299a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Variant9da8cd4b804a0b079eca901d9458fe6ff17a39351596343276fc13f66fe4299a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `296c97835c8033cbb97f46acc959871c2495e141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
