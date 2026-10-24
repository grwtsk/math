# exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e48af84dd7f0f903c8d74511b500e7bda7eaf78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5d883aa-1cd6-5a05-e318-34b7beadc294",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1a389e5-8a57-f8cf-d183-81af21635e98",
  "kind": "theorem",
  "lexical_name": "exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints",
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
  "slug": "exists-mem-subalgebra-near-continuous-of-iscompact-of-separatespoints--790d58ef50d2b9bbb9590cc2",
  "source": {
    "blob": "6e48af84dd7f0f903c8d74511b500e7bda7eaf78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 319,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:790d58ef50d2b9bbb9590cc22adf927c0df6f170d1c0e6d620ab323f75c061e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1a389e5-8a57-f8cf-d183-81af21635e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints
    {X : Type*} [TopologicalSpace X] {A : Subalgebra ℝ C(X, ℝ)} (hA : A.SeparatesPoints)
    (f : C(X, ℝ)) {K : Set X} (hK : IsCompact K) {ε : ℝ} (pos : 0 < ε) :
    ∃ g ∈ A, ∀ x ∈ K, ‖(g : X → ℝ) x - f x‖ < ε := by
  let restrict_on_K : C(X, ℝ) →⋆ₐ[ℝ] C(K, ℝ) :=
    ContinuousMap.compStarAlgHom' ℝ ℝ ⟨(Subtype.val), continuous_subtype_val⟩
  --consider the subalgebra AK of functions with domain K
  let AK : Subalgebra ℝ C(K, ℝ) := Subalgebra.map (restrict_on_K) A
  have hsep : AK.SeparatesPoints := by
    intro x y hxy
    obtain ⟨_, ⟨g, hg1, hg2⟩, hg_sep⟩ := hA (Subtype.coe_ne_coe.mpr hxy)
    simp only [Set.mem_image, SetLike.mem_coe, exists_exists_and_eq_and]
    use restrict_on_K g
    refine ⟨Subalgebra.mem_map.mpr ?_,
      by simpa only [compStarAlgHom'_apply, comp_apply, coe_mk, ne_eq, restrict_on_K, hg2]⟩
    use g, hg1
    simp [AlgHom.coe_coe]
  obtain ⟨⟨gK, hgKAK⟩, hgapprox⟩ :=
    @ContinuousMap.exists_mem_subalgebra_near_continuous_of_separatesPoints _ _
    (isCompact_iff_compactSpace.mp hK) AK hsep (K.restrict f)
    (ContinuousOn.restrict (Continuous.continuousOn f.continuous)) ε pos
  obtain ⟨g, hgA, hgKAK⟩ := Subalgebra.mem_map.mp hgKAK
  use g, hgA
  intro x hxK
  have eqg : g x = gK ⟨x, hxK⟩ := by
    rw [← hgKAK]; rfl
  rw [eqg]
  exact hgapprox ⟨x, hxK⟩

end ContinuousMap

section RCLike

open RCLike

-- Redefine `X`, since for the next lemma it need not be compact
variable {𝕜 : Type*} {X : Type*} [RCLike 𝕜] [TopologicalSpace X]

open ContinuousMap

/- a post-port refactor eliminated `conjInvariantSubalgebra`, which was only used to
state and prove the Stone-Weierstrass theorem, in favor of using `StarSubalgebra`s,
which didn't exist at the time Stone-Weierstrass was written. -/


/-- If a star subalgebra of `C(X, 𝕜)` separates points, then the real subalgebra
of its purely real-valued elements also separates points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e48af84dd7f0f903c8d74511b500e7bda7eaf78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
