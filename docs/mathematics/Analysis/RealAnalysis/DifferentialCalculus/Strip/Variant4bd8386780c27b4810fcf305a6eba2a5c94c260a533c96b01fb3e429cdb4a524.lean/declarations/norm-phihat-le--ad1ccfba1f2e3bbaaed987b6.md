# norm_phiHat_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e363a261-30a9-93f5-1a4a-c37aeea9048b",
  "kind": "theorem",
  "lexical_name": "norm_phiHat_le",
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
  "slug": "norm-phihat-le--ad1ccfba1f2e3bbaaed987b6",
  "source": {
    "blob": "ac44c49c44d5089268b23a66c0bd640550a8efe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad1ccfba1f2e3bbaaed987b692882cb9d6641f8a20ccb5c376814b12ecac3fd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e363a261-30a9-93f5-1a4a-c37aeea9048b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_phiHat_le (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) (z : ℂ) :
    ‖phiHat ϱ L w z‖ ≤ Real.exp (|z.im| * (L / 2)) * L := by
  have hint : Integrable (fun u => (phi ϱ L w u : ℂ)) := (phi_integrable hϱ hw hwL).ofReal
  have h := norm_paperFT_le hint (phiC_support hϱ hw) z
  simp only [Complex.norm_real, Real.norm_eq_abs] at h
  refine le_trans h ?_
  gcongr
  calc ∫ u, |phi ϱ L w u| = ∫ u, phi ϱ L w u := by
        congr 1 with u; exact abs_of_nonneg (phi_nonneg hϱ u)
    _ ≤ L := integral_phi_le hϱ hw hwL

/-- The form used in [prop:tail]: for real `r` and `|y| ≤ 1/2`, `z := r − iy ≠ 0`,
`‖φ̂(r − iy)‖ ≤ e^{L/4} C₁ / ‖r − iy‖²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac44c49c44d5089268b23a66c0bd640550a8efe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
