# shift_factorial_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d972d514-1c4d-4c4d-32c0-c905d190dc4f",
  "kind": "lemma",
  "lexical_name": "shift_factorial_lower",
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
  "slug": "shift-factorial-lower--15cbdc34fed85249b590842a",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15cbdc34fed85249b590842a43abb30d90f962f2981a089b845a5c8f31cf2ee6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d972d514-1c4d-4c4d-32c0-c905d190dc4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_factorial_lower
    (l : ℝ) (hl : 1 < l) :
    1 / l * (
      1 / (l - 1) + 1 / (l - 1)^2 + 2 / (l - 1)^3
      + 6 / (l - 1)^4 + 24 / (l - 1)^5)
    ≥
    1 / l^2 + 2 / l^3 + 5 / l^4 + 16 / l^5 + 65 / l^6
      + (206 + 364 / l + 381 / l^2 + 238 / l^3
          + 97 / l^4 + 30 / l^5 + 8 / l^6) / l^7 := by
  have hl0 : 0 < l := by linarith
  have hlm1 : 0 < l - 1 := by linarith
  have hdiff :
      1 / l *
          (1 / (l - 1) + 1 / (l - 1) ^ 2 + 2 / (l - 1) ^ 3 + 6 / (l - 1) ^ 4 + 24 / (l - 1) ^ 5)
        - (1 / l ^ 2 + 2 / l ^ 3 + 5 / l ^ 4 + 16 / l ^ 5 + 65 / l ^ 6 +
            (206 + 364 / l + 381 / l ^ 2 + 238 / l ^ 3 + 97 / l ^ 4 + 30 / l ^ 5 + 8 / l ^ 6) / l ^ 7)
      =
        (153 * (l - 1) ^ 10 + 1484 * (l - 1) ^ 9 + 6249 * (l - 1) ^ 8 + 14886 * (l - 1) ^ 7 +
          22027 * (l - 1) ^ 6 + 21083 * (l - 1) ^ 5 + 13345 * (l - 1) ^ 4 + 5701 * (l - 1) ^ 3 +
          1658 * (l - 1) ^ 2 + 294 * (l - 1) + 24) / (l ^ 13 * (l - 1) ^ 5) := by
    field_simp [hl0.ne', hlm1.ne']
    ring
  have hnum_nonneg :
      0 ≤
        153 * (l - 1) ^ 10 + 1484 * (l - 1) ^ 9 + 6249 * (l - 1) ^ 8 + 14886 * (l - 1) ^ 7 +
          22027 * (l - 1) ^ 6 + 21083 * (l - 1) ^ 5 + 13345 * (l - 1) ^ 4 + 5701 * (l - 1) ^ 3 +
          1658 * (l - 1) ^ 2 + 294 * (l - 1) + 24 := by
    positivity
  have hden_pos : 0 < l ^ 13 * (l - 1) ^ 5 := by positivity
  have hdelta_nonneg :
      0 ≤
        1 / l *
            (1 / (l - 1) + 1 / (l - 1) ^ 2 + 2 / (l - 1) ^ 3 + 6 / (l - 1) ^ 4 + 24 / (l - 1) ^ 5)
          - (1 / l ^ 2 + 2 / l ^ 3 + 5 / l ^ 4 + 16 / l ^ 5 + 65 / l ^ 6 +
              (206 + 364 / l + 381 / l ^ 2 + 238 / l ^ 3 + 97 / l ^ 4 + 30 / l ^ 5 + 8 / l ^ 6) / l ^ 7) := by
    rw [hdiff]
    exact div_nonneg hnum_nonneg hden_pos.le
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
