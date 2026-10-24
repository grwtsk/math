# fixedPoints_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39ccdf2bf0b33c37541e2d10a5d9852fdf368621",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f95cb96-28ef-c00b-fac0-dd19f9057912",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de8aea19-b4bd-5f3c-c101-17cfd1618378",
  "kind": "theorem",
  "lexical_name": "fixedPoints_antitone",
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
  "slug": "fixedpoints-antitone--64a7ff81055477bbdb8f6447",
  "source": {
    "blob": "39ccdf2bf0b33c37541e2d10a5d9852fdf368621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a7ff81055477bbdb8f644702d5e5b01ec5a7c0cfaf07264d666bc0a190e457",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de8aea19-b4bd-5f3c-c101-17cfd1618378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPoints_antitone : Antitone fun P : Submonoid M => fixedPoints P α :=
  (fixingSubmonoid_fixedPoints_gc M α).monotone_u.dual_left

/-- Fixing submonoid of union is intersection -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ccdf2bf0b33c37541e2d10a5d9852fdf368621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
