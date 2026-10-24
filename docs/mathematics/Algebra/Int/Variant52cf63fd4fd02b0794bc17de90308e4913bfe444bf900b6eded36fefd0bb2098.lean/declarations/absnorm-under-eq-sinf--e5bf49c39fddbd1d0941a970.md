# absNorm_under_eq_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81f9c23f4bc017cebaafe72de3d4e0a19874b59a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86f2179a-54eb-cc20-d88d-a5baf100c080",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44932576-96cc-cbca-65f1-af634469f11f",
  "kind": "theorem",
  "lexical_name": "absNorm_under_eq_sInf",
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
  "slug": "absnorm-under-eq-sinf--e5bf49c39fddbd1d0941a970",
  "source": {
    "blob": "81f9c23f4bc017cebaafe72de3d4e0a19874b59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5bf49c39fddbd1d0941a970d3f891d4e57a16a62adb14c66f8a348a2ace4e94",
  "verification": {
    "reference": "docs/verification/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44932576-96cc-cbca-65f1-af634469f11f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absNorm_under_eq_sInf :
    absNorm (under ℤ I) = sInf {d : ℕ | 0 < d ∧ (d : R) ∈ I} := by
  by_cases h : absNorm (under ℤ I) = 0
  · have : {d : ℕ | 0 < d ∧ ↑d ∈ I} = ∅ := by
      refine Set.eq_empty_of_forall_notMem ?_
      intro x ⟨hx₁, hx₂⟩
      rw [← cast_natCast, cast_mem_ideal_iff, h, natCast_dvd_natCast, Nat.zero_dvd] at hx₂
      rw [Nat.pos_iff_ne_zero] at hx₁
      exact hx₁ hx₂
    rw [h, this, Nat.sInf_empty]
  · have h₁ : absNorm (under ℤ I) ∈ {d : ℕ | 0 < d ∧ ↑d ∈ I} :=
      ⟨Nat.pos_of_ne_zero h, absNorm_under_mem I⟩
    refine le_antisymm ?_ (Nat.sInf_le h₁)
    by_contra! h₀
    have h₂ := (Nat.sInf_mem (Set.nonempty_of_mem h₁)).2
    rw [← cast_natCast, cast_mem_ideal_iff, natCast_dvd_natCast] at h₂
    exact lt_iff_not_ge.mp h₀ <| Nat.le_of_dvd (Nat.sInf_mem (Set.nonempty_of_mem h₁)).1 h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f9c23f4bc017cebaafe72de3d4e0a19874b59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
