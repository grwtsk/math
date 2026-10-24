# integral_geometricMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77941818-9c68-f735-17aa-fe1bbedb44f8",
  "kind": "lemma",
  "lexical_name": "integral_geometricMeasure",
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
  "slug": "integral-geometricmeasure--7c2d4e10b90d51987ed6f364",
  "source": {
    "blob": "50d5b65064db0e278f4076f0ecbac12cd894d339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c2d4e10b90d51987ed6f364ea3282958ed8dcc5dcba36450dc0a2bb8b392582",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77941818-9c68-f735-17aa-fe1bbedb44f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_geometricMeasure [FiniteDimensional ℝ E] (hp : p ≠ 0) (f : ℕ → E) :
    ∫ n, f n ∂geometricMeasure p = ∑' n : ℕ, ((1 - p : ℝ) ^ n * p) • f n := by
  rw [geometricMeasure_eq hp, integral_sum_dirac (by simp)]
  congr with n
  rw [ENNReal.toReal_ofReal (geometricMeasure_nonneg p n)]

end Integral

section GeometricPMF

variable {p : ℝ}

/-- The pmf of the geometric distribution depending on its success probability. -/
@[deprecated geometricMeasure (since := "2026-03-08")]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d5b65064db0e278f4076f0ecbac12cd894d339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
