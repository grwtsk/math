# edgeRemainder_tendsto_of_rates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d14e6478-4c12-d963-196d-28d1ddf6e73f",
  "kind": "theorem",
  "lexical_name": "edgeRemainder_tendsto_of_rates",
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
  "slug": "edgeremainder-tendsto-of-rates--214f49ddd792e80a35379a2c",
  "source": {
    "blob": "216d2cc455ed15f2e44489611b76a2efeabd6a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 172,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:214f49ddd792e80a35379a2cb929868cc55a694d9066a0386ac244a546ccff72",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d14e6478-4c12-d963-196d-28d1ddf6e73f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeRemainder_tendsto_of_rates (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (L : ℕ → ℕ) (QL QH : ℕ → ℝ) (hL : ∀ J, 1 ≤ L J)
    (hQL : ∀ J, 0 ≤ QL J) (hQH : ∀ J, 0 ≤ QH J)
    (hleft : ∀ J, ∀ t ∈ Icc (-separatedHeight J) (separatedHeight J),
      ‖-logDeriv riemannZeta ((leftEdge (L J) : ℂ) + (t : ℂ) * Complex.I)‖ ≤ QL J)
    (hhorizontal : ∀ J, ∀ y : ℝ, |y| = separatedHeight J → ∀ σ ∈ Icc (leftEdge (L J)) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ QH J)
    (hleftRate : Tendsto (fun J => QL J * Real.exp (-2 * (L J : ℝ) * Real.log (x - h)))
      atTop (𝓝 0))
    (hhorizontalRate : Tendsto (fun J => QH J / (separatedHeight J) ^ 2) atTop (𝓝 0)) :
    Tendsto (fun J => edgeRemainder x h (L J) (separatedHeight J)) atTop (𝓝 0) := by
  have hb : Tendsto (fun J =>
      (2 / h) * (QL J * Real.exp (-2 * (L J : ℝ) * Real.log (x - h))) +
      (horizontalBudget x h / Real.pi) * (QH J / (separatedHeight J) ^ 2)) atTop (𝓝 0) := by
    simpa only [mul_zero, add_zero] using
      (hleftRate.const_mul (2 / h)).add (hhorizontalRate.const_mul (horizontalBudget x h / Real.pi))
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  exact squeeze_zero (fun J => norm_nonneg _)
    (fun J => norm_edgeRemainder_le x h hh ha (L J) J (hL J) (QL J) (QH J)
      (hQL J) (hQH J) (hleft J) (hhorizontal J)) hb

end
end GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d2cc455ed15f2e44489611b76a2efeabd6a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
