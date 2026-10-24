# not_disjoint_segment_convexHull_triple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49a0b36e-b719-372b-17ff-3718eda60555",
  "kind": "theorem",
  "lexical_name": "not_disjoint_segment_convexHull_triple",
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
  "slug": "not-disjoint-segment-convexhull-triple--0c182e89857c26849d7d39a0",
  "source": {
    "blob": "63ea39594b53779486abc4695c6c90f4d9b0eb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 37,
    "path": "GRWTSK/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c182e89857c26849d7d39a07cdee66591345d846954079932cd7b1ba4e11f39",
  "verification": {
    "reference": "docs/verification/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49a0b36e-b719-372b-17ff-3718eda60555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_disjoint_segment_convexHull_triple {p q u v x y z : E} (hz : z ∈ segment 𝕜 x y)
    (hu : u ∈ segment 𝕜 x p) (hv : v ∈ segment 𝕜 y q) :
    ¬Disjoint (segment 𝕜 u v) (convexHull 𝕜 {p, q, z}) := by
  rw [not_disjoint_iff]
  obtain ⟨az, bz, haz, hbz, habz, rfl⟩ := hz
  obtain rfl | haz' := haz.eq_or_lt
  · rw [zero_add] at habz
    rw [zero_smul, zero_add, habz, one_smul]
    refine ⟨v, by apply right_mem_segment, segment_subset_convexHull ?_ ?_ hv⟩ <;> simp
  obtain ⟨av, bv, hav, hbv, habv, rfl⟩ := hv
  obtain rfl | hav' := hav.eq_or_lt
  · rw [zero_add] at habv
    rw [zero_smul, zero_add, habv, one_smul]
    exact ⟨q, right_mem_segment _ _ _, subset_convexHull _ _ <| by simp⟩
  obtain ⟨au, bu, hau, hbu, habu, rfl⟩ := hu
  have hab : 0 < az * av + bz * au := by positivity
  refine ⟨(az * av / (az * av + bz * au)) • (au • x + bu • p) +
    (bz * au / (az * av + bz * au)) • (av • y + bv • q), ⟨_, _, ?_, ?_, ?_, rfl⟩, ?_⟩
  · positivity
  · positivity
  · rw [← add_div, div_self]; positivity
  classical
    let w : Fin 3 → 𝕜 := ![az * av * bu, bz * au * bv, au * av]
    let z : Fin 3 → E := ![p, q, az • x + bz • y]
    have hw₀ : ∀ i, 0 ≤ w i := by
      rintro i
      fin_cases i
      · exact mul_nonneg (mul_nonneg haz hav) hbu
      · exact mul_nonneg (mul_nonneg hbz hau) hbv
      · exact mul_nonneg hau hav
    have hw : ∑ i, w i = az * av + bz * au := by
      trans az * av * bu + (bz * au * bv + au * av)
      · simp [w, Fin.sum_univ_succ, Fin.sum_univ_zero]
      linear_combination (au * bv - 1 * au) * habz + (-(1 * az * au) + au) * habv + az * av * habu
    have hz : ∀ i, z i ∈ ({p, q, az • x + bz • y} : Set E) := fun i => by fin_cases i <;> simp [z]
    convert (Finset.centerMass_mem_convexHull (Finset.univ : Finset (Fin 3)) (fun i _ => hw₀ i)
        (by rwa [hw]) fun i _ => hz i : Finset.univ.centerMass w z ∈ _)
    rw [Finset.centerMass, hw]
    trans (az * av + bz * au)⁻¹ •
      ((az * av * bu) • p + ((bz * au * bv) • q + (au * av) • (az • x + bz • y)))
    · module
    congr 3
    simp [w, z]

/-- **Stone's Separation Theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/StoneSeparation/Variant54e8c43e42a9bf8e3238cf1b8379d8a459866f79cc024544917682044102fc4c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ea39594b53779486abc4695c6c90f4d9b0eb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
