# IsOpenUnits.of_isAdic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "904a6fb3422b420ea454eeb394565eb4fa1efafd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58749be9-3b18-500f-5662-b9c8c55e108c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06fa1dc9-d2d5-28f9-c612-fffe7ee2f040",
  "kind": "lemma",
  "lexical_name": "IsOpenUnits.of_isAdic",
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
  "slug": "isopenunits-of-isadic--c18fe77e8dce7269b7208518",
  "source": {
    "blob": "904a6fb3422b420ea454eeb394565eb4fa1efafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 59,
    "path": "GRWTSK/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c18fe77e8dce7269b72085183a143a48b9c8bfc659847426e1f50e67a406d689",
  "verification": {
    "reference": "docs/verification/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06fa1dc9-d2d5-28f9-c612-fffe7ee2f040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpenUnits.of_isAdic {R : Type*} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
    {I : Ideal R}
    (hR : IsAdic I) (hI : I ≤ Ideal.jacobson ⊥) :
    IsOpenUnits R := by
  refine ⟨.of_continuous_injective_isOpenMap Units.continuous_val Units.ext ?_⟩
  refine (TopologicalGroup.isOpenMap_iff_nhds_one (f := Units.coeHom R)).mpr ?_
  rw [nhds_induced, nhds_prod_eq]
  simp only [Units.embedProduct_apply, Units.val_one, inv_one, MulOpposite.op_one]
  intro s hs
  have H := hR ▸ Ideal.hasBasis_nhds_adic I 1
  have := (H.prod (H.comap MulOpposite.opHomeomorph.symm))
  simp only [Homeomorph.comap_nhds_eq, Homeomorph.symm_symm, MulOpposite.opHomeomorph_apply,
    MulOpposite.op_one, and_self, Set.image_add_left] at this
  have : ∃ n₁ n₂, ∀ (u : Rˣ), (-1 + u : R) ∈ I ^ n₁ → (-1 + u⁻¹ : R) ∈ I ^ n₂ → ↑u ∈ s := by
    simpa [Set.subset_def, forall_comm (β := Rˣ), forall_comm (β := _ = _)] using
      (((this.comap (Units.embedProduct R)).map (Units.coeHom R)).1 _).mp hs
  obtain ⟨n, hn, hn'⟩ : ∃ n ≠ 0, ∀ (u : Rˣ), (-1 + u : R) ∈ I ^ n →
      (-1 + u⁻¹ : R) ∈ I ^ n → ↑u ∈ s := by
    obtain ⟨n₁, n₂, H⟩ := this
    exact ⟨n₁ ⊔ n₂ ⊔ 1, by simp, fun u h₁ h₂ ↦ H u
      (Ideal.pow_le_pow_right (by simp) h₁)
      (Ideal.pow_le_pow_right (by simp) h₂)⟩
  rw [H.1]
  refine ⟨n, trivial, ?_⟩
  rintro _ ⟨x, hx, rfl⟩
  have := Ideal.mem_jacobson_bot.mp (hI (Ideal.pow_le_self hn hx)) 1
  rw [mul_one, add_comm] at this
  refine hn' this.unit (by simpa using hx) ?_
  have : -1 + ↑this.unit⁻¹ = -this.unit⁻¹ * x := by
    trans this.unit⁻¹ * (-(1 + x) + 1)
    · rw [mul_add, mul_neg, IsUnit.val_inv_mul, mul_one]
    · simp
  rw [this]
  exact Ideal.mul_mem_left _ _ hx
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904a6fb3422b420ea454eeb394565eb4fa1efafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
