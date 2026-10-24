# six_factor_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:912f0db1-a4ce-7df4-c815-baab63f80b50",
  "kind": "theorem",
  "lexical_name": "six_factor_lower",
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
  "slug": "six-factor-lower--27669ecdd29a89b52ae858bd",
  "source": {
    "blob": "06097301220716e36a850c6e0182bdf78a735a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27669ecdd29a89b52ae858bd165e9afab22d525b8c13819e5dd0616eb54be9ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:912f0db1-a4ce-7df4-c815-baab63f80b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem six_factor_lower (A : ℝ) (hA : 91 ≤ A) :
    2 * A ≤ (1 + A / 60) ^ 6 := by
  let x : ℝ := A - 91
  have hx : 0 ≤ x := by dsimp [x]; linarith
  have he : 1 + A / 60 = (x + 151) / 60 := by dsimp [x]; ring
  have hraw : 2 * (x + 91) * (60 : ℝ) ^ 6 ≤ (x + 151) ^ 6 := by
    nlinarith [pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
      pow_nonneg hx 5, pow_nonneg hx 6]
  rw [he, div_pow]
  apply (le_div_iff₀ (by norm_num : (0 : ℝ) < 60 ^ 6)).mpr
  simpa only [x] using hraw

/-- The entire adaptive family respects the original actual closed-tail height guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06097301220716e36a850c6e0182bdf78a735a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
