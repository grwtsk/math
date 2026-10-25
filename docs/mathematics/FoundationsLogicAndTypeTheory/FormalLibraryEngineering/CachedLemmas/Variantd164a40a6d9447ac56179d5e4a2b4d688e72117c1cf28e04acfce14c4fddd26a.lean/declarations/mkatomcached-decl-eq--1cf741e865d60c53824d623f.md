# mkAtomCached_decl_eq

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
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2fd8444-cf4c-5a8e-5bd2-aa541fb37875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3d95e8-a68d-19af-4c85-b4db44c712c3",
  "kind": "theorem",
  "lexical_name": "mkAtomCached_decl_eq",
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
  "slug": "mkatomcached-decl-eq--1cf741e865d60c53824d623f",
  "source": {
    "blob": "ddef402dad09691fc44b0f14aa35f17e8797daff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cf741e865d60c53824d623f2936665a07844e478e2481c914138134c4b2f7f7",
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

Occurrence: `result:9c3d95e8-a68d-19af-4c85-b4db44c712c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkAtomCached_decl_eq (aig : AIG α) (var : α) (idx : Nat) {h : idx < aig.decls.size}
    {hbound} :
    (aig.mkAtomCached var).aig.decls[idx]'hbound = aig.decls[idx] := by
  match hcache : aig.cache.get? (.atom var) with
  | some gate =>
    have := mkAtomCached_hit_aig aig hcache
    simp [this]
  | none =>
    have := mkAtomCached_miss_aig aig hcache
    simp only [this, Array.getElem_push]
    split
    · rfl
    · contradiction

/--
`AIG.mkAtomCached` never shrinks the underlying AIG.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddef402dad09691fc44b0f14aa35f17e8797daff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
