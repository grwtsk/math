# tendsto_Lp_of_tendsto_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0d99960-cbdf-f1a2-2796-b5e711b4e091",
  "kind": "theorem",
  "lexical_name": "tendsto_Lp_of_tendsto_ae",
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
  "slug": "tendsto-lp-of-tendsto-ae--2e7a870e5f4121600a04e957",
  "source": {
    "blob": "fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 338,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e7a870e5f4121600a04e957eaa45ba9bd9d86a2d4ec871c9c05ff7a708d8c00",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0d99960-cbdf-f1a2-2796-b5e711b4e091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_Lp_of_tendsto_ae (hp : 1 ≤ p) (hp' : p ≠ ∞)
    {f : ℕ → α → β} {g : α → β} (haef : ∀ n, AEStronglyMeasurable (f n) μ)
    (hg' : MemLp g p μ) (hui : UnifIntegrable f p μ) (hut : UnifTight f p μ)
    (hfg : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (g x))) :
    Tendsto (fun n => eLpNorm (f n - g) p μ) atTop (𝓝 0) := by
  -- come up with an a.e. equal strongly measurable replacement `f` for `g`
  have hf := fun n => (haef n).stronglyMeasurable_mk
  have hff' := fun n => (haef n).ae_eq_mk (μ := μ)
  have hui' := hui.ae_eq hff'
  have hut' := hut.aeeq hff'
  have hg := hg'.aestronglyMeasurable.stronglyMeasurable_mk
  have hgg' := hg'.aestronglyMeasurable.ae_eq_mk (μ := μ)
  have hg'' := hg'.ae_eq hgg'
  have haefg' := ae_tendsto_ae_congr hff' hgg' hfg
  set f' := fun n => (haef n).mk (μ := μ)
  set g' := hg'.aestronglyMeasurable.mk (μ := μ)
  have haefg (n : ℕ) : f n - g =ᵐ[μ] f' n - g' := (hff' n).sub hgg'
  have hsnfg (n : ℕ) := eLpNorm_congr_ae (p := p) (haefg n)
  apply Filter.Tendsto.congr (fun n => (hsnfg n).symm)
  exact tendsto_Lp_of_tendsto_ae_of_meas hp hp' hf hg hg'' hui' hut' haefg'

/-- Forward direction of Vitali's convergence theorem:
if `f` is a sequence of uniformly integrable, uniformly tight functions that converge in
measure to some function `g` in a finite measure space, then `f` converge in Lp to `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
