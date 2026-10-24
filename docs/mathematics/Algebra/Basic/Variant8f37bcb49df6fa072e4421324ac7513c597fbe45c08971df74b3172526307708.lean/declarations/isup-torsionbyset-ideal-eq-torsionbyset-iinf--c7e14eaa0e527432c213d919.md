# iSup_torsionBySet_ideal_eq_torsionBySet_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfa54a53e844ab9233c068126bc5554b0cc02ed3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f37bcb49df6fa072e4421324ac7513c597fbe45c08971df74b3172526307708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cff9b45-70ca-d6fe-fcb8-59ceb97808a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dca80528-2703-30ec-ff18-c92dee757b00",
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
  "slug": "isup-torsionbyset-ideal-eq-torsionbyset-iinf--c7e14eaa0e527432c213d919",
  "source": {
    "blob": "dfa54a53e844ab9233c068126bc5554b0cc02ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 420,
    "path": "GRWTSK/Algebra/Basic/Variant8f37bcb49df6fa072e4421324ac7513c597fbe45c08971df74b3172526307708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e14eaa0e527432c213d91913583114301bc577d9d7b9182a8e8270d7289b21",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8f37bcb49df6fa072e4421324ac7513c597fbe45c08971df74b3172526307708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dca80528-2703-30ec-ff18-c92dee757b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_torsionBySet_ideal_eq_torsionBySet_iInf
    (hp : (S : Set ι).Pairwise fun i j => p i ⊔ p j = ⊤) :
    ⨆ i ∈ S, torsionBySet R M (p i) = torsionBySet R M ↑(⨅ i ∈ S, p i) := by
  rcases S.eq_empty_or_nonempty with h | h
  · simp [h]
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
    refine ⟨fun i => ⟨(μ i : R) • x, ?_⟩, ?_⟩
    · rw [mem_torsionBySet_iff] at hx ⊢
      rintro ⟨a, ha⟩
      rw [smul_smul]
      suffices a * μ i ∈ ⨅ i ∈ S, p i from hx ⟨_, this⟩
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8f37bcb49df6fa072e4421324ac7513c597fbe45c08971df74b3172526307708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8f37bcb49df6fa072e4421324ac7513c597fbe45c08971df74b3172526307708.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa54a53e844ab9233c068126bc5554b0cc02ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
