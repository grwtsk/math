# _root_.GRWTSK.Topology.GeneralTopology.WithSeminorms.Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.WithSeminorms.equicontinuous_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49671267-88d3-57b5-0bdd-0833cc04a86c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.WithSeminorms.Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.WithSeminorms.equicontinuous_TFAE",
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
  "slug": "root-grwtsk-topology-generaltopology-withseminorms-variant1aedbd62ae0f48--2090af64fb75b3942fb6de86",
  "source": {
    "blob": "ba56343cf89d6a690c97c79be18555888ac929ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 674,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2090af64fb75b3942fb6de8658af2d63e4f11c8a6680dd4d2fb4505ecd091b1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49671267-88d3-57b5-0bdd-0833cc04a86c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.Topology.GeneralTopology.WithSeminorms.Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.WithSeminorms.equicontinuous_TFAE {κ : Type*}
    {q : SeminormFamily 𝕜₂ F ι'} [UniformSpace E] [UniformAddGroup E] [u : UniformSpace F]
    [hu : UniformAddGroup F] (hq : WithSeminorms q) [ContinuousSMul 𝕜 E]
    (f : κ → E →ₛₗ[σ₁₂] F) : TFAE
    [ EquicontinuousAt ((↑) ∘ f) 0,
      Equicontinuous ((↑) ∘ f),
      UniformEquicontinuous ((↑) ∘ f),
      ∀ i, ∃ p : Seminorm 𝕜 E, Continuous p ∧ ∀ k, (q i).comp (f k) ≤ p,
      ∀ i, BddAbove (range fun k ↦ (q i).comp (f k)) ∧ Continuous (⨆ k, (q i).comp (f k)) ] := by
  -- We start by reducing to the case where the target is a seminormed space
  rw [q.withSeminorms_iff_uniformSpace_eq_iInf.mp hq, uniformEquicontinuous_iInf_rng,
      equicontinuous_iInf_rng, equicontinuousAt_iInf_rng]
  refine forall_tfae [_, _, _, _, _] fun i ↦ ?_
  let _ : SeminormedAddCommGroup F := (q i).toSeminormedAddCommGroup
  clear u hu hq
  -- Now we can prove the equivalence in this setting
  simp only [List.map]
  tfae_have 1 → 3
  · exact uniformEquicontinuous_of_equicontinuousAt_zero f
  tfae_have 3 → 2
  · exact UniformEquicontinuous.equicontinuous
  tfae_have 2 → 1
  · exact fun H ↦ H 0
  tfae_have 3 → 5
  · intro H
    have : ∀ᶠ x in 𝓝 0, ∀ k, q i (f k x) ≤ 1 := by
      filter_upwards [Metric.equicontinuousAt_iff_right.mp (H.equicontinuous 0) 1 one_pos]
        with x hx k
      simpa using (hx k).le
    have bdd : BddAbove (range fun k ↦ (q i).comp (f k)) :=
      Seminorm.bddAbove_of_absorbent (absorbent_nhds_zero this)
        (fun x hx ↦ ⟨1, forall_range_iff.mpr hx⟩)
    rw [← Seminorm.coe_iSup_eq bdd]
    refine ⟨bdd, Seminorm.continuous' (r := 1) ?_⟩
    filter_upwards [this] with x hx
    simpa only [closedBall_iSup bdd _ one_pos, mem_iInter, mem_closedBall_zero] using hx
  tfae_have 5 → 4
  · exact fun H ↦ ⟨⨆ k, (q i).comp (f k), Seminorm.coe_iSup_eq H.1 ▸ H.2, le_ciSup H.1⟩
  tfae_have 4 → 1 -- This would work over any `NormedField`
  · intro ⟨p, hp, hfp⟩
    exact Metric.equicontinuousAt_of_continuity_modulus p (map_zero p ▸ hp.tendsto 0) _ <|
      eventually_of_forall fun x k ↦ by simpa using hfp k x
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba56343cf89d6a690c97c79be18555888ac929ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
