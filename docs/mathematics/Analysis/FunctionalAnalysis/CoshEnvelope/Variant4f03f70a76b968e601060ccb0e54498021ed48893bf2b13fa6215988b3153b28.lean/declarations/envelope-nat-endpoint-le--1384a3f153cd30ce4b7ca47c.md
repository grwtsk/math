# envelope_nat_endpoint_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e7dbecf-b0d5-02ea-4d13-5d3a4ec024a9",
  "kind": "theorem",
  "lexical_name": "envelope_nat_endpoint_le",
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
  "slug": "envelope-nat-endpoint-le--1384a3f153cd30ce4b7ca47c",
  "source": {
    "blob": "5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1384a3f153cd30ce4b7ca47c509bdaa43f308d97cd2e1127809fd2583560e1d2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e7dbecf-b0d5-02ea-4d13-5d3a4ec024a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_nat_endpoint_le (M : ℕ) (hM : 1 ≤ M) :
    envelope (M:ℝ) ≤ (((2719/1000:ℝ)^M+3)/(M:ℝ)^9) := by
  rw [envelope_exp_formula]
  have hn : Real.exp (-(M:ℝ)) ≤ 1 := Real.exp_le_one_iff.mpr (neg_nonpos.mpr (Nat.cast_nonneg M))
  have he : Real.exp (M:ℝ) ≤ (2719/1000:ℝ)^M := by
    have hp := pow_le_pow_left₀ (Real.exp_pos 1).le exp_one_lt_rational.le M
    simpa only [← Real.exp_nat_mul, mul_one] using hp
  apply div_le_div_of_nonneg_right (by linarith) (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
