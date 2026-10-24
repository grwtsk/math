# actualPhysicalPeriodicDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0253f4d-0c99-9112-018b-9f89a37ad03f",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicDensity_intervalIntegrable",
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
  "slug": "actualphysicalperiodicdensity-intervalintegrable--c712d3a2dc90b5bae92fc979",
  "source": {
    "blob": "a2ad545300f68b89c1dc90e1bcfbf427425c7c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c712d3a2dc90b5bae92fc97988de1bdc3d78dfde2802aca377971d931cc4b8cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0253f4d-0c99-9112-018b-9f89a37ad03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicDensity_intervalIntegrable (U : ℕ) (l b : ℝ) :
    IntervalIntegrable (actualPhysicalPeriodicDensity U) volume l b := by
  apply intervalIntegrable_iff.mpr
  have hb : ∀ᵐ x ∂volume.restrict (uIoc l b),
      ‖actualPhysicalPeriodicDensity U x‖ ≤ (U : ℝ) / 2 := by
    filter_upwards with x
    simpa only [Real.norm_eq_abs] using actualPhysicalPeriodicDensity_abs_le U x
  exact Measure.integrableOn_of_bounded (by simp)
    (actualPhysicalPeriodicDensity_measurable U).aestronglyMeasurable hb

/-- On the genuine physical source window, period centering is the original beta prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ad545300f68b89c1dc90e1bcfbf427425c7c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
