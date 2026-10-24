# standardCircleConePolarDiskSource_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc16ef48-3004-e392-f1b7-3f7fb3a33422",
  "kind": "theorem",
  "lexical_name": "standardCircleConePolarDiskSource_eq_iff",
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
  "slug": "standardcircleconepolardisksource-eq-iff--158aa0712a0c59f35ba17eb8",
  "source": {
    "blob": "e9675d15030fda9a01ab9fdd3d5970e8e0f006b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 143,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:158aa0712a0c59f35ba17eb836a8d4dee7fde0ab280b0cdb7f90154b578ed90c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc16ef48-3004-e392-f1b7-3f7fb3a33422`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standardCircleConePolarDiskSource_eq_iff
    (p q : StandardCircleConeCylinder) :
    standardCircleConePolarDiskSource p =
        standardCircleConePolarDiskSource q ↔
      p = q ∨ (p.2 = 0 ∧ q.2 = 0) := by
  constructor
  · intro h
    have hcomplex :
        standardCircleConePolarComplexSource p =
          standardCircleConePolarComplexSource q := by
      exact congrArg
        (fun z : Complex.UnitClosedDisc => (z : ℂ)) h
    have hnorm := congrArg norm hcomplex
    have hrval : (p.2 : ℝ) = (q.2 : ℝ) := by
      simpa only [norm_standardCircleConePolarComplexSource] using hnorm
    have hr : p.2 = q.2 := Subtype.ext hrval
    by_cases hp0 : p.2 = 0
    · exact Or.inr ⟨hp0, hr ▸ hp0⟩
    · left
      have hpval0 : (p.2 : ℝ) ≠ 0 := by
        intro hzero
        apply hp0
        exact Subtype.ext hzero
      have hscale : (((p.2 : ℝ) : ℂ) ≠ 0) :=
        Complex.ofReal_ne_zero.mpr hpval0
      have hcircleCoe :
          (unitAddCircleHomeomorphCircle p.1 : ℂ) =
            (unitAddCircleHomeomorphCircle q.1 : ℂ) := by
        apply mul_left_cancel₀ hscale
        simpa [standardCircleConePolarComplexSource, hrval] using
          hcomplex
      have hcircle :
          unitAddCircleHomeomorphCircle p.1 =
            unitAddCircleHomeomorphCircle q.1 :=
        Circle.ext hcircleCoe
      exact Prod.ext
        (unitAddCircleHomeomorphCircle.injective hcircle) hr
  · rintro (hpq | ⟨hp, hq⟩)
    · subst q
      rfl
    · apply Complex.UnitClosedDisc.coe_injective
      simp [standardCircleConePolarDiskSource_coe,
        standardCircleConePolarComplexSource, hp, hq]

/-- The exact cone relation is precisely equality under the polar disk
source map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9675d15030fda9a01ab9fdd3d5970e8e0f006b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
