# card_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ed8b7b8-e20c-2ada-52b8-3e07fd9c5309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b20fd44d-c90e-7095-708e-dc22a2e1cbff",
  "kind": "theorem",
  "lexical_name": "card_lower",
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
  "slug": "card-lower--e34f13b8afbb4fc50d0ce7a9",
  "source": {
    "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 458,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e34f13b8afbb4fc50d0ce7a9fd168723e759be3b2ba7ac633dbd08a633a1a237",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b20fd44d-c90e-7095-708e-dc22a2e1cbff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_lower (h : IsAdmissible lam eta)
    (hZ : IsConjInvariant Z m) (_hZne : Z.Nonempty) :
    (3 / 2 : ℝ) * (∑ z ∈ Z, (m z : ℝ))
        - (1 / 2 : ℝ) *
          (∑ z ∈ Z, ∑ s ∈ Z,
            (m z * m s : ℂ) * testKernel eta (z - s) ^ 2).re
      ≤ (Z.card : ℝ) := by
  classical
  obtain ⟨psi, hb, hsym⟩ := exists_symmetric_adapted_basis h Z m
  let a : Fin (Module.finrank ℂ (subspaceW h Z m)) → ℝ :=
    fun j => (alphaOf eta lam Z m (psi j)).re
  have hdUV : Module.finrank ℂ (subspaceU h Z m) ≤
      Module.finrank ℂ (subspaceV h Z m) :=
    Submodule.finrank_mono (subspaceU_le_subspaceV h Z m)
  have hdVN : Module.finrank ℂ (subspaceV h Z m) ≤
      Module.finrank ℂ (subspaceW h Z m) :=
    Submodule.finrank_mono (subspaceV_le_subspaceW h Z m)
  have hR1mult : ((simpleRealPart Z m).card : ℝ) =
      ∑ x ∈ simpleRealPart Z m, (m x : ℝ) := by
    calc
      ((simpleRealPart Z m).card : ℝ) =
          ∑ _x ∈ simpleRealPart Z m, (1 : ℝ) := by simp
      _ = ∑ x ∈ simpleRealPart Z m, (m x : ℝ) := by
        refine Finset.sum_congr rfl fun x hx => ?_
        exact_mod_cast ((Finset.mem_filter.mp hx).2).2.symm
  have hR2mult : 2 * ((multipleRealPart Z m).card : ℝ) ≤
      ∑ x ∈ multipleRealPart Z m, (m x : ℝ) := by
    calc
      2 * ((multipleRealPart Z m).card : ℝ) =
          ∑ _x ∈ multipleRealPart Z m, (2 : ℝ) := by simp [mul_comm]
      _ ≤ ∑ x ∈ multipleRealPart Z m, (m x : ℝ) := by
        refine Finset.sum_le_sum fun x hx => ?_
        exact_mod_cast ((Finset.mem_filter.mp hx).2).2
  have hSmult : ((nonRealPart Z).card : ℝ) ≤
      ∑ z ∈ nonRealPart Z, (m z : ℝ) := by
    calc
      ((nonRealPart Z).card : ℝ) =
          ∑ _z ∈ nonRealPart Z, (1 : ℝ) := by simp
      _ ≤ ∑ z ∈ nonRealPart Z, (m z : ℝ) := by
        refine Finset.sum_le_sum fun z hz => ?_
        exact_mod_cast hZ.one_le z (Finset.mem_filter.mp hz).1
  have hmult : ((simpleRealPart Z m).card : ℝ)
        + 2 * ((multipleRealPart Z m).card : ℝ) + ((nonRealPart Z).card : ℝ)
      ≤ ∑ z ∈ Z, (m z : ℝ) := by
    calc
      ((simpleRealPart Z m).card : ℝ)
            + 2 * ((multipleRealPart Z m).card : ℝ) + ((nonRealPart Z).card : ℝ)
          ≤ (∑ x ∈ simpleRealPart Z m, (m x : ℝ))
              + (∑ x ∈ multipleRealPart Z m, (m x : ℝ))
              + ∑ z ∈ nonRealPart Z, (m z : ℝ) := by linarith
      _ = ∑ z ∈ Z, (m z : ℝ) := by
        rw [← Finset.sum_union disjoint_simpleRealPart_multipleRealPart,
          ← Finset.sum_union disjoint_realPart_nonRealPart,
          union_realPart_nonRealPart hZ]
  have htotal := sum_alphaOf_re_eq_sum_mult h hZ hb hsym
  change ∑ j, a j = ∑ z ∈ Z, (m z : ℝ) at htotal
  have hmult_a : ((simpleRealPart Z m).card : ℝ)
        + 2 * ((multipleRealPart Z m).card : ℝ) + ((nonRealPart Z).card : ℝ)
      ≤ ∑ j, a j := by
    rw [htotal]
    exact hmult
  have hrange := three_range_distinct a hdUV hdVN
    (finrank_subspaceU_le h hZ) (finrank_subspaceV_le h Z m)
    (sum_alphaOf_re_le_card_simpleRealPart h hZ hb hsym)
    (fun j hj => alphaOf_re_nonpos h hZ hb (hsym j) hj) hmult_a
  have hbessel := sum_alphaOf_re_sq_le_integral_norm_bigF_sq_adapted h Z m hZ hb hsym
  have hmoment := sum_testKernel_sq_re_eq_integral_norm_bigF_sq h hZ
  have hcardNat : (simpleRealPart Z m).card + (multipleRealPart Z m).card
        + (nonRealPart Z).card = Z.card := by
    rw [← Finset.card_union_of_disjoint disjoint_simpleRealPart_multipleRealPart,
      ← Finset.card_union_of_disjoint disjoint_realPart_nonRealPart,
      union_realPart_nonRealPart hZ]
  have hcard : ((simpleRealPart Z m).card : ℝ)
        + ((multipleRealPart Z m).card : ℝ) + ((nonRealPart Z).card : ℝ)
      = (Z.card : ℝ) := by exact_mod_cast hcardNat
  change 3 * (∑ j, a j) -
      2 * (((simpleRealPart Z m).card : ℝ) +
        ((multipleRealPart Z m).card : ℝ) + ((nonRealPart Z).card : ℝ))
      ≤ ∑ j, a j ^ 2 at hrange
  change ∑ j, a j ^ 2 ≤ _ at hbessel
  rw [← hmoment] at hbessel
  linarith

end ZetaZeros
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
