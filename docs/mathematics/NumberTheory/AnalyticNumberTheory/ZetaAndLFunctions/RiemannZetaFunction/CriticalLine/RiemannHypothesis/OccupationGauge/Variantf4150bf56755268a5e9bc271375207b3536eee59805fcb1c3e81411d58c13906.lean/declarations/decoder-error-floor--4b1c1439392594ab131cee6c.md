# decoder_error_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feee095d-38d5-23d8-e59b-99620a5d4836",
  "kind": "theorem",
  "lexical_name": "decoder_error_floor",
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
  "slug": "decoder-error-floor--4b1c1439392594ab131cee6c",
  "source": {
    "blob": "76735049ede1c866c8be0475e0339808bb69da31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variantf4150bf56755268a5e9bc271375207b3536eee59805fcb1c3e81411d58c13906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1c1439392594ab131cee6c1c8b64dff4d3196b3375d7033bd4a0b83a813014",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variantf4150bf56755268a5e9bc271375207b3536eee59805fcb1c3e81411d58c13906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feee095d-38d5-23d8-e59b-99620a5d4836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decoder_error_floor (decode : ((Fin 2 → ℝ) → ℝ) → ℝ) :
    (1 / 4 : ℝ) ≤ |decode (occupationQueries (kernel (1 / 4))) - (1 / 4)| ∨
      (1 / 4 : ℝ) ≤ |decode (occupationQueries (kernel (-1 / 4))) - (-1 / 4)| := by
  have hq : occupationQueries (kernel (-1 / 4)) =
      occupationQueries (kernel (1 / 4)) := by
    simpa only [neg_div] using (complete_queries_ignore_off_diagonal_sign (1 / 4)).symm
  rw [hq]
  by_contra h
  push Not at h
  have hp := (abs_lt.mp h.1).1
  have hm := (abs_lt.mp h.2).2
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variantf4150bf56755268a5e9bc271375207b3536eee59805fcb1c3e81411d58c13906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variantf4150bf56755268a5e9bc271375207b3536eee59805fcb1c3e81411d58c13906.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76735049ede1c866c8be0475e0339808bb69da31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
