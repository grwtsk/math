# mkGateCached_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddef402dad09691fc44b0f14aa35f17e8797daff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:029d5fe8-341d-b1b6-bc69-33d5761dd523",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55cc98b2-bcc3-f38c-c450-67d1d2209444",
  "kind": "theorem",
  "lexical_name": "mkGateCached_decl_eq",
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
  "slug": "mkgatecached-decl-eq--55c3fea2fc711396ccebe3b7",
  "source": {
    "blob": "ddef402dad09691fc44b0f14aa35f17e8797daff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55c3fea2fc711396ccebe3b7234f9df5b9a18127211582e2e55fcd0cad3125f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55cc98b2-bcc3-f38c-c450-67d1d2209444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkGateCached_decl_eq (aig : AIG α) (input : BinaryInput aig) :
    ∀ (idx : Nat) (h1) (h2), (aig.mkGateCached input).aig.decls[idx]'h1 = aig.decls[idx]'h2 := by
    generalize hres : mkGateCached aig input = res
    unfold mkGateCached at hres
    dsimp only at hres
    split at hres
    all_goals
      rw [← hres]
      intros
      rw [mkGateCached.go_decl_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddef402dad09691fc44b0f14aa35f17e8797daff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
