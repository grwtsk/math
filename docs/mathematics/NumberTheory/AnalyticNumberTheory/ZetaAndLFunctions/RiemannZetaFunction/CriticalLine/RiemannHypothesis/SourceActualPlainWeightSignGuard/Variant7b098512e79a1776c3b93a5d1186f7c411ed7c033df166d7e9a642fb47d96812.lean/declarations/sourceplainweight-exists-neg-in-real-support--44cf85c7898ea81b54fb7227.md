# sourcePlainWeight_exists_neg_in_real_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1da0596-e9da-7cd9-5d57-edd41a09479e",
  "kind": "theorem",
  "lexical_name": "sourcePlainWeight_exists_neg_in_real_support",
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
  "slug": "sourceplainweight-exists-neg-in-real-support--44cf85c7898ea81b54fb7227",
  "source": {
    "blob": "35580fb74064a0c1e7f410f2cd7f1fad7dcafc6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant7b098512e79a1776c3b93a5d1186f7c411ed7c033df166d7e9a642fb47d96812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44cf85c7898ea81b54fb722798713a39f85e9ae20e77ad1256351114a91e9ca8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant7b098512e79a1776c3b93a5d1186f7c411ed7c033df166d7e9a642fb47d96812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1da0596-e9da-7cd9-5d57-edd41a09479e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainWeight_exists_neg_in_real_support (A : ℝ) (hA : 1 ≤ A) :
    ∃ x : ℝ, 1 < x ∧ x < Real.exp (2 * A) ∧ sourcePlainWeight A x < 0 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  obtain ⟨t, ht, htA, hneg⟩ := sourceCorrelation_exists_neg_in_half_support hpos
  refine ⟨Real.exp t, Real.one_lt_exp_iff.mpr ht, Real.exp_lt_exp.mpr htA, ?_⟩
  unfold sourcePlainWeight
  rw [Real.log_exp]
  exact div_neg_of_neg_of_pos hneg (Real.sqrt_pos.mpr (Real.exp_pos t))

end FormalResearch.RiemannHypothesis.SourceActualPlainWeightSignGuard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant7b098512e79a1776c3b93a5d1186f7c411ed7c033df166d7e9a642fb47d96812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant7b098512e79a1776c3b93a5d1186f7c411ed7c033df166d7e9a642fb47d96812.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35580fb74064a0c1e7f410f2cd7f1fad7dcafc6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
