# positive_pair_sourceDistance_le_relative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccbaa6c0-735c-c81c-0c08-7f677ab5897a",
  "kind": "theorem",
  "lexical_name": "positive_pair_sourceDistance_le_relative",
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
  "slug": "positive-pair-sourcedistance-le-relative--f576eaadd57bf6ba54fc0df6",
  "source": {
    "blob": "3f26d1d2bc4648899e310266dca66ce4a0a6e04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f576eaadd57bf6ba54fc0df604cc2115e31b4cf88d6f97d4482ad876a4922151",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccbaa6c0-735c-c81c-0c08-7f677ab5897a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_pair_sourceDistance_le_relative {A p q : ℝ} (hA : 200 ≤ A)
    (hp : 0 < p) (hq : p ≤ q) :
    sourceDistance A (Real.log p) (Real.log q) ≤
      Real.sqrt 5 * (q - p) / (A * p) := by
  have hpA : 0 < A := by linarith
  apply (positive_pair_sourceDistance_le hA hp hq).trans
  rw [← log_gap_eq hp hq]
  have hb := mul_le_mul_of_nonneg_left (log_gap_le_relative hp hq)
    (by positivity : 0 ≤ Real.sqrt 5 / A)
  simpa only [div_eq_mul_inv, mul_inv_rev, mul_assoc, mul_comm, mul_left_comm] using hb

/-- The maintained larger-domain derivative comparison keeps its own constant and domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f26d1d2bc4648899e310266dca66ce4a0a6e04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
