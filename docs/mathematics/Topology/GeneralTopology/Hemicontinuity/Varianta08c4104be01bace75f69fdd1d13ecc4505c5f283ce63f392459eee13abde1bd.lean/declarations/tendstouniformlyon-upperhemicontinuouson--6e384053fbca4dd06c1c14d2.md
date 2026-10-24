# TendstoUniformlyOn.upperHemicontinuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d992c8c0-fd8d-a2ed-6bcf-6cd88f89c23b",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOn.upperHemicontinuousOn",
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
  "slug": "tendstouniformlyon-upperhemicontinuouson--6e384053fbca4dd06c1c14d2",
  "source": {
    "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 557,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e384053fbca4dd06c1c14d2635501d954cc7a19141abfde3adfdd310792fa49",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d992c8c0-fd8d-a2ed-6bcf-6cd88f89c23b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOn.upperHemicontinuousOn (htendsto : TendstoUniformlyOn F f l s)
      (hF : ∀ n, UpperHemicontinuousOn (F n) s) (hf_compact : ∀ x ∈ s, IsCompact (f x)) :
    UpperHemicontinuousOn f s := by
  -- A function `f` is upper hemicontinuous at `x₀` if for all open `u` with `f x₀ ⊆ u`, then
  -- `f x ⊆ u` for all `x` near `x₀`
  rw [upperHemicontinuousOn_iff_forall_isOpen]
  intro x₀ hx₀s u hu hx₀u
  -- Find an open entourage `U` such that `U ○ U.symm ⊆ u`
  obtain ⟨W, hW, _, hWu⟩ := lebesgue_number_of_compact_open (hf_compact x₀ hx₀s) hu hx₀u
  obtain ⟨V, hV, hVsym, hVcomp⟩ := comp_symm_mem_uniformity_sets hW
  obtain ⟨U, ⟨hUmem, hUopen⟩, hUsub⟩ := uniformity_hasBasis_open.mem_iff.mp hV
  -- Then choose a sufficiently large `N` such that `⟨f x, F N x⟩ ∈ hausdorffEntourage U`
  -- for all `x ∈ s`
  have hHU : hausdorffEntourage U ∈ @uniformity _ (UniformSpace.hausdorff (α := β)) :=
    (mem_lift'_sets monotone_hausdorffEntourage).mpr ⟨U, hUmem, le_refl _⟩
  obtain ⟨N, hN⟩ := (htendsto (hausdorffEntourage U) hHU).exists
  have hFN_image : F N x₀ ⊆ U.image (f x₀) := ((mem_hausdorffEntourage ..).mp (hN x₀ hx₀s)).2
  -- Upper hemicontinuity implies `F N x ⊆ U.image (f x₀)` for `x` near `x₀`
  simp_rw [upperHemicontinuousOn_iff] at hF
  have hFN_uhc : ∀ᶠ x in 𝓝[s] x₀, F N x ⊆ U.image (f x₀) :=
    (hF N x₀ hx₀s).forall_isOpen _ hUopen.relImage hFN_image
  -- For such a nearby `x`, show `f x ⊆ u` by taking `y ∈ f x`,
  filter_upwards [hFN_uhc, self_mem_nhdsWithin] with x hFNx hx_s
  intro y hy
  -- finding a `z ∈ F N x` such that `(y, z) ∈ U` and then some `y₀ ∈ f x₀` such that `⟨y₀, z⟩ ∈ U`
  obtain ⟨z, hzFN, hyz⟩ := ((mem_hausdorffEntourage U (f x) (F N x)).mp (hN x hx_s)).1 hy
  obtain ⟨y₀, hy₀f, hy₀z⟩ := hFNx hzFN
  -- then use that `U ○ U.symm ⊆ u` to conclude
  exact hWu y₀ hy₀f (hVcomp ⟨z, hUsub hy₀z, hVsym.symm _ _ (hUsub hyz)⟩)

/-- A net of lower hemicontinuous set-valued functions converging uniformly (along a
filter `l`) in the Hausdorff uniformity has a lower hemicontinuous limit -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
