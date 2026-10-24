# dominated_family_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f8416b0-596c-eaca-6447-0b67002c8c15",
  "kind": "theorem",
  "lexical_name": "dominated_family_scaled",
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
  "slug": "dominated-family-scaled--d0ca2d0851ed21aa7165dd33",
  "source": {
    "blob": "330123ddaace860044eda362ecaddbac64b5450d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 64,
    "path": "GRWTSK/Analysis/Series/ScaledHeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ca2d0851ed21aa7165dd338b38079d72376752657b46e696cb7c599013120a",
  "verification": {
    "reference": "docs/verification/Analysis/Series/ScaledHeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8416b0-596c-eaca-6447-0b67002c8c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dominated_family_scaled {E : Type*}
    [NormedAddCommGroup E] [CompleteSpace E]
    (height weight : ι → ℝ) (f : ι → E) (T C A : ℝ)
    (hT : 1 ≤ T) (hC : 0 ≤ C) (hA : 0 < A)
    (_hw : ∀ i, 0 ≤ weight i) (hlower : ∀ i, T < height i)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ A * (t * Real.log t))
    (hdom : ∀ i, ‖f i‖ ≤ C * (weight i / height i ^ 2)) :
    Summable (fun i => ‖f i‖) ∧ Summable f ∧
      (∑' i, ‖f i‖) ≤ (C * A) * inverseSquareBudget T := by
  have hfinite : ∀ S : Finset ι,
      (∑ i ∈ S, ‖f i‖) ≤ (C * A) * inverseSquareBudget T := by
    intro S
    calc
      _ ≤ ∑ i ∈ S, C * (weight i / height i ^ 2) :=
        Finset.sum_le_sum (fun i hi => hdom i)
      _ = C * ∑ i ∈ S, weight i / height i ^ 2 := by rw [Finset.mul_sum]
      _ ≤ C * (A * inverseSquareBudget T) := mul_le_mul_of_nonneg_left
        (finite_inverseSquare_le_scaled S height weight T A hT hA
          (fun i hi => hlower i) (hcount S)) hC
      _ = _ := by ring
  have hn := summable_of_sum_le (fun i => norm_nonneg (f i)) hfinite
  exact ⟨hn, hn.of_norm,
    Real.tsum_le_of_sum_le (fun i => norm_nonneg (f i)) hfinite⟩

end
end GRWTSK.Analysis.Series.ScaledHeightCountingTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/ScaledHeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/ScaledHeightCountingTail.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330123ddaace860044eda362ecaddbac64b5450d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
