# map_mergeSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aa3b62a-94c0-8901-db66-404134bdb17d",
  "kind": "theorem",
  "lexical_name": "map_mergeSort",
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
  "slug": "map-mergesort--a075bfc4ce52063968e252c5",
  "source": {
    "blob": "6ae38e54bd2327f75d0c0965004f99f49600065d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 490,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a075bfc4ce52063968e252c53e7b38abbe148e14b076f89bb21c036e1281f0b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa3b62a-94c0-8901-db66-404134bdb17d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mergeSort {r : α → α → Bool} {s : β → β → Bool} {f : α → β} {l : List α}
    (hl : ∀ a ∈ l, ∀ b ∈ l, r a b = s (f a) (f b)) :
    (l.mergeSort r).map f = (l.map f).mergeSort s :=
  match l with
  | [] => by simp
  | [x] => by simp
  | a :: b :: l => by
    simp only [mergeSort, splitInTwo_fst, splitInTwo_snd, map_cons]
    rw [map_merge (fun a am b bm => hl a (mem_of_mem_take (by simpa using am))
      b (mem_of_mem_drop (by simpa using bm)))]
    rw [map_mergeSort (s := s) (fun a am b bm => hl a (mem_of_mem_take (by simpa using am))
      b (mem_of_mem_take (by simpa using bm)))]
    rw [map_mergeSort (s := s) (fun a am b bm => hl a (mem_of_mem_drop (by simpa using am))
      b (mem_of_mem_drop (by simpa using bm)))]
    rw [map_take, map_drop]
    simp
  termination_by length l
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae38e54bd2327f75d0c0965004f99f49600065d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
