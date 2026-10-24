# mapIdxMGo_eq_mapIdxMAuxSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:213ab2a6-6311-ae71-808a-b6755f7cdb63",
  "kind": "theorem",
  "lexical_name": "mapIdxMGo_eq_mapIdxMAuxSpec",
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
  "slug": "mapidxmgo-eq-mapidxmauxspec--d08f99d333713b08dddc59ee",
  "source": {
    "blob": "68ff6df863d0de4c8f5ee9b5f6c16c2b54511316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 318,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08f99d333713b08dddc59ee66def772fd99213938c30e0daa09150c7ab9b4cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:213ab2a6-6311-ae71-808a-b6755f7cdb63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapIdxMGo_eq_mapIdxMAuxSpec {α β} (f : ℕ → α → m β) (arr : Array β) (as : List α) :
    mapIdxM.go f as arr = (arr.toList ++ ·) <$> mapIdxMAuxSpec f arr.size as := by
  generalize e : as.length = len
  revert as arr
  induction' len with len ih <;> intro arr as h
  · have : as = [] := by cases as; rfl; contradiction
    simp only [this, mapIdxM.go, mapIdxMAuxSpec, List.traverse, map_pure, append_nil]
  · match as with
    | nil => contradiction
    | cons head tail =>
      simp only [length_cons, Nat.succ.injEq] at h
      simp only [mapIdxM.go, mapIdxMAuxSpec_cons, map_eq_pure_bind, seq_eq_bind_map,
        LawfulMonad.bind_assoc, pure_bind]
      congr
      conv => { lhs; intro x; rw [ih _ _ h]; }
      funext x
      simp only [Array.toList_eq, Array.push_data, append_assoc, singleton_append, Array.size_push,
        map_eq_pure_bind]
#align list.mmap_with_index_aux_eq_mmap_with_index_aux_spec List.mapIdxMGo_eq_mapIdxMAuxSpec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68ff6df863d0de4c8f5ee9b5f6c16c2b54511316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
