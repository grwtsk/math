# exists_injective_not_dense_image_deriv_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64ea944d1c88edb19272d44d1805ed958d27f7a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b73b13e-3534-559e-9e52-4a29e4a42976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:307d20bd-16e5-3b64-ccec-7746bdc0d7ab",
  "kind": "theorem",
  "lexical_name": "exists_injective_not_dense_image_deriv_ne_zero",
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
  "slug": "exists-injective-not-dense-image-deriv-ne-zero--d7dfe82e712e2908ed9801e3",
  "source": {
    "blob": "64ea944d1c88edb19272d44d1805ed958d27f7a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7dfe82e712e2908ed9801e362cd3f10060482bf9b4f52c43b9284123088bf37",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:307d20bd-16e5-3b64-ccec-7746bdc0d7ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_injective_not_dense_image_deriv_ne_zero {U : Set ℂ} (hUo : IsOpen U)
    (hUc : IsSimplyConnected U) (hU : U ≠ univ) :
    ∃ f : ℂ → ℂ, Injective f ∧ ¬Dense (f '' U) ∧ ∀ z ∈ U, deriv f z ≠ 0 := by
  -- WLOG, `0 ∉ U`, otherwise we choose `a ∉ U` and replace `U` with `-a +ᵥ U`
  wlog hU₀ : 0 ∉ U
  · rw [ne_univ_iff_exists_notMem] at hU
    rcases hU with ⟨a, ha⟩
    specialize this (hUo.vadd (-a)) (by simpa) (by simp [hU])
      (by simpa [mem_vadd_set_iff_neg_vadd_mem])
    rcases this with ⟨f, hf_inj, hf_dense, hdf⟩
    refine ⟨f ∘ (-a + ·), hf_inj.comp (add_right_injective (-a)), ?_, fun z hz ↦ ?_⟩
    · simpa only [← image_vadd, Set.image_image] using! hf_dense
    · simpa [Function.comp_def, deriv_comp_const_add] using hdf (-a + z) (mapsTo_image _ _ hz)
  -- Choose a continuous branch of `√z` on `U`.
  -- This is the function we're looking for.
  rcases exists_continuousOn_pow_eq hUc hUo continuousOn_id (by rwa [image_id]) two_ne_zero
    with ⟨f, hfc, hf_inv⟩
  replace hf_inv : LeftInverse (· ^ 2) f := hf_inv
  -- Then `0 ∉ f '' U`
  have hf₀ : ∀ z ∈ U, f z ≠ 0 := by
    intro z hz hfz
    simpa [hfz, (ne_of_mem_of_not_mem hz hU₀).symm] using hf_inv z
  -- Note that `f` is strictly differentiable at every point of `U`
  -- with derivative `1 / (2 * f z)`.
  have hdf : ∀ z ∈ U, HasStrictDerivAt f (2 * f z)⁻¹ z := by
    intro z hz
    apply HasStrictDerivAt.of_local_left_inverse
    · exact hfc.continuousAt <| hUo.mem_nhds hz
    · simpa using hasStrictDerivAt_pow 2 (f z)
    · simpa using hf₀ z hz
    · exact .of_forall hf_inv
  -- `f` has a left inverse, so it's injective. Let's show that `f '' U` isn't dense in `ℂ`.
  refine ⟨f, hf_inv.injective, ?_, fun z hz ↦ ?_⟩
  · -- Take a point `x ∈ U`.
    simp only [Dense, not_forall, mem_closure_iff_frequently, not_frequently]
    rcases hUc.nonempty with ⟨x, hx⟩
    -- Show that `-f x` has a neighborhood disjoint with `f '' U`.
    use -f x
    -- Since `f` is strictly differentiable at `x` with nonzero derivative,
    -- `f '' U` is a neighborhood of `f x`.
    have : f '' U ∈ 𝓝 (f x) := by
      rw [← (hdf x hx).map_nhds_eq (by simpa using hf₀ x hx)]
      exact Filter.image_mem_map <| hUo.mem_nhds hx
    -- Then `-f '' U` is a neighborhood of `-f x`.
    rw [nhds_neg, eventually_neg]
    -- This neighborhood has to be disjoint with `f '' U`,
    -- because `f a = - f b` implies `a = (f a) ^ 2 = (- f b) ^ 2 = b`, hence `f a = f b = 0`,
    -- which is impossible.
    filter_upwards [this]
    rintro _ ⟨a, ha, rfl⟩ ⟨b, hb, hab⟩
    obtain rfl : a = b := by
      rw [← hf_inv b, hab]
      simp [hf_inv a]
    refine hf₀ a ha ?_
    linear_combination hab / 2
  · simpa [(hdf z hz).hasDerivAt.deriv] using hf₀ z hz

/-- Proof of the Riemann Mapping Theorem, step 2.

If `U` is an open simply connected subset of `ℂ` which is not the whole field,
then there exists a map `f : ℂ → ℂ` such that

- `f` maps `U` to the unit disk;
- `f` is injective on `U`;
- `f` is differentiable on `U` with nonzero derivative.

Once the proof of the Riemann Mapping Theorem gets merged into Mathlib,
this lemma will be made private.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ea944d1c88edb19272d44d1805ed958d27f7a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
