# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad70dcdbced195910e7d2780118eb47729df8b1081e13fb76da9299b9fd0a61",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ab454f9e50022d7cda674d57",
  "source": {
    "blob": "8d2367dab81b141c4e5121c14e4156f4728cdb3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 44,
    "path": "GRWTSK/Topology/MetricTopology/Paracompact/Variant0d4b2905c020bc3b1abd6cf8670441addde0a79412242a33b1a8dec1d02b3b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab454f9e50022d7cda674d571c8151bffa2c0f5a2f9183de25438b5a3a8441ed",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Paracompact/Variant0d4b2905c020bc3b1abd6cf8670441addde0a79412242a33b1a8dec1d02b3b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad70dcdbced195910e7d2780118eb47729df8b1081e13fb76da9299b9fd0a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) instParacompactSpace [PseudoEMetricSpace α] : ParacompactSpace α := by
  /- We start with trivial observations about `1 / 2 ^ k`. Here and below we use `1 / 2 ^ k` in
    the comments and `2⁻¹ ^ k` in the code. -/
  have pow_pos : ∀ k : ℕ, (0 : ℝ≥0∞) < 2⁻¹ ^ k := fun k =>
    ENNReal.pow_pos (ENNReal.inv_pos.2 ENNReal.ofNat_ne_top) _
  have hpow_le : ∀ {m n : ℕ}, m ≤ n → (2⁻¹ : ℝ≥0∞) ^ n ≤ 2⁻¹ ^ m := @fun m n h =>
    pow_le_pow_right_of_le_one' (ENNReal.inv_le_one.2 ENNReal.one_lt_two.le) h
  have h2pow : ∀ n : ℕ, 2 * (2⁻¹ : ℝ≥0∞) ^ (n + 1) = 2⁻¹ ^ n := fun n => by
    simp [pow_succ', ← mul_assoc, ENNReal.mul_inv_cancel two_ne_zero ofNat_ne_top]
  -- Consider an open covering `S : Set (Set α)`
  refine ⟨fun ι s ho hcov => ?_⟩
  simp only [iUnion_eq_univ_iff] at hcov
  -- choose a well-founded order on `S`
  obtain ⟨_, wf⟩ := exists_wellFoundedLT ι
  -- Let `ind x` be the minimal index `s : S` such that `x ∈ s`.
  let ind (x : α) : ι := wellFounded_lt.min { i : ι | x ∈ s i } (hcov x)
  have mem_ind (x) : x ∈ s (ind x) := wellFounded_lt.min_mem _ (hcov x)
  have notMem_of_lt_ind {x i} (hlt : i < ind x) (hxi : x ∈ s i) : False :=
    wellFounded_lt.not_lt_min {i | x ∈ s i} hxi hlt
  /- The refinement `D : ℕ → ι → Set α` is defined recursively. For each `n` and `i`, `D n i`
    is the union of balls `ball x (1 / 2 ^ n)` over all points `x` such that

    * `ind x = i`;
    * `x` does not belong to any `D m j`, `m < n`;
    * `ball x (3 / 2 ^ n) ⊆ s i`;

    We define this sequence using `Nat.strongRec`, then restate it as `Dn` and `memD`.
  -/
  set D : ℕ → ι → Set α :=
    Nat.strongRec fun n D' i ↦
      ⋃ (x : α) (hxs : ind x = i) (hb : eball x (3 * 2⁻¹ ^ n) ⊆ s i) (hlt :
        ∀ (m : ℕ) (H : m < n), ∀ (j : ι), x ∉ D' m H j), eball x (2⁻¹ ^ n) with hD
  have Dn (n i) : D n i = ⋃ (x : α) (hxs : ind x = i) (hb : eball x (3 * 2⁻¹ ^ n) ⊆ s i)
      (hlt : ∀ m < n, ∀ (j : ι), x ∉ D m j), eball x (2⁻¹ ^ n) := by
    simp only [hD]
    rw [Nat.strongRec_eq]
  have memD {n i y} :
      y ∈ D n i ↔ ∃ x : α, ind x = i ∧ eball x (3 * 2⁻¹ ^ n) ⊆ s i ∧
        (∀ m < n, ∀ (j : ι), x ∉ D m j) ∧ edist y x < 2⁻¹ ^ n := by
    rw [Dn n i]
    simp only [mem_iUnion, mem_eball, exists_prop]
  -- The sets `D n i` cover the whole space. Indeed, for each `x` we can choose `n` such that
  -- `ball x (3 / 2 ^ n) ⊆ s (ind x)`, then either `x ∈ D n i`, or `x ∈ D m i` for some `m < n`.
  have Dcov (x) : ∃ n i, x ∈ D n i := by
    obtain ⟨n, hn⟩ : ∃ n : ℕ, eball x (3 * 2⁻¹ ^ n) ⊆ s (ind x) := by
      -- This proof takes 5 lines because we can't import `specific_limits` here
      rcases EMetric.isOpen_iff.1 (ho <| ind x) x (mem_ind x) with ⟨ε, ε0, hε⟩
      have : 0 < ε / 3 := ENNReal.div_pos_iff.2 ⟨ε0.lt.ne', ENNReal.coe_ne_top⟩
      rcases ENNReal.exists_inv_two_pow_lt this.ne' with ⟨n, hn⟩
      refine ⟨n, Subset.trans (eball_subset_eball ?_) hε⟩
      simpa only [div_eq_mul_inv, mul_comm] using (ENNReal.mul_lt_of_lt_div hn).le
    by_contra! h
    apply h n (ind x)
    exact memD.2 ⟨x, rfl, hn, fun _ _ _ => h _ _, mem_eball_self (pow_pos _)⟩
  -- Each `D n i` is a union of open balls, hence it is an open set
  have Dopen (n i) : IsOpen (D n i) := by
    rw [Dn]
    iterate 4 refine isOpen_iUnion fun _ => ?_
    exact isOpen_eball
  -- the covering `D n i` is a refinement of the original covering: `D n i ⊆ s i`
  have HDS (n i) : D n i ⊆ s i := fun x => by
    rw [memD]
    rintro ⟨y, rfl, hsub, -, hyx⟩
    refine hsub (hyx.trans_le <| le_mul_of_one_le_left' ?_)
    norm_num1
  -- Let us show the rest of the properties. Since the definition expects a family indexed
  -- by a single parameter, we use `ℕ × ι` as the domain.
  refine ⟨ℕ × ι, fun ni => D ni.1 ni.2, fun _ => Dopen _ _, ?_, ?_, fun ni => ⟨ni.2, HDS _ _⟩⟩
  -- The sets `D n i` cover the whole space as we proved earlier
  · refine iUnion_eq_univ_iff.2 fun x ↦ ?_
    rcases Dcov x with ⟨n, i, h⟩
    exact ⟨⟨n, i⟩, h⟩
  /- Let us prove that the covering `D n i` is locally finite. Take a point `x` and choose
    `n`, `i` so that `x ∈ D n i`. Since `D n i` is an open set, we can choose `k` so that
    `B = ball x (1 / 2 ^ (n + k + 1)) ⊆ D n i`. -/
  · intro x
    rcases Dcov x with ⟨n, i, hn⟩
    have : D n i ∈ 𝓝 x := IsOpen.mem_nhds (Dopen _ _) hn
    rcases (nhds_basis_uniformity uniformity_basis_edist_inv_two_pow).mem_iff.1 this with
      ⟨k, -, hsub : eball x (2⁻¹ ^ k) ⊆ D n i⟩
    set B := eball x (2⁻¹ ^ (n + k + 1))
    refine ⟨B, eball_mem_nhds _ (pow_pos _), ?_⟩
    -- The sets `D m i`, `m > n + k`, are disjoint with `B`
    have Hgt (m) (hm : n + k + 1 ≤ m) (i : ι) : Disjoint (D m i) B := by
      rw [disjoint_iff_inf_le]
      rintro y ⟨hym, hyx⟩
      rcases memD.1 hym with ⟨z, rfl, _hzi, H, hz⟩
      have : z ∉ eball x (2⁻¹ ^ k) := fun hz' => H n (by lia) i (hsub hz')
      apply this
      calc
        edist z x ≤ edist y z + edist y x := edist_triangle_left _ _ _
        _ < 2⁻¹ ^ m + 2⁻¹ ^ (n + k + 1) := ENNReal.add_lt_add hz hyx
        _ ≤ 2⁻¹ ^ (k + 1) + 2⁻¹ ^ (k + 1) :=
          (add_le_add (hpow_le <| by lia) (hpow_le <| by lia))
        _ = 2⁻¹ ^ k := by rw [← two_mul, h2pow]
    -- For each `m ≤ n + k` there is at most one `j` such that `D m j ∩ B` is nonempty.
    have Hle (m) (hm : m ≤ n + k) : Set.Subsingleton { j | (D m j ∩ B).Nonempty } := by
      rintro j₁ ⟨y, hyD, hyB⟩ j₂ ⟨z, hzD, hzB⟩
      by_contra h' : j₁ ≠ j₂
      wlog h : j₁ < j₂ generalizing j₁ j₂ y z
      · exact this z hzD hzB y hyD hyB h'.symm (h'.lt_or_gt.resolve_left h)
      rcases memD.1 hyD with ⟨y', rfl, hsuby, -, hdisty⟩
      rcases memD.1 hzD with ⟨z', rfl, -, -, hdistz⟩
      suffices edist z' y' < 3 * 2⁻¹ ^ m from notMem_of_lt_ind h (hsuby this)
      calc
        edist z' y' ≤ edist z' x + edist x y' := edist_triangle _ _ _
        _ ≤ edist z z' + edist z x + (edist y x + edist y y') :=
          (add_le_add (edist_triangle_left _ _ _) (edist_triangle_left _ _ _))
        _ < 2⁻¹ ^ m + 2⁻¹ ^ (n + k + 1) + (2⁻¹ ^ (n + k + 1) + 2⁻¹ ^ m) := by
          apply_rules [ENNReal.add_lt_add]
        _ = 2 * (2⁻¹ ^ m + 2⁻¹ ^ (n + k + 1)) := by simp only [two_mul, add_comm]
        _ ≤ 2 * (2⁻¹ ^ m + 2⁻¹ ^ (m + 1)) := by
          gcongr 2 * (_ + ?_); exact hpow_le (add_le_add hm le_rfl)
        _ = 3 * 2⁻¹ ^ m := by
          rw [mul_add, h2pow, ← two_add_one_eq_three, add_mul, one_mul]
    -- Finally, we glue `Hgt` and `Hle`
    have : (⋃ (m ≤ n + k) (i ∈ { i : ι | (D m i ∩ B).Nonempty }), {(m, i)}).Finite :=
      (finite_le_nat _).biUnion' fun i hi =>
        (Hle i hi).finite.biUnion' fun _ _ => finite_singleton _
    refine this.subset fun I hI => ?_
    simp only [mem_iUnion]
    refine ⟨I.1, ?_, I.2, hI, rfl⟩
    exact not_lt.1 fun hlt => (Hgt I.1 hlt I.2).le_bot hI.choose_spec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Paracompact/Variant0d4b2905c020bc3b1abd6cf8670441addde0a79412242a33b1a8dec1d02b3b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Paracompact/Variant0d4b2905c020bc3b1abd6cf8670441addde0a79412242a33b1a8dec1d02b3b2a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2367dab81b141c4e5121c14e4156f4728cdb3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
