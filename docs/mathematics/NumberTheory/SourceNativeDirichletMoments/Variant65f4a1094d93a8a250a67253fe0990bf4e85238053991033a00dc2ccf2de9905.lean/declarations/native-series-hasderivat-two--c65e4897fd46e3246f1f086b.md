# native_series_hasDerivAt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3a5048e-6fc0-a9f0-831b-629b308f1acd",
  "kind": "theorem",
  "lexical_name": "native_series_hasDerivAt_two",
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
  "slug": "native-series-hasderivat-two--c65e4897fd46e3246f1f086b",
  "source": {
    "blob": "9ec47dfc19abafa0889d0e20e088290804329318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c65e4897fd46e3246f1f086bc6fcc7317178d00b9b18a731497e17e21ff77555",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3a5048e-6fc0-a9f0-831b-629b308f1acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_series_hasDerivAt_two :
    HasDerivAt (LSeries (fun n : ℕ ↦ (vonMangoldt n : ℂ)))
      (-(dirichletMoment 1 : ℂ)) 2 := by
  have hab : LSeries.abscissaOfAbsConv (fun n : ℕ ↦ (vonMangoldt n : ℂ)) <
      (2 : ℂ).re := lt_of_le_of_lt mangoldt_abscissa_le_one
    (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  have h := LSeries_hasDerivAt hab
  simpa only [show LSeries.logMul (fun n : ℕ ↦ (vonMangoldt n : ℂ)) =
      LSeries.logMul^[1] (fun n : ℕ ↦ (vonMangoldt n : ℂ)) by rfl,
    log_moment_series_eq] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ec47dfc19abafa0889d0e20e088290804329318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
