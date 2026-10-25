# denote_blastExtract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb8ae634d588e9ba89bdb9dd8a74a362e617e835",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5d30cc6-977e-290b-a9d9-ad19e6e22bf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f757fa29-dfb3-5ab2-df67-9887e592bd9c",
  "kind": "theorem",
  "lexical_name": "denote_blastExtract",
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
  "slug": "denote-blastextract--43485847c44c7b81b288f743",
  "source": {
    "blob": "bb8ae634d588e9ba89bdb9dd8a74a362e617e835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43485847c44c7b81b288f7433d1e7cd6c0144886b90c72a6b827b600a23eaec8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f757fa29-dfb3-5ab2-df67-9887e592bd9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastExtract (aig : AIG α) (target : ExtractTarget aig newWidth)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < newWidth),
        ⟦(blastExtract aig target).aig, (blastExtract aig target).vec.get idx hidx, assign⟧
          =
        if h : (target.start + idx) < target.w then
          ⟦aig, target.vec.get (target.start + idx) h, assign⟧
        else
          false
    := by
  intro idx hidx
  generalize hextract : blastExtract aig target = res
  rcases target with ⟨input, start⟩
  dsimp only
  unfold blastExtract at hextract
  dsimp only at hextract
  · rw [← hextract]
    rw [blastExtract.go_get]
    · dsimp only
      split
      · rw [RefVec.get_in_bound]
      · rw [RefVec.get_out_bound]
        · simp
        · omega
    · omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8ae634d588e9ba89bdb9dd8a74a362e617e835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
