# minnaert_source_log_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1819efa-cbca-97cc-6f1f-630552fc2cf8",
  "kind": "theorem",
  "lexical_name": "minnaert_source_log_volume",
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
  "slug": "minnaert-source-log-volume--d9cfb21f0ed5143b2a4796dd",
  "source": {
    "blob": "20d9b7835a4727310e0ff4bcb81977514612f4eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cfb21f0ed5143b2a4796dd1a7c2eeced729da5b00b065a5137200ef7a6317d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1819efa-cbca-97cc-6f1f-630552fc2cf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minnaert_source_log_volume (parameters : Parameters) (reference : ℝ)
    (referencePositive : 0 < reference) (radius : PositiveRadius) :
    Real.log (sphereVolumeFormula radius / minnaertVolumeFromHertz parameters reference) =
      -3 * logFrequency reference (minnaertFrequencyHertz parameters radius) := by
  rw [← minnaertVolumeFromHertz_source parameters radius]
  exact minnaert_log_volume_ratio parameters reference _ referencePositive
    (minnaertFrequencyHertz_pos parameters radius)

/-- In log-frequency coordinates the normalized Minnaert log-volume graph is affine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d9b7835a4727310e0ff4bcb81977514612f4eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
