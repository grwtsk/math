# mi_not_onBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a123b026-6e8a-211c-9b10-cdbb7c4a9216",
  "kind": "theorem",
  "lexical_name": "mi_not_onBoundary",
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
  "slug": "mi-not-onboundary--04a411e46ab5a0b1f79d3cbd",
  "source": {
    "blob": "e94c8362422377844d3c4c9a42d12fb477f608c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 385,
    "path": "GRWTSK/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04a411e46ab5a0b1f79d3cbdb658f01e76549147f2a2421e579ac38f6c41578f",
  "verification": {
    "reference": "docs/verification/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a123b026-6e8a-211c-9b10-cdbb7c4a9216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mi_not_onBoundary (j : Fin n) : ¬OnBoundary (mi_mem_bcubes : mi h v ∈ _) j := by
  let i := mi h v; have hi : i ∈ bcubes cs c := mi_mem_bcubes
  haveI := h.nontrivial_fin
  rcases exists_ne j with ⟨j', hj'⟩
  intro hj
  rcases smallest_onBoundary hj with ⟨x, ⟨hx, h2x⟩, h3x⟩
  let p : Fin (n + 1) → ℝ := cons (c.b 0) fun j₂ => if j₂ = j then x else (cs i).b j₂.succ
  have hp : p ∈ c.bottom := by
    suffices ∀ j' : Fin n, ite (j' = j) x ((cs i).b j'.succ) ∈ c.side j'.succ by
      simpa [p, bottom, toSet, tail, side_tail]
    intro j₂
    by_cases hj₂ : j₂ = j
    · simp [hj₂, hx]
    simp only [hj₂, if_false]; apply tail_sub hi; apply b_mem_side
  rcases v.1 hp with ⟨_, ⟨i', rfl⟩, hi'⟩
  have h2i' : i' ∈ bcubes cs c := ⟨hi'.1.symm, v.2.1 i' hi'.1.symm ⟨tail p, hi'.2, hp.2⟩⟩
  have i_i' : i ≠ i' := by rintro rfl; simpa [i, p, side_tail, h2x] using hi'.2 j
  have : Nonempty (↥((cs i').tail.side j' \ (cs i).tail.side j')) := by
    apply nonempty_Ico_sdiff
    · apply mi_strict_minimal i_i' h2i'
    · apply hw
  rcases this with ⟨⟨x', hx'⟩⟩
  let p' : Fin (n + 1) → ℝ := cons (c.b 0) fun j₂ => if j₂ = j' then x' else (cs i).b j₂.succ
  have hp' : p' ∈ c.bottom := by
    suffices ∀ j : Fin n, ite (j = j') x' ((cs i).b j.succ) ∈ c.side j.succ by
      simpa [p', bottom, toSet, tail, side_tail]
    intro j₂
    by_cases hj₂ : j₂ = j'; · simp [hj₂]; apply tail_sub h2i'; apply hx'.1
    simp only [if_congr, if_false, hj₂]; apply tail_sub hi; apply b_mem_side
  rcases v.1 hp' with ⟨_, ⟨i'', rfl⟩, hi''⟩
  have h2i'' : i'' ∈ bcubes cs c := ⟨hi''.1.symm, v.2.1 i'' hi''.1.symm ⟨tail p', hi''.2, hp'.2⟩⟩
  have i'_i'' : i' ≠ i'' := by
    rintro ⟨⟩
    have : (cs i).b ∈ (cs i').toSet := by
      simp only [toSet, forall_iff_succ, hi.1, bottom_mem_side h2i', true_and, mem_setOf_eq]
      intro j₂; by_cases hj₂ : j₂ = j
      · simpa [p', side_tail, hj'.symm, hj₂] using hi''.2 j
      · simpa [p, hj₂] using hi'.2 j₂
    apply not_disjoint_iff.mpr ⟨(cs i).b, (cs i).b_mem_toSet, this⟩ (h.1 i_i')
  have i_i'' : i ≠ i'' := by intro h; induction h; simpa [p', hx'.2] using hi''.2 j'
  apply Not.elim _ (h.1 i'_i'')
  simp_rw [onFun, comp, toSet_disjoint, not_exists, not_disjoint_iff, forall_iff_succ]
  refine ⟨⟨c.b 0, bottom_mem_side h2i', bottom_mem_side h2i''⟩, ?_⟩
  intro j₂
  by_cases hj₂ : j₂ = j
  · cases hj₂; refine ⟨x, ?_, ?_⟩
    · convert hi'.2 j using 1; simp [i, p]
    apply h3x h2i'' i_i''.symm; convert hi''.2 j using 1; simp [i, p', hj'.symm]
  by_cases h2j₂ : j₂ = j'
  · cases h2j₂; refine ⟨x', hx'.1, ?_⟩; convert hi''.2 j' using 1; simp [p']
  refine ⟨(cs i).b j₂.succ, ?_, ?_⟩
  · convert hi'.2 j₂ using 1; simp [p, hj₂]
  · convert hi''.2 j₂ using 1; simp [p', h2j₂]

variable {h v}

/-- The same result that `mi` cannot lie on the boundary of the valley written as inequalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e94c8362422377844d3c4c9a42d12fb477f608c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
