# harmonic_error_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f786a8ee-0320-b444-e897-43f1b5c2a07a",
  "kind": "theorem",
  "lexical_name": "harmonic_error_upper",
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
  "slug": "harmonic-error-upper--3fe441d7448d57fac962c960",
  "source": {
    "blob": "6c83adbde5d39871338dd4dd7a127afe70f5bc04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe441d7448d57fac962c9608ad688d3b69bd8f4604e3669930f810f43cb9241",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f786a8ee-0320-b444-e897-43f1b5c2a07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonic_error_upper {k : ℕ} (hk : 0 < k) :
    (harmonic k : ℝ)-Real.log k-Real.eulerMascheroniConstant ≤ 1/(k:ℝ) := by
  have hgamma := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant k
  unfold Real.eulerMascheroniSeq at hgamma
  have hk0 : (0:ℝ) < k := by exact_mod_cast hk
  have hlog := Real.log_le_sub_one_of_pos (show 0 < ((k:ℝ)+1)/k by positivity)
  rw [Real.log_div (by positivity) hk0.ne'] at hlog
  have harith : ((k:ℝ)+1)/k-1 = 1/(k:ℝ) := by field_simp; ring
  rw [harith] at hlog
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant53c7aa6fd370e82b0c35e8e5ba55fe2d7df3b063971cab2273c5d25a29bdf572.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c83adbde5d39871338dd4dd7a127afe70f5bc04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
