# map_mk_disjoint_sym2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a103137-189e-a4c6-120d-e9b7840e6215",
  "kind": "theorem",
  "lexical_name": "map_mk_disjoint_sym2",
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
  "slug": "map-mk-disjoint-sym2--5d4c0d3d3ed6dfbe9af416ef",
  "source": {
    "blob": "d89879815d5c64a01e53258b5980df628c8da158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d4c0d3d3ed6dfbe9af416ef68c1b8c5155209b8523feb8315e3d5854b8f319c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a103137-189e-a4c6-120d-e9b7840e6215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mk_disjoint_sym2 (x : α) (xs : List α) (h : x ∉ xs) :
    (map (fun y ↦ s(x, y)) xs).Disjoint xs.sym2 := by
  induction xs with
  | nil => simp
  | cons x' xs ih =>
    simp only [mem_cons, not_or] at h
    rw [List.sym2, map_cons, map_cons, disjoint_cons_left, disjoint_append_right,
      disjoint_cons_right]
    refine ⟨?_, ⟨?_, ?_⟩, ?_⟩
    · refine not_mem_cons_of_ne_of_not_mem ?_ (not_mem_append ?_ ?_)
      · simp [h.1]
      · simp_rw [mem_map, not_exists, not_and]
        intro x'' hx
        simp_rw [Sym2.mk_eq_mk_iff, Prod.swap_prod_mk, Prod.mk.injEq, true_and]
        rintro (⟨rfl, rfl⟩ | rfl)
        · exact h.2 hx
        · exact h.2 hx
      · simp [mk_mem_sym2_iff, h.2]
    · simp [h.1]
    · intro z hx hy
      rw [List.mem_map] at hx hy
      obtain ⟨a, hx, rfl⟩ := hx
      obtain ⟨b, hy, hx⟩ := hy
      simp [Sym2.mk_eq_mk_iff, Ne.symm h.1] at hx
      obtain ⟨rfl, rfl⟩ := hx
      exact h.2 hy
    · exact ih h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d89879815d5c64a01e53258b5980df628c8da158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
