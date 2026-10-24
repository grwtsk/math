# ideal_trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98d93dd7-97de-e995-ab18-92d4c500a7d1",
  "kind": "lemma",
  "lexical_name": "ideal_trichotomy",
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
  "slug": "ideal-trichotomy--f17e8dc029e1f5ed51b9eb4c",
  "source": {
    "blob": "9446422e43524c23f4c560bf17e6d407d3526c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 109,
    "path": "GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f17e8dc029e1f5ed51b9eb4c630bac185a1af1b31916fc72a82ea3352a4a59e0",
  "verification": {
    "reference": "docs/verification/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d93dd7-97de-e995-ab18-92d4c500a7d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ideal_trichotomy [DivisionRing K] (I : Ideal K[ε]) :
    I = ⊥ ∨ I = .span {ε} ∨ I = ⊤ := by
  refine (eq_or_ne I ⊥).imp_right fun hb ↦ ?_
  refine (eq_or_ne I ⊤).symm.imp_left fun ht ↦ ?_
  have hd : ∀ x ∈ I, ε ∣ x := by
    intro x hxI
    rcases isUnit_or_isNilpotent x with hx|hx
    · exact absurd (Ideal.eq_top_of_isUnit_mem _ hxI hx) ht
    · rwa [← isNilpotent_iff_eps_dvd]
  have hd' : ∀ x ∈ I, x ≠ 0 → ∃ r, ε = r * x := by
    intro x hxI hx0
    obtain ⟨r, rfl⟩ := hd _ hxI
    have : ε * r = (fst r) • ε := by ext <;> simp
    rw [this] at hxI hx0 ⊢
    have hr : fst r ≠ 0 := by
      contrapose! hx0
      simp [hx0]
    refine ⟨r⁻¹, ?_⟩
    simp [TrivSqZeroExt.ext_iff, inv_mul_cancel₀ hr]
  refine le_antisymm ?_ ?_ <;> intro x <;>
    simp_rw [Ideal.mem_span_singleton', (commute_eps_right _).eq, eq_comm, ← dvd_def]
  · intro hx
    simp_rw [hd _ hx]
  · intro hx
    obtain ⟨p, rfl⟩ := hx
    obtain ⟨y, hyI, hy0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hb
    obtain ⟨r, hr⟩ := hd' _ hyI hy0
    rw [(commute_eps_left _).eq, hr, ← mul_assoc]
    exact Ideal.mul_mem_left _ _ hyI

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9446422e43524c23f4c560bf17e6d407d3526c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
