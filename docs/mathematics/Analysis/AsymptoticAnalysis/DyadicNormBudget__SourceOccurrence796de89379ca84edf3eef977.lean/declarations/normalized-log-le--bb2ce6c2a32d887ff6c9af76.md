# normalized_log_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a4632ac-ffaa-d166-c88c-cafc0485e539",
  "kind": "theorem",
  "lexical_name": "normalized_log_le",
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
  "slug": "normalized-log-le--bb2ce6c2a32d887ff6c9af76",
  "source": {
    "blob": "3c9ac095a156a4517e278cc9378ce0e0d4b267e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DyadicNormBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb2ce6c2a32d887ff6c9af76647118674ee77aafc2d70d6a34dff0b51036afa0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence796de89379ca84edf3eef977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4632ac-ffaa-d166-c88c-cafc0485e539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_log_le (L loss : ℕ → ℝ) (hL : ∀ n, 0 < L n)
    (hstep : ∀ j, L (j+1) ≤ Real.exp (loss j) * L j) (J : ℕ) :
    Real.log (L J) / (2:ℝ)^J ≤
      (Real.log (L 0) + ∑ j ∈ Finset.range J, loss j) / (2:ℝ)^J := by
  have h := Real.log_le_log (hL J) (finite_iteration L loss hstep J)
  rw [Real.log_mul (Real.exp_ne_zero _) (hL 0).ne', Real.log_exp] at h
  apply div_le_div_of_nonneg_right _ (pow_nonneg (by norm_num : (0:ℝ) ≤ 2) J)
  linarith

/-- The analytic limit of the complete loss budget remains a visible premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence796de89379ca84edf3eef977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DyadicNormBudget.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9ac095a156a4517e278cc9378ce0e0d4b267e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
