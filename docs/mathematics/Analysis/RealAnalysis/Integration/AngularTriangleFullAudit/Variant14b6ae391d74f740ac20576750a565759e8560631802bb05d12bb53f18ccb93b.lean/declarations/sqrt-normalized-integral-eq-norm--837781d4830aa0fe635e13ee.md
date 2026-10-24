# sqrt_normalized_integral_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77dae0df-e52c-c11e-dab7-069f207a3497",
  "kind": "theorem",
  "lexical_name": "sqrt_normalized_integral_eq_norm",
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
  "slug": "sqrt-normalized-integral-eq-norm--837781d4830aa0fe635e13ee",
  "source": {
    "blob": "bf23fc591ef2c15e0f6d21909d554a43e67135ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 19,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:837781d4830aa0fe635e13eec5361a1aef41d1e3957db9f4f3c940640855a096",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77dae0df-e52c-c11e-dab7-069f207a3497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_normalized_integral_eq_norm (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ := by
  rw [← norm_sq_toLp f hf, Real.sqrt_mul (by positivity), Real.sqrt_sq (norm_nonneg _)]

/-- Minkowski's inequality retains the complete angular square integrals of both summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf23fc591ef2c15e0f6d21909d554a43e67135ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
