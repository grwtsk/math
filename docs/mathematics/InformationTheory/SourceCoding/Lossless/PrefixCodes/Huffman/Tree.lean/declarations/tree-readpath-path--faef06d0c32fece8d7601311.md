# Tree.readPath_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae69fe79-56f3-d108-1da6-57f70b0dd94e",
  "kind": "theorem",
  "lexical_name": "Tree.readPath_path",
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
  "slug": "tree-readpath-path--faef06d0c32fece8d7601311",
  "source": {
    "blob": "af50e9445a35ab06b4f42bc9b0991a39289c5c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 57,
    "path": "GRWTSK/InformationTheory/Huffman/Tree.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faef06d0c32fece8d76013117b1ef427528817e3cb188f2052fdef4384b7539a",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae69fe79-56f3-d108-1da6-57f70b0dd94e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tree.readPath_path (tree : Tree) (a : UInt8)
    (bits tail : List Bool) (h : tree.path a = some bits) :
    tree.readPath (bits ++ tail) = some (a, tail) := by
  induction tree generalizing bits tail with
  | leaf b =>
    simp only [Tree.path] at h
    split at h
    · rename_i hab
      subst a
      cases h
      rfl
    · simp at h
  | branch left right ihl ihr =>
    simp only [Tree.path] at h
    cases hl : left.path a with
    | some path =>
      simp only [hl] at h
      cases h
      simpa [Tree.readPath] using ihl path tail hl
    | none =>
      simp only [hl] at h
      cases hr : right.path a with
      | none => simp [hr] at h
      | some path =>
        simp only [hr, Option.map_some] at h
        cases h
        simpa [Tree.readPath] using ihr path tail hr

/-- A singleton alphabet gets the explicit one-bit word false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/Tree.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af50e9445a35ab06b4f42bc9b0991a39289c5c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
