# unitBump_overlap_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:767dc05c-e855-ce72-65cf-5c154ecec449",
  "kind": "theorem",
  "lexical_name": "unitBump_overlap_integral",
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
  "slug": "unitbump-overlap-integral--17205ce37579f9b60ec869fd",
  "source": {
    "blob": "faad474718c8fef8dbffa53ef3bd196f12b71022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17205ce37579f9b60ec869fd07cc20e5cc4fe6fa940bc51a738d6d52717ae4db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:767dc05c-e855-ce72-65cf-5c154ecec449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitBump_overlap_integral (u : ℝ) :
    (∫ x : ℝ in (u-1)..1, unitBump x * unitBump (x-u)) = overlapProfile u := by
  have he : (fun x : ℝ => unitBump x * unitBump (x-u)) =
      (fun x => (1 * u ^ 8 - 4 * u ^ 6 + 6 * u ^ 4 - 4 * u ^ 2 + 1) * x ^ 0 +
        (-8 * u ^ 7 + 24 * u ^ 5 - 24 * u ^ 3 + 8 * u) * x ^ 1 +
        (-4 * u ^ 8 + 44 * u ^ 6 - 84 * u ^ 4 + 52 * u ^ 2 - 8) * x ^ 2 +
        (32 * u ^ 7 - 152 * u ^ 5 + 176 * u ^ 3 - 56 * u) * x ^ 3 +
        (6 * u ^ 8 - 136 * u ^ 6 + 346 * u ^ 4 - 228 * u ^ 2 + 28) * x ^ 4 +
        (-48 * u ^ 7 + 368 * u ^ 5 - 520 * u ^ 3 + 168 * u) * x ^ 5 +
        (-4 * u ^ 8 + 184 * u ^ 6 - 664 * u ^ 4 + 500 * u ^ 2 - 56) * x ^ 6 +
        (32 * u ^ 7 - 432 * u ^ 5 + 800 * u ^ 3 - 280 * u) * x ^ 7 +
        (1 * u ^ 8 - 116 * u ^ 6 + 666 * u ^ 4 - 620 * u ^ 2 + 70) * x ^ 8 +
        (-8 * u ^ 7 + 248 * u ^ 5 - 680 * u ^ 3 + 280 * u) * x ^ 9 +
        (28 * u ^ 6 - 340 * u ^ 4 + 444 * u ^ 2 - 56) * x ^ 10 +
        (-56 * u ^ 5 + 304 * u ^ 3 - 168 * u) * x ^ 11 +
        (70 * u ^ 4 - 172 * u ^ 2 + 28) * x ^ 12 +
        (-56 * u ^ 3 + 56 * u) * x ^ 13 +
        (28 * u ^ 2 - 8) * x ^ 14 +
        (-8 * u) * x ^ 15 +
        (1) * x ^ 16) := by
    funext x
    dsimp [unitBump]
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow]
  norm_num
  dsimp [overlapProfile, overlapP0]
  ring

/-- Closed support is restricted exactly; no endpoint or negative shift is discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faad474718c8fef8dbffa53ef3bd196f12b71022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
