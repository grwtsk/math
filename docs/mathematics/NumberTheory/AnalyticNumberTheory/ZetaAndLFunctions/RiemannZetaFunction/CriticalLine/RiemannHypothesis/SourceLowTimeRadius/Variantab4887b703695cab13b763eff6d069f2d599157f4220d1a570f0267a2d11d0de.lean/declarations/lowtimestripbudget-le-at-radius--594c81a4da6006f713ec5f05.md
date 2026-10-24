# lowTimeStripBudget_le_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:451d38ff-836c-efa8-9a36-e25259e53fcb",
  "kind": "theorem",
  "lexical_name": "lowTimeStripBudget_le_at_radius",
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
  "slug": "lowtimestripbudget-le-at-radius--594c81a4da6006f713ec5f05",
  "source": {
    "blob": "e7bae72df4c5fe3ab63967290db35f4269e0c40c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantab4887b703695cab13b763eff6d069f2d599157f4220d1a570f0267a2d11d0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:594c81a4da6006f713ec5f0581cb08f482d41b365d24ea9817cc4efbedf9e6f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantab4887b703695cab13b763eff6d069f2d599157f4220d1a570f0267a2d11d0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:451d38ff-836c-efa8-9a36-e25259e53fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowTimeStripBudget_le_at_radius {R A : ℝ} (hR : 1 ≤ R) (hA : R ≤ A) :
    lowTimeStripBudget A ≤ lowTimeStripBudget R := by
  have hR0 : 0 < R := by linarith
  have hA0 : 0 < A := by linarith
  have hsq : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hdiv : 162826 / (7623 * A ^ 2) ≤ 162826 / (7623 * R ^ 2) :=
    div_le_div_of_nonneg_left (by norm_num) (by positivity) (by gcongr)
  unfold lowTimeStripBudget
  exact mul_le_mul_of_nonneg_left (by linarith [hdiv]) (by
    exact mul_nonneg (by norm_num) mangoldt_error_budget_pos.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantab4887b703695cab13b763eff6d069f2d599157f4220d1a570f0267a2d11d0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantab4887b703695cab13b763eff6d069f2d599157f4220d1a570f0267a2d11d0de.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7bae72df4c5fe3ab63967290db35f4269e0c40c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
