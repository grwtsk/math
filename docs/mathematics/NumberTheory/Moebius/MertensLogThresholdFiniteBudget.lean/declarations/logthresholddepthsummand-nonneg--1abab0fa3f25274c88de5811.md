# logThresholdDepthSummand_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1862bf0-6e53-2f09-8e0e-1c3678fab8ba",
  "kind": "theorem",
  "lexical_name": "logThresholdDepthSummand_nonneg",
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
  "slug": "logthresholddepthsummand-nonneg--1abab0fa3f25274c88de5811",
  "source": {
    "blob": "8dd49852446770e2731935079a54b83da61b1f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 20,
    "path": "GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1abab0fa3f25274c88de5811fd192183bd0e134a3d3c0d209786163034f4ae7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1862bf0-6e53-2f09-8e0e-1c3678fab8ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logThresholdDepthSummand_nonneg
    (j t : ℕ) :
    0 ≤
      (t + 1 : ℝ) *
        ((((harmonicInitialDenominator j t : ℕ) : ℝ))⁻¹ -
          ((((harmonicInitialDenominator j t + 1 : ℕ) : ℝ))⁻¹)) := by
  apply mul_nonneg
  · positivity
  · apply sub_nonneg.mpr
    apply inv_anti₀
    · have h : 0 < harmonicInitialDenominator j t := by
        unfold harmonicInitialDenominator
        omega
      exact_mod_cast h
    · exact_mod_cast Nat.le_succ (harmonicInitialDenominator j t)

/-- One reciprocal-depth summand is at most the reciprocal left dyadic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd49852446770e2731935079a54b83da61b1f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
