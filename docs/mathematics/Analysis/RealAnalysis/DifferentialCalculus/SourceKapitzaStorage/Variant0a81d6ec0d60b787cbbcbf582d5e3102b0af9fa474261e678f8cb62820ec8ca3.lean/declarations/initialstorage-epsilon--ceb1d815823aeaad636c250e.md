# initialStorage_epsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1637b00-fdcb-4e52-8fd5-c8174a7f6068",
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
  "slug": "initialstorage-epsilon--ceb1d815823aeaad636c250e",
  "source": {
    "blob": "50432f5bb6f6b72e4835ccf5fa05eeea642501fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceb1d815823aeaad636c250e49b0d9583ef2bca6fd36212993f091e1eaa81fec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1637b00-fdcb-4e52-8fd5-c8174a7f6068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50432f5bb6f6b72e4835ccf5fa05eeea642501fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
