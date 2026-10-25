# ExtensionState.erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1229a6574ec83ebc7063f93d9b1e5bf3a8399d47756b2880f4d1dc6f464b9a9",
  "kind": "def",
  "lexical_name": "ExtensionState.erase",
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
  "slug": "extensionstate-erase--32355c8de5f379cb1fa6f64b",
  "source": {
    "blob": "a9aa80b629ccb1e2a6ba2b937b4c38e8854c8b1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KeyedDeclsAttribute/Variant945bbf33346b549166f2c922bdd4862884dcbd95e1d506de488d74ff6af3a04c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32355c8de5f379cb1fa6f64bc998ba88a93ebccd2cae3ee9d534bcbc4c5b88a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KeyedDeclsAttribute/Variant945bbf33346b549166f2c922bdd4862884dcbd95e1d506de488d74ff6af3a04c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1229a6574ec83ebc7063f93d9b1e5bf3a8399d47756b2880f4d1dc6f464b9a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExtensionState.erase (s : ExtensionState γ) (attrName : Name) (declName : Name) : CoreM (ExtensionState γ) := do
  unless s.declNames.contains declName do
    throwError "Cannot erase attribute `{attrName}`: `{.ofConstName declName}` does not have this attribute"
  return { s with erased := s.erased.insert declName, declNames := s.declNames.erase declName }

/-- safety: requires that `mkConst df.valueTypeName _` and `γ` are definitionally equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KeyedDeclsAttribute/Variant945bbf33346b549166f2c922bdd4862884dcbd95e1d506de488d74ff6af3a04c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KeyedDeclsAttribute/Variant945bbf33346b549166f2c922bdd4862884dcbd95e1d506de488d74ff6af3a04c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9aa80b629ccb1e2a6ba2b937b4c38e8854c8b1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
