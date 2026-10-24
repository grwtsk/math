# Tree.path_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d7f9f2b-1f9e-7d06-c913-e02d4dff7684",
  "kind": "theorem",
  "lexical_name": "Tree.path_exists",
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
  "slug": "tree-path-exists--0af272c81f57a95cad45bb9d",
  "source": {
    "blob": "af50e9445a35ab06b4f42bc9b0991a39289c5c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 35,
    "path": "GRWTSK/InformationTheory/Huffman/Tree.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af272c81f57a95cad45bb9deaff5be941cbd30eda8f5a092ac9b50f7eff7b49",
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

Occurrence: `result:5d7f9f2b-1f9e-7d06-c913-e02d4dff7684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tree.path_exists (tree : Tree) (a : UInt8) :
    a ∈ tree.symbols → ∃ bits, tree.path a = some bits := by
  induction tree with
  | leaf b =>
    intro h
    have hab : a = b := by simpa [Tree.symbols] using h
    subst a
    exact ⟨[], by simp [Tree.path]⟩
  | branch left right ihl ihr =>
    intro h
    simp only [Tree.symbols, List.mem_append] at h
    cases hl : left.path a with
    | some bits => exact ⟨false :: bits, by simp [Tree.path, hl]⟩
    | none =>
      have hr : a ∈ right.symbols := by
        rcases h with h | h
        · obtain ⟨bits, hb⟩ := ihl h
          simp [hl] at hb
        · exact h
      obtain ⟨bits, hb⟩ := ihr hr
      exact ⟨true :: bits, by simp [Tree.path, hl, hb]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/Tree.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af50e9445a35ab06b4f42bc9b0991a39289c5c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
