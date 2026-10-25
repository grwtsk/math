# SatisfiesM_StateT_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb597c66af089955a21c65e57166b9c06e60d34c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cce274ee-4170-00e5-ea41-bcf6595712a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2549f6c9-82d6-2232-f6d1-917835ea2c8d",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_StateT_eq",
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
  "slug": "satisfiesm-statet-eq--c919eea09830c39b5b82fb86",
  "source": {
    "blob": "fb597c66af089955a21c65e57166b9c06e60d34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c919eea09830c39b5b82fb867ab9c17744cd482c6b61f46213dd7cfb3a05ca69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2549f6c9-82d6-2232-f6d1-917835ea2c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_StateT_eq [Monad m] [LawfulMonad m] :
    SatisfiesM (m := StateT ρ m) (α := α) p x ↔ ∀ s, SatisfiesM (m := m) (p ·.1) (x.run s) := by
  change SatisfiesM (m := StateT ρ m) (α := α) p x ↔ ∀ s, SatisfiesM (m := m) (p ·.1) (x s)
  refine .trans ⟨fun ⟨f, eq⟩ => eq ▸ ?_, fun ⟨f, h⟩ => ?_⟩ Classical.skolem.symm
  · refine ⟨fun s => (fun ⟨⟨a, h⟩, s'⟩ => ⟨⟨a, s'⟩, h⟩) <$> f s, fun s => ?_⟩
    rw [← comp_map, map_eq_pure_bind]; rfl
  · refine ⟨fun s => (fun ⟨⟨a, s'⟩, h⟩ => ⟨⟨a, h⟩, s'⟩) <$> f s, funext fun s => ?_⟩
    show _ >>= _ = _; simp [← h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb597c66af089955a21c65e57166b9c06e60d34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
