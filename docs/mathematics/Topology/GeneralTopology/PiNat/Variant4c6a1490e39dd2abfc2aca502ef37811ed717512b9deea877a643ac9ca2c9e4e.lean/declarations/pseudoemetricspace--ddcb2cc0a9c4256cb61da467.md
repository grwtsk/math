# pseudoEMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b00e80a5992c11ba25e5e7e7df0494afe227533fc73e8703772284803ae0020",
  "kind": "def",
  "lexical_name": "pseudoEMetricSpace",
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
  "slug": "pseudoemetricspace--ddcb2cc0a9c4256cb61da467",
  "source": {
    "blob": "e2bda182d92ad616fe5d318db1ee0819ec801897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 844,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddcb2cc0a9c4256cb61da46750487b5b19f000c611c16d7fe87d511e239cc0f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b00e80a5992c11ba25e5e7e7df0494afe227533fc73e8703772284803ae0020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def pseudoEMetricSpace : PseudoEMetricSpace (∀ i, F i) where
  edist_self x := by simp [edist_eq_tsum]
  edist_comm x y := by simp [edist_eq_tsum, edist_comm]
  edist_triangle x y z := calc
        ∑' i, min (2⁻¹ ^ encode i) (edist (x i) (z i))
    _ ≤ ∑' i, (min (2⁻¹ ^ encode i) (edist (x i) (y i)) +
         min (2⁻¹ ^ encode i) (edist (y i) (z i))) := by
      gcongr with n; grw [edist_triangle _ (y n), min_add_distrib, min_le_right]
    _ = _ := ENNReal.tsum_add ..
  toUniformSpace := Pi.uniformSpace _
  uniformity_edist := by
    simp only [Pi.uniformity, comap_iInf, gt_iff_lt, preimage_ofPred_eq, comap_principal,
      PseudoEMetricSpace.uniformity_edist, le_antisymm_iff, le_iInf_iff, le_principal_iff]
    constructor
    · intro ε hε
      obtain ⟨K, hK⟩ : ∃ K : Finset ι, ∑' i : {j // j ∉ K}, 2⁻¹ ^ encode (i : ι) < ε / 2 :=
        ((tendsto_order.1 <| ENNReal.tendsto_tsum_compl_atTop_zero
          (tsum_geometric_encode_lt_top ENNReal.one_half_lt_one).ne).2 _
            <| by simpa using hε.ne').exists
      obtain ⟨δ, δpos, hδ⟩ : ∃ δ, 0 < δ ∧ δ * K.card < ε / 2 :=
        ENNReal.exists_pos_mul_lt (by simp) (by simpa using hε.ne')
      apply @mem_iInf_of_iInter _ _ _ _ _ K.finite_toSet fun i =>
          {p : (∀ i : ι, F i) × ∀ i : ι, F i | edist (p.fst i) (p.snd i) < δ}
      · rintro ⟨i, hi⟩
        refine mem_iInf_of_mem δ (mem_iInf_of_mem δpos ?_)
        simp only [mem_principal, Subset.rfl]
      · rintro ⟨x, y⟩ hxy
        simp only [mem_iInter, mem_ofPred_eq, SetCoe.forall, Finset.mem_coe] at hxy
        calc
          edist x y = ∑' i : ι, min (2⁻¹ ^ encode i) (edist (x i) (y i)) := rfl
          _ = ∑ i ∈ K, min (2⁻¹ ^ encode i) (edist (x i) (y i)) +
                ∑' i : ↑(K : Set ι)ᶜ, min (2⁻¹ ^ encode (i : ι)) (edist (x i) (y i)) :=
            (ENNReal.sum_add_tsum_compl ..).symm
          _ ≤ ∑ i ∈ K, edist (x i) (y i) + ∑' i : ↑(K : Set ι)ᶜ, 2⁻¹ ^ encode (i : ι) := by
            gcongr
            · apply min_le_right
            · apply min_le_left
          _ < ∑ _i ∈ K, δ + ε / 2 := by
            refine ENNReal.add_lt_add_of_le_of_lt (by simpa using fun i hi ↦ (hxy i hi).ne_top) ?_
              hK
            gcongr with i hi
            exact (hxy i hi).le
          _ ≤ ε / 2 + ε / 2 := by gcongr; simpa [mul_comm] using hδ.le
          _ = ε := ENNReal.add_halves _
    · intro i ε hε₀
      have : (0 : ℝ≥0∞) < 2⁻¹ ^ encode i := ENNReal.pow_pos (by norm_num) _
      refine mem_iInf_of_mem (min (2⁻¹ ^ encode i) ε) <| mem_iInf_of_mem (by positivity) ?_
      simp only [and_imp, Prod.forall, ofPred_subset_ofPred, lt_min_iff, mem_principal]
      intro x y hn
      exact (edist_le_edist_pi_of_edist_lt hn).trans_lt

end PseudoEMetricSpace

attribute [scoped instance] PiCountable.pseudoEMetricSpace

section EMetricSpace
variable [∀ i, EMetricSpace (F i)]

/-- Given a countable family of extended metric spaces,
one may put an extended distance on their product `Π i, E i`.

It is highly non-canonical, though, and therefore not registered as a global instance.
The distance we use here is `edist x y = ∑' i, min (1/2)^(encode i) (edist (x i) (y i))`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bda182d92ad616fe5d318db1ee0819ec801897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
