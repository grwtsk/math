# leading_of_strict_column_at_receiving_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4522279-c9a8-9b86-15a6-cde589728bc7",
  "kind": "theorem",
  "lexical_name": "leading_of_strict_column_at_receiving_radius",
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
  "slug": "leading-of-strict-column-at-receiving-radius--65a9f7f22085c7b3e3bf047a",
  "source": {
    "blob": "1123d906319dfbe88f9bb9c00a9a2ed528179417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReceivingRadiusSmoothingApplications/Variant697f946eb903742ab8b3fc630c50c86b3601c5d23fd367f3b0714e79b143ee9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a9f7f22085c7b3e3bf047ac4b687b45576da2304a6227374408c588aec74f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReceivingRadiusSmoothingApplications/Variant697f946eb903742ab8b3fc630c50c86b3601c5d23fd367f3b0714e79b143ee9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4522279-c9a8-9b86-15a6-cde589728bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leading_of_strict_column_at_receiving_radius (D R : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ D + endpointBudget (max 25600 R) + C_F -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_strictColumnInterior_tail
    D (max 25600 R) (hR.trans (le_max_right _ _))
    (fun A hA ↦ hS A ((le_max_right _ _).trans hA))
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA) (hF A hA)

/-- The actual matched finite triangular comparison pays one half exactly once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReceivingRadiusSmoothingApplications/Variant697f946eb903742ab8b3fc630c50c86b3601c5d23fd367f3b0714e79b143ee9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReceivingRadiusSmoothingApplications/Variant697f946eb903742ab8b3fc630c50c86b3601c5d23fd367f3b0714e79b143ee9b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1123d906319dfbe88f9bb9c00a9a2ed528179417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
