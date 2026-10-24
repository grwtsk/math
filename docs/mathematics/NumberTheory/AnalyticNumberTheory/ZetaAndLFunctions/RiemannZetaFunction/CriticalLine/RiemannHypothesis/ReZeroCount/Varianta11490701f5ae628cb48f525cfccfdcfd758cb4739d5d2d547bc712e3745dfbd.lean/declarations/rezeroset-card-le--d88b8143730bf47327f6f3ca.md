# reZeroSet_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a3a1c4b-a025-e057-709d-9cd09f8abc42",
  "kind": "theorem",
  "lexical_name": "reZeroSet_card_le",
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
  "slug": "rezeroset-card-le--d88b8143730bf47327f6f3ca",
  "source": {
    "blob": "c3544fe670aa3734da7c10f647de6dd749755068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 359,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d88b8143730bf47327f6f3ca4354403469d60f9b8abddb86f6bbb6e00573ed20",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a3a1c4b-a025-e057-709d-9cd09f8abc42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reZeroSet_card_le : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
    (reZeroSet T).Finite ∧ ((reZeroSet T).ncard : ℝ) ≤ C * Real.log T := by
  obtain ⟨A, C, hC, hgrowth⟩ := zeta_growth_right
  exact ⟨_, 4, reZeroSet_card_le_of_growth hC hgrowth⟩

/-- explicit form at zeta_growth_right_at's literal data (A, C) = (1, 20/3):
ncard ≤ (1/log(0.9/0.8))·(|log 40| + 2)·log T (≈ 48.3·log T) for T ≥ 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3544fe670aa3734da7c10f647de6dd749755068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
