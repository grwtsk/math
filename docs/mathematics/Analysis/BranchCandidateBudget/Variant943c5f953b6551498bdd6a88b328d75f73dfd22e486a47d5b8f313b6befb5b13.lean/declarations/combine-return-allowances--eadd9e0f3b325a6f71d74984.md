# combine_return_allowances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99eed882-69ee-7739-eaf9-671abe21e997",
  "kind": "theorem",
  "lexical_name": "combine_return_allowances",
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
  "slug": "combine-return-allowances--eadd9e0f3b325a6f71d74984",
  "source": {
    "blob": "ab9006fd72e905c6250f7367d9745cfcf81c8522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eadd9e0f3b325a6f71d74984c7fa427ca4bc356a4fd1f10e3e53447e130fa42b",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99eed882-69ee-7739-eaf9-671abe21e997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combine_return_allowances (A D₁ D₂ p₁ p₂ : ℝ) (hA : 1 ≤ A)
    (hD₁ : 0 ≤ D₁) (hD₂ : 0 ≤ D₂) :
    max (D₁ * A ^ p₁) (D₂ * A ^ p₂) ≤ max D₁ D₂ * A ^ max p₁ p₂ := by
  have ha : 0 ≤ A := by linarith
  have hp₁ := Real.rpow_le_rpow_of_exponent_le hA (le_max_left p₁ p₂)
  have hp₂ := Real.rpow_le_rpow_of_exponent_le hA (le_max_right p₁ p₂)
  apply max_le
  · exact (mul_le_mul_of_nonneg_left hp₁ hD₁).trans
      (mul_le_mul_of_nonneg_right (le_max_left D₁ D₂) (Real.rpow_nonneg ha _))
  · exact (mul_le_mul_of_nonneg_left hp₂ hD₂).trans
      (mul_le_mul_of_nonneg_right (le_max_right D₁ D₂) (Real.rpow_nonneg ha _))

end FormalResearch.RiemannHypothesis.Conversation.BranchCandidateBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9006fd72e905c6250f7367d9745cfcf81c8522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
