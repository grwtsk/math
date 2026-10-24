# withDensityᵥ_smul_eq_withDensityᵥ_withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:494df1d1-ef28-dc37-0bd7-7968c8413df9",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_smul_eq_withDensityᵥ_withDensity",
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
  "slug": "withdensity-smul-eq-withdensity-withdensity--d67be14d24aa520c45421af1",
  "source": {
    "blob": "3c830dd7edaad108101a49aef66f74893638c05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d67be14d24aa520c45421af1d21ec61a6a0a912d44d370ae50161e45336b5cfd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494df1d1-ef28-dc37-0bd7-7968c8413df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_smul_eq_withDensityᵥ_withDensity {f : α → ℝ≥0} {g : α → E}
    (hf : AEMeasurable f μ) (hfg : Integrable (f • g) μ) :
    μ.withDensityᵥ (f • g) = (μ.withDensity (fun x ↦ f x)).withDensityᵥ g := by
  ext s hs
  rw [withDensityᵥ_apply hfg hs,
    withDensityᵥ_apply ((integrable_withDensity_iff_integrable_smul₀ hf).mpr hfg) hs,
    setIntegral_withDensity_eq_setIntegral_smul₀ hf.restrict _ hs]
  simp only [Pi.smul_apply']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c830dd7edaad108101a49aef66f74893638c05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
