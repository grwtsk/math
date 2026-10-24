# ZMod.eq_one_or_isUnit_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae3ace84-77b8-9dcc-80be-af93901aad64",
  "kind": "theorem",
  "lexical_name": "ZMod.eq_one_or_isUnit_sub_one",
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
  "slug": "zmod-eq-one-or-isunit-sub-one--93d92676ead241decd40eefe",
  "source": {
    "blob": "719e419a79cc536ca864c3bf1e92572c473e8e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 706,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d92676ead241decd40eefe1c878ceee097cb5deb7e75257825ec7d592e2775",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae3ace84-77b8-9dcc-80be-af93901aad64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.eq_one_or_isUnit_sub_one {n p k : ℕ} [Fact p.Prime] (hn : n = p ^ k) (a : ZMod n)
    (ha : (orderOf a).Coprime n) : a = 1 ∨ IsUnit (a - 1) := by
  rcases eq_or_ne n 0 with rfl | hn0
  · exact Or.inl (orderOf_eq_one_iff.mp ((orderOf a).coprime_zero_right.mp ha))
  rcases eq_or_ne a 0 with rfl | ha0
  · exact Or.inr (zero_sub (1 : ZMod n) ▸ isUnit_neg_one)
  have : NeZero n := ⟨hn0⟩
  obtain ⟨a, rfl⟩ := ZMod.natCast_zmod_surjective a
  rw [← orderOf_eq_one_iff, or_iff_not_imp_right]
  refine fun h ↦ ha.eq_one_of_dvd ?_
  rw [orderOf_dvd_iff_pow_eq_one, ← Nat.cast_pow, ← Nat.cast_one, ZMod.natCast_eq_natCast_iff, hn]
  replace ha0 : 1 ≤ a := by
    contrapose! ha0
    rw [Nat.lt_one_iff.mp ha0, Nat.cast_zero]
  rw [← Nat.cast_one, ← Nat.cast_sub ha0, ZMod.isUnit_iff_coprime, hn] at h
  obtain ⟨b, hb⟩ := not_imp_comm.mp (Nat.Prime.coprime_pow_of_not_dvd Fact.out) h
  rw [tsub_eq_iff_eq_add_of_le ha0, add_comm] at hb
  exact hb ▸ pow_pow_modEq_one p k b

section prime_subfield

variable {F : Type*} [Field F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719e419a79cc536ca864c3bf1e92572c473e8e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
