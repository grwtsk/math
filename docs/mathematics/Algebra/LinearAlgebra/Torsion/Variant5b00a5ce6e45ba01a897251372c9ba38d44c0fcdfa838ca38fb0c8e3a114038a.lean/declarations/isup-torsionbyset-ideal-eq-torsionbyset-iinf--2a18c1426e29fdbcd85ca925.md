# iSup_torsionBySet_ideal_eq_torsionBySet_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30600426-1443-1544-b021-d8d7e0c107f3",
  "kind": "theorem",
  "lexical_name": "iSup_torsionBySet_ideal_eq_torsionBySet_iInf",
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
  "slug": "isup-torsionbyset-ideal-eq-torsionbyset-iinf--2a18c1426e29fdbcd85ca925",
  "source": {
    "blob": "c6c2b3964fef8160f053423876017d6a04bff75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 403,
    "path": "GRWTSK/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a18c1426e29fdbcd85ca925c6168f892c2f7ee86830b3f32b407493efd24cae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30600426-1443-1544-b021-d8d7e0c107f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_torsionBySet_ideal_eq_torsionBySet_iInf [DecidableEq ι] :
    ⨆ i ∈ S, torsionBySet R M (p i) = torsionBySet R M ↑(⨅ i ∈ S, p i) := by
  cases' S.eq_empty_or_nonempty with h h
  · simp only [h]
    -- Porting note: converts were not cooperating
    convert iSup_emptyset (f := fun i => torsionBySet R M (p i)) <;> simp
  apply le_antisymm
  · apply iSup_le _
    intro i
    apply iSup_le _
    intro is
    apply torsionBySet_le_torsionBySet_of_subset
    exact (iInf_le (fun i => ⨅ _ : i ∈ S, p i) i).trans (iInf_le _ is)
  · intro x hx
    rw [mem_iSup_finset_iff_exists_sum]
    obtain ⟨μ, hμ⟩ :=
      (mem_iSup_finset_iff_exists_sum _ _).mp
        ((Ideal.eq_top_iff_one _).mp <| (Ideal.iSup_iInf_eq_top_iff_pairwise h _).mpr hp)
    refine' ⟨fun i => ⟨(μ i : R) • x, _⟩, _⟩
    · rw [mem_torsionBySet_iff] at hx ⊢
      rintro ⟨a, ha⟩
      rw [smul_smul]
      suffices : a * μ i ∈ ⨅ i ∈ S, p i
      exact hx ⟨_, this⟩
      rw [mem_iInf]
      intro j
      rw [mem_iInf]
      intro hj
      by_cases ij : j = i
      · rw [ij]
        exact Ideal.mul_mem_right _ _ ha
      · have := coe_mem (μ i)
        simp only [mem_iInf] at this
        exact Ideal.mul_mem_left _ _ (this j hj ij)
    · rw [← Finset.sum_smul, hμ, one_smul]
#align submodule.supr_torsion_by_ideal_eq_torsion_by_infi Submodule.iSup_torsionBySet_ideal_eq_torsionBySet_iInf

-- Porting note: iSup_torsionBySet_ideal_eq_torsionBySet_iInf now requires DecidableEq ι
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Torsion/Variant5b00a5ce6e45ba01a897251372c9ba38d44c0fcdfa838ca38fb0c8e3a114038a.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c2b3964fef8160f053423876017d6a04bff75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
