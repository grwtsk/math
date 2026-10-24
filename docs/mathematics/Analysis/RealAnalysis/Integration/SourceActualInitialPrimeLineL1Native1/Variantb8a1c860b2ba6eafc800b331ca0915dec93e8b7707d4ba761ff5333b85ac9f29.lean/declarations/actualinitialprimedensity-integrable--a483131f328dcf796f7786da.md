# actualInitialPrimeDensity_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:520a49a7-2d92-39b3-e7fc-80ef95ba6ed8",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeDensity_integrable",
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
  "slug": "actualinitialprimedensity-integrable--a483131f328dcf796f7786da",
  "source": {
    "blob": "19632c4d8f4b37892b5d012b29666f91665ccf71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a483131f328dcf796f7786dab59c0ece475f214f80c27f9ca7772076ccb44aa7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:520a49a7-2d92-39b3-e7fc-80ef95ba6ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeDensity_integrable (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    Integrable (actualInitialPrimeDensity A c) := by
  have hH := actualInitialPrimeMellin_on_line_integrable A c hA
  have hm := hH.aestronglyMeasurable.mul
    (actual_initial_series_continuous c hc).aestronglyMeasurable
  have hm' : AEStronglyMeasurable (actualInitialPrimeDensity A c) := by
    simpa only [actualInitialPrimeDensity_eq_series A c _ hc] using hm
  apply (hH.norm.mul_const (actualRightLineMass c)).mono' hm'
  filter_upwards [] with t
  unfold actualInitialPrimeDensity
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (actual_zeta_logDeriv_on_line_norm_le c t hc)
    (norm_nonneg _)

/-- The literal signed finite head, retaining the actual prime multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19632c4d8f4b37892b5d012b29666f91665ccf71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
