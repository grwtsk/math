# initialStorage_epsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83e7ee38-40c4-1c44-1c77-2a9397b9a95f",
  "kind": "theorem",
  "lexical_name": "initialStorage_epsilon",
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
  "slug": "initialstorage-epsilon--8c2f087f5c77f73dc5f7cae2",
  "source": {
    "blob": "e280b25fde4df63d9fefc4be5b8caa53e1521bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c2f087f5c77f73dc5f7cae2dfa0649ef92780ea5771585cfab8b92d03c54b5a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83e7ee38-40c4-1c44-1c77-2a9397b9a95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initialStorage_epsilon {L b K A ε : ℝ}
    (hK : 0 ≤ K) (hA : 1 ≤ A) (hKA : K ≤ A)
    (hε : 0 < ε) (hR : 314 * K / ε ≤ A)
    (hL : |L| ≤ 5 * (K / A)) (hb : |b| ≤ 2 * (K / A)) :
    |initialStorage L b - 4| ≤ ε := by
  have hA0 : 0 < A := by linarith
  have hh : 0 ≤ K / A := div_nonneg hK hA0.le
  have hh1 : K / A ≤ 1 := (div_le_one hA0).mpr hKA
  have hbudget : 314 * (K / A) ≤ ε := by
    have hr := (div_le_iff₀ hε).mp hR
    rw [← mul_div_assoc]
    apply (div_le_iff₀ hA0).mpr
    nlinarith
  exact (initialStorage_abs_sub_four_linear hh hh1 hL hb).trans hbudget

/-- The separate continuous drift has positive exponential size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0c6a59497baf0102cb5a6cc50ad641b31c15c556f5dbdcf71e952a729f872df9.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e280b25fde4df63d9fefc4be5b8caa53e1521bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
