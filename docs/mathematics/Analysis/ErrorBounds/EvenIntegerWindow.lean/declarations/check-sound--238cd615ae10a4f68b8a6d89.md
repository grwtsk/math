# check_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddec4db7-9b50-11d8-08b9-bbec5e9e261f",
  "kind": "theorem",
  "lexical_name": "check_sound",
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
  "slug": "check-sound--238cd615ae10a4f68b8a6d89",
  "source": {
    "blob": "a7db4722763a5a84b4b31aba0bf60bc42575982e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 26,
    "path": "GRWTSK/Analysis/ErrorBounds/EvenIntegerWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238cd615ae10a4f68b8a6d894506b8df5b9c3ba813ee28621b8c74360464c271",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/EvenIntegerWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddec4db7-9b50-11d8-08b9-bbec5e9e261f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_sound {lo hi : ℚ} {n k : ℕ} (h : check lo hi n = true)
    (hl : (lo : ℝ) ≤ 2 * (k : ℝ)) (hu : 2 * (k : ℝ) ≤ (hi : ℝ)) : k = n := by
  have hg : lo ≤ 2 * (n : ℚ) ∧ 2 * (n : ℚ) ≤ hi ∧
      2 * (n : ℚ) - 2 < lo ∧ hi < 2 * (n : ℚ) + 2 := by
    simpa only [check, decide_eq_true_eq] using h
  have hlo : 2 * (n : ℝ) - 2 < (lo : ℝ) := by exact_mod_cast hg.2.2.1
  have hhi : (hi : ℝ) < 2 * (n : ℝ) + 2 := by exact_mod_cast hg.2.2.2
  have hkn : k < n + 1 := by
    have hr : (k : ℝ) < (n : ℝ) + 1 := by linarith
    exact_mod_cast hr
  have hnk : n < k + 1 := by
    have hr : (n : ℝ) < (k : ℝ) + 1 := by linarith
    exact_mod_cast hr
  omega

/-- Zero is a permitted target; subtraction is rational, not truncated Nat.sub. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/EvenIntegerWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/EvenIntegerWindow.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7db4722763a5a84b4b31aba0bf60bc42575982e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
