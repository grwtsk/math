# weighted_emphasis_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6b86cfd-74f5-0ab7-fbaf-de54f569b108",
  "kind": "theorem",
  "lexical_name": "weighted_emphasis_abs_le",
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
  "slug": "weighted-emphasis-abs-le--5e70f40fffbf3fbdad64422d",
  "source": {
    "blob": "df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e70f40fffbf3fbdad64422daa6cdd1f06ccb4a73e4570fbf7f776bfd460e150",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6b86cfd-74f5-0ab7-fbaf-de54f569b108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_emphasis_abs_le (W : E ≃L[ℝ] E) (a v : ℕ → E)
    (n : ℕ) (B : ℝ) (hB : 0 ≤ B)
    (hp : ∀ k ≤ n + 1, ‖W (schedulePrefix v k)‖ ≤ B) :
    |∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)| ≤
      B * (‖(W.symm.toContinuousLinearMap).adjoint (a n)‖ +
        ∑ k ∈ Finset.range n,
          ‖(W.symm.toContinuousLinearMap).adjoint (a k - a (k + 1))‖) := by
  have he : (∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)) =
      ∑ i ∈ Finset.range (n + 1),
        inner ℝ ((W.symm.toContinuousLinearMap).adjoint (a i)) (W (v i)) := by
    apply Finset.sum_congr rfl
    intro i _
    exact (emphasis_pairing W (a i) (v i)).symm
  rw [he]
  have hp' : ∀ k ≤ n + 1, ‖schedulePrefix (fun i => W (v i)) k‖ ≤ B := by
    intro k hk
    simpa [schedulePrefix, map_sum] using hp k hk
  simpa only [map_sub] using weighted_abel_abs_le
    (fun i => (W.symm.toContinuousLinearMap).adjoint (a i))
    (fun i => W (v i)) n B hB hp'

end Abel

section Transport

variable {ι : Type*} [Fintype ι]

/-- Both signed moments use their native coordinates; the derivative has a plus sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
