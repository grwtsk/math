# QuotientGroup.completeSpace'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7e72c33d10a5b1d39170a77a03f6cd691883f4c35fa7499d93537f23a3b7d19",
  "kind": "instance",
  "lexical_name": "QuotientGroup.completeSpace'",
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
  "slug": "quotientgroup-completespace--0a753b56e04e746b3dd1ad00",
  "source": {
    "blob": "9806d296e7fa4c77a4cb143734ab3e4a722b7f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1006,
    "line": 906,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a753b56e04e746b3dd1ad008312ab8afa36ff2fa233995401b5c313002637c5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7e72c33d10a5b1d39170a77a03f6cd691883f4c35fa7499d93537f23a3b7d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–1006.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance QuotientGroup.completeSpace' (G : Type u) [Group G] [TopologicalSpace G]
    [TopologicalGroup G] [FirstCountableTopology G] (N : Subgroup G) [N.Normal]
    [@CompleteSpace G (TopologicalGroup.toUniformSpace G)] :
    @CompleteSpace (G ⧸ N) (TopologicalGroup.toUniformSpace (G ⧸ N)) := by
  /- Since `G ⧸ N` is a topological group it is a uniform space, and since `G` is first countable
    the uniformities of both `G` and `G ⧸ N` are countably generated. Moreover, we may choose a
    sequential antitone neighborhood basis `u` for `𝓝 (1 : G)` so that `(u (n + 1)) ^ 2 ⊆ u n`, and
    this descends to an antitone neighborhood basis `v` for `𝓝 (1 : G ⧸ N)`. Since `𝓤 (G ⧸ N)` is
    countably generated, it suffices to show any Cauchy sequence `x` converges. -/
  letI : UniformSpace (G ⧸ N) := TopologicalGroup.toUniformSpace (G ⧸ N)
  letI : UniformSpace G := TopologicalGroup.toUniformSpace G
  haveI : (𝓤 (G ⧸ N)).IsCountablyGenerated := comap.isCountablyGenerated _ _
  obtain ⟨u, hu, u_mul⟩ := TopologicalGroup.exists_antitone_basis_nhds_one G
  obtain ⟨hv, v_anti⟩ := @HasAntitoneBasis.map _ _ _ _ _ _ ((↑) : G → G ⧸ N) hu
  rw [← QuotientGroup.nhds_eq N 1, QuotientGroup.mk_one] at hv
  refine' UniformSpace.complete_of_cauchySeq_tendsto fun x hx => _
  /- Given `n : ℕ`, for sufficiently large `a b : ℕ`, given any lift of `x b`, we can find a lift
    of `x a` such that the quotient of the lifts lies in `u n`. -/
  have key₀ : ∀ i j : ℕ, ∃ M : ℕ, j < M ∧ ∀ a b : ℕ, M ≤ a → M ≤ b →
      ∀ g : G, x b = g → ∃ g' : G, g / g' ∈ u i ∧ x a = g' := by
    have h𝓤GN : (𝓤 (G ⧸ N)).HasBasis (fun _ => True) fun i => { x | x.snd / x.fst ∈ (↑) '' u i } :=
      by simpa [uniformity_eq_comap_nhds_one'] using hv.comap _
    rw [h𝓤GN.cauchySeq_iff] at hx
    simp only [ge_iff_le, mem_setOf_eq, forall_true_left, mem_image] at hx
    intro i j
    rcases hx i with ⟨M, hM⟩
    refine' ⟨max j M + 1, (le_max_left _ _).trans_lt (lt_add_one _), fun a b ha hb g hg => _⟩
    obtain ⟨y, y_mem, hy⟩ :=
      hM a (((le_max_right j _).trans (lt_add_one _).le).trans ha) b
        (((le_max_right j _).trans (lt_add_one _).le).trans hb)
    refine'
      ⟨y⁻¹ * g, by
        simpa only [div_eq_mul_inv, mul_inv_rev, inv_inv, mul_inv_cancel_left] using y_mem, _⟩
    rw [QuotientGroup.mk_mul, QuotientGroup.mk_inv, hy, hg, inv_div, div_mul_cancel']
  /- Inductively construct a subsequence `φ : ℕ → ℕ` using `key₀` so that if `a b : ℕ` exceed
    `φ (n + 1)`, then we may find lifts whose quotients lie within `u n`. -/
  set φ : ℕ → ℕ := fun n => Nat.recOn n (choose <| key₀ 0 0) fun k yk => choose <| key₀ (k + 1) yk
  have hφ :
    ∀ n : ℕ,
      φ n < φ (n + 1) ∧
        ∀ a b : ℕ,
          φ (n + 1) ≤ a →
            φ (n + 1) ≤ b → ∀ g : G, x b = g → ∃ g' : G, g / g' ∈ u (n + 1) ∧ x a = g' :=
    fun n => choose_spec (key₀ (n + 1) (φ n))
  /- Inductively construct a sequence `x' n : G` of lifts of `x (φ (n + 1))` such that quotients of
    successive terms lie in `x' n / x' (n + 1) ∈ u (n + 1)`. We actually need the proofs that each
    term is a lift to construct the next term, so we use a Σ-type. -/
  set x' : ∀ n, PSigma fun g : G => x (φ (n + 1)) = g := fun n =>
    Nat.recOn n
      ⟨choose (QuotientGroup.mk_surjective (x (φ 1))),
        (choose_spec (QuotientGroup.mk_surjective (x (φ 1)))).symm⟩
      fun k hk =>
      ⟨choose <| (hφ k).2 _ _ (hφ (k + 1)).1.le le_rfl hk.fst hk.snd,
        (choose_spec <| (hφ k).2 _ _ (hφ (k + 1)).1.le le_rfl hk.fst hk.snd).2⟩
  have hx' : ∀ n : ℕ, (x' n).fst / (x' (n + 1)).fst ∈ u (n + 1) := fun n =>
    (choose_spec <| (hφ n).2 _ _ (hφ (n + 1)).1.le le_rfl (x' n).fst (x' n).snd).1
  /- The sequence `x'` is Cauchy. This is where we exploit the condition on `u`. The key idea
    is to show by decreasing induction that `x' m / x' n ∈ u m` if `m ≤ n`. -/
  have x'_cauchy : CauchySeq fun n => (x' n).fst := by
    have h𝓤G : (𝓤 G).HasBasis (fun _ => True) fun i => { x | x.snd / x.fst ∈ u i } := by
      simpa [uniformity_eq_comap_nhds_one'] using hu.toHasBasis.comap _
    rw [h𝓤G.cauchySeq_iff']
    simp only [ge_iff_le, mem_setOf_eq, forall_true_left]
    exact fun m =>
      ⟨m, fun n hmn =>
        Nat.decreasingInduction'
          (fun k _ _ hk => u_mul k ⟨_, _, hx' k, hk, div_mul_div_cancel' _ _ _⟩) hmn
          (by simpa only [div_self'] using mem_of_mem_nhds (hu.mem _))⟩
  /- Since `G` is complete, `x'` converges to some `x₀`, and so the image of this sequence under
    the quotient map converges to `↑x₀`. The image of `x'` is a convergent subsequence of `x`, and
    since `x` is Cauchy, this implies it converges. -/
  rcases cauchySeq_tendsto_of_complete x'_cauchy with ⟨x₀, hx₀⟩
  refine'
    ⟨↑x₀,
      tendsto_nhds_of_cauchySeq_of_subseq hx
        (strictMono_nat_of_lt_succ fun n => (hφ (n + 1)).1).tendsto_atTop _⟩
  convert ((continuous_coinduced_rng : Continuous ((↑) : G → G ⧸ N)).tendsto x₀).comp hx₀
  exact funext fun n => (x' n).snd
#align quotient_group.complete_space' QuotientGroup.completeSpace'
#align quotient_add_group.complete_space' QuotientAddGroup.completeSpace'

/-- The quotient `G ⧸ N` of a complete first countable uniform group `G` by a normal subgroup
is itself complete. In contrast to `QuotientGroup.completeSpace'`, in this version `G` is
already equipped with a uniform structure.
[N. Bourbaki, *General Topology*, IX.3.1 Proposition 4][bourbaki1966b]

Even though `G` is equipped with a uniform structure, the quotient `G ⧸ N` does not inherit a
uniform structure, so it is still provided manually via `TopologicalGroup.to_uniformSpace`.
In the most common use cases, this coincides (definitionally) with the uniform structure on the
quotient obtained via other means.  -/
@[to_additive "The quotient `G ⧸ N` of a complete first countable uniform additive group
`G` by a normal additive subgroup is itself complete. Consequently, quotients of Banach spaces by
subspaces are complete. In contrast to `QuotientAddGroup.completeSpace'`, in this version
`G` is already equipped with a uniform structure.
[N. Bourbaki, *General Topology*, IX.3.1 Proposition 4][bourbaki1966b]

Even though `G` is equipped with a uniform structure, the quotient `G ⧸ N` does not inherit a
uniform structure, so it is still provided manually via `TopologicalAddGroup.to_uniformSpace`.
In the most common use case ─ quotients of normed additive commutative groups by subgroups ─
significant care was taken so that the uniform structure inherent in that setting coincides
(definitionally) with the uniform structure provided here."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9806d296e7fa4c77a4cb143734ab3e4a722b7f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
