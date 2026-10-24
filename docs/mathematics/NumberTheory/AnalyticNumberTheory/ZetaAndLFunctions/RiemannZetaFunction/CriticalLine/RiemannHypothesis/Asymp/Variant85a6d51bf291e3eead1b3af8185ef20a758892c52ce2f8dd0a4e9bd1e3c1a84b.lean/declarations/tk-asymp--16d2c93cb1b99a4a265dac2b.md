# Tk_asymp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15dc7030-0b45-cc45-f2a3-c46c2fdb7614",
  "kind": "theorem",
  "lexical_name": "Tk_asymp",
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
  "slug": "tk-asymp--16d2c93cb1b99a4a265dac2b",
  "source": {
    "blob": "e9fb2ca771d837461fed0d1d934229c7ec1bce08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d2c93cb1b99a4a265dac2b945f98e2ff958f8b2fc1b147a4706792aa534b0d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15dc7030-0b45-cc45-f2a3-c46c2fdb7614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tk_asymp (k : ℕ) :
    ∃ C : ℝ, ∀ u : ℝ, 0 ≤ u → |Tk k u - u ^ (2 * k) / (2 * k).factorial| ≤ C * (1 + u) ^ (2 * k - 1) := by
  rcases k with _ | j
  · refine ⟨0, fun u hu => ?_⟩
    rw [Tk_zero hu]
    simp
  · obtain ⟨C, -, h⟩ := Tk_asymp_succ j
    refine ⟨C, fun u hu => ?_⟩
    have e1 : 2 * (j + 1) = 2 * j + 2 := by ring
    have e2 : 2 * j + 2 - 1 = 2 * j + 1 := by omega
    rw [e1, e2]
    exact h u hu

/-- Tk_asymp with a nonnegative constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variant85a6d51bf291e3eead1b3af8185ef20a758892c52ce2f8dd0a4e9bd1e3c1a84b.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9fb2ca771d837461fed0d1d934229c7ec1bce08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
