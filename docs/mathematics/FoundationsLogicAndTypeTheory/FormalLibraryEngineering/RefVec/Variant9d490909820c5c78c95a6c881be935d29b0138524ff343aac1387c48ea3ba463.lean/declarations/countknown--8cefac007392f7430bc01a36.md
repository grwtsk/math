# countKnown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d14edef2f9ef3dff81fbb4127dc56d5d10834128d72b4fc65cc37fcd7d3cf8e",
  "kind": "def",
  "lexical_name": "countKnown",
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
  "slug": "countknown--8cefac007392f7430bc01a36",
  "source": {
    "blob": "ccda6e5309c5ee6482133e8366b69051553b998f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cefac007392f7430bc01a36380d62c95c887d87a6989176f2b19e476695f728",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d14edef2f9ef3dff81fbb4127dc56d5d10834128d72b4fc65cc37fcd7d3cf8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def countKnown (aig : AIG α) (s : RefVec aig len) : Nat :=
  go aig s 0 0
where
  go (aig : AIG α) (s : RefVec aig len) (idx : Nat) (acc : Nat) : Nat :=
    if h : idx < len then
      let ref := s.refs[idx]
      let decl := aig.decls[ref.gate]'(s.hrefs h)
      match decl with
      | .false => go aig s (idx + 1) (acc + 1)
      | _ => go aig s (idx + 1) acc
    else
      acc

end RefVec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccda6e5309c5ee6482133e8366b69051553b998f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
