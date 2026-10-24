# exists_zeta_patch_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff038d4a-1ccd-b4dc-8555-e1c965c21567",
  "kind": "theorem",
  "lexical_name": "exists_zeta_patch_at_zero",
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
  "slug": "exists-zeta-patch-at-zero--e5776186c280389930deb203",
  "source": {
    "blob": "bf5fd5abbad9ab06731a4c7a42ca3859367bf736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5776186c280389930deb20301851752e8f997afd9520b6ef93d5707ed8ab65a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff038d4a-1ccd-b4dc-8555-e1c965c21567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_zeta_patch_at_zero :
    ∃ r : ℝ, 0 < r ∧
      Nonempty (SampleVariationPatch riemannZeta (Metric.ball (0 : ℂ) r)) := by
  have hcont : ContinuousAt riemannZeta (0 : ℂ) :=
    (differentiableAt_riemannZeta (by norm_num : (0 : ℂ) ≠ 1)).continuousAt
  obtain ⟨r, hr, hvariation⟩ :=
    Metric.continuousAt_iff.mp hcont (1 / 4 : ℝ) (by norm_num)
  refine ⟨r, hr, ⟨?_⟩⟩
  refine { center := 0
           lower := 1 / 2
           error := 1 / 4
           error_nonneg := by norm_num
           sample_lower := ?_
           variation := ?_
           strict_margin := by norm_num }
  · rw [riemannZeta_zero]
    norm_num
  · intro z hz
    have hzdist : dist z (0 : ℂ) < r := hz
    have hv := hvariation hzdist
    simpa only [dist_eq_norm] using hv.le

/-- Local zero exclusion constructed from the analytic seed, not supplied as an
unproved shell premise. Its radius is not claimed effective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5fd5abbad9ab06731a4c7a42ca3859367bf736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
