# local_principal_sum_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38956cda-bc63-2542-64a5-b4b7d37d1c81",
  "kind": "theorem",
  "lexical_name": "local_principal_sum_bound",
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
  "slug": "local-principal-sum-bound--b320e601577b13e63f3614b7",
  "source": {
    "blob": "7c1ae3bb0688226f32cee4ec90515f373174376b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 184,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b320e601577b13e63f3614b748d103d9ca56132bfedca8570fa5b9d552f66d66",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38956cda-bc63-2542-64a5-b4b7d37d1c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_principal_sum_bound (N : ℕ) (σ y : ℝ) (hy : |y| = separatedHeight N) :
    ‖∑ z ∈ heightBand N, (multiplicity z : ℂ) /
      (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ ≤
        (bandMass N : ℝ) / heightClearance N := by
  classical
  calc
    _ ≤ ∑ z ∈ heightBand N, ‖(multiplicity z : ℂ) /
        (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ := norm_sum_le _ _
    _ ≤ ∑ z ∈ heightBand N, (multiplicity z : ℝ) / heightClearance N := by
      apply Finset.sum_le_sum
      intro z hz
      rw [norm_div, Complex.norm_natCast]
      exact div_le_div_of_nonneg_left (Nat.cast_nonneg _) (heightClearance_pos N)
        (horizontal_distance N σ y hy z)
    _ = _ := by simp only [bandMass, Nat.cast_sum, Finset.sum_div]

end
end GRWTSK.RiemannHypothesis.SeparatedContourHeights
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1ae3bb0688226f32cee4ec90515f373174376b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
