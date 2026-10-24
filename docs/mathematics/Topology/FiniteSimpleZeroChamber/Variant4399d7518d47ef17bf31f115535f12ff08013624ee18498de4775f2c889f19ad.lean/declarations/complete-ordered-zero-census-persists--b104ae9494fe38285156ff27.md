# complete_ordered_zero_census_persists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:474d6343-ea9d-7fff-daa7-869945f6c25f",
  "kind": "theorem",
  "lexical_name": "complete_ordered_zero_census_persists",
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
  "slug": "complete-ordered-zero-census-persists--b104ae9494fe38285156ff27",
  "source": {
    "blob": "940cfb9c5344d9fae6cd694262c4471590408caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 23,
    "path": "GRWTSK/Topology/FiniteSimpleZeroChamber/Variant4399d7518d47ef17bf31f115535f12ff08013624ee18498de4775f2c889f19ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b104ae9494fe38285156ff2728fc36ab7a14e76e054e38e7da9dc7ff7c3c20e8",
  "verification": {
    "reference": "docs/verification/Topology/FiniteSimpleZeroChamber/Variant4399d7518d47ef17bf31f115535f12ff08013624ee18498de4775f2c889f19ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:474d6343-ea9d-7fff-daa7-869945f6c25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_ordered_zero_census_persists {n : ℕ} {g : ℝ × ℝ → ℝ}
    {l₀ a b : ℝ} (x₀ : Fin n → ℝ)
    (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀,x))
    (hinside : ∀ i, x₀ i ∈ Ioo a b)
    (horder : StrictMono x₀)
    (hcensus : ∀ x ∈ Icc a b, g (l₀,x) = 0 ↔ ∃ i, x₀ i = x)
    (hsimple : ∀ i, spatialSlope g (l₀,x₀ i) ≠ 0) :
    ∃ (z : Fin n → ℝ → ℝ) (U : Set ℝ), IsOpen U ∧ l₀ ∈ U ∧
      (∀ i, z i l₀ = x₀ i ∧ ContDiffOn ℝ 1 (z i) U) ∧
      (∀ l ∈ U, StrictMono (fun i => z i l) ∧
        (∀ i, z i l ∈ Ioo a b) ∧
        (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x)) := by
  have hg : ∀ i, ∃ z : ℝ → ℝ, z l₀ = x₀ i ∧ ContDiffAt ℝ 1 z l₀ ∧
      (∀ᶠ l in 𝓝 l₀, g (l,z l) = 0) ∧
      (∀ᶠ v in 𝓝 (l₀,x₀ i), g v = 0 ↔ z v.1 = v.2) := by
    intro i
    have hxi : x₀ i ∈ Icc a b := ⟨(hinside i).1.le,(hinside i).2.le⟩
    exact simple_zero_local_c1_graph (hc _ hxi)
      ((hcensus _ hxi).2 ⟨i,rfl⟩) (hsimple i)
  choose z hz0 hzc hzeq hzunique using hg
  have hcover : ∀ᶠ l in 𝓝 l₀, ∀ x ∈ Icc a b,
      g (l,x) = 0 → ∃ i, z i l = x := by
    apply isCompact_Icc.eventually_forall_of_forall_eventually
    intro x hx
    by_cases hzero : g (l₀,x) = 0
    · obtain ⟨i,hi⟩ := (hcensus x hx).1 hzero
      subst x
      filter_upwards [hzunique i] with v hv
      exact fun h => ⟨i,hv.mp h⟩
    · have hne : ∀ᶠ v in 𝓝 (l₀,x), g v ≠ 0 :=
        (hc x hx).continuousAt (eventually_ne_nhds hzero)
      filter_upwards [hne] with v hv
      exact fun h => False.elim (hv h)
  have hallzero : ∀ᶠ l in 𝓝 l₀, ∀ i, g (l,z i l) = 0 :=
    eventually_all.2 hzeq
  have hallinside : ∀ᶠ l in 𝓝 l₀, ∀ i, z i l ∈ Ioo a b := by
    apply eventually_all.2
    intro i
    exact (hzc i).continuousAt (by simpa only [hz0 i] using
      (Ioo_mem_nhds (hinside i).1 (hinside i).2))
  have hallorder : ∀ᶠ l in 𝓝 l₀, StrictMono (fun i => z i l) := by
    have hp : ∀ i j : Fin n, ∀ᶠ l in 𝓝 l₀, i < j → z i l < z j l := by
      intro i j
      by_cases hij : i < j
      · have hv : z i l₀ < z j l₀ := by simpa only [hz0 i,hz0 j] using horder hij
        filter_upwards [(hzc i).continuousAt.eventually_lt (hzc j).continuousAt hv]
          with l hl
        exact fun _ => hl
      · exact Eventually.of_forall fun _ h => False.elim (hij h)
    exact (eventually_all.2 fun i => eventually_all.2 (hp i)).mono fun _ h => h
  have hcv : ∀ i, ∃ V ∈ 𝓝 l₀, ContDiffOn ℝ 1 (z i) V :=
    fun i => (hzc i).contDiffOn (le_refl 1) (by simp)
  choose V hV hVc using hcv
  have hallV : ∀ᶠ l in 𝓝 l₀, ∀ i, l ∈ V i := eventually_all.2 hV
  have hW : {l | (∀ i, l ∈ V i) ∧ StrictMono (fun i => z i l) ∧
      (∀ i, z i l ∈ Ioo a b) ∧
      (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x)} ∈ 𝓝 l₀ := by
    filter_upwards [hallV,hallorder,hallinside,hcover,hallzero] with l hvl hol hil hcl hzl
    refine ⟨hvl,hol,hil,?_⟩
    intro x hx
    refine ⟨hcl x hx,?_⟩
    rintro ⟨i,rfl⟩
    exact hzl i
  obtain ⟨U,hUW,hU,hu⟩ := mem_nhds_iff.mp hW
  refine ⟨z,U,hU,hu,?_,?_⟩
  · intro i
    exact ⟨hz0 i,(hVc i).mono (fun l hl => (hUW hl).1 i)⟩
  · intro l hl
    exact (hUW hl).2

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteSimpleZeroChamber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FiniteSimpleZeroChamber/Variant4399d7518d47ef17bf31f115535f12ff08013624ee18498de4775f2c889f19ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FiniteSimpleZeroChamber/Variant4399d7518d47ef17bf31f115535f12ff08013624ee18498de4775f2c889f19ad.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940cfb9c5344d9fae6cd694262c4471590408caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
