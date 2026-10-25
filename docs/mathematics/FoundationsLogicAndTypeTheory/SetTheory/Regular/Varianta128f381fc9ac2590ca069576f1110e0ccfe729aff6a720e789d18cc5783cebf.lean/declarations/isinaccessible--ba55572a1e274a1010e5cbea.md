# IsInaccessible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2ca3bf1f56ecfc48e2b7503a328c0c41f22415391f2e7d5e0eae282a968b318",
  "kind": "structure",
  "lexical_name": "IsInaccessible",
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
  "slug": "isinaccessible--ba55572a1e274a1010e5cbea",
  "source": {
    "blob": "06d4c721dfda24c9d1d07a3bfcd2ca9afc3b893f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba55572a1e274a1010e5cbea8c199ca3447749fd5240f57473bff2d198759ec7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2ca3bf1f56ecfc48e2b7503a328c0c41f22415391f2e7d5e0eae282a968b318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsInaccessible (c : Cardinal) : Prop where
  /-- An inaccessible cardinal is uncountable. -/
  aleph0_lt : ℵ₀ < c
  /-- An inaccessible cardinal is equal to its own cofinality, see `IsInaccessible.isRegular`. -/
  le_cof_ord : c ≤ c.ord.cof
  /-- An inaccessible cardinal is a strong limit, see `IsInaccessible.isStrongLimit`. -/
  protected isStrongPrelimit : IsStrongPrelimit c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d4c721dfda24c9d1d07a3bfcd2ca9afc3b893f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
