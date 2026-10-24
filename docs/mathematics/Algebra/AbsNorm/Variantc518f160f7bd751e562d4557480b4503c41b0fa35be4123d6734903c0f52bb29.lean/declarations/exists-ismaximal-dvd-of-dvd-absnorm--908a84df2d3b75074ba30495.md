# exists_isMaximal_dvd_of_dvd_absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1db84111-3ebd-a299-ef46-94d9c3558a8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc60ceca-7fb5-b577-ebea-1dfc9608cb29",
  "kind": "lemma",
  "lexical_name": "exists_isMaximal_dvd_of_dvd_absNorm",
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
  "slug": "exists-ismaximal-dvd-of-dvd-absnorm--908a84df2d3b75074ba30495",
  "source": {
    "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 464,
    "path": "GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908a84df2d3b75074ba304954071d01fd0d68d1346624d24acddcda293257691",
  "verification": {
    "reference": "docs/verification/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc60ceca-7fb5-b577-ebea-1dfc9608cb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isMaximal_dvd_of_dvd_absNorm
    {p : ℤ} (hp : Prime p) (I : Ideal S) (hI : p ∣ I.absNorm) :
    ∃ P : Ideal S, P.IsMaximal ∧ P.under ℤ = .span {p} ∧ P ∣ I := by
  have : IsAddTorsionFree S := .of_isTorsionFree ℤ _
  have := CharZero.of_isAddTorsionFree S S
  have hpMax : (Ideal.span {p}).IsMaximal :=
    ((Ideal.span_singleton_prime hp.ne_zero).mpr hp).isMaximal (by simpa using hp.ne_zero)
  induction I using UniqueFactorizationMonoid.induction_on_prime with
  | h₁ =>
    obtain ⟨Q, hQ, e⟩ := Ideal.exists_ideal_over_maximal_of_isIntegral (S := S) (Ideal.span {p})
      (fun x ↦ by simp +contextual)
    exact ⟨Q, hQ, e, dvd_zero _⟩
  | h₂ I hI' =>
    obtain rfl : I = ⊤ := by simpa using hI'
    cases hp.not_dvd_one (by simpa using hI)
  | h₃ I P hI' hP IH =>
    simp only [_root_.map_mul, Nat.cast_mul, hp.dvd_mul] at hI
    cases hI with
    | inr h =>
      obtain ⟨Q, h₁, h₂, h₃⟩ := IH h
      exact ⟨Q, h₁, h₂, dvd_mul_of_dvd_right h₃ _⟩
    | inl hI =>
      have := (Ideal.isPrime_of_prime hP).isMaximal hP.ne_zero
      refine ⟨P, this, (hpMax.eq_of_le (by simpa using this.ne_top) ?_).symm, dvd_mul_right _ _⟩
      obtain ⟨q, n, hn, hqP, hq, H⟩ := Ideal.exists_prime_and_absNorm_eq_pow P
      rw [H, Nat.cast_pow, dvd_prime_pow (Nat.prime_iff_prime_int.mp hq)] at hI
      obtain ⟨m, hmn, hp⟩ := hI
      rw [Ideal.span_singleton_le_iff_mem]
      have : m ≠ 0 := fun h ↦ hpMax.ne_top (Ideal.span_singleton_eq_top.mpr (by simpa [h] using hp))
      exact Ideal.mem_of_dvd _ hp.symm.dvd (Ideal.pow_mem_of_mem _ (by simpa) _ this.bot_lt)

/-- A version that takes a natural number and `Nat.Prime`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e6765ba0e20490bbe27999dc8e2f9e01bc483d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
