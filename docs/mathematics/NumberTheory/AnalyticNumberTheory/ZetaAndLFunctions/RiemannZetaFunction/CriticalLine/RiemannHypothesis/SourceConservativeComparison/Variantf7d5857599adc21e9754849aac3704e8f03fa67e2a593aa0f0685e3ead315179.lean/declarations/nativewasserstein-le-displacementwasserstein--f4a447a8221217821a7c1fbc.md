# nativeWasserstein_le_displacementWasserstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beefd936-a5ad-54f7-ce51-450f930fac52",
  "kind": "theorem",
  "lexical_name": "nativeWasserstein_le_displacementWasserstein",
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
  "slug": "nativewasserstein-le-displacementwasserstein--f4a447a8221217821a7c1fbc",
  "source": {
    "blob": "c424fded148cd540757faa8ed4ad0ae558d48584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4a447a8221217821a7c1fbcd6332163bed16bf9eef5e7814a42131d1b09ddf9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beefd936-a5ad-54f7-ce51-450f930fac52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeWasserstein_le_displacementWasserstein {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ)
    (P : ι → κ → ℝ) (hP : IsPlan u v P) :
    nativeWasserstein A x y u v ≤
      (Real.sqrt 5 / A) * displacementWasserstein x y u v := by
  have hp : 0 < A := by linarith
  have hc : 0 < Real.sqrt 5 / A := by positivity
  have hb : nativeWasserstein A x y u v / (Real.sqrt 5 / A) ≤
      displacementWasserstein x y u v := by
    apply le_csInf (costSet_nonempty u v (displacementCost x y) P hP)
    rintro z ⟨Q, hQ, rfl⟩
    apply (div_le_iff₀ hc).2
    have hmin : nativeWasserstein A x y u v ≤ sourcePlanCost A x y Q :=
      csInf_le (sourceCostSet_bddBelow A x y u v) ⟨Q, hQ, rfl⟩
    exact (hmin.trans (sourcePlanCost_le_displacement hA x y Q hQ.1)).trans_eq
      (mul_comm _ _)
  exact ((div_le_iff₀ hc).1 hb).trans_eq (mul_comm _ _)

end Plan

section Shell

variable {ι : Type*} [Fintype ι]

/-- Every coefficient in each of the two channels is charged by its own error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c424fded148cd540757faa8ed4ad0ae558d48584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
