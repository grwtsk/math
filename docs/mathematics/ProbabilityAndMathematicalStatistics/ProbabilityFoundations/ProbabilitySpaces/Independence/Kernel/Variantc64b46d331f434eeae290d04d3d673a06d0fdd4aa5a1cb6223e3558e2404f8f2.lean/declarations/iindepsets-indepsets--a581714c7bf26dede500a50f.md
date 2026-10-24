# iIndepSets.indepSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:441f19e7-42ef-30fa-c8c5-14b20b6342f0",
  "kind": "theorem",
  "lexical_name": "iIndepSets.indepSets",
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
  "slug": "iindepsets-indepsets--a581714c7bf26dede500a50f",
  "source": {
    "blob": "6b11a3760d5a40fc5cb1c50b429ce8d65e150314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 254,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a581714c7bf26dede500a50f367fec3b7778d22c0b0c0b0ce5b568899d0e739a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:441f19e7-42ef-30fa-c8c5-14b20b6342f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepSets.indepSets {s : ι → Set (Set Ω)} {_mΩ : MeasurableSpace Ω}
    {κ : kernel α Ω} {μ : Measure α} (h_indep : iIndepSets s κ μ) {i j : ι} (hij : i ≠ j) :
    IndepSets (s i) (s j) κ μ := by
  classical
  intro t₁ t₂ ht₁ ht₂
  have hf_m : ∀ x : ι, x ∈ ({i, j} : Finset ι) → ite (x = i) t₁ t₂ ∈ s x := by
    intro x hx
    cases' Finset.mem_insert.mp hx with hx hx
    · simp [hx, ht₁]
    · simp [Finset.mem_singleton.mp hx, hij.symm, ht₂]
  have h1 : t₁ = ite (i = i) t₁ t₂ := by simp only [if_true, eq_self_iff_true]
  have h2 : t₂ = ite (j = i) t₁ t₂ := by simp only [hij.symm, if_false]
  have h_inter : ⋂ (t : ι) (_ : t ∈ ({i, j} : Finset ι)), ite (t = i) t₁ t₂ =
      ite (i = i) t₁ t₂ ∩ ite (j = i) t₁ t₂ := by
    simp only [Finset.set_biInter_singleton, Finset.set_biInter_insert]
  filter_upwards [h_indep {i, j} hf_m] with a h_indep'
  have h_prod : (∏ t : ι in ({i, j} : Finset ι), κ a (ite (t = i) t₁ t₂))
      = κ a (ite (i = i) t₁ t₂) * κ a (ite (j = i) t₁ t₂) := by
    simp only [hij, Finset.prod_singleton, Finset.prod_insert, not_false_iff,
      Finset.mem_singleton]
  rw [h1]
  nth_rw 2 [h2]
  nth_rw 4 [h2]
  rw [← h_inter, ← h_prod, h_indep']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b11a3760d5a40fc5cb1c50b429ce8d65e150314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
