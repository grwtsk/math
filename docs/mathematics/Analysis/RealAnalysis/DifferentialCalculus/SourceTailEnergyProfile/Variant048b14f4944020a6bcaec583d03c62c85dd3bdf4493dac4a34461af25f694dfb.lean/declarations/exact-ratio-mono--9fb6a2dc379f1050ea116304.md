# exact_ratio_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:887ee2de-a03f-fcdd-364f-4676e080bf13",
  "kind": "theorem",
  "lexical_name": "exact_ratio_mono",
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
  "slug": "exact-ratio-mono--9fb6a2dc379f1050ea116304",
  "source": {
    "blob": "2c932f28ff47e93e0996a0652071ddc3f4158314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variant048b14f4944020a6bcaec583d03c62c85dd3bdf4493dac4a34461af25f694dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb6a2dc379f1050ea116304732a9b0465a958bdb22b2dc95db8ecf3c0de1b05",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variant048b14f4944020a6bcaec583d03c62c85dd3bdf4493dac4a34461af25f694dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:887ee2de-a03f-fcdd-364f-4676e080bf13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_ratio_mono {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    derivativePolynomial x / normPolynomial x ≤
      derivativePolynomial y / normPolynomial y := by
  have hy : 0 ≤ y := hx.trans hxy
  apply (div_le_div_iff₀ (normPolynomial_pos x hx) (normPolynomial_pos y hy)).mpr
  have hnon : 0 ≤ (y - x) * ((134217728 / 285073425 : ℝ) +
      (94757715968 / 3832653825 : ℝ) * (x + y) +
      (2147483648 / 4601025 : ℝ) * x * y) := by positivity
  rw [← exact_ratio_comparison] at hnon
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variant048b14f4944020a6bcaec583d03c62c85dd3bdf4493dac4a34461af25f694dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variant048b14f4944020a6bcaec583d03c62c85dd3bdf4493dac4a34461af25f694dfb.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c932f28ff47e93e0996a0652071ddc3f4158314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
