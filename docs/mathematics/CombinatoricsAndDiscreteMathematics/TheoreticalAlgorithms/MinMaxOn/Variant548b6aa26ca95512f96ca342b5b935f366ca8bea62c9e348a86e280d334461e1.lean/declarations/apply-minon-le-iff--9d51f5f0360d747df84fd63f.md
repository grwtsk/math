# apply_minOn_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6baca177-9150-6f34-3c8e-b211bbf87b27",
  "kind": "theorem",
  "lexical_name": "apply_minOn_le_iff",
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
  "slug": "apply-minon-le-iff--9d51f5f0360d747df84fd63f",
  "source": {
    "blob": "754c0cb264c28c348c963f6638e17a94732026d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant548b6aa26ca95512f96ca342b5b935f366ca8bea62c9e348a86e280d334461e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d51f5f0360d747df84fd63fdf84c8384c93d10ed0d5d2cf92de88740671edd3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant548b6aa26ca95512f96ca342b5b935f366ca8bea62c9e348a86e280d334461e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6baca177-9150-6f34-3c8e-b211bbf87b27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem apply_minOn_le_iff [LE β] [DecidableLE β] [IsLinearPreorder β]
    {xs : List α} {f : α → β} (h : xs ≠ []) {b : β} :
    f (xs.minOn f h) ≤ b ↔ ∃ x ∈ xs, f x ≤ b := by
  apply Iff.intro
  · intro h
    match xs with
    | x :: xs =>
      rw [List.minOn] at h
      induction xs generalizing x
      · simpa using h
      · rename_i y ys ih _
        rw [foldl_cons] at h
        specialize ih (minOn f x y) (by simp) h
        obtain ⟨z, hm, hle⟩ := ih
        rcases mem_cons.mp hm with rfl | hm
        · cases minOn_eq_or (f := f) (x := x) (y := y)
          · exact ⟨x, by simp_all⟩
          · exact ⟨y, by simp_all⟩
        · exact ⟨z, by simp_all⟩
  · rintro ⟨x, hm, hx⟩
    exact le_trans (List.apply_minOn_le_of_mem hm) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant548b6aa26ca95512f96ca342b5b935f366ca8bea62c9e348a86e280d334461e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant548b6aa26ca95512f96ca342b5b935f366ca8bea62c9e348a86e280d334461e1.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754c0cb264c28c348c963f6638e17a94732026d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
