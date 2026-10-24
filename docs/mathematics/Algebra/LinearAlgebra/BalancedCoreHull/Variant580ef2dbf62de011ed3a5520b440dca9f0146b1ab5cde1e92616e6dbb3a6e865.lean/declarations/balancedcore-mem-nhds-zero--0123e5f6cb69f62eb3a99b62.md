# balancedCore_mem_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50c77365-d4a0-cc10-70e2-d424c39433d8",
  "kind": "theorem",
  "lexical_name": "balancedCore_mem_nhds_zero",
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
  "slug": "balancedcore-mem-nhds-zero--0123e5f6cb69f62eb3a99b62",
  "source": {
    "blob": "8c83aa726cff99a7aec0d8c1ec1eaaa00a821347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 264,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0123e5f6cb69f62eb3a99b62a83cba7f43cb68fd716c5db86c189273ee895253",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50c77365-d4a0-cc10-70e2-d424c39433d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedCore_mem_nhds_zero (hU : U ∈ 𝓝 (0 : E)) : balancedCore 𝕜 U ∈ 𝓝 (0 : E) := by
  -- Getting neighborhoods of the origin for `0 : 𝕜` and `0 : E`
  obtain ⟨r, V, hr, hV, hrVU⟩ : ∃ (r : ℝ) (V : Set E),
      0 < r ∧ V ∈ 𝓝 (0 : E) ∧ ∀ (c : 𝕜) (y : E), ‖c‖ < r → y ∈ V → c • y ∈ U := by
    have h : Filter.Tendsto (fun x : 𝕜 × E => x.fst • x.snd) (𝓝 (0, 0)) (𝓝 0) :=
      continuous_smul.tendsto' (0, 0) _ (smul_zero _)
    simpa only [← Prod.exists', ← Prod.forall', ← and_imp, ← and_assoc, exists_prop] using!
      h.basis_left (NormedAddGroup.nhds_zero_basis_norm_lt.prod_nhds (𝓝 _).basis_sets) U hU
  obtain ⟨y, hyr, hy₀⟩ : ∃ y : 𝕜, ‖y‖ < r ∧ y ≠ 0 :=
    Filter.nonempty_of_mem <|
      (nhdsWithin_hasBasis NormedAddGroup.nhds_zero_basis_norm_lt {0}ᶜ).mem_of_mem hr
  have : y • V ∈ 𝓝 (0 : E) := (set_smul_mem_nhds_zero_iff hy₀).mpr hV
  -- It remains to show that `y • V ⊆ balancedCore 𝕜 U`
  refine Filter.mem_of_superset this (subset_balancedCore (mem_of_mem_nhds hU) fun a ha => ?_)
  rw [smul_smul]
  rintro _ ⟨z, hz, rfl⟩
  refine hrVU _ _ ?_ hz
  rw [norm_mul, ← one_mul r]
  exact mul_lt_mul' ha hyr (norm_nonneg y) one_pos

variable (𝕜 E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c83aa726cff99a7aec0d8c1ec1eaaa00a821347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
