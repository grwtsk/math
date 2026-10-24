# find?_bool_eq_some_iff_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51de11f-7fd8-1104-2e96-1f99cbc91f0c",
  "kind": "theorem",
  "lexical_name": "find?_bool_eq_some_iff_splits",
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
  "slug": "find-bool-eq-some-iff-splits--3140db255884ae97b2e7db58",
  "source": {
    "blob": "632682c68f63641c045f045d5136214da6f7e519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 283,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3140db255884ae97b2e7db582bb57fcb1e379f00b50499a6511ac94d488e21c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51de11f-7fd8-1104-2e96-1f99cbc91f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_bool_eq_some_iff_splits {p : Char → Bool} {s : String} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ t c u, pos.Splits t (singleton c ++ u) ∧ p c ∧ ∀ d ∈ t.toList, p d = false := by
  simp only [find?_eq_find?_toSlice, Option.map_eq_some_iff,
    Slice.find?_bool_eq_some_iff_splits]
  constructor
  · rintro ⟨q, ⟨t, c, u, hsplit, hpc, hmin⟩, rfl⟩
    exact ⟨t, c, u, Slice.Pos.splits_ofToSlice_iff.mpr hsplit, hpc, hmin⟩
  · rintro ⟨t, c, u, hsplit, hpc, hmin⟩
    exact ⟨pos.toSlice, ⟨t, c, u, Pos.splits_toSlice_iff.mpr hsplit, hpc, hmin⟩, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `632682c68f63641c045f045d5136214da6f7e519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
