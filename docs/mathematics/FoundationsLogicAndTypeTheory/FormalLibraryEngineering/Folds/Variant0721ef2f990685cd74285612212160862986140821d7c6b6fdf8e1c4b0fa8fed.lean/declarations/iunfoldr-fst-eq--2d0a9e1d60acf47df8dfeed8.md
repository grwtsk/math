# iunfoldr.fst_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d493ec0a45ab072cabb2688f32b178ffed78d62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d8c9459-bd1e-f9a3-a221-a6e5a394bb64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb5fa546-6ecf-8867-0127-d4b5edbba6c5",
  "kind": "theorem",
  "lexical_name": "iunfoldr.fst_eq",
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
  "slug": "iunfoldr-fst-eq--2d0a9e1d60acf47df8dfeed8",
  "source": {
    "blob": "7d493ec0a45ab072cabb2688f32b178ffed78d62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0a9e1d60acf47df8dfeed8f288bd2f5b9cb31b4735c5865fc07b37f7e755e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb5fa546-6ecf-8867-0127-d4b5edbba6c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iunfoldr.fst_eq
    {f : Fin w → α → α × Bool} (state : Nat → α) (s : α)
    (init : s = state 0)
    (ind : ∀(i : Fin w), (f i (state i.val)).fst = state (i.val+1)) :
    (iunfoldr f s).fst = state w := by
  unfold iunfoldr
  apply Fin.hIterate_elim (fun i (p : α × BitVec i) => p.fst = state i)
  case init =>
    exact init
  case step =>
    intro i ⟨s, v⟩ p
    simp_all [ind i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d493ec0a45ab072cabb2688f32b178ffed78d62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
