# criticalContinuousMoment_strict_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db997fc-d05f-680f-4170-a14450bcd7b8",
  "kind": "theorem",
  "lexical_name": "criticalContinuousMoment_strict_bounds",
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
  "slug": "criticalcontinuousmoment-strict-bounds--1b5b3a07ac519dcb5d2eb12c",
  "source": {
    "blob": "1882ecf6755e0f8fbd42e48a4c4d2fb75705848c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b5b3a07ac519dcb5d2eb12ca9bfe627a8a7730c188fac81803b69c739cabccf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db997fc-d05f-680f-4170-a14450bcd7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalContinuousMoment_strict_bounds {A : ℝ} (hA : 1 ≤ A) :
    -2 < criticalContinuousMoment A ∧ criticalContinuousMoment A < 0 := by
  refine ⟨?_, criticalContinuousMoment_lt_zero hA⟩
  rw [criticalContinuousMoment_eq_rational hA]
  have hd : 0 < 7*A^4+272*A^2+7344 := by positivity
  apply (lt_div_iff₀ hd).mpr
  nlinarith [sq_nonneg A]

/-- The actual residual retains the entire signed Mangoldt work after source-energy evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1882ecf6755e0f8fbd42e48a4c4d2fb75705848c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
