# correctedNumerator_succ_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d6d630b-d5f0-1a31-aaef-b2335226cd66",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_succ_sub",
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
  "slug": "correctednumerator-succ-sub--18d9188a14d897fec93b02bb",
  "source": {
    "blob": "02405b9ad5f745c22c6cefe7b6423a439d392aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d9188a14d897fec93b02bbed6813208b3ee8b5bd7effdf8102b1a240ec01da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d6d630b-d5f0-1a31-aaef-b2335226cd66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_succ_sub (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator (N + 1) z - correctedNumerator N z =
      (mobiusReciprocalSum N : ℂ) * cutoffShape N z := by
  rw [correctedNumerator, correctedNumerator, reciprocal_succ]
  simp only [Complex.ofReal_add, Complex.ofReal_div, Complex.ofReal_intCast,
    Complex.ofReal_natCast]
  unfold dirichletNumerator
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1), exponential_split (N + 1) (by omega) z]
  unfold cutoffShape
  ring

/-- The complete numerator is a finite sum of the actual signed prefix increments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02405b9ad5f745c22c6cefe7b6423a439d392aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
