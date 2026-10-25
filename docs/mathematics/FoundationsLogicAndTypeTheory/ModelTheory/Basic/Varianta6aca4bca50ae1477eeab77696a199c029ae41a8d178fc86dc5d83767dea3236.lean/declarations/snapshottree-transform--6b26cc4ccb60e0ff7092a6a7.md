# SnapshotTree.transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a5c33604667a839c2fce716ad27abb3adb9d5a5330bd72fb9c7dc8745c17597",
  "kind": "def",
  "lexical_name": "SnapshotTree.transform",
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
  "slug": "snapshottree-transform--6b26cc4ccb60e0ff7092a6a7",
  "source": {
    "blob": "4a579f0cb536096f0815bd245a64a8151f01937f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b26cc4ccb60e0ff7092a6a7b7b4e7a89dda8dcf295b6fd81a67e40799b28957",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a5c33604667a839c2fce716ad27abb3adb9d5a5330bd72fb9c7dc8745c17597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def SnapshotTree.transform (t : SnapshotTree) : ToSnapshotTreeM SnapshotTree := do
  if (← read).isIdentity then
    return t
  let element ← Snapshot.transform t.element
  let trans ← read
  let children := t.children.map (·.map (sync := true) (·.transform trans))
  return { element, children }

/--
  Helper class for projecting a heterogeneous hierarchy of snapshot classes to a homogeneous
  representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Varianta6aca4bca50ae1477eeab77696a199c029ae41a8d178fc86dc5d83767dea3236.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a579f0cb536096f0815bd245a64a8151f01937f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
