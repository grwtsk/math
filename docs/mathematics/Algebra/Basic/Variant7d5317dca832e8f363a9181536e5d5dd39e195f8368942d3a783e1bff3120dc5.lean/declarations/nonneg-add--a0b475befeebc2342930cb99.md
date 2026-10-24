# Nonneg.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06eb153f-8d96-11da-9315-42074eb42d82",
  "kind": "theorem",
  "lexical_name": "Nonneg.add",
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
  "slug": "nonneg-add--a0b475befeebc2342930cb99",
  "source": {
    "blob": "9e8bf4b990d1e77a70f9979aea571a50f56545e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 583,
    "path": "GRWTSK/Algebra/Basic/Variant7d5317dca832e8f363a9181536e5d5dd39e195f8368942d3a783e1bff3120dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0b475befeebc2342930cb99cf1d0b70e3b00bb0e77e905f06e143fd5edb43c1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7d5317dca832e8f363a9181536e5d5dd39e195f8368942d3a783e1bff3120dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06eb153f-8d96-11da-9315-42074eb42d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nonneg.add {a b : ℤ√d} (ha : Nonneg a) (hb : Nonneg b) : Nonneg (a + b) := by
  rcases nonneg_cases ha with ⟨x, y, rfl | rfl | rfl⟩ <;>
    rcases nonneg_cases hb with ⟨z, w, rfl | rfl | rfl⟩
  · trivial
  · refine nonnegg_cases_right fun i h => sqLe_of_le ?_ ?_ (nonnegg_pos_neg.1 hb)
    · dsimp only at h
      exact Int.ofNat_le.1 (le_of_neg_le_neg (Int.le.intro y (by simp [add_comm, *])))
    · apply Nat.le_add_left
  · refine nonnegg_cases_left fun i h => sqLe_of_le ?_ ?_ (nonnegg_neg_pos.1 hb)
    · dsimp only at h
      exact Int.ofNat_le.1 (le_of_neg_le_neg (Int.le.intro x (by simp [add_comm, *])))
    · apply Nat.le_add_left
  · refine nonnegg_cases_right fun i h => sqLe_of_le ?_ ?_ (nonnegg_pos_neg.1 ha)
    · dsimp only at h
      exact Int.ofNat_le.1 (le_of_neg_le_neg (Int.le.intro w (by simp [*])))
    · apply Nat.le_add_right
  · have : Nonneg ⟨_, _⟩ :=
      nonnegg_pos_neg.2 (sqLe_add (nonnegg_pos_neg.1 ha) (nonnegg_pos_neg.1 hb))
    rw [Nat.cast_add, Nat.cast_add, neg_add] at this
    rwa [add_def]
  · exact nonneg_add_lem ha hb
  · refine nonnegg_cases_left fun i h => sqLe_of_le ?_ ?_ (nonnegg_neg_pos.1 ha)
    · dsimp only at h
      exact Int.ofNat_le.1 (le_of_neg_le_neg (Int.le.intro _ h))
    · apply Nat.le_add_right
  · dsimp
    rw [add_comm, add_comm (y : ℤ)]
    exact nonneg_add_lem hb ha
  · have : Nonneg ⟨_, _⟩ :=
      nonnegg_neg_pos.2 (sqLe_add (nonnegg_neg_pos.1 ha) (nonnegg_neg_pos.1 hb))
    rw [Nat.cast_add, Nat.cast_add, neg_add] at this
    rwa [add_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7d5317dca832e8f363a9181536e5d5dd39e195f8368942d3a783e1bff3120dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7d5317dca832e8f363a9181536e5d5dd39e195f8368942d3a783e1bff3120dc5.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8bf4b990d1e77a70f9979aea571a50f56545e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
