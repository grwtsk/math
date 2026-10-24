# logSample_zero_of_time_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:956083b3-256d-b743-3f52-f0cce16935e7",
  "kind": "theorem",
  "lexical_name": "logSample_zero_of_time_le_log",
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
  "slug": "logsample-zero-of-time-le-log--0349dd56becb8519405c835a",
  "source": {
    "blob": "a98adaf75ee042dc6a7e5f7abf9ec9218d351b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0349dd56becb8519405c835a0277f1ac6374e523c868a759630e27167224c068",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:956083b3-256d-b743-3f52-f0cce16935e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSample_zero_of_time_le_log (t x : ℝ) (h : t ≤ Real.log x) :
    logSample t x = 0 := by
  rw [logSample, normalizedTest_zero_of_le_abs 1 _ (by norm_num), mul_zero]
  have ha := neg_le_abs (t - 1 - Real.log x)
  linarith

/-- The original exponential time cutoff retains a zero boundary value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variantb70eee5dee10d135b7f1c2fd09f70abc3d3f0a5ab7c4ed83fb229439e8c0849d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a98adaf75ee042dc6a7e5f7abf9ec9218d351b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
