# seq_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ddc570-35a4-062a-cfcc-9787854a721e",
  "kind": "theorem",
  "lexical_name": "seq_assoc",
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
  "slug": "seq-assoc--b16c06602371bbc3dc429ca2",
  "source": {
    "blob": "af8a6c44dc584bfe68e692a6bc0f2dc3d3238f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 848,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b16c06602371bbc3dc429ca2f2b4e648b3691b89be0ff5d16bb535f622a48095",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ddc570-35a4-062a-cfcc-9787854a721e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seq_assoc (x : Filter α) (g : Filter (α → β)) (h : Filter (β → γ)) :
    seq h (seq g x) = seq (seq (map (· ∘ ·) h) g) x := by
  refine le_antisymm (le_seq fun s hs t ht => ?_) (le_seq fun s hs t ht => ?_)
  · rcases mem_seq_iff.1 hs with ⟨u, hu, v, hv, hs⟩
    rcases mem_map_iff_exists_image.1 hu with ⟨w, hw, hu⟩
    refine mem_of_superset ?_ (Set.seq_mono ((Set.seq_mono hu Subset.rfl).trans hs) Subset.rfl)
    rw [← Set.seq_seq]
    exact seq_mem_seq hw (seq_mem_seq hv ht)
  · rcases mem_seq_iff.1 ht with ⟨u, hu, v, hv, ht⟩
    refine mem_of_superset ?_ (Set.seq_mono Subset.rfl ht)
    rw [Set.seq_seq]
    exact seq_mem_seq (seq_mem_seq (image_mem_map hs) hu) hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8a6c44dc584bfe68e692a6bc0f2dc3d3238f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
