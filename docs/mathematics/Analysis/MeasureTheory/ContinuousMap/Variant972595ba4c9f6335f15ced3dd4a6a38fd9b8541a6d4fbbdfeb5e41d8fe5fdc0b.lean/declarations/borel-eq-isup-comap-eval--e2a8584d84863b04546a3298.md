# borel_eq_iSup_comap_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad9c1217-a359-36a3-229f-84b5d6913ec4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01676c5d-dc7f-caf9-60ad-62c0e6d50a1e",
  "kind": "theorem",
  "lexical_name": "borel_eq_iSup_comap_eval",
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
  "slug": "borel-eq-isup-comap-eval--e2a8584d84863b04546a3298",
  "source": {
    "blob": "eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 77,
    "path": "GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2a8584d84863b04546a3298d095cd9db4d0ba55afc7887d53cb3be4c3100328",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01676c5d-dc7f-caf9-60ad-62c0e6d50a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_eq_iSup_comap_eval :
    borel C(X, Y) = ⨆ x : X, (borel Y).comap fun f ↦ f x := by
  refine le_antisymm ?_ iSup_comap_le_borel
  -- Denote `M(K, U)` the set of functions `f` such that `Set.MapsTo f K U`. These form a
  -- basis for the compact-open topology when `K` is compact and `U` is open.
  -- Because `C(X, Y)` is second-countable, it suffices to prove that those sets are measurable
  -- for the coarsest sigma-algebra that makes the maps `f ↦ f x` measurable for all `x : X`.
  -- Let therefore `K` be a compact set of `X` and `U` an open set of `Y`.
  rw [borel_eq_generateFrom_of_subbasis compactOpen_eq]
  apply generateFrom_le
  rintro - ⟨K, hK, U, hU, rfl⟩
  obtain rfl | ⟨x, hx⟩ := U.eq_empty_or_nonempty
  · simp
  -- Consider `V` a countable basis of the topology on `Y` obtained by taking the finite unions
  -- of sets of `countableBasis Y`.
  let V := Set.sUnion '' {f : Set (Set Y) | f.Finite ∧ f ⊆ countableBasis Y}
  have hV : IsTopologicalBasis V := (isBasis_countableBasis Y).finite_sUnion
  have cV : V.Countable :=
    (Set.countable_ofPred_finite_subset (countable_countableBasis Y)).image _
  -- Because `Y` is regular, we have `U = ⋃_{v ∈ V, closure v ⊆ U} v`.
  -- For any continuous `f` such that `f '' K ⊆ U`, because `K` is compact, `f '' K` is compact.
  -- Because the set `{v ∈ V, closure v ⊆ U}` is a directed set of open sets that covers `f '' K`,
  -- we deduce that there exists `v ∈ V` such that `f '' K ⊆ closure v`.
  have (f : C(X, Y)) (hf : K.MapsTo f U) : ∃ v ∈ V, closure v ⊆ U ∧ K.MapsTo f (closure v) := by
    simp_rw [Set.mapsTo_iff_image_subset] at hf ⊢
    rw [hV.open_eq_sUnion_of_closure_subset hU] at hf
    obtain ⟨b, ⟨hb1, hb2⟩, hb3⟩ : ∃ b, (b ∈ V ∧ closure b ⊆ U) ∧ f '' K ⊆ b := by
      refine (hK.image f.continuous).elim_directedOn_cover _
        (fun v hv ↦ hV.isOpen hv.1) hf ?_ ?_
      · rintro - ⟨⟨f, ⟨hf1, hf2⟩, rfl⟩, hf3⟩ - ⟨⟨g, ⟨hg1, hg2⟩, rfl⟩, hg3⟩
        exact ⟨⋃₀ (f ∪ g), ⟨⟨f ∪ g, ⟨hf1.union hg1, by grind⟩, rfl⟩,
          by simp_all [Set.sUnion_union]⟩, by grind, by grind⟩
      · obtain ⟨v, ⟨hv1, hv2⟩, hv3⟩ := hV.nhds_basis_closure x |>.mem_iff.1 <| hU.mem_nhds hx
        exact ⟨v, hv2, hv3⟩
    exact ⟨b, hb1, hb2, hb3.trans subset_closure⟩
  -- Therefore, we obtain that
  -- `M(K, U) = ⋃_{u ∈ V, closure u ⊆ U}, M(K, closure u)`.
  have : {f : C(X, Y) | K.MapsTo f U} =
      ⋃ u ∈ V, ⋃ (_ : closure u ⊆ U), {f : C(X, Y) | K.MapsTo f (closure u)} := by
    ext f
    simpa using ⟨by grind, fun ⟨u, hu1, hu2, hu3⟩ ↦ hu3.mono_right hu1⟩
  simp_rw [this]
  -- In particular, because `V` is countable, this is a countable union.
  -- To show measurability it is therefore enough to show the measurability of each term.
  refine .biUnion cV (fun v hv1 ↦ .iUnion (fun hv2 ↦ ?_))
  -- Consider now `v ∈ V` such that `closure v ⊆ U`.
  -- Consider `Q` a countable dense subset of `K`, which exists by second-countability assumption.
  obtain ⟨Q, cQ, hQ, dQ⟩ := exists_countable_dense_subset K
  -- Because `f` is continuous and `closure v` is closed and `Q` is dense in `K`, having
  -- `f '' K ⊆ closure v` is the same as `f '' Q ⊆ closure v`.
  have : {f : C(X, Y) | K.MapsTo f (closure v)} = {f : C(X, Y) | Q.MapsTo f (closure v)} := by
    ext f
    refine ⟨fun h ↦ h.mono_left hQ, fun h ↦ ?_⟩
    simpa using h.closure f.continuous |>.mono_left dQ
  -- We can write `M(Q, closure v) = ⋂ q ∈ Q, (fun f ↦ f q) ⁻¹' (closure v)`.
  have : {f : C(X, Y) | K.MapsTo f (closure v)} = ⋂ q ∈ Q, (fun f ↦ f q) ⁻¹' (closure v) := by
    ext f
    rw [this, Set.mem_iInter₂]
    exact ⟨fun h x hx ↦ h hx, fun h x hx ↦ h x hx⟩
  rw [this]
  -- This is a countable intersection, so it suffices to prove that each term is measurable.
  -- Because `closure v` is closed, it is measurable, so it suffices to prove that
  -- for any `q ∈ Q`, `fun f ↦ f q` is measurable for the product σ-algebra.
  -- The latter is the coarsest σ-algebra which makes the maps `fun f ↦ f x` measurable,
  -- so we are done.
  borelize Y
  refine .biInter cQ fun q hq ↦ .preimage measurableSet_closure (.le (le_iSup _ q) ?_)
  rw [BorelSpace.measurable_eq (α := Y)]
  exact comap_measurable _

variable [mY : MeasurableSpace Y] [BorelSpace Y]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
