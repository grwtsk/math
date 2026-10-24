# positive_multiple_ratio_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4312fda-891e-7bd7-1c5a-4e526cc08847",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c3b7369-731e-70f9-0f77-b9491042d218",
  "kind": "theorem",
  "lexical_name": "positive_multiple_ratio_sum_eq",
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
  "slug": "positive-multiple-ratio-sum-eq--3daba0ab51aa1f88421b9ac1",
  "source": {
    "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3daba0ab51aa1f88421b9ac1a06c01d4bdcaa21e9d5bcc6e92187ec40d1ccd29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3b7369-731e-70f9-0f77-b9491042d218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem positive_multiple_ratio_sum_eq (V r : ℕ) (hr : 0 < r) :
    (∑ d ∈ (Finset.Ioc 0 V).filter (fun d ↦ r ∣ d),
        (r : ℝ) / (d : ℝ)) =
      ∑ a ∈ Finset.Ioc 0 (V / r), (a : ℝ)⁻¹ := by
  apply Finset.sum_bij (fun d _ ↦ d / r)
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_Ioc] at hd ⊢
    rcases hd with ⟨⟨hdpos, hdV⟩, hrd⟩
    exact ⟨Nat.div_pos (Nat.le_of_dvd hdpos hrd) hr,
      Nat.div_le_div_right hdV⟩
  · intro d₁ hd₁ d₂ hd₂ hquot
    simp only [Finset.mem_filter] at hd₁ hd₂
    calc
      d₁ = r * (d₁ / r) := (Nat.mul_div_cancel' hd₁.2).symm
      _ = r * (d₂ / r) := by rw [hquot]
      _ = d₂ := Nat.mul_div_cancel' hd₂.2
  · intro a ha
    simp only [Finset.mem_Ioc] at ha
    refine ⟨r * a, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_Ioc]
      refine ⟨⟨Nat.mul_pos hr ha.1, ?_⟩, dvd_mul_right r a⟩
      rw [Nat.mul_comm]
      exact (Nat.le_div_iff_mul_le hr).mp ha.2
    · simp [hr.ne']
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_Ioc] at hd
    rcases hd with ⟨⟨hdpos, _⟩, hrd⟩
    let quotient : ℕ := d / r
    have hquotpos : 0 < quotient := Nat.div_pos (Nat.le_of_dvd hdpos hrd) hr
    have hd_eq : d = r * quotient := (Nat.mul_div_cancel' hrd).symm
    calc
      (r : ℝ) / (d : ℝ) =
          (r : ℝ) / ((r : ℝ) * (quotient : ℝ)) := by
        rw [hd_eq, Nat.cast_mul]
      _ = (quotient : ℝ)⁻¹ := by
        field_simp [hr.ne', hquotpos.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2555ee4232fc512e8ded72e74fedf561bc53a98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
