# duality_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35bcd8de-d8a7-ea4b-9f74-7d913e0b763e",
  "kind": "theorem",
  "lexical_name": "duality_involutive",
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
  "slug": "duality-involutive--96382f49ff378d3dc1e36d05",
  "source": {
    "blob": "57752dfeb1c55413710aa00a3bee993f923d7d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 186,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96382f49ff378d3dc1e36d057b40840583ddb391606928d0eeef0ec22f96c7b8",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35bcd8de-d8a7-ea4b-9f74-7d913e0b763e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem duality_involutive (f : ComplexL2) : signFourierDuality (signFourierDuality f) = f := by
  apply (Lp.fourierTransformₗᵢ ℝ ℂ).injective
  change 𝓕 (signFourierDuality (signFourierDuality f)) = 𝓕 f
  rw [duality_fourier,duality_fourier]
  exact signMultiplier_involutive (𝓕 f)

/-- Exact spatial reflection anti-commutation of the concrete Fourier duality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57752dfeb1c55413710aa00a3bee993f923d7d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
