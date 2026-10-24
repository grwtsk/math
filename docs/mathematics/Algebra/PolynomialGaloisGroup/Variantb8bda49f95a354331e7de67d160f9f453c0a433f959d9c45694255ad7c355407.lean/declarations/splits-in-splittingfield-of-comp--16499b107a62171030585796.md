# splits_in_splittingField_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f948a61-2f57-bb0c-de9e-1a9779c2e5ed",
  "kind": "theorem",
  "lexical_name": "splits_in_splittingField_of_comp",
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
  "slug": "splits-in-splittingfield-of-comp--16499b107a62171030585796",
  "source": {
    "blob": "a6bcebab1ecaf07d349bf936ed646ea367e57c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 320,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16499b107a62171030585796b31a75581aeeca44d9a1996094f10ea863374299",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f948a61-2f57-bb0c-de9e-1a9779c2e5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_in_splittingField_of_comp (hq : q.natDegree ≠ 0) :
    (p.map (algebraMap F (p.comp q).SplittingField)).Splits := by
  let P : F[X] → Prop := fun r => (r.map (algebraMap F (r.comp q).SplittingField)).Splits
  have key1 : ∀ {r : F[X]}, Irreducible r → P r := by
    intro r hr
    by_cases hr' : natDegree r = 0
    · exact Splits.of_natDegree_le_one <| natDegree_map_le.trans (hr'.trans_le zero_le_one)
    obtain ⟨x, hx⟩ :=
      Splits.exists_eval_eq_zero (SplittingField.splits (r.comp q)) fun h =>
        hr' ((mul_eq_zero.mp (natDegree_comp.symm.trans (natDegree_eq_of_degree_eq_some
          (by rwa [degree_map] at h)))).resolve_right hq)
    rw [eval_map_algebraMap, aeval_comp] at hx
    have h_normal : Normal F (r.comp q).SplittingField := SplittingField.instNormal (r.comp q)
    have qx_int := Normal.isIntegral h_normal (aeval x q)
    exact (h_normal.splits _).of_dvd (map_ne_zero (minpoly.ne_zero (h_normal.isIntegral _)))
      ((map_dvd_map' _).mpr ((minpoly.irreducible qx_int).dvd_symm hr (minpoly.dvd F _ hx)))
  have key2 : ∀ {p₁ p₂ : F[X]}, P p₁ → P p₂ → P (p₁ * p₂) := by
    intro p₁ p₂ hp₁ hp₂
    by_cases h₁ : p₁.comp q = 0
    · rcases comp_eq_zero_iff.mp h₁ with h | h
      · rw [h, zero_mul]
        simp [P]
      · exact False.elim (hq (by rw [h.2, natDegree_C]))
    by_cases h₂ : p₂.comp q = 0
    · rcases comp_eq_zero_iff.mp h₂ with h | h
      · simp [h, P]
      · exact False.elim (hq (by rw [h.2, natDegree_C]))
    have key := mul_splits_in_splittingField_of_mul h₁ h₂ hp₁ hp₂
    rwa [← mul_comp] at key
  exact
    WfDvdMonoid.induction_on_irreducible p (by simp) (fun _ hu => hu.splits.map _)
      fun _ _ _ h => key2 (key1 h)

/-- `Polynomial.Gal.restrict` for the composition of polynomials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bcebab1ecaf07d349bf936ed646ea367e57c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
