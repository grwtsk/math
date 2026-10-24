# squareDivisorSqrtMass_eq_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:538c5cab-1e56-30c7-2a28-df1ef0701390",
  "kind": "theorem",
  "lexical_name": "squareDivisorSqrtMass_eq_quotient",
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
  "slug": "squaredivisorsqrtmass-eq-quotient--1bfd3e4606a46c0c8b6fba81",
  "source": {
    "blob": "87b831ee0a8ae456bbd929d97205358010f68b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bfd3e4606a46c0c8b6fba814b45005fdfaa63cf15063e446687e212f7f354f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:538c5cab-1e56-30c7-2a28-df1ef0701390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisorSqrtMass_eq_quotient {U k : ℕ} (hk : 1 ≤ k) :
    squareDivisorSqrtMass U k =
      ∑ m ∈ Finset.Icc 1 (U / (k * k)), 1 / Real.sqrt ((k * k * m : ℕ) : ℝ) := by
  classical
  have hkk : 0 < k * k := Nat.mul_pos (by omega) (by omega)
  unfold squareDivisorSqrtMass
  rw [← Finset.sum_filter]
  apply Finset.sum_bij' (fun n _ => n / (k * k)) (fun m _ => k * k * m)
  · intro n hn
    obtain ⟨hnI, hd⟩ := Finset.mem_filter.mp hn
    obtain ⟨hn1, hnU⟩ := Finset.mem_Icc.mp hnI
    refine Finset.mem_Icc.mpr ⟨?_, Nat.div_le_div_right hnU⟩
    have he := Nat.div_mul_cancel hd
    apply Nat.one_le_iff_ne_zero.mpr
    intro hz
    rw [hz, zero_mul] at he
    omega
  · intro m hm
    obtain ⟨hm1, hmU⟩ := Finset.mem_Icc.mp hm
    refine Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ⟨m, rfl⟩⟩
    · have hp := Nat.mul_pos hkk (show 0 < m by omega)
      omega
    · have he := (Nat.le_div_iff_mul_le hkk).mp hmU
      simpa only [Nat.mul_comm] using he
  · intro n hn
    obtain ⟨_, hd⟩ := Finset.mem_filter.mp hn
    simpa only [Nat.mul_comm] using Nat.div_mul_cancel hd
  · intro m _
    exact Nat.mul_div_cancel_left m hkk
  · intro n hn
    obtain ⟨_, hd⟩ := Finset.mem_filter.mp hn
    rw [Nat.mul_div_cancel' hd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b831ee0a8ae456bbd929d97205358010f68b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
