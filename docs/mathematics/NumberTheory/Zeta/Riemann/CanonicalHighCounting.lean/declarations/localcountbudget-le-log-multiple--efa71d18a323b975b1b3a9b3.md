# localCountBudget_le_log_multiple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd9c32f3-f775-3c4a-3cfe-b4dbc4e7ea06",
  "kind": "theorem",
  "lexical_name": "localCountBudget_le_log_multiple",
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
  "slug": "localcountbudget-le-log-multiple--efa71d18a323b975b1b3a9b3",
  "source": {
    "blob": "dd4a7447fa9441839b2e76e0a0023d4e33249228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efa71d18a323b975b1b3a9b31377bab65840580b846956d390050d0ad1f21780",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9c32f3-f775-3c4a-3cfe-b4dbc4e7ea06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localCountBudget_le_log_multiple (N : ℕ) (t : ℝ) (ht : 2 ≤ t)
    (hNt : (N : ℝ) + 2 ≤ 4 * t) :
    localCountBudget N ≤ (22 / Real.log (6 / 5 : ℝ)) * Real.log t := by
  have ht0 : 0 < t := by linarith
  have h2 : Real.log 2 ≤ Real.log t := Real.log_le_log (by norm_num) ht
  have h4 : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    calc
      _ = Real.log ((2 : ℝ) ^ 2) := by norm_num
      _ = _ := by rw [Real.log_pow]; norm_num
  have hlog := Real.log_le_log (by positivity : (0 : ℝ) < (N : ℝ) + 2) hNt
  rw [Real.log_mul (by norm_num : (4 : ℝ) ≠ 0) ht0.ne', h4] at hlog
  unfold localCountBudget
  rw [h4]
  calc
    _ ≤ (22 * Real.log t) / Real.log (6 / 5 : ℝ) :=
      div_le_div_of_nonneg_right (by linarith)
        (Real.log_pos (by norm_num : (1 : ℝ) < 6 / 5)).le
    _ = _ := by ring

/-- A real cutoff is covered by an exact mathematical ceiling, not rounded zero data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4a7447fa9441839b2e76e0a0023d4e33249228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
