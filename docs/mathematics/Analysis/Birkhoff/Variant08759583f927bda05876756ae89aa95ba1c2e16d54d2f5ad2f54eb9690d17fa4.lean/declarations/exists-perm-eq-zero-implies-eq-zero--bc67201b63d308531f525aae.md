# exists_perm_eq_zero_implies_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50bc936c-fcc7-5669-bf48-4b35960686da",
  "kind": "lemma",
  "lexical_name": "exists_perm_eq_zero_implies_eq_zero",
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
  "slug": "exists-perm-eq-zero-implies-eq-zero--bc67201b63d308531f525aae",
  "source": {
    "blob": "bda35c04023356ee90bf1c0b0457515a966b519c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 55,
    "path": "GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc67201b63d308531f525aaef9e8221828f0235950d5be6b5a901005d702ef84",
  "verification": {
    "reference": "docs/verification/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50bc936c-fcc7-5669-bf48-4b35960686da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_perm_eq_zero_implies_eq_zero [Nonempty n] {s : R} (hs : 0 < s)
    (hM : ∃ M' ∈ doublyStochastic R n, M = s • M') :
    ∃ σ : Equiv.Perm n, ∀ i j, M i j = 0 → σ.permMatrix R i j = 0 := by
  rw [exists_mem_doublyStochastic_eq_smul_iff hs.le] at hM
  let f (i : n) : Finset n := {j | M i j ≠ 0}
  have hf (A : Finset n) : #A ≤ #(A.biUnion f) := by
    have (i) : ∑ j ∈ f i, M i j = s := by simp [f, sum_subset (filter_subset _ _), hM.2.1]
    have h₁ : ∑ i ∈ A, ∑ j ∈ f i, M i j = #A * s := by simp [this]
    have h₂ : ∑ i, ∑ j ∈ A.biUnion f, M i j = #(A.biUnion f) * s := by
      simp [sum_comm (t := A.biUnion f), hM.2.2, mul_comm s]
    suffices #A * s ≤ #(A.biUnion f) * s by exact_mod_cast le_of_mul_le_mul_right this hs
    rw [← h₁, ← h₂]
    trans ∑ i ∈ A, ∑ j ∈ A.biUnion f, M i j
    · refine sum_le_sum fun i hi => ?_
      exact sum_le_sum_of_subset_of_nonneg (subset_biUnion_of_mem f hi) (by simp [*])
    · exact sum_le_sum_of_subset_of_nonneg (by simp) fun _ _ _ => sum_nonneg fun j _ => hM.1 _ _
  obtain ⟨g, hg, hg'⟩ := (all_card_le_biUnion_card_iff_exists_injective f).1 hf
  rw [Finite.injective_iff_bijective] at hg
  refine ⟨Equiv.ofBijective g hg, fun i j hij => ?_⟩
  simp only [PEquiv.toMatrix_apply, Option.mem_def, ite_eq_right_iff, one_ne_zero, imp_false,
    Equiv.toPEquiv_apply, Equiv.ofBijective_apply, Option.some.injEq]
  rintro rfl
  simpa [f, hij] using hg' i

end LinearOrderedSemifield

section LinearOrderedField

variable [Field R] [LinearOrder R] [IsStrictOrderedRing R] {M : Matrix n n R}

/--
If M is a scalar multiple of a doubly stochastic matrix, then it is a conical combination of
permutation matrices. This is most useful when M is a doubly stochastic matrix, in which case
the combination is convex.

This particular formulation is chosen to make the inductive step easier: we no longer need to
rescale each time a permutation matrix is subtracted.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bda35c04023356ee90bf1c0b0457515a966b519c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
