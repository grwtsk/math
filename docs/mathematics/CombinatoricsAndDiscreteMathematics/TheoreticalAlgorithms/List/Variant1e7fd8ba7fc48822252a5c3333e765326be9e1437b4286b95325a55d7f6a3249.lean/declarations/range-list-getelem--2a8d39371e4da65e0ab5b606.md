# range_list_getElem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:523b3a27-459b-a3a5-0b08-a98691eae594",
  "kind": "theorem",
  "lexical_name": "range_list_getElem?",
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
  "slug": "range-list-getelem--2a8d39371e4da65e0ab5b606",
  "source": {
    "blob": "8f1130304d233c454776dfb6050f3ae0acead9bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant1e7fd8ba7fc48822252a5c3333e765326be9e1437b4286b95325a55d7f6a3249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a8d39371e4da65e0ab5b6069576cd35fe2b1f83676b4be1dcf28a5d1824bb82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant1e7fd8ba7fc48822252a5c3333e765326be9e1437b4286b95325a55d7f6a3249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:523b3a27-459b-a3a5-0b08-a98691eae594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_list_getElem? :
    range (l[·]? : ℕ → Option α) = insert none (some '' { x | x ∈ l }) := by
  rw [← range_list_get, ← range_comp]
  refine (range_subset_iff.2 fun n => ?_).antisymm (insert_subset_iff.2 ⟨?_, ?_⟩)
  · exact (le_or_gt l.length n).imp getElem?_eq_none_iff.mpr
      (fun hlt => ⟨⟨_, hlt⟩, (getElem?_eq_getElem hlt).symm⟩)
  · exact ⟨_, getElem?_eq_none_iff.mpr le_rfl⟩
  · exact range_subset_iff.2 fun k => ⟨_, getElem?_eq_getElem _⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant1e7fd8ba7fc48822252a5c3333e765326be9e1437b4286b95325a55d7f6a3249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant1e7fd8ba7fc48822252a5c3333e765326be9e1437b4286b95325a55d7f6a3249.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1130304d233c454776dfb6050f3ae0acead9bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
