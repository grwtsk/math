# splits_in_splittingField_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18c8fd48b769535f38b53ab93bef768c6424f00b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:513c5e99-543c-9bfb-8f5b-23884c29d6ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b662dadd-74e7-33ba-3e5c-5ae536e05346",
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
  "slug": "splits-in-splittingfield-of-comp--379e1d77bc533ae72f106c3d",
  "source": {
    "blob": "18c8fd48b769535f38b53ab93bef768c6424f00b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 306,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:379e1d77bc533ae72f106c3dcf205a3dbcf22006c22b25410b9159bc14c7c8b1",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b662dadd-74e7-33ba-3e5c-5ae536e05346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_in_splittingField_of_comp (hq : q.natDegree ≠ 0) :
    p.Splits (algebraMap F (p.comp q).SplittingField) := by
  let P : F[X] → Prop := fun r => r.Splits (algebraMap F (r.comp q).SplittingField)
  have key1 : ∀ {r : F[X]}, Irreducible r → P r := by
    intro r hr
    by_cases hr' : natDegree r = 0
    · exact splits_of_natDegree_le_one _ (le_trans (le_of_eq hr') zero_le_one)
    obtain ⟨x, hx⟩ :=
      exists_root_of_splits _ (SplittingField.splits (r.comp q)) fun h =>
        hr'
          ((mul_eq_zero.mp
                (natDegree_comp.symm.trans (natDegree_eq_of_degree_eq_some h))).resolve_right
            hq)
    rw [← aeval_def, aeval_comp] at hx
    have h_normal : Normal F (r.comp q).SplittingField := SplittingField.instNormal (r.comp q)
    have qx_int := Normal.isIntegral h_normal (aeval x q)
    exact
      splits_of_splits_of_dvd _ (minpoly.ne_zero qx_int) (Normal.splits h_normal _)
        ((minpoly.irreducible qx_int).dvd_symm hr (minpoly.dvd F _ hx))
  have key2 : ∀ {p₁ p₂ : F[X]}, P p₁ → P p₂ → P (p₁ * p₂) := by
    intro p₁ p₂ hp₁ hp₂
    by_cases h₁ : p₁.comp q = 0
    · rcases comp_eq_zero_iff.mp h₁ with h | h
      · rw [h, zero_mul]
        exact splits_zero _
      · exact False.elim (hq (by rw [h.2, natDegree_C]))
    by_cases h₂ : p₂.comp q = 0
    · rcases comp_eq_zero_iff.mp h₂ with h | h
      · rw [h, mul_zero]
        exact splits_zero _
      · exact False.elim (hq (by rw [h.2, natDegree_C]))
    have key := mul_splits_in_splittingField_of_mul h₁ h₂ hp₁ hp₂
    rwa [← mul_comp] at key
  exact
    WfDvdMonoid.induction_on_irreducible p (splits_zero _) (fun _ => splits_of_isUnit _)
      fun _ _ _ h => key2 (key1 h)

/-- `Polynomial.Gal.restrict` for the composition of polynomials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18c8fd48b769535f38b53ab93bef768c6424f00b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
